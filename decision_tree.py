from __future__ import print_function
import pprint
from collections import Counter
import numpy as np
from functools import reduce


def column_split(data, column, value):
    """
    Divide a dataset splitting on a certain column and value
    Columns are 0 indexed
    """
    def split_function(data):
        if isinstance(value, int) or isinstance(value, float):
            return data[column] >= value
        else:
            return data[column] == value

    # Divide into two sets and return them
    set1 = [d for d in data if split_function(d)]
    set2 = [d for d in data if not split_function(d)]
    return (set1, set2)


# Create counts of possible results (the last column of each row is the result)
def target_counts(data, target_column=-1):
    tc = target_column
    c = Counter()
    # Extra brackets to force counter to see it as a list
    [c.update([d[tc]]) for d in data]
    # ordered would be nice
    return dict(c)


def entropy(data):
    """
    Entropy is the -sum(p(x)log(p(x))) across
    the different possible results
    """
    results = target_counts(data)
    # Calculate the entropy, where p(x) is count / total
    ent = reduce(lambda x, c: x - c / len(data) * np.log2(c / len(data)),
                 results.values(), 0.)
    return ent


class node:
    def __init__(self, column=-1, value=None,
                 results=None, true_node=None,
                 false_node=None):
        self.column = column
        self.value = value
        self.results = results
        self.true_node = true_node
        self.false_node = false_node


def build_tree(data, scoref=entropy):
    if len(data) == 0:
        return node()
    current_score = scoref(data)

    best_gain = 0.0
    best_criteria = None
    best_sets = None

    column_count = len(data[0]) - 1
    for col in range(column_count):
        global column_values
        column_values = {}
        for d in data:
            column_values[d[col]] = 1

        # Now try dividing the rows up for each value in this column
        for value in column_values.keys():
            (set1, set2) = column_split(data, col, value)

            p = float(len(set1)) / len(data)
            gain = current_score - p * scoref(set1) - (1 - p) * scoref(set2)
            if gain > best_gain and len(set1) > 0 and len(set2) > 0:
                best_gain = gain
                best_criteria = (col, value)
                best_sets = (set1, set2)

    # Create the sub branches
    if best_gain > 0:
        true_branch = build_tree(best_sets[0])
        false_branch = build_tree(best_sets[1])
        return node(column=best_criteria[0], value=best_criteria[1],
                    true_node=true_branch, false_node=false_branch)
    else:
        return node(results=target_counts(data))


def classify(observation, tree):
    if tree.results is not None:
        return tree.results
    else:
        v = observation[tree.column]
        branch = None
        if isinstance(v, int) or isinstance(v, float):
            if v >= tree.value:
                branch = tree.true_node
            else:
                branch = tree.false_node
        else:
            if v == tree.value:
                branch = tree.true_node
            else:
                branch = tree.false_node
        return classify(observation, branch)


def print_tree(tree, indent=''):
    # Is this a leaf node?
    if tree.results is not None:
        print(str(tree.results))
    else:
        print(str(tree.column) + ':' + str(tree.value) + '? ')
        # Print the branches
        print(indent + 'T->', end=" ")
        print_tree(tree.true_node, indent + "  ")
        print(indent+'F->', end=" ")
        print_tree(tree.false_node, indent + "  ")


if __name__ == "__main__":
    # Test from http://www.patricklamle.com/Tutorials/Decision%20tree%20python/tuto_decision%20tree.html
    my_data = [['slashdot', 'USA', 'yes', 18, 'None'],
               ['google', 'France', 'yes', 23, 'Premium'],
               ['digg', 'USA', 'yes', 24, 'Basic'],
               ['kiwitobes', 'France', 'yes', 23, 'Basic'],
               ['google', 'UK', 'no', 21, 'Premium'],
               ['(direct)', 'New Zealand', 'no', 12, 'None'],
               ['(direct)', 'UK', 'no', 21, 'Basic'],
               ['google', 'USA', 'no', 24, 'Premium'],
               ['slashdot', 'France', 'yes', 19, 'None'],
               ['digg', 'USA', 'no', 18, 'None'],
               ['google', 'UK', 'no', 18, 'None'],
               ['kiwitobes', 'UK', 'no', 19, 'None'],
               ['digg', 'New Zealand', 'yes', 12, 'Basic'],
               ['slashdot', 'UK', 'no', 21, 'None'],
               ['google', 'UK', 'yes', 18, 'Basic'],
               ['kiwitobes', 'France', 'yes', 19, 'Basic']]

    print("Splitting on 'yes'")
    pprint.pprint(column_split(my_data, 2, 'yes'))
    print("Splitting on 20")
    pprint.pprint(column_split(my_data, 3, 20))

    print("Target counts")
    print(target_counts(my_data))

    print("Checking purity of split")
    pprint.pprint(target_counts(column_split(my_data, 3, 20)[0]))
    pprint.pprint(target_counts(column_split(my_data, 3, 20)[1]))
    s1, s2 = column_split(my_data, 3, 20)

    print("Entropies")
    print(entropy(s1))
    print(entropy(s2))
    print(entropy(my_data))

    tree = build_tree(my_data)
    print_tree(tree)

    print(classify(['(direct)', 'USA', 'yes', 5], tree))
    print(classify(['(direct)', 'USA', 'no', 23], tree))
