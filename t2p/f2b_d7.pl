sub context2phone { 
  my @L = @_;
  my %att;

  $att{'L3'} = $L[0];
  $att{'L2'} = $L[1];
  $att{'L1'} = $L[2];
  $att{'L'} = $L[3];
  $att{'R1'} = $L[4];
  $att{'R2'} = $L[5];
  $att{'R3'} = $L[6];

  if ($att{'L'} eq 'A') { 
    if ($att{'R1'} eq 'B') { 
      if ($att{'L1'} eq 'B') { 
        return 'EY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'E') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'H') { 
        return 'AE+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'L') { 
        if ($att{'L3'} eq '-') { 
          return 'EY+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq '-') { 
        if ($att{'R2'} eq 'L') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'S') { 
          return 'AE'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'N') { 
        return 'EY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'T') { 
        if ($att{'L2'} eq '-') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'S') { 
          return 'AE+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      return 'AX';
    } 
    if ($att{'R1'} eq 'C') { 
      if ($att{'R2'} eq 'A') { 
        if ($att{'R3'} eq 'D') { 
          if ($att{'L1'} eq '-') { 
            if ($att{'L2'} eq '-') { 
              if ($att{'L3'} eq '-') { 
                return 'AE+1'; # depth limit (2/3; 2 classes) at depth 7
              } 
              return 'AE+1';
            } 
            return 'AE+1';
          } 
          return 'AE+1';
        } 
        return 'AE+1';
      } 
      if ($att{'R2'} eq 'C') { 
        if ($att{'R3'} eq 'E') { 
          if ($att{'L1'} eq '-') { 
            if ($att{'L2'} eq '-') { 
              if ($att{'L3'} eq '-') { 
                return 'AE+1'; # depth limit (1/2; 2 classes) at depth 7
              } 
              return 'AE+1';
            } 
            return 'AE+1';
          } 
          return 'AE+1';
        } 
        if ($att{'R3'} eq 'I') { 
          return 'AE+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'R2'} eq 'E') { 
        if ($att{'R3'} eq '-') { 
          if ($att{'L1'} eq 'E') { 
            return '_'; # unique at depth 5
          } 
          if ($att{'L1'} eq 'F') { 
            if ($att{'L3'} eq '-') { 
              return 'EY+1'; # unique at depth 6
            } 
            if ($att{'L3'} eq 'U') { 
              return '_'; # unique at depth 6
            } 
            return 'EY+1';
          } 
          if ($att{'L1'} eq 'L') { 
            return 'EY+1'; # unique at depth 5
          } 
          if ($att{'L1'} eq 'R') { 
            return 'EY+1'; # unique at depth 5
          } 
          return 'EY+1';
        } 
        if ($att{'R3'} eq 'M') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'N') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'P') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'S') { 
          if ($att{'L3'} eq '-') { 
            return 'EY+1'; # unique at depth 5
          } 
          return 'IH';
        } 
        return 'EY+1';
      } 
      if ($att{'R2'} eq 'H') { 
        if ($att{'L1'} eq 'B') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'S') { 
          return 'AX'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'R2'} eq 'I') { 
        if ($att{'L2'} eq 'A') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'EY+1'; # unique at depth 4
        } 
        return 'EY+1';
      } 
      if ($att{'R2'} eq 'K') { 
        return 'AE+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'N') { 
        return 'AE+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'O') { 
        if ($att{'L1'} eq 'J') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'Z') { 
          return 'AY+1'; # unique at depth 4
        } 
        return 'AY+1';
      } 
      if ($att{'R2'} eq 'Q') { 
        return 'AX';
      } 
      if ($att{'R2'} eq 'R') { 
        if ($att{'R3'} eq 'E') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'O') { 
          return 'AX'; # unique at depth 4
        } 
        return 'EY+1';
      } 
      if ($att{'R2'} eq 'T') { 
        if ($att{'L2'} eq 'E') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'M') { 
          return 'AE'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'R') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'T') { 
          if ($att{'L3'} eq 'E') { 
            return 'AE+1'; # unique at depth 5
          } 
          if ($att{'L3'} eq 'N') { 
            return 'AE'; # unique at depth 5
          } 
          return 'AE+1';
        } 
        if ($att{'L2'} eq 'U') { 
          return 'F'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'AE+1'; # unique at depth 4
        } 
        return 'AE+1';
      } 
      if ($att{'R2'} eq 'Y') { 
        return 'AX'; # unique at depth 3
      } 
      return 'AE+1';
    } 
    if ($att{'R1'} eq 'D') { 
      if ($att{'L1'} eq 'B') { 
        return 'AE+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'C') { 
        if ($att{'R3'} eq 'S') { 
          return 'EY'; # unique at depth 4
        } 
        if ($att{'R3'} eq '-') { 
          return 'EY'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'H') { 
        return 'AE'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'M') { 
        if ($att{'R3'} eq 'L') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq '-') { 
          return 'EY+1'; # unique at depth 4
        } 
        return 'AE+1';
      } 
      if ($att{'L1'} eq '-') { 
        if ($att{'R3'} eq 'E') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'I') { 
          if ($att{'R2'} eq 'D') { 
            if ($att{'L2'} eq '-') { 
              if ($att{'L3'} eq '-') { 
                return 'AE+1'; # depth limit (1/2; 2 classes) at depth 7
              } 
              return 'AE+1';
            } 
            return 'AE+1';
          } 
          if ($att{'R2'} eq 'V') { 
            return 'AX';
          } 
          return 'AE';
        } 
        if ($att{'R3'} eq 'L') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'O') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'P') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'R3'} eq '-') { 
          return 'AE+1'; # unique at depth 4
        } 
        return 'AE+1';
      } 
      if ($att{'L1'} eq 'N') { 
        return 'AE+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'R') { 
        if ($att{'R2'} eq 'E') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'K') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'U') { 
          return 'AE+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'S') { 
        if ($att{'L3'} eq '-') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'R') { 
          return 'EY+1'; # unique at depth 4
        } 
        return 'AE+1';
      } 
      return '_';
    } 
    if ($att{'R1'} eq 'E') { 
      if ($att{'L3'} eq 'A') { 
        return 'IY'; # unique at depth 3
      } 
      return 'AX';
    } 
    if ($att{'R1'} eq 'F') { 
      if ($att{'L1'} eq 'E') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L1'} eq '-') { 
        if ($att{'R3'} eq 'E') { 
          if ($att{'R2'} eq 'T') { 
            return 'AE+1'; # unique at depth 5
          } 
          return 'AX';
        } 
        if ($att{'R3'} eq 'I') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'L') { 
          return 'AE+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'O') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'R') { 
        return 'AE+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'S') { 
        return 'EY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'T') { 
        return 'AE+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'W') { 
        return 'EY+1'; # unique at depth 3
      } 
      return 'AX';
    } 
    if ($att{'R1'} eq 'G') { 
      if ($att{'L1'} eq 'B') { 
        return 'AE+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'C') { 
        return 'AA+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'E') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'G') { 
        return 'EY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'K') { 
        return 'IH'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'L') { 
        return 'AE'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'M') { 
        if ($att{'L2'} eq '-') { 
          return 'AE+1'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'L1'} eq '-') { 
        if ($att{'R2'} eq 'E') { 
          if ($att{'R3'} eq '-') { 
            return 'EY+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'N') { 
            if ($att{'L2'} eq '-') { 
              if ($att{'L3'} eq '-') { 
                return 'EY+1'; # depth limit (3/4; 2 classes) at depth 7
              } 
              return 'EY+1';
            } 
            return 'EY+1';
          } 
          if ($att{'R3'} eq 'S') { 
            return 'EY+1'; # unique at depth 5
          } 
          return 'EY+1';
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'N') { 
        return 'IH'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'R') { 
        if ($att{'L3'} eq '-') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'O') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'U') { 
          return 'EY'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'V') { 
          return 'IH'; # unique at depth 4
        } 
        return 'AE+1';
      } 
      if ($att{'L1'} eq 'S') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'T') { 
        if ($att{'R3'} eq 'D') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'E') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq '-') { 
          if ($att{'L3'} eq '-') { 
            return 'AE+1'; # unique at depth 5
          } 
          return 'IH';
        } 
        return 'AE+1';
      } 
      if ($att{'L1'} eq 'U') { 
        if ($att{'R3'} eq 'S') { 
          return 'AX'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'L1'} eq 'V') { 
        return 'IH'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'W') { 
        if ($att{'R2'} eq 'E') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'I') { 
          return 'AE+1'; # unique at depth 4
        } 
        return 'EY+1';
      } 
      return 'AX';
    } 
    if ($att{'R1'} eq 'H') { 
      if ($att{'L1'} eq 'K') { 
        return 'AA+1'; # unique at depth 3
      } 
      return 'AX';
    } 
    if ($att{'R1'} eq 'I') { 
      if ($att{'L1'} eq 'C') { 
        return 'EY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'D') { 
        return 'EY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'F') { 
        if ($att{'R2'} eq 'L') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'R') { 
          return 'EH+1'; # unique at depth 4
        } 
        return 'EH+1';
      } 
      if ($att{'L1'} eq 'G') { 
        return 'EH+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'H') { 
        if ($att{'L2'} eq 'C') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'EY+1'; # unique at depth 4
        } 
        return 'EH+1';
      } 
      if ($att{'L1'} eq 'I') { 
        return 'EY'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'L') { 
        return 'EY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'M') { 
        if ($att{'R3'} eq 'E') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'I') { 
          return 'AA'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'S') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'T') { 
          return 'EY'; # unique at depth 4
        } 
        if ($att{'R3'} eq '-') { 
          return 'EY+1'; # unique at depth 4
        } 
        return 'EY+1';
      } 
      if ($att{'L1'} eq '-') { 
        return 'EY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'P') { 
        if ($att{'L2'} eq 'E') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'M') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'EY+1'; # unique at depth 4
        } 
        return 'EY+1';
      } 
      if ($att{'L1'} eq 'R') { 
        return 'EY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'S') { 
        if ($att{'R2'} eq 'D') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'N') { 
          return 'EY+1'; # unique at depth 4
        } 
        return 'EH+1';
      } 
      if ($att{'L1'} eq 'T') { 
        if ($att{'L3'} eq 'E') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'I') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'U') { 
          return 'AX'; # unique at depth 4
        } 
        return 'EY+1';
      } 
      if ($att{'L1'} eq 'U') { 
        return 'EY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'V') { 
        return 'EY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'W') { 
        return 'EY+1'; # unique at depth 3
      } 
      return 'EY+1';
    } 
    if ($att{'R1'} eq 'J') { 
      if ($att{'L2'} eq 'A') { 
        return 'AA'; # unique at depth 3
      } 
      if ($att{'L2'} eq '-') { 
        return 'EY+1'; # unique at depth 3
      } 
      return 'EY+1';
    } 
    if ($att{'R1'} eq 'K') { 
      if ($att{'L2'} eq 'P') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'R') { 
        if ($att{'R2'} eq 'I') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'S') { 
          return '_'; # unique at depth 4
        } 
        return 'EY+1';
      } 
      if ($att{'L2'} eq 'S') { 
        return 'EY+1'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'U') { 
        return 'AA+1'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'W') { 
        return 'EY+1'; # unique at depth 3
      } 
      if ($att{'L2'} eq '-') { 
        return 'EY+1'; # unique at depth 3
      } 
      return 'EY+1';
    } 
    if ($att{'R1'} eq 'L') { 
      if ($att{'L1'} eq 'B') { 
        if ($att{'L3'} eq '-') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'O') { 
          return 'AO+1'; # unique at depth 4
        } 
        return 'AE+1';
      } 
      if ($att{'L1'} eq 'C') { 
        if ($att{'R2'} eq 'E') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'I') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'L') { 
          if ($att{'L3'} eq '-') { 
            return 'AO+1'; # unique at depth 5
          } 
          if ($att{'L3'} eq 'T') { 
            return '_'; # unique at depth 5
          } 
          return 'AO+1';
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'E') { 
        if ($att{'R3'} eq 'T') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'Z') { 
          return 'AX';
        } 
        if ($att{'R3'} eq '-') { 
          if ($att{'L2'} eq 'D') { 
            if ($att{'R2'} eq '-') { 
              return 'AX';
            } 
            return '_';
          } 
          return '_';
        } 
        return '_';
      } 
      if ($att{'L1'} eq 'F') { 
        return 'AO+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'G') { 
        if ($att{'L2'} eq '-') { 
          return 'AO+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'H') { 
        if ($att{'L2'} eq 'C') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'E') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'P') { 
          return 'AO'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'S') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          if ($att{'R2'} eq 'F') { 
            return 'AE'; # unique at depth 5
          } 
          if ($att{'R2'} eq 'L') { 
            return 'AO+1'; # unique at depth 5
          } 
          return 'AO+1';
        } 
        return 'AE+1';
      } 
      if ($att{'L1'} eq 'M') { 
        if ($att{'L2'} eq 'S') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'EY+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq '-') { 
        if ($att{'R2'} eq 'A') { 
          if ($att{'R3'} eq 'N') { 
            return 'AE+1'; # unique at depth 5
          } 
          return 'AX';
        } 
        if ($att{'R2'} eq 'B') { 
          return 'AO'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'C') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'D') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'I') { 
          if ($att{'R3'} eq 'C') { 
            return 'AE+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'E') { 
            return 'EY+1'; # unique at depth 5
          } 
          return 'AX';
        } 
        if ($att{'R2'} eq 'L') { 
          if ($att{'R3'} eq '-') { 
            return 'AO'; # unique at depth 5
          } 
          return 'AX';
        } 
        if ($att{'R2'} eq 'M') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'R') { 
          return 'AO'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'S') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'T') { 
          if ($att{'R3'} eq 'M') { 
            return 'AO+1'; # unique at depth 5
          } 
          return 'AO';
        } 
        if ($att{'R2'} eq 'W') { 
          return 'AO+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'N') { 
        if ($att{'R2'} eq 'D') { 
          if ($att{'L3'} eq '-') { 
            return '_'; # unique at depth 5
          } 
          return 'N';
        } 
        return '_';
      } 
      if ($att{'L1'} eq 'O') { 
        if ($att{'L2'} eq 'C') { 
          return 'AX'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'L1'} eq 'R') { 
        if ($att{'L2'} eq '-') { 
          return 'AE+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'S') { 
        if ($att{'R2'} eq 'A') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'E') { 
          return 'EY+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'T') { 
        if ($att{'R2'} eq 'E') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'I') { 
          if ($att{'R3'} eq 'T') { 
            return 'AE+1'; # unique at depth 5
          } 
          return 'AX';
        } 
        if ($att{'R2'} eq 'K') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'S') { 
          if ($att{'L3'} eq '-') { 
            return '_'; # unique at depth 5
          } 
          return 'AX';
        } 
        return '_';
      } 
      if ($att{'L1'} eq 'U') { 
        if ($att{'R2'} eq 'I') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'T') { 
          return '_'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'V') { 
        if ($att{'L3'} eq '-') { 
          return 'AE+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'W') { 
        return 'AO+1'; # unique at depth 3
      } 
      return 'AX';
    } 
    if ($att{'R1'} eq '-') { 
      if ($att{'L1'} eq 'E') { 
        if ($att{'L2'} eq 'L') { 
          return '_'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'G') { 
        return 'AA+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'K') { 
        return 'AH'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'N') { 
        if ($att{'L3'} eq 'E') { 
          return 'AA+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'T') { 
        if ($att{'L3'} eq 'A') { 
          return 'AA'; # unique at depth 4
        } 
        return 'AX';
      } 
      return 'AX';
    } 
    if ($att{'R1'} eq 'M') { 
      if ($att{'L1'} eq 'C') { 
        if ($att{'R3'} eq 'A') { 
          return 'AE'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'R') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'S') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq '-') { 
          if ($att{'R2'} eq 'E') { 
            return 'EY+1'; # unique at depth 5
          } 
          if ($att{'R2'} eq 'P') { 
            return 'AE+1'; # unique at depth 5
          } 
          return 'AE+1';
        } 
        return 'AE+1';
      } 
      if ($att{'L1'} eq 'D') { 
        return 'AE+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'E') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'F') { 
        if ($att{'R2'} eq 'I') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'O') { 
          return 'EY+1'; # unique at depth 4
        } 
        return 'AE+1';
      } 
      if ($att{'L1'} eq 'G') { 
        if ($att{'R2'} eq 'E') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'U') { 
          return 'AE+1'; # unique at depth 4
        } 
        return 'EY+1';
      } 
      if ($att{'L1'} eq 'H') { 
        if ($att{'L2'} eq 'C') { 
          if ($att{'R2'} eq 'B') { 
            return 'EY+1'; # unique at depth 5
          } 
          if ($att{'R2'} eq 'P') { 
            return 'AE+1'; # unique at depth 5
          } 
          return 'AE+1';
        } 
        if ($att{'L2'} eq 'G') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'N') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'S') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'T') { 
          return 'AE'; # unique at depth 4
        } 
        return 'EY+1';
      } 
      if ($att{'L1'} eq 'I') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'J') { 
        return 'EY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'L') { 
        return 'EY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq '-') { 
        if ($att{'R2'} eq 'B') { 
          return 'AE'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'N') { 
        return 'EY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'R') { 
        if ($att{'L3'} eq '-') { 
          return 'AX'; # unique at depth 4
        } 
        return 'AE';
      } 
      if ($att{'L1'} eq 'S') { 
        return 'EY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'T') { 
        return 'AX'; # unique at depth 3
      } 
      return 'EY+1';
    } 
    if ($att{'R1'} eq 'N') { 
      if ($att{'L2'} eq 'A') { 
        if ($att{'L3'} eq 'T') { 
          return 'AE+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L2'} eq 'B') { 
        return 'AE+1'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'C') { 
        if ($att{'R2'} eq 'G') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'S') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'T') { 
          return 'AE+1'; # unique at depth 4
        } 
        return 'EY+1';
      } 
      if ($att{'L2'} eq 'D') { 
        if ($att{'L3'} eq '-') { 
          return 'AE+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L2'} eq 'E') { 
        if ($att{'R2'} eq 'D') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq '-') { 
          return 'AE+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L2'} eq 'F') { 
        return 'AA+1'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'G') { 
        if ($att{'L3'} eq '-') { 
          return 'AE+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L2'} eq 'I') { 
        if ($att{'R3'} eq 'E') { 
          return 'AE'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'I') { 
          return 'AE+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L2'} eq 'J') { 
        if ($att{'L1'} eq 'E') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'O') { 
          return 'AE+1'; # unique at depth 4
        } 
        return 'AE+1';
      } 
      if ($att{'L2'} eq 'L') { 
        if ($att{'L3'} eq '-') { 
          return '_'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L2'} eq 'M') { 
        if ($att{'L3'} eq 'O') { 
          return 'AX'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'L2'} eq 'N') { 
        if ($att{'L1'} eq 'D') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'I') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'S') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'T') { 
          return '_'; # unique at depth 4
        } 
        return 'EY+1';
      } 
      if ($att{'L2'} eq 'O') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'P') { 
        if ($att{'L3'} eq 'A') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'X') { 
          return 'L'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          return 'AE+1'; # unique at depth 4
        } 
        return 'AE+1';
      } 
      if ($att{'L2'} eq 'R') { 
        if ($att{'L1'} eq 'R') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'T') { 
          return '_'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L2'} eq 'S') { 
        if ($att{'L3'} eq '-') { 
          if ($att{'L1'} eq 'C') { 
            return 'AE+1'; # unique at depth 5
          } 
          if ($att{'L1'} eq 'H') { 
            return 'AE+1'; # unique at depth 5
          } 
          if ($att{'L1'} eq 'L') { 
            return 'AX'; # unique at depth 5
          } 
          if ($att{'L1'} eq 'T') { 
            return 'AE+1'; # unique at depth 5
          } 
          return 'AE+1';
        } 
        return 'AX';
      } 
      if ($att{'L2'} eq 'T') { 
        if ($att{'R3'} eq 'E') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'F') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'S') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'Z') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'R3'} eq '-') { 
          if ($att{'L3'} eq '-') { 
            return 'AE'; # unique at depth 5
          } 
          return 'AX';
        } 
        return 'AE';
      } 
      if ($att{'L2'} eq 'U') { 
        if ($att{'L3'} eq 'A') { 
          return 'AA'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'O') { 
          return 'IH'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L2'} eq 'X') { 
        return 'PCLP'; # unique at depth 3
      } 
      if ($att{'L2'} eq '-') { 
        if ($att{'R2'} eq 'A') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'C') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'D') { 
          if ($att{'L1'} eq 'C') { 
            return 'AE+1'; # unique at depth 5
          } 
          if ($att{'L1'} eq 'H') { 
            return 'AE+1'; # unique at depth 5
          } 
          if ($att{'L1'} eq 'L') { 
            return 'AE+1'; # unique at depth 5
          } 
          if ($att{'L1'} eq 'M') { 
            return 'AE+1'; # unique at depth 5
          } 
          if ($att{'L1'} eq 'R') { 
            return 'AE+1'; # unique at depth 5
          } 
          if ($att{'L1'} eq 'W') { 
            return 'AA+1'; # unique at depth 5
          } 
          if ($att{'L1'} eq '-') { 
            return 'AE'; # unique at depth 5
          } 
          return 'AE+1';
        } 
        if ($att{'R2'} eq 'G') { 
          if ($att{'L1'} eq 'B') { 
            return 'AE+1'; # unique at depth 5
          } 
          if ($att{'L1'} eq 'D') { 
            return 'EY+1'; # unique at depth 5
          } 
          if ($att{'L1'} eq 'G') { 
            return 'AE+1'; # unique at depth 5
          } 
          if ($att{'L1'} eq 'L') { 
            return 'AE+1'; # unique at depth 5
          } 
          if ($att{'L1'} eq '-') { 
            return 'AE+1'; # unique at depth 5
          } 
          return 'AE+1';
        } 
        if ($att{'R2'} eq 'I') { 
          if ($att{'L1'} eq 'L') { 
            return 'AA+1'; # unique at depth 5
          } 
          if ($att{'L1'} eq 'S') { 
            return 'AE+1'; # unique at depth 5
          } 
          if ($att{'L1'} eq '-') { 
            return 'AE+1'; # unique at depth 5
          } 
          return 'AE+1';
        } 
        if ($att{'R2'} eq 'K') { 
          if ($att{'R3'} eq 'S') { 
            return 'AE+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq '-') { 
            return 'AA+1'; # unique at depth 5
          } 
          return 'AE+1';
        } 
        if ($att{'R2'} eq '-') { 
          if ($att{'L1'} eq 'B') { 
            return 'AA+1'; # unique at depth 5
          } 
          if ($att{'L1'} eq 'C') { 
            return 'AE'; # unique at depth 5
          } 
          if ($att{'L1'} eq 'M') { 
            return 'AA+1'; # unique at depth 5
          } 
          if ($att{'L1'} eq 'S') { 
            return 'AA+1'; # unique at depth 5
          } 
          if ($att{'L1'} eq 'V') { 
            return 'AE+1'; # unique at depth 5
          } 
          if ($att{'L1'} eq '-') { 
            return 'AX'; # unique at depth 5
          } 
          return 'AA+1';
        } 
        if ($att{'R2'} eq 'N') { 
          if ($att{'R3'} eq 'E') { 
            return 'AA+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'I') { 
            return 'AE+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'O') { 
            return 'AX'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'U') { 
            return 'AE+1'; # unique at depth 5
          } 
          return 'AE+1';
        } 
        if ($att{'R2'} eq 'O') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'T') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'U') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'Y') { 
          if ($att{'R3'} eq 'O') { 
            return 'AX'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'T') { 
            return 'EH+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq '-') { 
            if ($att{'L1'} eq 'M') { 
              return 'EH+1'; # unique at depth 6
            } 
            if ($att{'L1'} eq '-') { 
              return 'AX'; # unique at depth 6
            } 
            return 'EH+1';
          } 
          return 'EH+1';
        } 
        return 'AE+1';
      } 
      return 'AE+1';
    } 
    if ($att{'R1'} eq 'P') { 
      if ($att{'R2'} eq 'E') { 
        return 'EY+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'H') { 
        return 'AE+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'I') { 
        return 'AE+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'M') { 
        return 'AE+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'O') { 
        if ($att{'L2'} eq '-') { 
          return 'AX'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'R2'} eq 'P') { 
        if ($att{'L1'} eq 'H') { 
          return 'AE+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'R2'} eq 'R') { 
        return 'EY+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'S') { 
        return 'AE+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'T') { 
        return 'AE+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq '-') { 
        return 'AE+1'; # unique at depth 3
      } 
      return 'AX';
    } 
    if ($att{'R1'} eq 'R') { 
      if ($att{'R2'} eq 'A') { 
        if ($att{'L2'} eq 'G') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'M') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'AE+1'; # unique at depth 4
        } 
        return 'AE+1';
      } 
      if ($att{'R2'} eq 'B') { 
        if ($att{'L2'} eq 'N') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'AA+1'; # unique at depth 4
        } 
        return 'AA+1';
      } 
      if ($att{'R2'} eq 'C') { 
        if ($att{'L1'} eq 'E') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'I') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'M') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'N') { 
          return 'AA'; # unique at depth 4
        } 
        return 'AA+1';
      } 
      if ($att{'R2'} eq 'D') { 
        if ($att{'L2'} eq 'A') { 
          if ($att{'L1'} eq 'W') { 
            return 'AO+1'; # unique at depth 5
          } 
          return 'AX';
        } 
        if ($att{'L2'} eq 'K') { 
          return 'AA'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'N') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'O') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'R') { 
          if ($att{'L3'} eq 'E') { 
            return 'AA+1'; # unique at depth 5
          } 
          return 'AX';
        } 
        if ($att{'L2'} eq '-') { 
          return 'AA+1'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'R2'} eq 'E') { 
        if ($att{'L1'} eq 'B') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'C') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'D') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'E') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'F') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'H') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'K') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'P') { 
          if ($att{'L2'} eq 'M') { 
            return 'EH+1'; # unique at depth 5
          } 
          if ($att{'L2'} eq 'P') { 
            return 'AE+1'; # unique at depth 5
          } 
          if ($att{'L2'} eq 'S') { 
            return 'EH+1'; # unique at depth 5
          } 
          if ($att{'L2'} eq '-') { 
            return 'EH+1'; # unique at depth 5
          } 
          return 'EH+1';
        } 
        if ($att{'L1'} eq 'R') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'W') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq '-') { 
          if ($att{'R3'} eq 'A') { 
            return 'EH+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq '-') { 
            return 'AA'; # unique at depth 5
          } 
          return 'EH+1';
        } 
        return 'EH+1';
      } 
      if ($att{'R2'} eq 'G') { 
        return 'AA+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'I') { 
        if ($att{'L1'} eq 'E') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'M') { 
          if ($att{'R3'} eq 'A') { 
            return 'AX';
          } 
          if ($att{'R3'} eq 'L') { 
            return 'EH+1'; # unique at depth 5
          } 
          return 'EH+1';
        } 
        if ($att{'L1'} eq 'P') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'T') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq '-') { 
          return 'AX'; # unique at depth 4
        } 
        return 'EH+1';
      } 
      if ($att{'R2'} eq 'K') { 
        return 'AA+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'L') { 
        if ($att{'L2'} eq 'C') { 
          return 'AA+1'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'R2'} eq 'M') { 
        if ($att{'L1'} eq 'C') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'E') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'F') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'H') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'L') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq '-') { 
          return 'AA+1'; # unique at depth 4
        } 
        return 'AA+1';
      } 
      if ($att{'R2'} eq 'N') { 
        if ($att{'L1'} eq 'B') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'W') { 
          return 'AO+1'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'R2'} eq 'O') { 
        if ($att{'R3'} eq 'L') { 
          if ($att{'L1'} eq 'C') { 
            if ($att{'L2'} eq '-') { 
              if ($att{'L3'} eq '-') { 
                return 'EH+1'; # depth limit (1/2; 2 classes) at depth 7
              } 
              return 'EH+1';
            } 
            return 'EH+1';
          } 
          return 'EH+1';
        } 
        if ($att{'R3'} eq 'N') { 
          return 'AA'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'R2'} eq 'R') { 
        if ($att{'L1'} eq 'C') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'F') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'L') { 
          return 'AE+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'R2'} eq 'S') { 
        if ($att{'L1'} eq 'E') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'H') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'M') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'W') { 
          return 'AO+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'R2'} eq 'T') { 
        if ($att{'R3'} eq 'A') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'E') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'F') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'H') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'I') { 
          if ($att{'L1'} eq '-') { 
            return 'AA+1'; # unique at depth 5
          } 
          return 'AA';
        } 
        if ($att{'R3'} eq 'M') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'S') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'Y') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq '-') { 
          if ($att{'L2'} eq 'A') { 
            return 'AA+1'; # unique at depth 5
          } 
          if ($att{'L2'} eq 'E') { 
            return 'AA+1'; # unique at depth 5
          } 
          if ($att{'L2'} eq 'H') { 
            return 'AA+1'; # unique at depth 5
          } 
          if ($att{'L2'} eq 'T') { 
            return 'AX'; # unique at depth 5
          } 
          if ($att{'L2'} eq '-') { 
            return 'AA+1'; # unique at depth 5
          } 
          return 'AA+1';
        } 
        return 'AA+1';
      } 
      if ($att{'R2'} eq 'V') { 
        return 'AA+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'Y') { 
        if ($att{'L2'} eq 'A') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'B') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'C') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'E') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'I') { 
          return 'EH'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'L') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'N') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'O') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'EH+1'; # unique at depth 4
        } 
        return 'EH+1';
      } 
      if ($att{'R2'} eq '-') { 
        if ($att{'L1'} eq 'C') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'E') { 
          if ($att{'L3'} eq 'C') { 
            return 'AX';
          } 
          return '_';
        } 
        if ($att{'L1'} eq 'F') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'L') { 
          return 'AX'; # unique at depth 4
        } 
        return '_';
      } 
      return 'AA+1';
    } 
    if ($att{'R1'} eq 'S') { 
      if ($att{'L1'} eq 'B') { 
        return 'EY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'C') { 
        if ($att{'R2'} eq 'E') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'T') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'U') { 
          return 'AE+1'; # unique at depth 4
        } 
        return 'AE+1';
      } 
      if ($att{'L1'} eq 'E') { 
        if ($att{'R2'} eq '-') { 
          return 'AX'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'L1'} eq 'G') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'H') { 
        if ($att{'R2'} eq 'H') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'K') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq '-') { 
          return 'AE'; # unique at depth 4
        } 
        return 'AE+1';
      } 
      if ($att{'L1'} eq 'I') { 
        if ($att{'L3'} eq 'U') { 
          return 'AE+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'L') { 
        if ($att{'R2'} eq 'S') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'T') { 
          if ($att{'R3'} eq 'I') { 
            return 'AE+1'; # unique at depth 5
          } 
          return 'AE';
        } 
        if ($att{'R2'} eq '-') { 
          return 'AX'; # unique at depth 4
        } 
        return 'AE+1';
      } 
      if ($att{'L1'} eq 'M') { 
        if ($att{'L3'} eq 'A') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'S') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          return 'AE+1'; # unique at depth 4
        } 
        return 'AE+1';
      } 
      if ($att{'L1'} eq 'P') { 
        if ($att{'R3'} eq 'E') { 
          if ($att{'R2'} eq 'S') { 
            if ($att{'L2'} eq '-') { 
              if ($att{'L3'} eq '-') { 
                return 'AE+1'; # depth limit (1/2; 2 classes) at depth 7
              } 
              return 'AE+1';
            } 
            return 'AE+1';
          } 
          return 'AE+1';
        } 
        if ($att{'R3'} eq '-') { 
          return 'AE+1'; # unique at depth 4
        } 
        return 'AE+1';
      } 
      if ($att{'L1'} eq 'R') { 
        if ($att{'L3'} eq '-') { 
          return 'AE+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'W') { 
        if ($att{'R2'} eq 'H') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'T') { 
          return 'EY+1'; # unique at depth 4
        } 
        return 'AH';
      } 
      if ($att{'L1'} eq '-') { 
        if ($att{'R2'} eq 'B') { 
          return 'AE'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'H') { 
          return 'AE'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'K') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'P') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq '-') { 
          return 'AE'; # unique at depth 4
        } 
        return 'AX';
      } 
      return 'AE+1';
    } 
    if ($att{'R1'} eq 'T') { 
      if ($att{'L1'} eq 'B') { 
        if ($att{'L2'} eq 'E') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'M') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'O') { 
          return 'EY'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'AE+1'; # unique at depth 4
        } 
        return 'AE+1';
      } 
      if ($att{'L1'} eq 'C') { 
        if ($att{'R3'} eq 'D') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'E') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'O') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'R') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'S') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'R3'} eq '-') { 
          if ($att{'L3'} eq 'N') { 
            return 'EY+1'; # unique at depth 5
          } 
          return 'AX';
        } 
        return 'EY+1';
      } 
      if ($att{'L1'} eq 'D') { 
        if ($att{'L3'} eq 'A') { 
          if ($att{'R2'} eq 'E') { 
            return 'EY'; # unique at depth 5
          } 
          return 'AX';
        } 
        if ($att{'L3'} eq 'D') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'M') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'R') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'U') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          return 'AE+1'; # unique at depth 4
        } 
        return 'EY+1';
      } 
      if ($att{'L1'} eq 'E') { 
        if ($att{'R3'} eq 'D') { 
          if ($att{'L3'} eq '-') { 
            return 'EY+1'; # unique at depth 5
          } 
          return '_';
        } 
        if ($att{'R3'} eq 'R') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'Y') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq '-') { 
          if ($att{'R2'} eq 'E') { 
            return 'EY+1'; # unique at depth 5
          } 
          if ($att{'R2'} eq '-') { 
            if ($att{'L2'} eq 'R') { 
              if ($att{'L3'} eq '-') { 
                return 'EY+1'; # depth limit (1/2; 2 classes) at depth 7
              } 
              return '_';
            } 
            return '_';
          } 
          return '_';
        } 
        return '_';
      } 
      if ($att{'L1'} eq 'F') { 
        return 'AA+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'G') { 
        if ($att{'L3'} eq 'L') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'T') { 
          return 'EY+1'; # unique at depth 4
        } 
        return 'EY+1';
      } 
      if ($att{'L1'} eq 'H') { 
        if ($att{'L2'} eq 'T') { 
          return 'AE'; # unique at depth 4
        } 
        return 'AH';
      } 
      if ($att{'L1'} eq 'I') { 
        if ($att{'R3'} eq 'D') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'N') { 
          return 'IY'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'O') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'S') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'V') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'R3'} eq '-') { 
          if ($att{'L3'} eq 'O') { 
            return 'EY+1'; # unique at depth 5
          } 
          return 'IH';
        } 
        return 'EY+1';
      } 
      if ($att{'L1'} eq 'L') { 
        if ($att{'L2'} eq 'A') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'E') { 
          if ($att{'R2'} eq 'E') { 
            return 'EY+1'; # unique at depth 5
          } 
          return 'AX';
        } 
        if ($att{'L2'} eq 'O') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'P') { 
          if ($att{'R2'} eq 'E') { 
            return 'EY+1'; # unique at depth 5
          } 
          if ($att{'R2'} eq 'F') { 
            return 'AE+1'; # unique at depth 5
          } 
          if ($att{'R2'} eq 'O') { 
            return 'EY+1'; # unique at depth 5
          } 
          return 'EY+1';
        } 
        if ($att{'L2'} eq 'S') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'U') { 
          return 'L'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          if ($att{'R2'} eq 'E') { 
            return 'EY+1'; # unique at depth 5
          } 
          if ($att{'R2'} eq 'I') { 
            return 'AE+1'; # unique at depth 5
          } 
          return 'EY+1';
        } 
        return 'EY+1';
      } 
      if ($att{'L1'} eq 'M') { 
        if ($att{'R3'} eq 'A') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'C') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'D') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'E') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'I') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'O') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'R') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'S') { 
          if ($att{'L3'} eq 'S') { 
            return 'EY+1'; # unique at depth 5
          } 
          if ($att{'L3'} eq 'T') { 
            return 'AX'; # unique at depth 5
          } 
          if ($att{'L3'} eq '-') { 
            return 'EY+1'; # unique at depth 5
          } 
          return 'EY+1';
        } 
        if ($att{'R3'} eq '-') { 
          if ($att{'L3'} eq 'T') { 
            return 'EY+1'; # unique at depth 5
          } 
          if ($att{'L3'} eq '-') { 
            return 'AE+1'; # unique at depth 5
          } 
          return 'EY+1';
        } 
        return 'EY+1';
      } 
      if ($att{'L1'} eq 'N') { 
        if ($att{'R3'} eq 'L') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'O') { 
          if ($att{'L2'} eq 'A') { 
            return 'N'; # unique at depth 5
          } 
          if ($att{'L2'} eq 'I') { 
            return 'EY+1'; # unique at depth 5
          } 
          if ($att{'L2'} eq 'O') { 
            return 'EY+1'; # unique at depth 5
          } 
          if ($att{'L2'} eq 'R') { 
            return 'AE+1'; # unique at depth 5
          } 
          if ($att{'L2'} eq '-') { 
            if ($att{'R2'} eq 'I') { 
              if ($att{'L3'} eq '-') { 
                return 'EY+1'; # depth limit (2/3; 2 classes) at depth 7
              } 
              return 'EY+1';
            } 
            return 'EY+1';
          } 
          return 'EY+1';
        } 
        if ($att{'R3'} eq 'R') { 
          if ($att{'L2'} eq '-') { 
            return 'AE+1'; # unique at depth 5
          } 
          return 'AX';
        } 
        if ($att{'R3'} eq 'V') { 
          if ($att{'L3'} eq '-') { 
            return 'EY+1'; # unique at depth 5
          } 
          return 'AX';
        } 
        if ($att{'R3'} eq '-') { 
          return 'IH'; # unique at depth 4
        } 
        return 'EY+1';
      } 
      if ($att{'L1'} eq 'O') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'P') { 
        if ($att{'R3'} eq 'N') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'O') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq '-') { 
          return 'EY+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'R') { 
        if ($att{'R3'} eq 'C') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'D') { 
          if ($att{'L2'} eq 'E') { 
            return 'EY+1'; # unique at depth 5
          } 
          if ($att{'L2'} eq 'O') { 
            return 'EY+1'; # unique at depth 5
          } 
          if ($att{'L2'} eq 'T') { 
            return 'EY';
          } 
          return 'EY+1';
        } 
        if ($att{'R3'} eq 'E') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'F') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'G') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'N') { 
          if ($att{'L3'} eq 'P') { 
            return 'EY+1'; # unique at depth 5
          } 
          if ($att{'L3'} eq 'S') { 
            return 'EY'; # unique at depth 5
          } 
          if ($att{'L3'} eq '-') { 
            return 'EY+1'; # unique at depth 5
          } 
          return 'EY+1';
        } 
        if ($att{'R3'} eq 'O') { 
          if ($att{'L3'} eq 'D') { 
            return 'EY+1'; # unique at depth 5
          } 
          if ($att{'L3'} eq 'I') { 
            return 'EY+1'; # unique at depth 5
          } 
          if ($att{'L3'} eq 'P') { 
            return 'EY+1'; # unique at depth 5
          } 
          if ($att{'L3'} eq 'S') { 
            return 'EY+1'; # unique at depth 5
          } 
          if ($att{'L3'} eq 'Y') { 
            return 'EY'; # unique at depth 5
          } 
          return 'EY+1';
        } 
        if ($att{'R3'} eq 'R') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'S') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq '-') { 
          if ($att{'L3'} eq 'O') { 
            return 'AE+1'; # unique at depth 5
          } 
          return 'IH';
        } 
        return 'EY+1';
      } 
      if ($att{'L1'} eq 'S') { 
        return 'EY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'T') { 
        if ($att{'L3'} eq 'B') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'D') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'E') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'M') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'P') { 
          return 'TCLT'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'R') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'S') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'Y') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          if ($att{'R2'} eq 'E') { 
            return 'EY+1'; # unique at depth 5
          } 
          if ($att{'R2'} eq 'I') { 
            if ($att{'R3'} eq 'O') { 
              return 'EY+1'; # unique at depth 6
            } 
            return 'AX';
          } 
          if ($att{'R2'} eq 'U') { 
            return 'AE+1'; # unique at depth 5
          } 
          return 'EY+1';
        } 
        return 'EY+1';
      } 
      if ($att{'L1'} eq 'U') { 
        if ($att{'L3'} eq 'A') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'E') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'I') { 
          return 'EY+1'; # unique at depth 4
        } 
        return 'EY+1';
      } 
      if ($att{'L1'} eq 'V') { 
        if ($att{'R3'} eq 'D') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'O') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'V') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'R3'} eq '-') { 
          return 'EY+1'; # unique at depth 4
        } 
        return 'EY+1';
      } 
      if ($att{'L1'} eq 'W') { 
        if ($att{'R2'} eq 'C') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'E') { 
          return 'AO+1'; # unique at depth 4
        } 
        return 'AA+1';
      } 
      if ($att{'L1'} eq 'X') { 
        return 'S'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'Z') { 
        return 'EY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq '-') { 
        if ($att{'R3'} eq 'I') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq '-') { 
          return 'AE'; # unique at depth 4
        } 
        return 'AX';
      } 
      return 'EY+1';
    } 
    if ($att{'R1'} eq 'U') { 
      if ($att{'R3'} eq 'A') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'C') { 
        return 'AO+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'E') { 
        if ($att{'L2'} eq 'E') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'G') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'P') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'R') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          if ($att{'R2'} eq 'L') { 
            return 'AO+1'; # unique at depth 5
          } 
          if ($att{'R2'} eq 'S') { 
            return '_';
          } 
          return 'AO+1';
        } 
        return 'AO+1';
      } 
      if ($att{'R3'} eq 'H') { 
        if ($att{'L1'} eq 'D') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'L') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'T') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq '-') { 
          return 'AX'; # unique at depth 4
        } 
        return 'AO+1';
      } 
      if ($att{'R3'} eq 'I') { 
        if ($att{'R2'} eq 'S') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'T') { 
          return 'AO+1'; # unique at depth 4
        } 
        return 'AO+1';
      } 
      if ($att{'R3'} eq 'O') { 
        if ($att{'R2'} eq 'T') { 
          if ($att{'L1'} eq '-') { 
            if ($att{'L2'} eq '-') { 
              if ($att{'L3'} eq '-') { 
                return 'AO+1'; # depth limit (2/3; 2 classes) at depth 7
              } 
              return 'AO+1';
            } 
            return 'AO+1';
          } 
          return 'AO+1';
        } 
        return 'AO+1';
      } 
      if ($att{'R3'} eq 'R') { 
        return 'AO'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'S') { 
        return 'AO+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'T') { 
        return 'AO+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'U') { 
        return 'AO'; # unique at depth 3
      } 
      if ($att{'R3'} eq '-') { 
        return 'AO+1'; # unique at depth 3
      } 
      return 'AO+1';
    } 
    if ($att{'R1'} eq 'V') { 
      if ($att{'L1'} eq 'D') { 
        return 'EY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'E') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'F') { 
        return 'EY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'H') { 
        if ($att{'R2'} eq 'E') { 
          return 'AE'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'I') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'O') { 
          return 'AE+1'; # unique at depth 4
        } 
        return 'AE+1';
      } 
      if ($att{'L1'} eq 'N') { 
        return 'AE+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'P') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'R') { 
        if ($att{'L2'} eq 'G') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'T') { 
          return 'AH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'AE+1'; # unique at depth 4
        } 
        return 'AE+1';
      } 
      if ($att{'L1'} eq 'S') { 
        return 'EY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq '-') { 
        return 'AX'; # unique at depth 3
      } 
      return 'EY+1';
    } 
    if ($att{'R1'} eq 'W') { 
      if ($att{'R3'} eq 'A') { 
        return 'AO+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'E') { 
        if ($att{'R2'} eq 'Y') { 
          if ($att{'L1'} eq 'L') { 
            if ($att{'L2'} eq '-') { 
              if ($att{'L3'} eq '-') { 
                return 'AO+1'; # depth limit (1/2; 2 classes) at depth 7
              } 
              return 'AO+1';
            } 
            return 'AO+1';
          } 
          return 'AO+1';
        } 
        return 'AO+1';
      } 
      if ($att{'R3'} eq 'I') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'R') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'U') { 
        return 'AO+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'Y') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'R3'} eq '-') { 
        return 'AO+1'; # unique at depth 3
      } 
      return 'AO+1';
    } 
    if ($att{'R1'} eq 'X') { 
      if ($att{'R2'} eq 'A') { 
        return 'AE'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'P') { 
        return 'AE+1'; # unique at depth 3
      } 
      return 'AE+1';
    } 
    if ($att{'R1'} eq 'Y') { 
      if ($att{'L2'} eq 'A') { 
        return 'EY+1'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'D') { 
        return 'EY+1'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'E') { 
        return 'EY+1'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'L') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'N') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'O') { 
        return 'EY+1'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'P') { 
        return 'EY+1'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'R') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'S') { 
        return 'EY+1'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'X') { 
        return 'PCLP'; # unique at depth 3
      } 
      if ($att{'L2'} eq '-') { 
        if ($att{'L1'} eq 'B') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'D') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'G') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'J') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'L') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'M') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'P') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'R') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'S') { 
          if ($att{'R2'} eq 'I') { 
            return 'EY+1'; # unique at depth 5
          } 
          if ($att{'R2'} eq 'S') { 
            return 'EH+1'; # unique at depth 5
          } 
          if ($att{'R2'} eq '-') { 
            return 'EY+1'; # unique at depth 5
          } 
          return 'EY+1';
        } 
        if ($att{'L1'} eq 'W') { 
          return 'EY+1'; # unique at depth 4
        } 
        return 'EY+1';
      } 
      return 'EY+1';
    } 
    if ($att{'R1'} eq 'Z') { 
      return 'AE+1'; # unique at depth 2
    } 
    return 'AX';
  } 
  if ($att{'L'} eq 'B') { 
    if ($att{'L1'} eq 'B') { 
      if ($att{'L2'} eq 'A') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'I') { 
        return '_'; # unique at depth 3
      } 
      return 'BCLB';
    } 
    if ($att{'L1'} eq 'E') { 
      if ($att{'R1'} eq 'T') { 
        return '_'; # unique at depth 3
      } 
      return 'BCLB';
    } 
    if ($att{'L1'} eq 'I') { 
      if ($att{'L3'} eq 'C') { 
        return '_'; # unique at depth 3
      } 
      return 'BCLB';
    } 
    if ($att{'L1'} eq 'O') { 
      if ($att{'L2'} eq 'C') { 
        return 'PCLP'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'L') { 
        return '_'; # unique at depth 3
      } 
      return 'BCLB';
    } 
    return 'BCLB';
  } 
  if ($att{'L'} eq 'C') { 
    if ($att{'R1'} eq 'C') { 
      if ($att{'L1'} eq 'M') { 
        return 'AX'; # unique at depth 3
      } 
      return 'KCLK';
    } 
    if ($att{'R1'} eq 'D') { 
      return 'AX'; # unique at depth 2
    } 
    if ($att{'R1'} eq 'E') { 
      if ($att{'L2'} eq 'F') { 
        if ($att{'L3'} eq 'R') { 
          return 'IH'; # unique at depth 4
        } 
        return 'S';
      } 
      if ($att{'L2'} eq 'O') { 
        if ($att{'L1'} eq 'N') { 
          if ($att{'R2'} eq '-') { 
            return 'N'; # unique at depth 5
          } 
          return 'S';
        } 
        return 'S';
      } 
      return 'S';
    } 
    if ($att{'R1'} eq 'H') { 
      if ($att{'L1'} eq 'I') { 
        if ($att{'L2'} eq 'M') { 
          return 'KCLK'; # unique at depth 4
        } 
        return 'TCLCH';
      } 
      if ($att{'L1'} eq 'L') { 
        return 'KCLK'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'R') { 
        if ($att{'L3'} eq 'I') { 
          return 'KCLK'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          if ($att{'L2'} eq 'A') { 
            return 'TCLCH'; # unique at depth 5
          } 
          return 'KCLK';
        } 
        return 'TCLCH';
      } 
      if ($att{'L1'} eq 'S') { 
        return 'KCLK'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'Y') { 
        return 'KCLK'; # unique at depth 3
      } 
      if ($att{'L1'} eq '-') { 
        if ($att{'R2'} eq 'I') { 
          if ($att{'R3'} eq 'C') { 
            return '_'; # unique at depth 5
          } 
          return 'TCLCH';
        } 
        if ($att{'R2'} eq 'R') { 
          return 'KCLK'; # unique at depth 4
        } 
        return 'TCLCH';
      } 
      return 'TCLCH';
    } 
    if ($att{'R1'} eq 'I') { 
      if ($att{'R3'} eq 'E') { 
        if ($att{'L1'} eq 'S') { 
          return '_'; # unique at depth 4
        } 
        return 'S';
      } 
      if ($att{'R3'} eq 'G') { 
        if ($att{'L3'} eq 'I') { 
          return 'KCLK'; # unique at depth 4
        } 
        return 'S';
      } 
      if ($att{'R3'} eq 'L') { 
        if ($att{'R2'} eq 'L') { 
          if ($att{'L3'} eq 'R') { 
            return '_'; # unique at depth 5
          } 
          return 'S';
        } 
        return '_';
      } 
      if ($att{'R3'} eq 'N') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'R') { 
        return 'SH'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'S') { 
        if ($att{'L3'} eq '-') { 
          return '_'; # unique at depth 4
        } 
        return 'S';
      } 
      if ($att{'R3'} eq 'T') { 
        if ($att{'L3'} eq 'P') { 
          return 'SH'; # unique at depth 4
        } 
        return 'S';
      } 
      if ($att{'R3'} eq 'U') { 
        return '_'; # unique at depth 3
      } 
      return 'S';
    } 
    if ($att{'R1'} eq 'K') { 
      if ($att{'L2'} eq 'L') { 
        if ($att{'L1'} eq 'A') { 
          return '_'; # unique at depth 4
        } 
        return 'KCLK';
      } 
      return 'KCLK';
    } 
    if ($att{'R1'} eq 'L') { 
      if ($att{'L1'} eq 'S') { 
        if ($att{'L2'} eq 'I') { 
          return 'KCLK'; # unique at depth 4
        } 
        return 'AX';
      } 
      return 'KCLK';
    } 
    if ($att{'R1'} eq 'O') { 
      if ($att{'L1'} eq 'C') { 
        if ($att{'L2'} eq 'M') { 
          return 'KCLK'; # unique at depth 4
        } 
        return '_';
      } 
      return 'KCLK';
    } 
    if ($att{'R1'} eq 'Q') { 
      return '_'; # unique at depth 2
    } 
    if ($att{'R1'} eq 'T') { 
      if ($att{'L3'} eq 'N') { 
        if ($att{'R3'} eq 'C') { 
          return '_'; # unique at depth 4
        } 
        return 'KCLK';
      } 
      if ($att{'L3'} eq 'U') { 
        return 'AE+1'; # unique at depth 3
      } 
      if ($att{'L3'} eq 'X') { 
        return 'EH+1'; # unique at depth 3
      } 
      return 'KCLK';
    } 
    if ($att{'R1'} eq 'U') { 
      if ($att{'L1'} eq 'C') { 
        if ($att{'R2'} eq 'R') { 
          return '_'; # unique at depth 4
        } 
        return 'Y';
      } 
      return 'KCLK';
    } 
    if ($att{'R1'} eq 'Y') { 
      return 'S'; # unique at depth 2
    } 
    if ($att{'R1'} eq '-') { 
      if ($att{'L3'} eq 'A') { 
        if ($att{'L2'} eq 'T') { 
          return 'KCL';
        } 
        return 'KCLK';
      } 
      return 'KCLK';
    } 
    return 'KCLK';
  } 
  if ($att{'L'} eq 'D') { 
    if ($att{'R1'} eq 'E') { 
      if ($att{'L1'} eq 'A') { 
        if ($att{'L3'} eq 'L') { 
          return 'DX'; # unique at depth 4
        } 
        return 'DCLD';
      } 
      if ($att{'L1'} eq 'D') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'R') { 
        if ($att{'R3'} eq '-') { 
          if ($att{'L2'} eq 'A') { 
            return 'DCLD'; # unique at depth 5
          } 
          return 'DX';
        } 
        return 'DCLD';
      } 
      return 'DCLD';
    } 
    if ($att{'R1'} eq 'G') { 
      return '_'; # unique at depth 2
    } 
    if ($att{'R1'} eq 'I') { 
      if ($att{'L1'} eq 'D') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'N') { 
        if ($att{'R3'} eq 'G') { 
          if ($att{'L2'} eq 'E') { 
            return 'DCLD'; # unique at depth 5
          } 
          return 'N';
        } 
        return 'DCLD';
      } 
      return 'DCLD';
    } 
    if ($att{'R1'} eq 'L') { 
      if ($att{'L1'} eq 'D') { 
        return '_'; # unique at depth 3
      } 
      return 'DCLD';
    } 
    if ($att{'R1'} eq 'O') { 
      if ($att{'L2'} eq 'M') { 
        return 'KCLK'; # unique at depth 3
      } 
      return 'DCLD';
    } 
    if ($att{'R1'} eq 'S') { 
      if ($att{'L3'} eq 'I') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L3'} eq '-') { 
        if ($att{'R2'} eq 'I') { 
          return 'H#'; # unique at depth 4
        } 
        return 'DCLD';
      } 
      return 'DCLD';
    } 
    if ($att{'R1'} eq 'U') { 
      if ($att{'L1'} eq 'A') { 
        if ($att{'L2'} eq '-') { 
          return 'DCLD'; # unique at depth 4
        } 
        return 'DCLJH';
      } 
      if ($att{'L1'} eq 'E') { 
        if ($att{'L2'} eq 'R') { 
          return 'DCLD'; # unique at depth 4
        } 
        return 'DCLJH';
      } 
      if ($att{'L1'} eq 'I') { 
        return 'DCLJH'; # unique at depth 3
      } 
      return 'DCLD';
    } 
    if ($att{'R1'} eq '-') { 
      if ($att{'L2'} eq 'A') { 
        if ($att{'L1'} eq 'D') { 
          return '_'; # unique at depth 4
        } 
        return 'DCLD';
      } 
      if ($att{'L2'} eq 'B') { 
        if ($att{'L3'} eq 'I') { 
          return 'BCLDCL'; # unique at depth 4
        } 
        return 'DCLD';
      } 
      if ($att{'L2'} eq 'C') { 
        if ($att{'L3'} eq 'R') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'U') { 
          return '_'; # unique at depth 4
        } 
        return 'DCLD';
      } 
      if ($att{'L2'} eq 'D') { 
        if ($att{'L3'} eq 'A') { 
          return 'DCL';
        } 
        return 'DCLD';
      } 
      if ($att{'L2'} eq 'G') { 
        if ($att{'L3'} eq 'R') { 
          return 'DCL'; # unique at depth 4
        } 
        return 'DCLD';
      } 
      if ($att{'L2'} eq 'K') { 
        if ($att{'L3'} eq 'S') { 
          return 'KCLTCL'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'L2'} eq 'O') { 
        if ($att{'L1'} eq 'L') { 
          return 'DCL';
        } 
        return 'DCLD';
      } 
      if ($att{'L2'} eq 'P') { 
        return '_';
      } 
      if ($att{'L2'} eq 'S') { 
        if ($att{'L3'} eq 'A') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'R') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'S') { 
          return '_';
        } 
        return 'DCLD';
      } 
      if ($att{'L2'} eq 'X') { 
        return 'TCLT'; # unique at depth 3
      } 
      return 'DCLD';
    } 
    return 'DCLD';
  } 
  if ($att{'L'} eq 'E') { 
    if ($att{'R1'} eq 'A') { 
      if ($att{'R2'} eq 'B') { 
        return 'IY+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'C') { 
        if ($att{'R3'} eq 'E') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'H') { 
          if ($att{'L1'} eq 'R') { 
            return 'IY+1'; # unique at depth 5
          } 
          if ($att{'L1'} eq 'T') { 
            return 'IY+1'; # unique at depth 5
          } 
          if ($att{'L1'} eq '-') { 
            return 'IY'; # unique at depth 5
          } 
          return 'IY+1';
        } 
        if ($att{'R3'} eq 'T') { 
          return 'IY'; # unique at depth 4
        } 
        return 'IY+1';
      } 
      if ($att{'R2'} eq 'D') { 
        if ($att{'R3'} eq 'E') { 
          if ($att{'L1'} eq 'H') { 
            return 'EH+1'; # unique at depth 5
          } 
          if ($att{'L1'} eq 'L') { 
            return 'IY+1'; # unique at depth 5
          } 
          return 'IY+1';
        } 
        if ($att{'R3'} eq 'I') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'L') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'M') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'S') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'W') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'Y') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq '-') { 
          if ($att{'L1'} eq 'H') { 
            return 'EH+1'; # unique at depth 5
          } 
          if ($att{'L1'} eq 'L') { 
            return 'EH+1'; # unique at depth 5
          } 
          if ($att{'L1'} eq 'R') { 
            if ($att{'L2'} eq 'P') { 
              return 'EH+1'; # unique at depth 6
            } 
            if ($att{'L2'} eq '-') { 
              return 'IY+1'; # unique at depth 6
            } 
            return 'EH+1';
          } 
          if ($att{'L1'} eq 'T') { 
            return 'EH+1'; # unique at depth 5
          } 
          return 'EH+1';
        } 
        return 'EH+1';
      } 
      if ($att{'R2'} eq 'F') { 
        return 'EH+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'G') { 
        return 'IY+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'K') { 
        if ($att{'L2'} eq 'B') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'S') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'W') { 
          return 'IY+1'; # unique at depth 4
        } 
        return 'IY+1';
      } 
      if ($att{'R2'} eq 'L') { 
        if ($att{'R3'} eq 'I') { 
          if ($att{'L1'} eq 'R') { 
            if ($att{'L2'} eq '-') { 
              if ($att{'L3'} eq '-') { 
                return 'IY+1'; # depth limit (2/3; 2 classes) at depth 7
              } 
              return 'IY+1';
            } 
            return 'IY+1';
          } 
          return 'IY+1';
        } 
        if ($att{'R3'} eq 'S') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'T') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq '-') { 
          return 'IY+1'; # unique at depth 4
        } 
        return 'IY+1';
      } 
      if ($att{'R2'} eq 'M') { 
        return 'IY+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'N') { 
        return 'IY+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'P') { 
        return 'EH+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'R') { 
        if ($att{'R3'} eq 'B') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'C') { 
          return 'AH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'D') { 
          if ($att{'L1'} eq 'B') { 
            return 'IY+1'; # unique at depth 5
          } 
          if ($att{'L1'} eq 'H') { 
            return 'AH+1'; # unique at depth 5
          } 
          if ($att{'L1'} eq 'L') { 
            return 'IY+1'; # unique at depth 5
          } 
          return 'IY+1';
        } 
        if ($att{'R3'} eq 'E') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'I') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'L') { 
          if ($att{'L1'} eq 'N') { 
            return 'IY+1'; # unique at depth 5
          } 
          if ($att{'L1'} eq '-') { 
            return 'AH+1'; # unique at depth 5
          } 
          return 'AH+1';
        } 
        if ($att{'R3'} eq 'M') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'N') { 
          return 'AH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'S') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'T') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'R3'} eq '-') { 
          if ($att{'L1'} eq 'F') { 
            return 'IY+1'; # unique at depth 5
          } 
          if ($att{'L1'} eq 'H') { 
            return 'IY+1'; # unique at depth 5
          } 
          if ($att{'L1'} eq 'L') { 
            if ($att{'L3'} eq '-') { 
              return 'IY+1'; # unique at depth 6
            } 
            return 'IY';
          } 
          if ($att{'L1'} eq 'N') { 
            return 'IY'; # unique at depth 5
          } 
          if ($att{'L1'} eq 'Y') { 
            return 'IY+1'; # unique at depth 5
          } 
          return 'IY+1';
        } 
        return 'IY+1';
      } 
      if ($att{'R2'} eq 'S') { 
        if ($att{'R3'} eq 'E') { 
          if ($att{'L1'} eq 'R') { 
            return 'IY';
          } 
          if ($att{'L1'} eq 'S') { 
            return 'IY+1'; # unique at depth 5
          } 
          if ($att{'L1'} eq '-') { 
            return 'IY+1'; # unique at depth 5
          } 
          return 'IY+1';
        } 
        if ($att{'R3'} eq 'I') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'L') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'O') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'T') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'U') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'Y') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq '-') { 
          if ($att{'L2'} eq 'I') { 
            return 'IY+1'; # unique at depth 5
          } 
          return 'IY';
        } 
        return 'IY+1';
      } 
      if ($att{'R2'} eq 'T') { 
        if ($att{'L2'} eq 'B') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'C') { 
          return 'IY'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'E') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'G') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'H') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'N') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'Q') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'T') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'W') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          if ($att{'L1'} eq 'B') { 
            return 'IY+1'; # unique at depth 5
          } 
          if ($att{'L1'} eq 'D') { 
            return 'EH+1'; # unique at depth 5
          } 
          if ($att{'L1'} eq 'H') { 
            return 'IY+1'; # unique at depth 5
          } 
          if ($att{'L1'} eq 'S') { 
            return 'IY+1'; # unique at depth 5
          } 
          return 'IY+1';
        } 
        return 'IY+1';
      } 
      if ($att{'R2'} eq 'V') { 
        if ($att{'L1'} eq 'B') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'H') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'L') { 
          return 'IY+1'; # unique at depth 4
        } 
        return 'IY+1';
      } 
      if ($att{'R2'} eq '-') { 
        if ($att{'L2'} eq 'P') { 
          return 'IY+1'; # unique at depth 4
        } 
        return 'IY';
      } 
      return 'IY+1';
    } 
    if ($att{'R1'} eq 'B') { 
      if ($att{'R2'} eq 'A') { 
        return 'IH'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'I') { 
        return 'EH+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'T') { 
        return 'EH+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'U') { 
        return '_'; # unique at depth 3
      } 
      return 'EH+1';
    } 
    if ($att{'R1'} eq 'C') { 
      if ($att{'R3'} eq 'A') { 
        if ($att{'L3'} eq 'P') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          return 'EH+1'; # unique at depth 4
        } 
        return 'EH+1';
      } 
      if ($att{'R3'} eq 'C') { 
        return 'IY'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'D') { 
        return 'EH+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'E') { 
        if ($att{'L2'} eq 'E') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'N') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'O') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'S') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'X') { 
          return 'PCLP'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          if ($att{'R2'} eq 'R') { 
            if ($att{'L1'} eq 'S') { 
              if ($att{'L3'} eq '-') { 
                return 'EH+1'; # depth limit (1/2; 2 classes) at depth 7
              } 
              return 'EH+1';
            } 
            return 'EH+1';
          } 
          return 'EH+1';
        } 
        return 'EH+1';
      } 
      if ($att{'R3'} eq 'F') { 
        return 'IH'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'G') { 
        return 'EH+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'I') { 
        if ($att{'L2'} eq 'E') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'F') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'I') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'L') { 
          return 'EH'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'N') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'O') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'S') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'IH';
        } 
        return 'EH+1';
      } 
      if ($att{'R3'} eq 'L') { 
        if ($att{'L2'} eq 'I') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'S') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'IY'; # unique at depth 4
        } 
        return 'EH+1';
      } 
      if ($att{'R3'} eq 'M') { 
        return 'IH';
      } 
      if ($att{'R3'} eq 'N') { 
        if ($att{'L1'} eq 'R') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'S') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq '-') { 
          return 'IY+1'; # unique at depth 4
        } 
        return 'IY+1';
      } 
      if ($att{'R3'} eq 'O') { 
        return 'EH+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'P') { 
        return 'IH'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'R') { 
        if ($att{'R2'} eq 'A') { 
          return '_'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'R3'} eq 'S') { 
        if ($att{'L1'} eq 'D') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'F') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'N') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'R') { 
          return '_'; # unique at depth 4
        } 
        return 'EH+1';
      } 
      if ($att{'R3'} eq 'T') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'U') { 
        return 'IH'; # unique at depth 3
      } 
      if ($att{'R3'} eq '-') { 
        if ($att{'L1'} eq 'F') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'J') { 
          if ($att{'L3'} eq 'R') { 
            return 'EH'; # unique at depth 5
          } 
          if ($att{'L3'} eq 'U') { 
            return 'EH+1'; # unique at depth 5
          } 
          return 'EH+1';
        } 
        if ($att{'L1'} eq 'L') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'N') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'P') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'T') { 
          return 'EH+1'; # unique at depth 4
        } 
        return 'EH+1';
      } 
      return 'EH+1';
    } 
    if ($att{'R1'} eq 'D') { 
      if ($att{'L1'} eq 'C') { 
        if ($att{'L3'} eq 'D') { 
          return 'TCLT'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'O') { 
          return 'TCLT'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'R') { 
          return 'IH'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'L1'} eq 'D') { 
        if ($att{'L3'} eq 'A') { 
          if ($att{'L2'} eq 'U') { 
            return 'AX'; # unique at depth 5
          } 
          return 'IH';
        } 
        if ($att{'L3'} eq 'E') { 
          if ($att{'L2'} eq 'A') { 
            return 'IH';
          } 
          return 'AX';
        } 
        if ($att{'L3'} eq 'L') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'V') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          if ($att{'L2'} eq '-') { 
            return 'EH+1'; # unique at depth 5
          } 
          return 'IH';
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'E') { 
        if ($att{'L2'} eq 'F') { 
          return 'IY+1'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'L1'} eq 'F') { 
        if ($att{'L3'} eq 'E') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          return 'EH+1'; # unique at depth 4
        } 
        return 'EH+1';
      } 
      if ($att{'L1'} eq 'G') { 
        if ($att{'L3'} eq 'L') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'R') { 
          return 'IH'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'L1'} eq 'H') { 
        if ($att{'L3'} eq 'A') { 
          return 'IY+1'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'L1'} eq 'I') { 
        if ($att{'L3'} eq 'L') { 
          return 'IY'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'R') { 
          return 'IY'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'U') { 
          if ($att{'L2'} eq 'P') { 
            return '_'; # unique at depth 5
          } 
          return 'IY';
        } 
        return '_';
      } 
      if ($att{'L1'} eq 'K') { 
        if ($att{'L2'} eq 'R') { 
          if ($att{'L3'} eq 'A') { 
            return '_';
          } 
          return 'TCLT';
        } 
        if ($att{'L2'} eq 'S') { 
          return '_'; # unique at depth 4
        } 
        return 'TCLT';
      } 
      if ($att{'L1'} eq 'L') { 
        if ($att{'L2'} eq 'B') { 
          return 'L'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'I') { 
          if ($att{'L3'} eq '-') { 
            return 'L'; # unique at depth 5
          } 
          return '_';
        } 
        if ($att{'L2'} eq 'P') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'EH+1'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'L1'} eq 'M') { 
        if ($att{'R2'} eq 'D') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'I') { 
          if ($att{'R3'} eq 'A') { 
            return 'IY+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'C') { 
            return 'EH+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'T') { 
            return 'EH+1'; # unique at depth 5
          } 
          return 'EH+1';
        } 
        if ($att{'R2'} eq 'Y') { 
          return 'IH'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'L1'} eq 'P') { 
        if ($att{'L3'} eq 'I') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          return 'AX'; # unique at depth 4
        } 
        return 'TCLT';
      } 
      if ($att{'L1'} eq 'R') { 
        if ($att{'L2'} eq 'C') { 
          if ($att{'L3'} eq 'A') { 
            return 'IH'; # unique at depth 5
          } 
          if ($att{'L3'} eq '-') { 
            return 'EH+1'; # unique at depth 5
          } 
          return 'EH+1';
        } 
        if ($att{'L2'} eq 'D') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'P') { 
          if ($att{'R2'} eq 'A') { 
            return 'IY'; # unique at depth 5
          } 
          if ($att{'R2'} eq 'E') { 
            return 'EH+1'; # unique at depth 5
          } 
          return 'EH+1';
        } 
        if ($att{'L2'} eq '-') { 
          return 'IH'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'L1'} eq 'S') { 
        if ($att{'L3'} eq 'A') { 
          if ($att{'L2'} eq 'S') { 
            return 'TCLT'; # unique at depth 5
          } 
          return '_';
        } 
        if ($att{'L3'} eq 'E') { 
          if ($att{'L2'} eq 'S') { 
            return '_';
          } 
          return 'TCLT';
        } 
        if ($att{'L3'} eq 'F') { 
          return 'Z'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'I') { 
          return 'TCLT'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'N') { 
          return 'TCLT'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'O') { 
          return 'TCLT'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          if ($att{'L2'} eq 'A') { 
            return 'TCLT'; # unique at depth 5
          } 
          return 'Z';
        } 
        return '_';
      } 
      if ($att{'L1'} eq 'T') { 
        if ($att{'L2'} eq 'A') { 
          if ($att{'L3'} eq 'C') { 
            return 'IH';
          } 
          if ($att{'L3'} eq 'E') { 
            if ($att{'R2'} eq 'L') { 
              return 'IH'; # unique at depth 6
            } 
            return 'AX';
          } 
          if ($att{'L3'} eq 'M') { 
            return 'IH'; # unique at depth 5
          } 
          return 'AX';
        } 
        if ($att{'L2'} eq 'I') { 
          if ($att{'L3'} eq 'M') { 
            return 'IH'; # unique at depth 5
          } 
          if ($att{'L3'} eq 'R') { 
            return 'IH'; # unique at depth 5
          } 
          return 'AX';
        } 
        if ($att{'L2'} eq 'N') { 
          if ($att{'L3'} eq 'I') { 
            return 'IH'; # unique at depth 5
          } 
          return 'AX';
        } 
        if ($att{'L2'} eq 'R') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'T') { 
          if ($att{'R2'} eq 'L') { 
            return 'IH'; # unique at depth 5
          } 
          return '_';
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'U') { 
        return 'UW'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'X') { 
        return 'S'; # unique at depth 3
      } 
      if ($att{'L1'} eq '-') { 
        return 'EH+1'; # unique at depth 3
      } 
      return '_';
    } 
    if ($att{'R1'} eq 'E') { 
      if ($att{'L1'} eq 'B') { 
        if ($att{'R2'} eq 'F') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'N') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'P') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'R') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq '-') { 
          return 'IY+1'; # unique at depth 4
        } 
        return 'IY+1';
      } 
      if ($att{'L1'} eq 'C') { 
        return 'IY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'F') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'G') { 
        return 'DCLJH'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'K') { 
        return 'IY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'L') { 
        return 'IY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'M') { 
        return 'IY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'N') { 
        return 'IY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'P') { 
        return 'IY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'R') { 
        if ($att{'R2'} eq 'D') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'M') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'N') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'S') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'T') { 
          if ($att{'L2'} eq 'T') { 
            return 'IY+1'; # unique at depth 5
          } 
          return 'IY';
        } 
        if ($att{'R2'} eq '-') { 
          if ($att{'L2'} eq 'F') { 
            return 'IY+1'; # unique at depth 5
          } 
          if ($att{'L2'} eq 'G') { 
            return '_'; # unique at depth 5
          } 
          if ($att{'L2'} eq 'H') { 
            return 'IY+1'; # unique at depth 5
          } 
          return 'IY+1';
        } 
        return 'IY+1';
      } 
      if ($att{'L1'} eq 'S') { 
        return 'IY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'T') { 
        if ($att{'L2'} eq 'E') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'F') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'H') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'N') { 
          if ($att{'L3'} eq 'A') { 
            return 'IY+1'; # unique at depth 5
          } 
          if ($att{'L3'} eq 'E') { 
            return '_'; # unique at depth 5
          } 
          if ($att{'L3'} eq 'U') { 
            return 'IY+1'; # unique at depth 5
          } 
          return 'IY+1';
        } 
        if ($att{'L2'} eq 'R') { 
          if ($att{'L3'} eq 'U') { 
            return 'IY+1'; # unique at depth 5
          } 
          return '_';
        } 
        if ($att{'L2'} eq 'S') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'T') { 
          return 'IY'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'X') { 
          return 'TCLT'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'IY+1'; # unique at depth 4
        } 
        return 'IY+1';
      } 
      if ($att{'L1'} eq 'U') { 
        return 'IY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'W') { 
        return 'IY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'Y') { 
        return 'IY+1'; # unique at depth 3
      } 
      return 'IY+1';
    } 
    if ($att{'R1'} eq 'F') { 
      if ($att{'R3'} eq 'C') { 
        if ($att{'L2'} eq '-') { 
          return 'IY'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'R3'} eq 'D') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'E') { 
        if ($att{'L2'} eq 'A') { 
          return '_'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'R3'} eq 'G') { 
        return 'EH+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'L') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'N') { 
        if ($att{'R2'} eq 'I') { 
          return 'IY'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'R3'} eq 'O') { 
        return 'EH+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'R') { 
        if ($att{'R2'} eq 'E') { 
          if ($att{'L2'} eq '-') { 
            return 'IH';
          } 
          return 'IY';
        } 
        return 'IH';
      } 
      if ($att{'R3'} eq 'S') { 
        return 'IY'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'T') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'R3'} eq '-') { 
        if ($att{'L2'} eq 'H') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'L') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'R') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'EH+1'; # unique at depth 4
        } 
        return 'IY+1';
      } 
      return 'IH';
    } 
    if ($att{'R1'} eq 'G') { 
      if ($att{'R3'} eq 'A') { 
        return 'EH+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'C') { 
        return 'EH+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'D') { 
        return 'EH+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'E') { 
        if ($att{'L1'} eq 'B') { 
          return 'EH+1'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'R3'} eq 'I') { 
        return 'EH+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'L') { 
        if ($att{'L1'} eq 'L') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'R') { 
          return 'EH+1'; # unique at depth 4
        } 
        return 'IY+1';
      } 
      if ($att{'R3'} eq 'N') { 
        if ($att{'L1'} eq 'R') { 
          return 'EY+1'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'R3'} eq 'S') { 
        return 'EH+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'T') { 
        if ($att{'R2'} eq 'I') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'O') { 
          return 'IH';
        } 
        return 'AX';
      } 
      if ($att{'R3'} eq '-') { 
        if ($att{'L3'} eq '-') { 
          return 'EY+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      return 'EH+1';
    } 
    if ($att{'R1'} eq 'H') { 
      if ($att{'R3'} eq 'C') { 
        return 'IY+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'D') { 
        return 'IY'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'L') { 
        return 'IH'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'M') { 
        return 'IY+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'N') { 
        return 'IH'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'S') { 
        return 'IY+1'; # unique at depth 3
      } 
      return 'IY+1';
    } 
    if ($att{'R1'} eq 'I') { 
      if ($att{'L1'} eq 'B') { 
        return 'IY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'C') { 
        return 'IY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'H') { 
        if ($att{'L2'} eq '-') { 
          return '_'; # unique at depth 4
        } 
        return 'EH';
      } 
      if ($att{'L1'} eq 'R') { 
        return 'IY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'S') { 
        return 'IY+1'; # unique at depth 3
      } 
      return '_';
    } 
    if ($att{'R1'} eq 'J') { 
      return 'IH'; # unique at depth 2
    } 
    if ($att{'R1'} eq 'L') { 
      if ($att{'L2'} eq 'A') { 
        if ($att{'L3'} eq '-') { 
          return '_'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L2'} eq 'C') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'D') { 
        return 'EH+1'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'E') { 
        if ($att{'R2'} eq 'O') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'S') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'Y') { 
          if ($att{'L1'} eq 'V') { 
            return 'AX'; # unique at depth 5
          } 
          return '_';
        } 
        if ($att{'R2'} eq '-') { 
          if ($att{'L3'} eq 'T') { 
            return '_'; # unique at depth 5
          } 
          return 'AX';
        } 
        return 'EH+1';
      } 
      if ($att{'L2'} eq 'F') { 
        return 'IY+1'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'H') { 
        if ($att{'L3'} eq 'C') { 
          return '_'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L2'} eq 'I') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'L') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'M') { 
        return 'EH+1'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'N') { 
        if ($att{'L3'} eq '-') { 
          return 'AE'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L2'} eq 'O') { 
        if ($att{'L1'} eq 'W') { 
          return 'AX'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'L2'} eq 'R') { 
        return 'EH+1'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'S') { 
        if ($att{'L3'} eq 'I') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          return 'EH+1'; # unique at depth 4
        } 
        return 'EH+1';
      } 
      if ($att{'L2'} eq 'T') { 
        return 'EH+1'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'W') { 
        return 'EH+1'; # unique at depth 3
      } 
      if ($att{'L2'} eq '-') { 
        if ($att{'R3'} eq 'A') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'C') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'E') { 
          if ($att{'L1'} eq 'B') { 
            return 'IY'; # unique at depth 5
          } 
          if ($att{'L1'} eq 'P') { 
            return 'EH+1'; # unique at depth 5
          } 
          if ($att{'L1'} eq 'R') { 
            return 'IH'; # unique at depth 5
          } 
          if ($att{'L1'} eq '-') { 
            return 'EH+1'; # unique at depth 5
          } 
          return 'EH+1';
        } 
        if ($att{'R3'} eq 'G') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'I') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'M') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'N') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'O') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'S') { 
          if ($att{'L1'} eq 'W') { 
            return 'EH+1'; # unique at depth 5
          } 
          return 'AX';
        } 
        if ($att{'R3'} eq 'T') { 
          if ($att{'R2'} eq 'A') { 
            if ($att{'L1'} eq 'R') { 
              if ($att{'L3'} eq '-') { 
                return 'EH+1'; # depth limit (1/2; 2 classes) at depth 7
              } 
              return 'EH+1';
            } 
            return 'EH+1';
          } 
          return 'EH+1';
        } 
        if ($att{'R3'} eq 'V') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'Y') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'Z') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'R3'} eq '-') { 
          if ($att{'R2'} eq 'D') { 
            return 'EH+1'; # unique at depth 5
          } 
          if ($att{'R2'} eq 'L') { 
            if ($att{'L1'} eq 'T') { 
              return 'EH+1'; # unique at depth 6
            } 
            if ($att{'L1'} eq 'W') { 
              return 'EH'; # unique at depth 6
            } 
            return 'EH+1';
          } 
          if ($att{'R2'} eq 'P') { 
            return 'EH+1'; # unique at depth 5
          } 
          if ($att{'R2'} eq 'T') { 
            return 'EH+1'; # unique at depth 5
          } 
          return 'EH+1';
        } 
        return 'EH+1';
      } 
      return 'EH+1';
    } 
    if ($att{'R1'} eq 'M') { 
      if ($att{'L1'} eq 'C') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'D') { 
        if ($att{'R2'} eq 'A') { 
          if ($att{'L3'} eq 'R') { 
            return '_'; # unique at depth 5
          } 
          return 'IH';
        } 
        if ($att{'R2'} eq 'I') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'O') { 
          if ($att{'R3'} eq 'C') { 
            if ($att{'L2'} eq '-') { 
              if ($att{'L3'} eq '-') { 
                return 'EH+1'; # depth limit (2/3; 2 classes) at depth 7
              } 
              return 'EH+1';
            } 
            return 'EH+1';
          } 
          if ($att{'R3'} eq 'N') { 
            return 'EH+1'; # unique at depth 5
          } 
          return 'EH+1';
        } 
        if ($att{'R2'} eq 'Y') { 
          return 'AX'; # unique at depth 4
        } 
        return 'EH+1';
      } 
      if ($att{'L1'} eq 'E') { 
        if ($att{'L3'} eq 'G') { 
          return 'IY+1'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'L1'} eq 'G') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'H') { 
        if ($att{'R2'} eq '-') { 
          return 'EH'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'L') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'M') { 
        return 'EH+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'N') { 
        if ($att{'L2'} eq 'U') { 
          return 'EH'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'R') { 
        if ($att{'R3'} eq 'D') { 
          if ($att{'L2'} eq 'P') { 
            return 'IH'; # unique at depth 5
          } 
          if ($att{'L2'} eq '-') { 
            return 'EH+1'; # unique at depth 5
          } 
          return 'EH+1';
        } 
        if ($att{'R3'} eq 'I') { 
          return 'IY';
        } 
        if ($att{'R3'} eq 'N') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'R') { 
          if ($att{'L2'} eq 'T') { 
            return 'EH+1'; # unique at depth 5
          } 
          return 'IH';
        } 
        if ($att{'R3'} eq '-') { 
          return 'IY+1'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'L1'} eq 'S') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'T') { 
        if ($att{'R2'} eq 'M') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'P') { 
          if ($att{'R3'} eq 'O') { 
            return 'EH+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'T') { 
            return 'EH'; # unique at depth 5
          } 
          return 'EH+1';
        } 
        if ($att{'R2'} eq '-') { 
          return 'IH'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'V') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'X') { 
        return 'Z'; # unique at depth 3
      } 
      if ($att{'L1'} eq '-') { 
        if ($att{'R3'} eq 'A') { 
          if ($att{'R2'} eq 'P') { 
            return 'EH+1'; # unique at depth 5
          } 
          return 'IH';
        } 
        if ($att{'R3'} eq 'L') { 
          if ($att{'R2'} eq 'I') { 
            return 'EH+1'; # unique at depth 5
          } 
          return 'EH';
        } 
        if ($att{'R3'} eq 'R') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'S') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'T') { 
          return 'EH+1'; # unique at depth 4
        } 
        return 'EH+1';
      } 
      return 'EH+1';
    } 
    if ($att{'R1'} eq 'N') { 
      if ($att{'L1'} eq 'B') { 
        if ($att{'L3'} eq 'U') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          return 'EH+1'; # unique at depth 4
        } 
        return 'EH+1';
      } 
      if ($att{'L1'} eq 'C') { 
        if ($att{'L2'} eq 'A') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'E') { 
          if ($att{'R3'} eq 'L') { 
            return 'AX'; # unique at depth 5
          } 
          return 'IH';
        } 
        if ($att{'L2'} eq 'N') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'R') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'EH+1'; # unique at depth 4
        } 
        return 'EH+1';
      } 
      if ($att{'L1'} eq 'D') { 
        if ($att{'L2'} eq 'D') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'E') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'I') { 
          if ($att{'R3'} eq 'I') { 
            return 'EH+1'; # unique at depth 5
          } 
          return 'AX';
        } 
        if ($att{'L2'} eq 'N') { 
          if ($att{'R3'} eq '-') { 
            return 'EH'; # unique at depth 5
          } 
          return 'AX';
        } 
        if ($att{'L2'} eq 'U') { 
          if ($att{'R3'} eq '-') { 
            return '_'; # unique at depth 5
          } 
          return 'AX';
        } 
        if ($att{'L2'} eq '-') { 
          if ($att{'R2'} eq 'G') { 
            return 'EH+1'; # unique at depth 5
          } 
          return 'IH';
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'E') { 
        if ($att{'L3'} eq 'N') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'R') { 
          if ($att{'R3'} eq 'H') { 
            return 'IY+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq '-') { 
            if ($att{'R2'} eq '-') { 
              if ($att{'L2'} eq 'T') { 
                return 'IY+1'; # depth limit (1/2; 2 classes) at depth 7
              } 
              return 'IY+1';
            } 
            return 'IY+1';
          } 
          return 'IY+1';
        } 
        if ($att{'L3'} eq 'X') { 
          return 'IY+1'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'L1'} eq 'F') { 
        if ($att{'L3'} eq 'E') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          return 'EH+1'; # unique at depth 4
        } 
        return 'EH+1';
      } 
      if ($att{'L1'} eq 'G') { 
        if ($att{'R2'} eq 'C') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'D') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'E') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'T') { 
          return 'AX'; # unique at depth 4
        } 
        return 'EH+1';
      } 
      if ($att{'L1'} eq 'H') { 
        if ($att{'L2'} eq 'E') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'T') { 
          return 'EH'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'W') { 
          return 'EH'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'EH+1'; # unique at depth 4
        } 
        return 'EH+1';
      } 
      if ($att{'L1'} eq 'I') { 
        if ($att{'R2'} eq 'C') { 
          if ($att{'L3'} eq 'E') { 
            return 'IY'; # unique at depth 5
          } 
          return 'AX';
        } 
        if ($att{'R2'} eq 'D') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'T') { 
          if ($att{'L2'} eq 'R') { 
            return 'EH'; # unique at depth 5
          } 
          return 'AX';
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'J') { 
        return 'EH+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'K') { 
        if ($att{'L2'} eq 'A') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'E') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'EH+1'; # unique at depth 4
        } 
        return 'EH+1';
      } 
      if ($att{'L1'} eq 'L') { 
        if ($att{'L2'} eq 'P') { 
          return 'EH+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'M') { 
        if ($att{'L2'} eq 'A') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'E') { 
          if ($att{'L3'} eq 'L') { 
            return 'EH+1'; # unique at depth 5
          } 
          return 'AX';
        } 
        if ($att{'L2'} eq 'I') { 
          return 'M'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'M') { 
          return 'EH'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'N') { 
          if ($att{'R3'} eq 'A') { 
            return 'EH+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'S') { 
            return 'AX'; # unique at depth 5
          } 
          if ($att{'R3'} eq '-') { 
            return 'AX'; # unique at depth 5
          } 
          return 'EH+1';
        } 
        if ($att{'L2'} eq 'O') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'R') { 
          return 'EH'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          if ($att{'R2'} eq 'T') { 
            return 'EH'; # unique at depth 5
          } 
          if ($att{'R2'} eq '-') { 
            return 'EH+1'; # unique at depth 5
          } 
          return 'EH+1';
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'O') { 
        return 'N'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'P') { 
        if ($att{'L2'} eq 'E') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'O') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'P') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'S') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'X') { 
          return 'PCLP'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'EH+1'; # unique at depth 4
        } 
        return 'EH+1';
      } 
      if ($att{'L1'} eq 'R') { 
        if ($att{'R2'} eq 'A') { 
          return 'IY'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'D') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'E') { 
          if ($att{'L3'} eq 'W') { 
            return '_'; # unique at depth 5
          } 
          if ($att{'L3'} eq '-') { 
            return 'IY+1'; # unique at depth 5
          } 
          return 'IY+1';
        } 
        if ($att{'R2'} eq 'O') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'Z') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq '-') { 
          if ($att{'L3'} eq '-') { 
            return 'EH+1'; # unique at depth 5
          } 
          return 'AX';
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'S') { 
        if ($att{'R2'} eq 'A') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'D') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'I') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'S') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'T') { 
          if ($att{'R3'} eq 'A') { 
            return 'EH+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'E') { 
            return 'EH+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'I') { 
            return 'EH+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq '-') { 
            if ($att{'L3'} eq 'R') { 
              return 'IH'; # unique at depth 6
            } 
            if ($att{'L3'} eq '-') { 
              return 'EH+1'; # unique at depth 6
            } 
            return 'EH+1';
          } 
          return 'EH+1';
        } 
        if ($att{'R2'} eq '-') { 
          return 'AX'; # unique at depth 4
        } 
        return 'EH+1';
      } 
      if ($att{'L1'} eq 'T') { 
        if ($att{'L2'} eq 'A') { 
          if ($att{'R2'} eq '-') { 
            return '_'; # unique at depth 5
          } 
          return 'AX';
        } 
        if ($att{'L2'} eq 'C') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'F') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'H') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'N') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'O') { 
          if ($att{'R3'} eq 'I') { 
            return 'EH+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq '-') { 
            return '_'; # unique at depth 5
          } 
          return 'EH+1';
        } 
        if ($att{'L2'} eq 'R') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'S') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'T') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'EH+1'; # unique at depth 4
        } 
        return 'EH+1';
      } 
      if ($att{'L1'} eq 'V') { 
        if ($att{'R3'} eq 'A') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'E') { 
          if ($att{'L3'} eq 'O') { 
            return 'IY+1'; # unique at depth 5
          } 
          return 'AX';
        } 
        if ($att{'R3'} eq 'I') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'U') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq '-') { 
          if ($att{'L3'} eq 'L') { 
            return 'IH'; # unique at depth 5
          } 
          return 'AX';
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'W') { 
        if ($att{'L2'} eq 'O') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'T') { 
          return 'EH+1'; # unique at depth 4
        } 
        return 'EH+1';
      } 
      if ($att{'L1'} eq '-') { 
        if ($att{'R2'} eq 'D') { 
          if ($att{'R3'} eq 'S') { 
            if ($att{'L2'} eq '-') { 
              if ($att{'L3'} eq '-') { 
                return 'EH+1'; # depth limit (1/2; 2 classes) at depth 7
              } 
              return 'EH+1';
            } 
            return 'EH+1';
          } 
          if ($att{'R3'} eq '-') { 
            return 'EH+1'; # unique at depth 5
          } 
          return 'EH';
        } 
        if ($att{'R2'} eq 'E') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'G') { 
          if ($att{'R3'} eq 'A') { 
            return 'EH'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'L') { 
            return 'IH+1'; # unique at depth 5
          } 
          return 'IH+1';
        } 
        if ($att{'R2'} eq 'J') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'O') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'R2'} eq '-') { 
          return 'EH+1'; # unique at depth 4
        } 
        return 'EH';
      } 
      return 'AX';
    } 
    if ($att{'R1'} eq 'O') { 
      if ($att{'L1'} eq 'D') { 
        return 'IY'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'G') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'H') { 
        return 'IY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'L') { 
        return 'EH+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'M') { 
        return 'W'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'P') { 
        return 'IY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'R') { 
        return 'IY'; # unique at depth 3
      } 
      return 'IY+1';
    } 
    if ($att{'R1'} eq 'P') { 
      if ($att{'R2'} eq 'A') { 
        return 'IH'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'E') { 
        if ($att{'L2'} eq 'B') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'K') { 
          return '_'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'R2'} eq 'H') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'I') { 
        if ($att{'L2'} eq 'K') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'EH+1'; # unique at depth 4
        } 
        return 'EH+1';
      } 
      if ($att{'R2'} eq 'L') { 
        return 'IH'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'O') { 
        return 'IH';
      } 
      if ($att{'R2'} eq 'P') { 
        return 'EH+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'R') { 
        return 'EH+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'T') { 
        return 'EH+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'U') { 
        if ($att{'R3'} eq 'B') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'T') { 
          return 'EH+1'; # unique at depth 4
        } 
        return 'EH+1';
      } 
      if ($att{'R2'} eq '-') { 
        if ($att{'L2'} eq 'K') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'P') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'S') { 
          return 'EH+1'; # unique at depth 4
        } 
        return 'EH+1';
      } 
      return 'EH+1';
    } 
    if ($att{'R1'} eq 'Q') { 
      if ($att{'L1'} eq 'D') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'N') { 
        return 'EH+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'R') { 
        if ($att{'R3'} eq 'E') { 
          return 'IY'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'L1'} eq 'S') { 
        return 'IY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq '-') { 
        if ($att{'R3'} eq 'A') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'I') { 
          return 'IH'; # unique at depth 4
        } 
        return 'IY+1';
      } 
      return 'IH';
    } 
    if ($att{'R1'} eq 'R') { 
      if ($att{'R2'} eq 'E') { 
        if ($att{'L1'} eq 'C') { 
          if ($att{'L3'} eq 'I') { 
            return 'IY+1'; # unique at depth 5
          } 
          if ($att{'L3'} eq '-') { 
            return 'EH+1'; # unique at depth 5
          } 
          return 'EH+1';
        } 
        if ($att{'L1'} eq 'E') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'G') { 
          if ($att{'L3'} eq 'A') { 
            return 'EY'; # unique at depth 5
          } 
          return 'AX';
        } 
        if ($att{'L1'} eq 'H') { 
          if ($att{'L2'} eq 'W') { 
            return '_'; # unique at depth 5
          } 
          if ($att{'L2'} eq '-') { 
            return 'IY+1'; # unique at depth 5
          } 
          return 'EH';
        } 
        if ($att{'L1'} eq 'M') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'V') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'W') { 
          if ($att{'L2'} eq '-') { 
            return 'AH'; # unique at depth 5
          } 
          return 'AX';
        } 
        if ($att{'L1'} eq 'Y') { 
          return 'EH+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'R2'} eq 'G') { 
        if ($att{'L1'} eq 'M') { 
          return 'AH+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'R2'} eq 'I') { 
        if ($att{'R3'} eq 'A') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'C') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'E') { 
          if ($att{'L2'} eq 'X') { 
            return 'PCLP'; # unique at depth 5
          } 
          if ($att{'L2'} eq '-') { 
            return 'IY+1'; # unique at depth 5
          } 
          return 'AX';
        } 
        if ($att{'R3'} eq 'L') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'M') { 
          return 'PCLP'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'N') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'O') { 
          if ($att{'L2'} eq 'U') { 
            return 'IY+1'; # unique at depth 5
          } 
          if ($att{'L2'} eq '-') { 
            return 'IH+1'; # unique at depth 5
          } 
          return 'IH+1';
        } 
        if ($att{'R3'} eq 'T') { 
          return 'EH+1'; # unique at depth 4
        } 
        return 'EH+1';
      } 
      if ($att{'R2'} eq 'K') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'L') { 
        if ($att{'L2'} eq 'P') { 
          return 'AH'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'R2'} eq 'M') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'N') { 
        if ($att{'L2'} eq 'L') { 
          return 'AH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'N') { 
          if ($att{'R3'} eq '-') { 
            if ($att{'L3'} eq 'O') { 
              return 'AH+1'; # unique at depth 6
            } 
            return 'AH';
          } 
          return 'AX';
        } 
        if ($att{'L2'} eq '-') { 
          if ($att{'L1'} eq 'B') { 
            return 'EH'; # unique at depth 5
          } 
          return 'AH';
        } 
        return 'AX';
      } 
      if ($att{'R2'} eq 'O') { 
        if ($att{'L2'} eq 'A') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'C') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'E') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'N') { 
          return 'AX'; # unique at depth 4
        } 
        return 'EH+1';
      } 
      if ($att{'R2'} eq 'R') { 
        if ($att{'L2'} eq 'E') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'O') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'S') { 
          if ($att{'L3'} eq '-') { 
            return 'EH+1'; # unique at depth 5
          } 
          return 'AX';
        } 
        if ($att{'L2'} eq '-') { 
          return 'EH+1'; # unique at depth 4
        } 
        return 'EH+1';
      } 
      if ($att{'R2'} eq 'S') { 
        if ($att{'R3'} eq 'E') { 
          if ($att{'L2'} eq 'I') { 
            return 'AH+1'; # unique at depth 5
          } 
          return 'AX';
        } 
        if ($att{'R3'} eq 'I') { 
          return 'AH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'O') { 
          if ($att{'L3'} eq 'E') { 
            return 'AH+1'; # unique at depth 5
          } 
          if ($att{'L3'} eq 'I') { 
            return 'AX'; # unique at depth 5
          } 
          if ($att{'L3'} eq '-') { 
            return 'AH+1'; # unique at depth 5
          } 
          return 'AH+1';
        } 
        if ($att{'R3'} eq 'Y') { 
          return 'AH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq '-') { 
          if ($att{'L1'} eq 'K') { 
            if ($att{'L2'} eq 'O') { 
              return 'EH'; # unique at depth 6
            } 
            return 'AX';
          } 
          return 'AX';
        } 
        return 'AX';
      } 
      if ($att{'R2'} eq 'T') { 
        if ($att{'R3'} eq 'A') { 
          return 'AH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'E') { 
          return 'AH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'I') { 
          if ($att{'L2'} eq 'I') { 
            return 'AX'; # unique at depth 5
          } 
          if ($att{'L2'} eq 'N') { 
            return 'AH+1'; # unique at depth 5
          } 
          if ($att{'L2'} eq '-') { 
            return 'AH+1'; # unique at depth 5
          } 
          return 'AH+1';
        } 
        if ($att{'R3'} eq 'N') { 
          return 'AH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'S') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'Y') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'R3'} eq '-') { 
          return 'AH+1'; # unique at depth 4
        } 
        return 'AH+1';
      } 
      if ($att{'R2'} eq 'U') { 
        return 'IH'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'V') { 
        if ($att{'L2'} eq 'B') { 
          return 'AH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'E') { 
          if ($att{'R3'} eq 'A') { 
            return 'AX'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'E') { 
            return 'AH+1'; # unique at depth 5
          } 
          return 'AH+1';
        } 
        if ($att{'L2'} eq 'N') { 
          return 'AX';
        } 
        if ($att{'L2'} eq '-') { 
          return 'AH+1'; # unique at depth 4
        } 
        return 'AH+1';
      } 
      if ($att{'R2'} eq 'Y') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'R2'} eq '-') { 
        if ($att{'L1'} eq 'E') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'F') { 
          if ($att{'L2'} eq 'E') { 
            return 'AH+1'; # unique at depth 5
          } 
          return 'AX';
        } 
        if ($att{'L1'} eq 'H') { 
          if ($att{'L2'} eq 'G') { 
            return '_'; # unique at depth 5
          } 
          return 'AX';
        } 
        if ($att{'L1'} eq 'L') { 
          return 'AH'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'T') { 
          if ($att{'L3'} eq 'O') { 
            return 'OW+1'; # unique at depth 5
          } 
          return 'AX';
        } 
        return 'AX';
      } 
      return 'AX';
    } 
    if ($att{'R1'} eq 'S') { 
      if ($att{'L1'} eq 'B') { 
        return 'EH+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'C') { 
        if ($att{'L2'} eq 'C') { 
          if ($att{'R3'} eq 'F') { 
            return 'EH+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'I') { 
            return 'EH+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq '-') { 
            return 'EH'; # unique at depth 5
          } 
          return 'EH+1';
        } 
        if ($att{'L2'} eq 'E') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'O') { 
          return 'EH'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'R') { 
          if ($att{'L3'} eq 'U') { 
            return 'IH';
          } 
          return 'AX';
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'D') { 
        if ($att{'L2'} eq 'E') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'L') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          if ($att{'R3'} eq 'E') { 
            return 'EH+1'; # unique at depth 5
          } 
          return 'IH';
        } 
        return '_';
      } 
      if ($att{'L1'} eq 'E') { 
        if ($att{'L3'} eq 'G') { 
          return 'IY+1'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'L1'} eq 'F') { 
        return 'EH+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'G') { 
        if ($att{'L2'} eq 'G') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'R') { 
          if ($att{'R2'} eq 'T') { 
            return 'IH'; # unique at depth 5
          } 
          return 'AX';
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'H') { 
        if ($att{'L3'} eq 'R') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          return 'IY'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'I') { 
        if ($att{'L3'} eq 'E') { 
          if ($att{'L2'} eq 'N') { 
            return '_'; # unique at depth 5
          } 
          return 'IY';
        } 
        if ($att{'L3'} eq 'I') { 
          if ($att{'L2'} eq 'C') { 
            return 'IY+1'; # unique at depth 5
          } 
          return 'IY';
        } 
        if ($att{'L3'} eq '-') { 
          if ($att{'R2'} eq 'T') { 
            return 'IY+1'; # unique at depth 5
          } 
          if ($att{'R2'} eq '-') { 
            return '_'; # unique at depth 5
          } 
          return 'IY+1';
        } 
        return 'IY';
      } 
      if ($att{'L1'} eq 'K') { 
        if ($att{'L2'} eq '-') { 
          return 'EH+1'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'L1'} eq 'L') { 
        if ($att{'L2'} eq 'A') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'D') { 
          if ($att{'L3'} eq 'E') { 
            return '_'; # unique at depth 5
          } 
          return 'S';
        } 
        if ($att{'L2'} eq 'E') { 
          if ($att{'L3'} eq 'G') { 
            return 'AX'; # unique at depth 5
          } 
          if ($att{'L3'} eq '-') { 
            return 'EH+1'; # unique at depth 5
          } 
          return 'IH';
        } 
        if ($att{'L2'} eq 'G') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'I') { 
          if ($att{'L3'} eq 'N') { 
            return '_'; # unique at depth 5
          } 
          return 'L';
        } 
        if ($att{'L2'} eq 'N') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'T') { 
          if ($att{'L3'} eq 'T') { 
            return '_'; # unique at depth 5
          } 
          return 'IH';
        } 
        if ($att{'L2'} eq '-') { 
          return 'EH'; # unique at depth 4
        } 
        return 'L';
      } 
      if ($att{'L1'} eq 'M') { 
        if ($att{'L2'} eq 'U') { 
          return 'M'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'EH+1'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'L1'} eq 'N') { 
        if ($att{'L3'} eq 'R') { 
          return 'EH'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'S') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'U') { 
          return 'EH'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'L1'} eq 'R') { 
        if ($att{'R2'} eq 'E') { 
          if ($att{'L3'} eq '-') { 
            if ($att{'R3'} eq 'A') { 
              return 'IH'; # unique at depth 6
            } 
            if ($att{'R3'} eq 'N') { 
              return 'EH+1'; # unique at depth 6
            } 
            if ($att{'R3'} eq 'R') { 
              if ($att{'L2'} eq '-') { 
                return 'EH+1'; # depth limit (1/2; 2 classes) at depth 7
              } 
              return 'EH+1';
            } 
            return 'EH+1';
          } 
          return 'IH';
        } 
        if ($att{'R2'} eq 'H') { 
          return 'IY'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'I') { 
          if ($att{'R3'} eq 'D') { 
            if ($att{'L2'} eq 'P') { 
              return 'EH+1'; # unique at depth 6
            } 
            if ($att{'L2'} eq '-') { 
              if ($att{'L3'} eq '-') { 
                return 'EH+1'; # depth limit (4/5; 2 classes) at depth 7
              } 
              return 'EH+1';
            } 
            return 'EH+1';
          } 
          if ($att{'R3'} eq 'G') { 
            return 'IH'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'S') { 
            return 'IH'; # unique at depth 5
          } 
          return 'EH+1';
        } 
        if ($att{'R2'} eq 'N') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'O') { 
          if ($att{'R3'} eq 'U') { 
            return 'IY'; # unique at depth 5
          } 
          return 'IH';
        } 
        if ($att{'R2'} eq 'P') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'S') { 
          if ($att{'R3'} eq 'E') { 
            return 'EH+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'I') { 
            return 'EH+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'M') { 
            return 'IH'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'U') { 
            return 'EH+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq '-') { 
            if ($att{'L3'} eq 'N') { 
              return 'IH'; # unique at depth 6
            } 
            if ($att{'L3'} eq '-') { 
              return 'EH+1'; # unique at depth 6
            } 
            return 'EH+1';
          } 
          return 'EH+1';
        } 
        if ($att{'R2'} eq 'T') { 
          if ($att{'R3'} eq 'A') { 
            return 'EH+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'R') { 
            return 'IY+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq '-') { 
            if ($att{'L3'} eq 'T') { 
              return 'IH'; # unique at depth 6
            } 
            if ($att{'L3'} eq '-') { 
              return 'EH+1'; # unique at depth 6
            } 
            return 'EH+1';
          } 
          return 'EH+1';
        } 
        if ($att{'R2'} eq 'U') { 
          if ($att{'R3'} eq 'L') { 
            return 'IY'; # unique at depth 5
          } 
          return 'IH';
        } 
        if ($att{'R2'} eq '-') { 
          if ($att{'L3'} eq 'P') { 
            return 'AXR'; # unique at depth 5
          } 
          if ($att{'L3'} eq '-') { 
            return 'R'; # unique at depth 5
          } 
          return '_';
        } 
        return 'EH+1';
      } 
      if ($att{'L1'} eq 'S') { 
        if ($att{'L2'} eq 'S') { 
          if ($att{'L3'} eq 'A') { 
            return 'IY';
          } 
          return 'AX';
        } 
        if ($att{'L2'} eq '-') { 
          return 'EH+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'T') { 
        if ($att{'L2'} eq 'A') { 
          if ($att{'R2'} eq 'T') { 
            return 'IH'; # unique at depth 5
          } 
          return '_';
        } 
        if ($att{'L2'} eq 'O') { 
          if ($att{'R3'} eq 'E') { 
            return 'EH+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq '-') { 
            if ($att{'L3'} eq 'R') { 
              return 'EH'; # unique at depth 6
            } 
            return '_';
          } 
          return 'EH+1';
        } 
        if ($att{'L2'} eq 'U') { 
          return 'TCLT'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'EH+1'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'L1'} eq 'U') { 
        if ($att{'L2'} eq 'N') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'Q') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'S') { 
          return '_'; # unique at depth 4
        } 
        return 'EH+1';
      } 
      if ($att{'L1'} eq 'V') { 
        if ($att{'L2'} eq 'N') { 
          return 'EH+1'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'L1'} eq 'W') { 
        return 'EH+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'Y') { 
        return 'EH+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'Z') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'L1'} eq '-') { 
        if ($att{'R2'} eq 'C') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'P') { 
          return 'EH'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'S') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'T') { 
          if ($att{'R3'} eq 'A') { 
            return 'EH'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'I') { 
            return 'EH+1'; # unique at depth 5
          } 
          return 'EH+1';
        } 
        return 'EH+1';
      } 
      return '_';
    } 
    if ($att{'R1'} eq 'T') { 
      if ($att{'L1'} eq 'B') { 
        if ($att{'R2'} eq 'T') { 
          return 'EH+1'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'L1'} eq 'D') { 
        if ($att{'R2'} eq 'R') { 
          return 'AY'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'L1'} eq 'E') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'F') { 
        if ($att{'L2'} eq 'A') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'IY+1'; # unique at depth 4
        } 
        return 'IY+1';
      } 
      if ($att{'L1'} eq 'G') { 
        if ($att{'L3'} eq 'A') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'O') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'U') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          return 'EH+1'; # unique at depth 4
        } 
        return 'EH+1';
      } 
      if ($att{'L1'} eq 'H') { 
        return 'EH+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'I') { 
        return 'IH'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'L') { 
        if ($att{'L3'} eq 'E') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'M') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'S') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          return 'EH+1'; # unique at depth 4
        } 
        return 'IY+1';
      } 
      if ($att{'L1'} eq 'M') { 
        if ($att{'R2'} eq 'C') { 
          return 'EH'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'H') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'I') { 
          return '_'; # unique at depth 4
        } 
        return 'EH+1';
      } 
      if ($att{'L1'} eq 'N') { 
        if ($att{'R2'} eq 'E') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'W') { 
          return 'EH+1'; # unique at depth 4
        } 
        return 'DCLD';
      } 
      if ($att{'L1'} eq 'P') { 
        if ($att{'R3'} eq 'N') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'R') { 
          return 'IY+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'R') { 
        if ($att{'L2'} eq 'G') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'T') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'IY'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'L1'} eq 'S') { 
        if ($att{'L3'} eq 'H') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'L') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          return 'EH+1'; # unique at depth 4
        } 
        return 'EH+1';
      } 
      if ($att{'L1'} eq 'T') { 
        return 'EH+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'W') { 
        if ($att{'L2'} eq 'O') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'EH+1'; # unique at depth 4
        } 
        return 'EH+1';
      } 
      if ($att{'L1'} eq 'Y') { 
        return 'EH'; # unique at depth 3
      } 
      if ($att{'L1'} eq '-') { 
        if ($att{'R3'} eq 'I') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'N') { 
          if ($att{'R2'} eq 'H') { 
            if ($att{'L2'} eq '-') { 
              if ($att{'L3'} eq '-') { 
                return 'EH+1'; # depth limit (1/2; 2 classes) at depth 7
              } 
              return 'EH+1';
            } 
            return 'EH+1';
          } 
          return 'EH+1';
        } 
        return 'EH+1';
      } 
      return 'EH+1';
    } 
    if ($att{'R1'} eq 'U') { 
      if ($att{'L1'} eq 'N') { 
        return '_'; # unique at depth 3
      } 
      return 'Y';
    } 
    if ($att{'R1'} eq 'V') { 
      if ($att{'L1'} eq 'D') { 
        if ($att{'R2'} eq 'I') { 
          return 'IY'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'L1'} eq 'I') { 
        return 'IY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'L') { 
        return 'EH+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'N') { 
        return 'EH+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'R') { 
        if ($att{'R3'} eq 'N') { 
          if ($att{'L2'} eq '-') { 
            return 'EH+1'; # unique at depth 5
          } 
          return 'IH';
        } 
        if ($att{'R3'} eq 'R') { 
          return 'EH+1'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'L1'} eq 'S') { 
        if ($att{'R3'} eq 'N') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'R') { 
          return 'IH';
        } 
        return 'EH+1';
      } 
      if ($att{'L1'} eq 'T') { 
        return 'IY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'W') { 
        return 'EH+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq '-') { 
        if ($att{'R3'} eq 'D') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'L') { 
          return 'EH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'N') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'R') { 
          return 'EH+1'; # unique at depth 4
        } 
        return 'EH+1';
      } 
      return 'EH+1';
    } 
    if ($att{'R1'} eq 'W') { 
      if ($att{'L1'} eq 'F') { 
        return 'Y'; # unique at depth 3
      } 
      return '_';
    } 
    if ($att{'R1'} eq 'X') { 
      if ($att{'R3'} eq 'A') { 
        if ($att{'R2'} eq 'P') { 
          return 'IH';
        } 
        return 'AX';
      } 
      if ($att{'R3'} eq 'L') { 
        return 'EH+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'S') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'R3'} eq '-') { 
        return 'KCLK'; # unique at depth 3
      } 
      return 'IH';
    } 
    if ($att{'R1'} eq 'Y') { 
      if ($att{'L1'} eq 'B') { 
        return 'IY'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'K') { 
        if ($att{'L3'} eq 'I') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          return 'IY+1'; # unique at depth 4
        } 
        return 'IY+1';
      } 
      if ($att{'L1'} eq 'L') { 
        if ($att{'L3'} eq 'O') { 
          return 'IY+1'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'L1'} eq 'M') { 
        return 'AY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'S') { 
        if ($att{'L3'} eq '-') { 
          return 'IY+1'; # unique at depth 4
        } 
        return '_';
      } 
      return '_';
    } 
    if ($att{'R1'} eq '-') { 
      if ($att{'L2'} eq 'A') { 
        if ($att{'L1'} eq 'C') { 
          if ($att{'L3'} eq 'F') { 
            return 'S'; # unique at depth 5
          } 
          return '_';
        } 
        if ($att{'L1'} eq 'V') { 
          if ($att{'R3'} eq '-') { 
            if ($att{'R2'} eq '-') { 
              if ($att{'L3'} eq '-') { 
                return 'EY+1'; # depth limit (1/3; 3 classes) at depth 7
              } 
              return 'EY+1';
            } 
            return 'EY+1';
          } 
          return 'EY+1';
        } 
        return '_';
      } 
      if ($att{'L2'} eq 'B') { 
        if ($att{'L3'} eq 'R') { 
          return '_'; # unique at depth 4
        } 
        return 'L';
      } 
      if ($att{'L2'} eq 'C') { 
        if ($att{'L3'} eq 'R') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'S') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          return 'IY'; # unique at depth 4
        } 
        return 'L';
      } 
      if ($att{'L2'} eq 'F') { 
        return 'IY+1'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'G') { 
        if ($att{'L3'} eq 'A') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'U') { 
          return 'IY+1'; # unique at depth 4
        } 
        return 'UW';
      } 
      if ($att{'L2'} eq 'I') { 
        if ($att{'L3'} eq '-') { 
          if ($att{'L1'} eq 'L') { 
            return 'L'; # unique at depth 5
          } 
          return '_';
        } 
        return '_';
      } 
      if ($att{'L2'} eq 'L') { 
        if ($att{'L3'} eq 'A') { 
          return 'UW'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'U') { 
          return 'IY'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'L2'} eq 'N') { 
        if ($att{'L1'} eq 'C') { 
          if ($att{'L3'} eq '-') { 
            return 'S'; # unique at depth 5
          } 
          return '_';
        } 
        if ($att{'L1'} eq 'I') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'U') { 
          if ($att{'L3'} eq 'E') { 
            return 'UW+1'; # unique at depth 5
          } 
          if ($att{'L3'} eq 'I') { 
            return 'UW'; # unique at depth 5
          } 
          return 'UW+1';
        } 
        return '_';
      } 
      if ($att{'L2'} eq 'O') { 
        if ($att{'L3'} eq 'Y') { 
          return 'N'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'L2'} eq 'P') { 
        return 'L'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'R') { 
        if ($att{'L3'} eq 'G') { 
          return 'IY+1'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'L2'} eq 'S') { 
        if ($att{'L1'} eq 'H') { 
          return 'IY'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'L2'} eq 'T') { 
        if ($att{'L3'} eq '-') { 
          return 'AX'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'L2'} eq 'U') { 
        if ($att{'L3'} eq 'C') { 
          if ($att{'L1'} eq 'T') { 
            return 'TCLT'; # unique at depth 5
          } 
          return 'R';
        } 
        if ($att{'L3'} eq 'L') { 
          return 'R'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          if ($att{'L1'} eq 'S') { 
            return 'Z'; # unique at depth 5
          } 
          return '_';
        } 
        return '_';
      } 
      if ($att{'L2'} eq 'Y') { 
        if ($att{'L3'} eq 'T') { 
          return 'L'; # unique at depth 4
        } 
        return 'IY';
      } 
      if ($att{'L2'} eq '-') { 
        return 'IY'; # unique at depth 3
      } 
      return '_';
    } 
    return '_';
  } 
  if ($att{'L'} eq 'F') { 
    if ($att{'L1'} eq 'A') { 
      if ($att{'R3'} eq 'C') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'R') { 
        if ($att{'R1'} eq 'T') { 
          return 'F'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'R3'} eq '-') { 
        if ($att{'L2'} eq 'T') { 
          return '_'; # unique at depth 4
        } 
        return 'F';
      } 
      return 'F';
    } 
    if ($att{'L1'} eq 'F') { 
      if ($att{'R3'} eq 'D') { 
        if ($att{'L2'} eq 'U') { 
          return 'AX'; # unique at depth 4
        } 
        return 'F';
      } 
      if ($att{'R3'} eq 'I') { 
        return 'F'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'N') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'T') { 
        if ($att{'L2'} eq 'A') { 
          return 'F'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'R3'} eq '-') { 
        if ($att{'L2'} eq 'A') { 
          return 'F'; # unique at depth 4
        } 
        return '_';
      } 
      return '_';
    } 
    if ($att{'L1'} eq 'O') { 
      if ($att{'R1'} eq '-') { 
        return 'V'; # unique at depth 3
      } 
      return 'F';
    } 
    if ($att{'L1'} eq 'U') { 
      if ($att{'L3'} eq 'A') { 
        return 'UW'; # unique at depth 3
      } 
      return 'F';
    } 
    return 'F';
  } 
  if ($att{'L'} eq 'G') { 
    if ($att{'R1'} eq 'A') { 
      return 'GCLG'; # unique at depth 2
    } 
    if ($att{'R1'} eq 'E') { 
      if ($att{'R2'} eq 'D') { 
        if ($att{'L1'} eq 'G') { 
          return '_'; # unique at depth 4
        } 
        return 'DCLJH';
      } 
      if ($att{'R2'} eq 'E') { 
        return 'UH'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'R') { 
        if ($att{'L3'} eq 'B') { 
          return 'GCLG'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'T') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          if ($att{'R3'} eq 'O') { 
            return 'DCLJH'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'S') { 
            return 'DCLJH'; # unique at depth 5
          } 
          return 'GCLG';
        } 
        return 'DCLJH';
      } 
      if ($att{'R2'} eq 'T') { 
        if ($att{'L2'} eq 'U') { 
          return 'DCLJH'; # unique at depth 4
        } 
        return 'GCLG';
      } 
      return 'DCLJH';
    } 
    if ($att{'R1'} eq 'G') { 
      return 'GCLG'; # unique at depth 2
    } 
    if ($att{'R1'} eq 'H') { 
      if ($att{'R3'} eq 'M') { 
        return 'GCLG'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'U') { 
        if ($att{'L3'} eq 'R') { 
          return '_'; # unique at depth 4
        } 
        return 'NG';
      } 
      return '_';
    } 
    if ($att{'R1'} eq 'I') { 
      if ($att{'L2'} eq 'B') { 
        return 'GCLG'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'W') { 
        return 'GCLG'; # unique at depth 3
      } 
      if ($att{'L2'} eq '-') { 
        return 'GCLG'; # unique at depth 3
      } 
      return 'DCLJH';
    } 
    if ($att{'R1'} eq 'L') { 
      if ($att{'L3'} eq 'N') { 
        return 'NG'; # unique at depth 3
      } 
      if ($att{'L3'} eq 'T') { 
        return 'NG'; # unique at depth 3
      } 
      if ($att{'L3'} eq 'V') { 
        return 'NG'; # unique at depth 3
      } 
      if ($att{'L3'} eq 'W') { 
        return 'NG'; # unique at depth 3
      } 
      return 'GCLG';
    } 
    if ($att{'R1'} eq 'M') { 
      if ($att{'L2'} eq 'R') { 
        return 'GCLG'; # unique at depth 3
      } 
      return 'DCLJH';
    } 
    if ($att{'R1'} eq 'N') { 
      if ($att{'L2'} eq 'A') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'S') { 
        return '_'; # unique at depth 3
      } 
      return 'GCLG';
    } 
    if ($att{'R1'} eq 'O') { 
      return 'GCLG'; # unique at depth 2
    } 
    if ($att{'R1'} eq 'R') { 
      if ($att{'L1'} eq 'G') { 
        return '_'; # unique at depth 3
      } 
      return 'GCLG';
    } 
    if ($att{'R1'} eq 'S') { 
      if ($att{'L2'} eq 'R') { 
        return 'GCLG'; # unique at depth 3
      } 
      return 'NG';
    } 
    if ($att{'R1'} eq 'U') { 
      return 'GCLG'; # unique at depth 2
    } 
    if ($att{'R1'} eq 'Y') { 
      return 'DCLJH'; # unique at depth 2
    } 
    if ($att{'R1'} eq '-') { 
      if ($att{'L1'} eq 'A') { 
        return 'GCLG'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'I') { 
        return 'GCLG'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'O') { 
        return 'GCLG'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'R') { 
        return 'GCLG'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'U') { 
        return 'GCLG'; # unique at depth 3
      } 
      return 'NG';
    } 
    return 'NG';
  } 
  if ($att{'L'} eq 'H') { 
    if ($att{'L1'} eq 'A') { 
      if ($att{'L2'} eq '-') { 
        return 'HH'; # unique at depth 3
      } 
      return '_';
    } 
    if ($att{'L1'} eq 'C') { 
      if ($att{'R3'} eq 'A') { 
        if ($att{'L2'} eq '-') { 
          return 'SH'; # unique at depth 4
        } 
        return '_';
      } 
      return '_';
    } 
    if ($att{'L1'} eq 'E') { 
      if ($att{'R2'} eq 'M') { 
        return '_'; # unique at depth 3
      } 
      return 'HH';
    } 
    if ($att{'L1'} eq 'G') { 
      if ($att{'R1'} eq 'A') { 
        if ($att{'L3'} eq 'R') { 
          return '_'; # unique at depth 4
        } 
        return 'HH';
      } 
      if ($att{'R1'} eq 'I') { 
        return 'F'; # unique at depth 3
      } 
      return '_';
    } 
    if ($att{'L1'} eq 'K') { 
      return 'HH'; # unique at depth 2
    } 
    if ($att{'L1'} eq 'N') { 
      if ($att{'L3'} eq 'U') { 
        return 'IH'; # unique at depth 3
      } 
      return 'HH';
    } 
    if ($att{'L1'} eq 'O') { 
      if ($att{'L3'} eq 'L') { 
        return 'HH'; # unique at depth 3
      } 
      return '_';
    } 
    if ($att{'L1'} eq 'P') { 
      if ($att{'R3'} eq 'I') { 
        if ($att{'R2'} eq 'S') { 
          return 'IH';
        } 
        return '_';
      } 
      if ($att{'R3'} eq 'N') { 
        return 'IY+1'; # unique at depth 3
      } 
      return '_';
    } 
    if ($att{'L1'} eq 'R') { 
      if ($att{'L2'} eq '-') { 
        return '_'; # unique at depth 3
      } 
      return 'HH';
    } 
    if ($att{'L1'} eq 'T') { 
      if ($att{'R1'} eq 'A') { 
        if ($att{'L2'} eq '-') { 
          return '_'; # unique at depth 4
        } 
        return 'TH';
      } 
      if ($att{'R1'} eq 'E') { 
        if ($att{'R2'} eq 'D') { 
          return 'TH'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'O') { 
          return 'TH'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'R1'} eq 'I') { 
        if ($att{'R3'} eq 'D') { 
          return 'AH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'T') { 
          return 'AH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq '-') { 
          return '_'; # unique at depth 4
        } 
        return 'TH';
      } 
      if ($att{'R1'} eq 'O') { 
        if ($att{'R3'} eq 'I') { 
          return 'TH'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'S') { 
          return 'TH'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'R1'} eq 'S') { 
        if ($att{'L3'} eq 'E') { 
          return '_'; # unique at depth 4
        } 
        return 'TH';
      } 
      if ($att{'R1'} eq 'U') { 
        if ($att{'L2'} eq '-') { 
          return '_'; # unique at depth 4
        } 
        return 'TH';
      } 
      return 'TH';
    } 
    if ($att{'L1'} eq 'W') { 
      if ($att{'R1'} eq 'E') { 
        if ($att{'R2'} eq 'R') { 
          return 'EY+1'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'R1'} eq 'O') { 
        return 'HH'; # unique at depth 3
      } 
      return '_';
    } 
    if ($att{'L1'} eq '-') { 
      if ($att{'R2'} eq 'U') { 
        if ($att{'R3'} eq 'R') { 
          return '_'; # unique at depth 4
        } 
        return 'HH';
      } 
      return 'HH';
    } 
    return '_';
  } 
  if ($att{'L'} eq 'I') { 
    if ($att{'R2'} eq 'A') { 
      if ($att{'L2'} eq 'A') { 
        if ($att{'R1'} eq 'C') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'M') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'S') { 
          return 'IY+1'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'L2'} eq 'B') { 
        return 'IH'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'C') { 
        return 'IH'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'E') { 
        if ($att{'R3'} eq 'B') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'T') { 
          if ($att{'L3'} eq '-') { 
            return 'AX'; # unique at depth 5
          } 
          return 'IH';
        } 
        return 'IH';
      } 
      if ($att{'L2'} eq 'F') { 
        return 'IH'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'I') { 
        if ($att{'R1'} eq 'C') { 
          return 'IH'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L2'} eq 'L') { 
        if ($att{'R1'} eq 'V') { 
          return 'AX'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'L2'} eq 'M') { 
        return 'IH+1'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'N') { 
        if ($att{'L3'} eq '-') { 
          return 'AX'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'L2'} eq 'P') { 
        if ($att{'R3'} eq 'C') { 
          return 'AY+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L2'} eq 'Q') { 
        return 'IH'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'R') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'S') { 
        if ($att{'R1'} eq 'T') { 
          if ($att{'R3'} eq 'L') { 
            return 'AX';
          } 
          return 'IH';
        } 
        return 'AX';
      } 
      if ($att{'L2'} eq 'V') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'Y') { 
        if ($att{'L3'} eq '-') { 
          return 'AX'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'L2'} eq '-') { 
        if ($att{'R3'} eq 'B') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'D') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'I') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'L') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'N') { 
          return 'IH';
        } 
        return 'AY+1';
      } 
      return 'AX';
    } 
    if ($att{'R2'} eq 'B') { 
      if ($att{'L1'} eq 'D') { 
        return 'IH+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'R') { 
        return 'IH+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'V') { 
        return 'AY+1'; # unique at depth 3
      } 
      return 'IH';
    } 
    if ($att{'R2'} eq 'C') { 
      if ($att{'L1'} eq 'G') { 
        return 'IH+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'L') { 
        return 'IH+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'V') { 
        return 'IH+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'W') { 
        if ($att{'L2'} eq 'S') { 
          return 'IH+1'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'L1'} eq '-') { 
        if ($att{'R3'} eq 'I') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'O') { 
          if ($att{'R1'} eq 'N') { 
            if ($att{'L2'} eq '-') { 
              if ($att{'L3'} eq '-') { 
                return 'IH+1'; # depth limit (2/3; 2 classes) at depth 7
              } 
              return 'IH+1';
            } 
            return 'IH+1';
          } 
          return 'IH+1';
        } 
        return 'IH';
      } 
      return 'IH';
    } 
    if ($att{'R2'} eq 'D') { 
      if ($att{'L1'} eq 'D') { 
        if ($att{'L3'} eq 'T') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          return 'AY+1'; # unique at depth 4
        } 
        return 'AY+1';
      } 
      if ($att{'L1'} eq 'F') { 
        return 'AY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'H') { 
        if ($att{'R3'} eq 'B') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'R') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq '-') { 
          if ($att{'L2'} eq 'E') { 
            return 'AY+1'; # unique at depth 5
          } 
          if ($att{'L2'} eq 'T') { 
            return '_'; # unique at depth 5
          } 
          return 'AX';
        } 
        return 'AY+1';
      } 
      if ($att{'L1'} eq 'K') { 
        return 'AY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'L') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'M') { 
        if ($att{'R1'} eq 'D') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'N') { 
          return 'AY+1'; # unique at depth 4
        } 
        return 'IH+1';
      } 
      if ($att{'L1'} eq 'N') { 
        return 'AY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'P') { 
        return 'AY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'R') { 
        if ($att{'L3'} eq '-') { 
          return 'AY+1'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'L1'} eq 'T') { 
        return 'AY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'U') { 
        return 'IH+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'W') { 
        return 'AY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq '-') { 
        return 'IH+1'; # unique at depth 3
      } 
      return 'AY+1';
    } 
    if ($att{'R2'} eq 'E') { 
      if ($att{'L1'} eq 'A') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'C') { 
        if ($att{'R3'} eq 'D') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'N') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'R') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'S') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq '-') { 
          return 'AY+1'; # unique at depth 4
        } 
        return 'AY+1';
      } 
      if ($att{'L1'} eq 'D') { 
        if ($att{'R1'} eq 'S') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'T') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'V') { 
          return 'IH'; # unique at depth 4
        } 
        return 'AY';
      } 
      if ($att{'L1'} eq 'E') { 
        if ($att{'L2'} eq 'L') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'V') { 
          return 'EY+1'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'L1'} eq 'F') { 
        if ($att{'R1'} eq 'B') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'C') { 
          if ($att{'R3'} eq 'S') { 
            return 'AX'; # unique at depth 5
          } 
          return 'IH';
        } 
        if ($att{'R1'} eq 'D') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'L') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'N') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'R') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'V') { 
          return 'AY+1'; # unique at depth 4
        } 
        return 'AY+1';
      } 
      if ($att{'L1'} eq 'G') { 
        if ($att{'L3'} eq 'L') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'R') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          return 'IH+1'; # unique at depth 4
        } 
        return 'IH+1';
      } 
      if ($att{'L1'} eq 'H') { 
        if ($att{'R1'} eq 'L') { 
          if ($att{'L3'} eq 'N') { 
            return 'AY+1'; # unique at depth 5
          } 
          return 'AY';
        } 
        if ($att{'R1'} eq 'N') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'R') { 
          return 'IY'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'T') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'Z') { 
          return 'AY+1'; # unique at depth 4
        } 
        return 'AY+1';
      } 
      if ($att{'L1'} eq 'L') { 
        if ($att{'R1'} eq 'B') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'C') { 
          if ($att{'L2'} eq 'O') { 
            return 'IY+1'; # unique at depth 5
          } 
          return 'IH';
        } 
        if ($att{'R1'} eq 'F') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'K') { 
          if ($att{'R3'} eq 'L') { 
            return 'AY+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq '-') { 
            if ($att{'L2'} eq 'N') { 
              return 'AY+1'; # unique at depth 6
            } 
            return 'AY';
          } 
          return 'AY+1';
        } 
        if ($att{'R1'} eq 'N') { 
          if ($att{'L3'} eq 'A') { 
            return 'AY+1'; # unique at depth 5
          } 
          if ($att{'L3'} eq 'R') { 
            return 'IH'; # unique at depth 5
          } 
          if ($att{'L3'} eq 'U') { 
            return 'AY+1'; # unique at depth 5
          } 
          return 'AY+1';
        } 
        if ($att{'R1'} eq 'V') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'Z') { 
          if ($att{'R3'} eq 'D') { 
            return 'AY'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'S') { 
            return 'AY+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq '-') { 
            return 'AY+1'; # unique at depth 5
          } 
          return 'AY+1';
        } 
        return 'AY+1';
      } 
      if ($att{'L1'} eq 'M') { 
        if ($att{'R1'} eq 'L') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'N') { 
          if ($att{'L3'} eq 'R') { 
            return 'AX'; # unique at depth 5
          } 
          if ($att{'L3'} eq 'T') { 
            return 'IY+1'; # unique at depth 5
          } 
          return 'IH';
        } 
        if ($att{'R1'} eq 'X') { 
          return 'IH+1'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'L1'} eq 'N') { 
        if ($att{'L3'} eq 'C') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'E') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'G') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'I') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'O') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'V') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          return 'AY+1'; # unique at depth 4
        } 
        return 'AY+1';
      } 
      if ($att{'L1'} eq 'O') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'P') { 
        if ($att{'L2'} eq 'E') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'S') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'X') { 
          return 'PCLP'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'AY+1'; # unique at depth 4
        } 
        return 'AY+1';
      } 
      if ($att{'L1'} eq 'R') { 
        if ($att{'L3'} eq 'E') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'H') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'M') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'P') { 
          return 'R'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'R') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'S') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'T') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'V') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          if ($att{'R3'} eq 'N') { 
            return 'IH+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'R') { 
            if ($att{'L2'} eq 'D') { 
              return 'AY+1'; # unique at depth 6
            } 
            if ($att{'L2'} eq '-') { 
              return 'IH+1'; # unique at depth 6
            } 
            return 'IH+1';
          } 
          if ($att{'R3'} eq 'S') { 
            return 'AY+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq '-') { 
            return 'AY+1'; # unique at depth 5
          } 
          return 'AY+1';
        } 
        return 'AY+1';
      } 
      if ($att{'L1'} eq 'S') { 
        if ($att{'L2'} eq 'B') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'E') { 
          return 'IH';
        } 
        if ($att{'L2'} eq 'I') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'N') { 
          if ($att{'L3'} eq 'E') { 
            return 'S'; # unique at depth 5
          } 
          if ($att{'L3'} eq 'O') { 
            return 'IH+1'; # unique at depth 5
          } 
          if ($att{'L3'} eq '-') { 
            return 'AY+1'; # unique at depth 5
          } 
          return 'IH+1';
        } 
        if ($att{'L2'} eq 'S') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'T') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'U') { 
          if ($att{'L3'} eq 'L') { 
            return 'IH'; # unique at depth 5
          } 
          return '_';
        } 
        if ($att{'L2'} eq '-') { 
          return 'AY+1'; # unique at depth 4
        } 
        return 'AY+1';
      } 
      if ($att{'L1'} eq 'T') { 
        if ($att{'R1'} eq 'L') { 
          if ($att{'L3'} eq 'E') { 
            return '_'; # unique at depth 5
          } 
          return 'TCLT';
        } 
        if ($att{'R1'} eq 'M') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'N') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'V') { 
          if ($att{'R3'} eq 'L') { 
            return 'AX'; # unique at depth 5
          } 
          return 'IH';
        } 
        return 'IH';
      } 
      if ($att{'L1'} eq 'U') { 
        if ($att{'L3'} eq 'E') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          return 'AX'; # unique at depth 4
        } 
        return 'AY+1';
      } 
      if ($att{'L1'} eq 'V') { 
        if ($att{'L2'} eq 'D') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'E') { 
          if ($att{'R1'} eq 'C') { 
            return 'AY+1'; # unique at depth 5
          } 
          return 'IH';
        } 
        if ($att{'L2'} eq 'I') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'O') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'R') { 
          if ($att{'R3'} eq 'S') { 
            return 'AX'; # unique at depth 5
          } 
          return 'IH';
        } 
        if ($att{'L2'} eq '-') { 
          return 'AY+1'; # unique at depth 4
        } 
        return 'AY+1';
      } 
      if ($att{'L1'} eq 'W') { 
        return 'AY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq '-') { 
        if ($att{'R3'} eq 'M') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'O') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'Q') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'R3'} eq '-') { 
          return 'AY+1'; # unique at depth 4
        } 
        return 'AY';
      } 
      return 'AY+1';
    } 
    if ($att{'R2'} eq 'F') { 
      if ($att{'R3'} eq 'E') { 
        if ($att{'L1'} eq 'D') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'T') { 
          return 'IH+1'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'R3'} eq 'I') { 
        return 'IH+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'L') { 
        return 'IH+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'O') { 
        return 'IH';
      } 
      if ($att{'R3'} eq 'U') { 
        return 'IH'; # unique at depth 3
      } 
      if ($att{'R3'} eq '-') { 
        return '_'; # unique at depth 3
      } 
      return 'IH+1';
    } 
    if ($att{'R2'} eq 'G') { 
      if ($att{'L2'} eq 'A') { 
        if ($att{'L3'} eq 'I') { 
          return 'TCLT'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'L2'} eq 'B') { 
        if ($att{'L1'} eq 'R') { 
          if ($att{'L3'} eq '-') { 
            return 'IH+1'; # unique at depth 5
          } 
          return 'IH';
        } 
        return 'IH';
      } 
      if ($att{'L2'} eq 'C') { 
        if ($att{'L3'} eq '-') { 
          return 'IH+1'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'L2'} eq 'G') { 
        if ($att{'L1'} eq 'L') { 
          return 'L'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'L2'} eq 'N') { 
        if ($att{'L1'} eq 'D') { 
          if ($att{'L3'} eq 'A') { 
            return 'DCLD'; # unique at depth 5
          } 
          return 'IH';
        } 
        return 'IH';
      } 
      if ($att{'L2'} eq 'P') { 
        if ($att{'L3'} eq 'M') { 
          return 'TCLT'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'S') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          return 'IH+1'; # unique at depth 4
        } 
        return 'IH+1';
      } 
      if ($att{'L2'} eq 'S') { 
        if ($att{'R3'} eq 'U') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq '-') { 
          if ($att{'L1'} eq 'T') { 
            if ($att{'L3'} eq 'I') { 
              return 'TCLT'; # unique at depth 6
            } 
            return 'IH';
          } 
          return 'IH';
        } 
        return 'IH';
      } 
      if ($att{'L2'} eq 'T') { 
        if ($att{'L3'} eq 'Y') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          return 'IH+1'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'L2'} eq 'U') { 
        if ($att{'L3'} eq 'C') { 
          if ($att{'L1'} eq 'T') { 
            return 'TCLT'; # unique at depth 5
          } 
          return 'IH';
        } 
        if ($att{'L3'} eq 'F') { 
          return 'Z'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'L2'} eq '-') { 
        if ($att{'R1'} eq 'A') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'E') { 
          return 'IY'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'N') { 
          return 'IH+1'; # unique at depth 4
        } 
        return 'AH';
      } 
      return 'IH';
    } 
    if ($att{'R2'} eq 'H') { 
      if ($att{'L1'} eq 'E') { 
        if ($att{'R3'} eq 'B') { 
          return 'EY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'E') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'T') { 
          if ($att{'L2'} eq 'H') { 
            return 'AY+1'; # unique at depth 5
          } 
          if ($att{'L2'} eq 'W') { 
            return 'EY+1'; # unique at depth 5
          } 
          if ($att{'L2'} eq '-') { 
            if ($att{'R1'} eq 'G') { 
              if ($att{'L3'} eq '-') { 
                return 'EY+1'; # depth limit (3/4; 2 classes) at depth 7
              } 
              return 'EY+1';
            } 
            return 'EY+1';
          } 
          return 'EY+1';
        } 
        return 'EY+1';
      } 
      if ($att{'L1'} eq 'F') { 
        if ($att{'R1'} eq 'G') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'S') { 
          return 'IH+1'; # unique at depth 4
        } 
        return 'AY+1';
      } 
      if ($att{'L1'} eq 'H') { 
        if ($att{'L2'} eq 'W') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'AY+1'; # unique at depth 4
        } 
        return 'AY+1';
      } 
      if ($att{'L1'} eq 'L') { 
        return 'IH'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'M') { 
        if ($att{'R1'} eq 'C') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'G') { 
          return 'AY'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'L1'} eq 'N') { 
        return 'AY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'R') { 
        if ($att{'R3'} eq 'A') { 
          if ($att{'L2'} eq 'B') { 
            return 'IH+1'; # unique at depth 5
          } 
          if ($att{'L2'} eq 'W') { 
            return 'AY+1'; # unique at depth 5
          } 
          return 'IH+1';
        } 
        if ($att{'R3'} eq 'E') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'T') { 
          return 'AY+1'; # unique at depth 4
        } 
        return 'AY+1';
      } 
      if ($att{'L1'} eq 'S') { 
        return 'AY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'U') { 
        return 'IH'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'W') { 
        return 'IH'; # unique at depth 3
      } 
      if ($att{'L1'} eq '-') { 
        return 'IH'; # unique at depth 3
      } 
      return 'AY+1';
    } 
    if ($att{'R2'} eq 'I') { 
      if ($att{'R3'} eq 'A') { 
        if ($att{'L2'} eq 'E') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'F') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'I') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'R') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'U') { 
          return 'M'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'Y') { 
          return 'IH+1'; # unique at depth 4
        } 
        return 'IH+1';
      } 
      if ($att{'R3'} eq 'C') { 
        if ($att{'L2'} eq 'A') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'C') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'E') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'O') { 
          return 'IH';
        } 
        return 'IH+1';
      } 
      if ($att{'R3'} eq 'D') { 
        if ($att{'L2'} eq 'N') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'R') { 
          return 'AX'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'R3'} eq 'E') { 
        if ($att{'L2'} eq 'O') { 
          if ($att{'L3'} eq 'I') { 
            return 'AX'; # unique at depth 5
          } 
          return 'IH';
        } 
        if ($att{'L2'} eq 'U') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'IH+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'R3'} eq 'L') { 
        if ($att{'L2'} eq 'O') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'IH+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'R3'} eq 'M') { 
        return 'IH+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'N') { 
        if ($att{'L2'} eq 'C') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'D') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'E') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'I') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'N') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'O') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'Q') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'R') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'S') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'W') { 
          if ($att{'L1'} eq 'A') { 
            return '_'; # unique at depth 5
          } 
          if ($att{'L1'} eq 'R') { 
            return 'AY+1'; # unique at depth 5
          } 
          return 'AY+1';
        } 
        if ($att{'L2'} eq '-') { 
          if ($att{'L1'} eq 'F') { 
            return 'AY+1'; # unique at depth 5
          } 
          if ($att{'L1'} eq 'G') { 
            return 'IH+1'; # unique at depth 5
          } 
          if ($att{'L1'} eq 'L') { 
            return 'IH+1'; # unique at depth 5
          } 
          if ($att{'L1'} eq 'R') { 
            return 'AY+1'; # unique at depth 5
          } 
          return 'IH+1';
        } 
        return 'IH+1';
      } 
      if ($att{'R3'} eq 'O') { 
        return 'IH+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'P') { 
        return 'IH+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'S') { 
        if ($att{'L1'} eq 'D') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'L') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'M') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'R') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'T') { 
          return 'AX'; # unique at depth 4
        } 
        return 'IH+1';
      } 
      if ($att{'R3'} eq 'T') { 
        if ($att{'L1'} eq 'B') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'C') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'H') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'L') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'N') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'U') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'V') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq '-') { 
          return 'IH';
        } 
        return 'IH+1';
      } 
      if ($att{'R3'} eq 'V') { 
        return 'IH'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'Z') { 
        if ($att{'L3'} eq '-') { 
          return 'IH+1'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'R3'} eq '-') { 
        return '_'; # unique at depth 3
      } 
      return 'IH+1';
    } 
    if ($att{'R2'} eq 'K') { 
      if ($att{'L3'} eq 'E') { 
        return 'IH'; # unique at depth 3
      } 
      if ($att{'L3'} eq 'O') { 
        return 'IH'; # unique at depth 3
      } 
      if ($att{'L3'} eq '-') { 
        return 'IH+1'; # unique at depth 3
      } 
      return 'IH+1';
    } 
    if ($att{'R2'} eq 'L') { 
      if ($att{'L1'} eq 'A') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'B') { 
        if ($att{'R1'} eq 'L') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'O') { 
          return 'AY'; # unique at depth 4
        } 
        return 'IH+1';
      } 
      if ($att{'L1'} eq 'C') { 
        if ($att{'R3'} eq 'A') { 
          if ($att{'L3'} eq 'I') { 
            return 'IH+1'; # unique at depth 5
          } 
          return 'AX';
        } 
        return 'SH';
      } 
      if ($att{'L1'} eq 'F') { 
        if ($att{'R1'} eq 'L') { 
          return 'IH+1'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'L1'} eq 'G') { 
        if ($att{'R3'} eq 'F') { 
          return 'AH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq '-') { 
          return 'AH+1'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'L1'} eq 'H') { 
        if ($att{'L2'} eq 'P') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'IH+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'K') { 
        return 'IH+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'L') { 
        return 'IH'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'M') { 
        return 'IH+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'N') { 
        return 'AY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'R') { 
        if ($att{'L2'} eq 'H') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'R') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'T') { 
          return 'AY+1'; # unique at depth 4
        } 
        return 'IY';
      } 
      if ($att{'L1'} eq 'S') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'T') { 
        if ($att{'R1'} eq 'L') { 
          if ($att{'R3'} eq 'B') { 
            return 'IH+1'; # unique at depth 5
          } 
          return 'IH';
        } 
        return 'SH';
      } 
      if ($att{'L1'} eq 'V') { 
        return 'AY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'W') { 
        if ($att{'R3'} eq 'I') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'S') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq '-') { 
          return 'IH'; # unique at depth 4
        } 
        return 'IH+1';
      } 
      if ($att{'L1'} eq '-') { 
        if ($att{'R1'} eq 'S') { 
          return 'AY+1'; # unique at depth 4
        } 
        return 'IH';
      } 
      return 'IH+1';
    } 
    if ($att{'R2'} eq 'M') { 
      if ($att{'L1'} eq 'A') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'D') { 
        return 'IH'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'H') { 
        return 'IH+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'L') { 
        return 'Y'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'M') { 
        return 'IH+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'S') { 
        return 'IH+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'W') { 
        return 'IH+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq '-') { 
        if ($att{'R3'} eq 'A') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'I') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'O') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'U') { 
          return 'IH+1'; # unique at depth 4
        } 
        return 'IH+1';
      } 
      return 'IH+1';
    } 
    if ($att{'R2'} eq 'N') { 
      if ($att{'L1'} eq 'A') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'C') { 
        if ($att{'L3'} eq '-') { 
          return 'AY+1'; # unique at depth 4
        } 
        return 'SH';
      } 
      if ($att{'L1'} eq 'D') { 
        if ($att{'L2'} eq 'N') { 
          return 'IY'; # unique at depth 4
        } 
        return 'AY';
      } 
      if ($att{'L1'} eq 'G') { 
        return 'IH+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'L') { 
        if ($att{'L3'} eq '-') { 
          return 'IY'; # unique at depth 4
        } 
        return 'Y';
      } 
      if ($att{'L1'} eq 'M') { 
        return 'IH+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'N') { 
        if ($att{'L3'} eq 'S') { 
          return 'IY'; # unique at depth 4
        } 
        return 'Y';
      } 
      if ($att{'L1'} eq 'P') { 
        return 'IY'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'R') { 
        if ($att{'L2'} eq 'E') { 
          return 'R'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'F') { 
          return '_'; # unique at depth 4
        } 
        return 'IY';
      } 
      if ($att{'L1'} eq 'S') { 
        if ($att{'L2'} eq 'E') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'I') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'R') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'AY+1'; # unique at depth 4
        } 
        return 'SH';
      } 
      if ($att{'L1'} eq 'T') { 
        if ($att{'L2'} eq 'S') { 
          return '_'; # unique at depth 4
        } 
        return 'SH';
      } 
      if ($att{'L1'} eq '-') { 
        return 'IH'; # unique at depth 3
      } 
      return 'SH';
    } 
    if ($att{'R2'} eq 'O') { 
      if ($att{'L1'} eq 'A') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'N') { 
        if ($att{'R3'} eq 'R') { 
          if ($att{'R1'} eq 'T') { 
            return 'IH';
          } 
          return 'AX';
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'O') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'R') { 
        if ($att{'L3'} eq 'P') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          return 'IH+1'; # unique at depth 4
        } 
        return 'IH+1';
      } 
      if ($att{'L1'} eq 'V') { 
        return 'AY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq '-') { 
        return 'AY+1'; # unique at depth 3
      } 
      return 'IH';
    } 
    if ($att{'R2'} eq 'P') { 
      if ($att{'R3'} eq 'A') { 
        return 'IH+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'E') { 
        if ($att{'L1'} eq 'T') { 
          return 'IH+1'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'R3'} eq 'L') { 
        if ($att{'L1'} eq 'S') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L1'} eq '-') { 
          return 'IH+1'; # unique at depth 4
        } 
        return 'IH+1';
      } 
      return 'IH';
    } 
    if ($att{'R2'} eq 'R') { 
      if ($att{'L2'} eq 'E') { 
        if ($att{'L3'} eq 'P') { 
          return 'IY'; # unique at depth 4
        } 
        return 'Y';
      } 
      if ($att{'L2'} eq 'M') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'P') { 
        return 'AY'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'U') { 
        return 'Y'; # unique at depth 3
      } 
      if ($att{'L2'} eq '-') { 
        if ($att{'R3'} eq 'A') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'E') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'N') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'R') { 
          return 'IY'; # unique at depth 4
        } 
        return 'AY+1';
      } 
      return 'IY';
    } 
    if ($att{'R2'} eq 'S') { 
      if ($att{'R1'} eq 'A') { 
        if ($att{'L3'} eq '-') { 
          return 'AY+1'; # unique at depth 4
        } 
        return 'IY';
      } 
      if ($att{'R1'} eq 'C') { 
        if ($att{'L1'} eq 'N') { 
          return 'AX'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'R1'} eq 'D') { 
        if ($att{'L1'} eq 'A') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'K') { 
          return 'IH+1'; # unique at depth 4
        } 
        return 'IH+1';
      } 
      if ($att{'R1'} eq 'E') { 
        if ($att{'L3'} eq 'P') { 
          if ($att{'L2'} eq 'A') { 
            return '_'; # unique at depth 5
          } 
          return 'SH';
        } 
        if ($att{'L3'} eq '-') { 
          if ($att{'L2'} eq 'E') { 
            if ($att{'L1'} eq 'N') { 
              return 'AY+1'; # unique at depth 6
            } 
            if ($att{'L1'} eq 'R') { 
              return '_'; # unique at depth 6
            } 
            return 'AY+1';
          } 
          if ($att{'L2'} eq 'T') { 
            return 'AY+1'; # unique at depth 5
          } 
          return '_';
        } 
        return '_';
      } 
      if ($att{'R1'} eq 'L') { 
        if ($att{'L3'} eq 'E') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          return 'IH+1'; # unique at depth 4
        } 
        return 'IH+1';
      } 
      if ($att{'R1'} eq 'M') { 
        if ($att{'L2'} eq 'L') { 
          return '_'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'R1'} eq 'N') { 
        if ($att{'L1'} eq 'A') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'W') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq '-') { 
          if ($att{'R3'} eq 'T') { 
            if ($att{'L2'} eq '-') { 
              if ($att{'L3'} eq '-') { 
                return 'IH+1'; # depth limit (3/4; 2 classes) at depth 7
              } 
              return 'IH+1';
            } 
            return 'IH+1';
          } 
          return 'IH';
        } 
        return 'IH';
      } 
      if ($att{'R1'} eq 'O') { 
        return 'IY'; # unique at depth 3
      } 
      if ($att{'R1'} eq 'P') { 
        return 'IH+1'; # unique at depth 3
      } 
      if ($att{'R1'} eq 'R') { 
        if ($att{'L2'} eq '-') { 
          return 'AH'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'R1'} eq 'S') { 
        if ($att{'R3'} eq 'E') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'I') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'P') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'U') { 
          return 'IH+1'; # unique at depth 4
        } 
        return 'IH+1';
      } 
      if ($att{'R1'} eq 'T') { 
        if ($att{'L1'} eq 'F') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'H') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'M') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'U') { 
          return '_'; # unique at depth 4
        } 
        return 'IH';
      } 
      return '_';
    } 
    if ($att{'R2'} eq 'T') { 
      if ($att{'L1'} eq 'A') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'B') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'C') { 
        if ($att{'L3'} eq '-') { 
          return 'AY+1'; # unique at depth 4
        } 
        return 'IY';
      } 
      if ($att{'L1'} eq 'D') { 
        if ($att{'R3'} eq 'R') { 
          if ($att{'R1'} eq 'S') { 
            if ($att{'L2'} eq '-') { 
              if ($att{'L3'} eq '-') { 
                return 'IH+1'; # depth limit (2/3; 2 classes) at depth 7
              } 
              return 'IH+1';
            } 
            return 'IH+1';
          } 
          return 'IH+1';
        } 
        return 'IH';
      } 
      if ($att{'L1'} eq 'F') { 
        return 'IH+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'G') { 
        if ($att{'R3'} eq 'S') { 
          return 'AX'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'L1'} eq 'H') { 
        if ($att{'L2'} eq 'S') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'IH'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'L1'} eq 'L') { 
        if ($att{'L2'} eq 'A') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'I') { 
          return 'L'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'P') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'IH+1'; # unique at depth 4
        } 
        return 'IH+1';
      } 
      if ($att{'L1'} eq 'M') { 
        if ($att{'L3'} eq 'E') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'O') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          return 'IH+1'; # unique at depth 4
        } 
        return 'IH+1';
      } 
      if ($att{'L1'} eq 'N') { 
        return 'IH'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'O') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'P') { 
        return 'IH+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'R') { 
        if ($att{'L3'} eq 'C') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'F') { 
          return 'R'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'O') { 
          return 'IY'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'P') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'S') { 
          if ($att{'L2'} eq 'C') { 
            return 'IH+1'; # unique at depth 5
          } 
          return 'IH';
        } 
        if ($att{'L3'} eq 'T') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          return 'IH+1'; # unique at depth 4
        } 
        return 'IH+1';
      } 
      if ($att{'L1'} eq 'S') { 
        return 'IH+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'T') { 
        if ($att{'L2'} eq 'A') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'N') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'R') { 
          if ($att{'L3'} eq 'I') { 
            return 'IY'; # unique at depth 5
          } 
          return 'AX';
        } 
        if ($att{'L2'} eq 'S') { 
          return 'IH+1'; # unique at depth 4
        } 
        return 'IY';
      } 
      if ($att{'L1'} eq 'U') { 
        if ($att{'R1'} eq 'E') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'L') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'T') { 
          return 'IH+1'; # unique at depth 4
        } 
        return 'IH+1';
      } 
      if ($att{'L1'} eq 'V') { 
        return 'IH'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'W') { 
        return 'IH+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'X') { 
        return 'Z'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'Y') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'L1'} eq '-') { 
        if ($att{'R3'} eq 'E') { 
          if ($att{'R1'} eq 'N') { 
            if ($att{'L2'} eq '-') { 
              if ($att{'L3'} eq '-') { 
                return 'IH+1'; # depth limit (6/8; 2 classes) at depth 7
              } 
              return 'IH+1';
            } 
            return 'IH+1';
          } 
          return 'IH+1';
        } 
        if ($att{'R3'} eq 'O') { 
          return 'IH+1'; # unique at depth 4
        } 
        return 'IH+1';
      } 
      return 'IH+1';
    } 
    if ($att{'R2'} eq 'U') { 
      if ($att{'R1'} eq 'B') { 
        return 'AX';
      } 
      if ($att{'R1'} eq 'C') { 
        if ($att{'L3'} eq '-') { 
          return 'IH+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'R1'} eq 'D') { 
        return 'IH+1'; # unique at depth 3
      } 
      if ($att{'R1'} eq 'L') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'R1'} eq 'N') { 
        return 'IH+1'; # unique at depth 3
      } 
      if ($att{'R1'} eq 'O') { 
        if ($att{'L2'} eq 'E') { 
          return 'IY'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'I') { 
          return 'SH'; # unique at depth 4
        } 
        return 'R';
      } 
      if ($att{'R1'} eq 'R') { 
        return 'AY+1'; # unique at depth 3
      } 
      if ($att{'R1'} eq 'T') { 
        if ($att{'R3'} eq 'A') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'E') { 
          return 'IH+1'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'R1'} eq 'Z') { 
        return 'Z'; # unique at depth 3
      } 
      return 'IH+1';
    } 
    if ($att{'R2'} eq 'V') { 
      if ($att{'L2'} eq 'E') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'G') { 
        return '_'; # unique at depth 3
      } 
      return 'IH';
    } 
    if ($att{'R2'} eq 'W') { 
      return 'Y'; # unique at depth 2
    } 
    if ($att{'R2'} eq 'Y') { 
      if ($att{'L1'} eq 'C') { 
        if ($att{'L3'} eq 'L') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          return 'IH+1'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'L1'} eq 'L') { 
        if ($att{'R1'} eq 'F') { 
          return 'AX'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'L1'} eq 'M') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'O') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'P') { 
        return 'IH+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'R') { 
        if ($att{'L3'} eq 'E') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'H') { 
          return 'IH'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'T') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'U') { 
        return 'AY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'V') { 
        return 'AX'; # unique at depth 3
      } 
      return 'IH';
    } 
    if ($att{'R2'} eq 'Z') { 
      return 'IH+1'; # unique at depth 2
    } 
    if ($att{'R2'} eq '-') { 
      if ($att{'L1'} eq 'A') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'B') { 
        if ($att{'L3'} eq 'H') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          return 'IH+1'; # unique at depth 4
        } 
        return 'IH+1';
      } 
      if ($att{'L1'} eq 'C') { 
        if ($att{'L3'} eq 'L') { 
          return 'IH'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'D') { 
        if ($att{'R1'} eq 'A') { 
          return 'IY'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'E') { 
          return 'AY+1'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'L1'} eq 'E') { 
        if ($att{'L3'} eq '-') { 
          return '_'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'L1'} eq 'G') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'H') { 
        if ($att{'R1'} eq 'C') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'M') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'N') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'P') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'S') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'T') { 
          return 'IH+1'; # unique at depth 4
        } 
        return 'IH+1';
      } 
      if ($att{'L1'} eq 'J') { 
        return 'IH+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'K') { 
        if ($att{'L3'} eq 'K') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'N') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          return 'IY+1'; # unique at depth 4
        } 
        return 'IY+1';
      } 
      if ($att{'L1'} eq 'L') { 
        if ($att{'L2'} eq 'R') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'U') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'IH+1'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'L1'} eq 'M') { 
        if ($att{'L3'} eq 'O') { 
          return 'IH+1'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'L1'} eq 'N') { 
        if ($att{'R1'} eq 'C') { 
          return 'IH'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'E') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'X') { 
          return 'KCLK'; # unique at depth 4
        } 
        if ($att{'R1'} eq '-') { 
          return 'IY'; # unique at depth 4
        } 
        return 'Y';
      } 
      if ($att{'L1'} eq 'O') { 
        if ($att{'L3'} eq 'A') { 
          return '_'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'P') { 
        return 'IH+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'R') { 
        if ($att{'R1'} eq 'A') { 
          if ($att{'L3'} eq '-') { 
            return 'IY+1'; # unique at depth 5
          } 
          return 'IY';
        } 
        if ($att{'R1'} eq 'D') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'P') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'R1'} eq '-') { 
          return 'IY'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'L1'} eq 'S') { 
        if ($att{'L2'} eq 'D') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'N') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return '_'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'L1'} eq 'T') { 
        if ($att{'R1'} eq 'L') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'N') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'R1'} eq '-') { 
          return 'IY+1'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'L1'} eq 'U') { 
        if ($att{'L2'} eq 'O') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'Q') { 
          return 'IH+1'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'L1'} eq 'V') { 
        if ($att{'L2'} eq 'I') { 
          return 'AX'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'L1'} eq 'W') { 
        return 'IH+1'; # unique at depth 3
      } 
      return 'IH';
    } 
    return 'IH';
  } 
  if ($att{'L'} eq 'J') { 
    if ($att{'R2'} eq 'C') { 
      if ($att{'L2'} eq '-') { 
        return 'Y'; # unique at depth 3
      } 
      return 'DCLJH';
    } 
    if ($att{'R2'} eq 'F') { 
      return 'JH'; # unique at depth 2
    } 
    if ($att{'R2'} eq '-') { 
      return 'HH'; # unique at depth 2
    } 
    return 'DCLJH';
  } 
  if ($att{'L'} eq 'K') { 
    if ($att{'L1'} eq 'C') { 
      if ($att{'L3'} eq 'L') { 
        if ($att{'L2'} eq 'O') { 
          return '_'; # unique at depth 4
        } 
        return 'KCL';
      } 
      return '_';
    } 
    if ($att{'L1'} eq 'S') { 
      if ($att{'R1'} eq 'E') { 
        return '_'; # unique at depth 3
      } 
      return 'KCLK';
    } 
    if ($att{'L1'} eq '-') { 
      if ($att{'R1'} eq 'N') { 
        return '_'; # unique at depth 3
      } 
      return 'KCLK';
    } 
    return 'KCLK';
  } 
  if ($att{'L'} eq 'L') { 
    if ($att{'L1'} eq 'A') { 
      if ($att{'L2'} eq 'C') { 
        if ($att{'L3'} eq 'E') { 
          return '_'; # unique at depth 4
        } 
        return 'L';
      } 
      if ($att{'L2'} eq 'H') { 
        if ($att{'R1'} eq 'F') { 
          return '_'; # unique at depth 4
        } 
        return 'L';
      } 
      if ($att{'L2'} eq 'I') { 
        if ($att{'R2'} eq 'Y') { 
          if ($att{'L3'} eq 'T') { 
            return '_'; # unique at depth 5
          } 
          return 'L';
        } 
        return 'L';
      } 
      if ($att{'L2'} eq 'N') { 
        return 'EL'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'T') { 
        if ($att{'R1'} eq 'E') { 
          return 'L'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'I') { 
          return 'L'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'K') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'L') { 
          if ($att{'L3'} eq 'O') { 
            return '_'; # unique at depth 5
          } 
          return 'EL';
        } 
        if ($att{'R1'} eq 'S') { 
          if ($att{'L3'} eq 'I') { 
            return 'L'; # unique at depth 5
          } 
          return 'EL';
        } 
        return 'EL';
      } 
      if ($att{'L2'} eq 'W') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L2'} eq '-') { 
        if ($att{'R3'} eq 'W') { 
          return '_'; # unique at depth 4
        } 
        return 'L';
      } 
      return 'L';
    } 
    if ($att{'L1'} eq 'B') { 
      if ($att{'R2'} eq 'C') { 
        return 'L'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'E') { 
        return 'L'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'M') { 
        return 'L'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'O') { 
        return 'L'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'T') { 
        return 'L'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'W') { 
        return 'L'; # unique at depth 3
      } 
      return 'AX';
    } 
    if ($att{'L1'} eq 'C') { 
      if ($att{'L3'} eq 'H') { 
        return 'AX'; # unique at depth 3
      } 
      return 'L';
    } 
    if ($att{'L1'} eq 'D') { 
      if ($att{'R1'} eq 'E') { 
        return 'EL'; # unique at depth 3
      } 
      if ($att{'R1'} eq 'I') { 
        if ($att{'L2'} eq 'D') { 
          return 'EL'; # unique at depth 4
        } 
        return 'L';
      } 
      return 'L';
    } 
    if ($att{'L1'} eq 'E') { 
      if ($att{'L2'} eq 'D') { 
        if ($att{'L3'} eq 'A') { 
          return 'EL'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'O') { 
          return 'EL'; # unique at depth 4
        } 
        return 'L';
      } 
      if ($att{'L2'} eq 'N') { 
        if ($att{'L3'} eq 'I') { 
          return 'L'; # unique at depth 4
        } 
        return 'EL';
      } 
      return 'L';
    } 
    if ($att{'L1'} eq 'G') { 
      if ($att{'L3'} eq 'U') { 
        return 'AX'; # unique at depth 3
      } 
      return 'L';
    } 
    if ($att{'L1'} eq 'I') { 
      if ($att{'L2'} eq 'F') { 
        if ($att{'R2'} eq 'E') { 
          return 'L'; # unique at depth 4
        } 
        if ($att{'R2'} eq '-') { 
          return '_'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L2'} eq 'M') { 
        if ($att{'R1'} eq 'E') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'I') { 
          if ($att{'L3'} eq 'U') { 
            return 'IH+1'; # unique at depth 5
          } 
          return 'L';
        } 
        return 'L';
      } 
      if ($att{'L2'} eq 'N') { 
        return 'EL'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'P') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'S') { 
        if ($att{'R3'} eq '-') { 
          if ($att{'L3'} eq '-') { 
            return 'PAU'; # unique at depth 5
          } 
          return 'H#';
        } 
        return 'L';
      } 
      if ($att{'L2'} eq 'T') { 
        if ($att{'R1'} eq 'L') { 
          if ($att{'R2'} eq '-') { 
            return '_'; # unique at depth 5
          } 
          return 'L';
        } 
        if ($att{'R1'} eq '-') { 
          return 'L'; # unique at depth 4
        } 
        return 'EL';
      } 
      return 'L';
    } 
    if ($att{'L1'} eq 'L') { 
      if ($att{'L3'} eq 'C') { 
        if ($att{'L2'} eq 'A') { 
          if ($att{'R1'} eq 'Y') { 
            return '_'; # unique at depth 5
          } 
          return 'L';
        } 
        return '_';
      } 
      if ($att{'L3'} eq 'F') { 
        if ($att{'L2'} eq 'U') { 
          return '_'; # unique at depth 4
        } 
        return 'L';
      } 
      if ($att{'L3'} eq 'I') { 
        return 'L';
      } 
      if ($att{'L3'} eq 'R') { 
        if ($att{'R1'} eq 'Y') { 
          return 'L';
        } 
        return '_';
      } 
      if ($att{'L3'} eq 'T') { 
        if ($att{'R1'} eq 'B') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'Y') { 
          return 'EL';
        } 
        return 'L';
      } 
      if ($att{'L3'} eq 'U') { 
        return 'L';
      } 
      if ($att{'L3'} eq '-') { 
        if ($att{'R2'} eq 'G') { 
          if ($att{'L2'} eq 'O') { 
            return 'L'; # unique at depth 5
          } 
          return '_';
        } 
        if ($att{'R2'} eq 'R') { 
          if ($att{'R3'} eq '-') { 
            return 'L';
          } 
          return '_';
        } 
        if ($att{'R2'} eq 'T') { 
          if ($att{'R1'} eq 'S') { 
            return 'L'; # unique at depth 5
          } 
          return '_';
        } 
        if ($att{'R2'} eq 'W') { 
          return 'L'; # unique at depth 4
        } 
        return '_';
      } 
      return '_';
    } 
    if ($att{'L1'} eq 'O') { 
      if ($att{'R1'} eq 'D') { 
        if ($att{'L2'} eq 'C') { 
          return '_'; # unique at depth 4
        } 
        return 'L';
      } 
      if ($att{'R1'} eq 'K') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'R1'} eq 'L') { 
        if ($att{'R2'} eq 'A') { 
          if ($att{'L2'} eq 'C') { 
            return '_'; # unique at depth 5
          } 
          return 'L';
        } 
        if ($att{'R2'} eq 'E') { 
          if ($att{'R3'} eq 'G') { 
            return '_'; # unique at depth 5
          } 
          return 'L';
        } 
        if ($att{'R2'} eq 'S') { 
          return '_'; # unique at depth 4
        } 
        return 'L';
      } 
      if ($att{'R1'} eq 'N') { 
        return '_'; # unique at depth 3
      } 
      return 'L';
    } 
    if ($att{'L1'} eq 'P') { 
      if ($att{'L2'} eq 'O') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'U') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'X') { 
        return 'PCLP'; # unique at depth 3
      } 
      return 'L';
    } 
    if ($att{'L1'} eq 'R') { 
      if ($att{'L3'} eq 'H') { 
        return 'AX'; # unique at depth 3
      } 
      return 'L';
    } 
    if ($att{'L1'} eq 'S') { 
      if ($att{'L3'} eq 'E') { 
        return 'AX'; # unique at depth 3
      } 
      return 'L';
    } 
    if ($att{'L1'} eq 'T') { 
      if ($att{'L2'} eq 'T') { 
        return 'EL'; # unique at depth 3
      } 
      return 'L';
    } 
    if ($att{'L1'} eq 'U') { 
      if ($att{'L2'} eq 'C') { 
        if ($att{'L3'} eq 'I') { 
          return 'L'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L2'} eq 'G') { 
        return 'UW'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'O') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'P') { 
        return 'AX'; # unique at depth 3
      } 
      return 'L';
    } 
    if ($att{'L1'} eq 'Y') { 
      if ($att{'L2'} eq 'S') { 
        return 'L'; # unique at depth 3
      } 
      return 'AX';
    } 
    return 'L';
  } 
  if ($att{'L'} eq 'M') { 
    if ($att{'L1'} eq 'E') { 
      if ($att{'L2'} eq 'X') { 
        return 'EH+1'; # unique at depth 3
      } 
      return 'M';
    } 
    if ($att{'L1'} eq 'I') { 
      if ($att{'R3'} eq 'T') { 
        if ($att{'L3'} eq '-') { 
          return 'M'; # unique at depth 4
        } 
        return 'AX';
      } 
      return 'M';
    } 
    if ($att{'L1'} eq 'M') { 
      if ($att{'R1'} eq 'U') { 
        return 'Y'; # unique at depth 3
      } 
      return '_';
    } 
    if ($att{'L1'} eq 'S') { 
      if ($att{'L3'} eq 'H') { 
        return 'EM'; # unique at depth 3
      } 
      return 'M';
    } 
    if ($att{'L1'} eq 'U') { 
      if ($att{'R2'} eq 'L') { 
        return 'UW'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'S') { 
        return 'UW'; # unique at depth 3
      } 
      return 'M';
    } 
    return 'M';
  } 
  if ($att{'L'} eq 'N') { 
    if ($att{'R1'} eq 'A') { 
      if ($att{'L3'} eq 'C') { 
        return 'AA+1'; # unique at depth 3
      } 
      if ($att{'L3'} eq 'P') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'L3'} eq 'R') { 
        if ($att{'L2'} eq 'D') { 
          return 'EN'; # unique at depth 4
        } 
        return 'N';
      } 
      return 'N';
    } 
    if ($att{'R1'} eq 'C') { 
      if ($att{'L2'} eq 'I') { 
        if ($att{'L3'} eq 'R') { 
          return 'AX'; # unique at depth 4
        } 
        return 'N';
      } 
      if ($att{'L2'} eq 'L') { 
        if ($att{'L1'} eq 'I') { 
          return 'NG'; # unique at depth 4
        } 
        return 'N';
      } 
      if ($att{'L2'} eq 'T') { 
        if ($att{'L3'} eq 'S') { 
          return 'N'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          return 'N'; # unique at depth 4
        } 
        return 'EN';
      } 
      if ($att{'L2'} eq '-') { 
        if ($att{'R3'} eq '-') { 
          return 'AH+1'; # unique at depth 4
        } 
        return 'N';
      } 
      return 'N';
    } 
    if ($att{'R1'} eq 'D') { 
      if ($att{'R3'} eq 'I') { 
        if ($att{'L2'} eq '-') { 
          return '_'; # unique at depth 4
        } 
        return 'N';
      } 
      if ($att{'R3'} eq 'N') { 
        if ($att{'L3'} eq 'X') { 
          return 'AE+1'; # unique at depth 4
        } 
        return 'N';
      } 
      return 'N';
    } 
    if ($att{'R1'} eq 'E') { 
      if ($att{'L2'} eq 'A') { 
        if ($att{'L3'} eq 'L') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'O') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          if ($att{'L1'} eq 'N') { 
            return '_'; # unique at depth 5
          } 
          return 'N';
        } 
        return 'N';
      } 
      if ($att{'L2'} eq 'E') { 
        if ($att{'L3'} eq '-') { 
          return 'IH'; # unique at depth 4
        } 
        return 'N';
      } 
      if ($att{'L2'} eq 'T') { 
        if ($att{'L3'} eq 'H') { 
          return 'EN'; # unique at depth 4
        } 
        return 'N';
      } 
      if ($att{'L2'} eq 'Y') { 
        if ($att{'L3'} eq 'R') { 
          return 'AH+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L2'} eq '-') { 
        if ($att{'L1'} eq 'O') { 
          return 'AH'; # unique at depth 4
        } 
        return 'N';
      } 
      return 'N';
    } 
    if ($att{'R1'} eq 'G') { 
      if ($att{'R2'} eq 'A') { 
        return 'N'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'E') { 
        if ($att{'R3'} eq 'R') { 
          if ($att{'L2'} eq 'H') { 
            return 'NG'; # unique at depth 5
          } 
          if ($att{'L2'} eq 'L') { 
            return 'NG'; # unique at depth 5
          } 
          if ($att{'L2'} eq '-') { 
            return 'NG'; # unique at depth 5
          } 
          return 'N';
        } 
        return 'N';
      } 
      if ($att{'R2'} eq 'L') { 
        if ($att{'L3'} eq '-') { 
          return 'NG'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'R2'} eq 'O') { 
        return 'N'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'R') { 
        return 'NG';
      } 
      if ($att{'R2'} eq 'U') { 
        return 'NG'; # unique at depth 3
      } 
      if ($att{'R2'} eq '-') { 
        if ($att{'L3'} eq 'G') { 
          if ($att{'L2'} eq 'L') { 
            return 'IH'; # unique at depth 5
          } 
          return '_';
        } 
        if ($att{'L3'} eq 'N') { 
          if ($att{'L2'} eq 'D') { 
            return 'IH';
          } 
          return '_';
        } 
        if ($att{'L3'} eq 'P') { 
          if ($att{'L2'} eq 'T') { 
            return 'IH'; # unique at depth 5
          } 
          return '_';
        } 
        if ($att{'L3'} eq 'R') { 
          if ($att{'L2'} eq 'T') { 
            return 'N';
          } 
          return '_';
        } 
        if ($att{'L3'} eq 'S') { 
          if ($att{'L2'} eq 'T') { 
            return 'IH';
          } 
          return '_';
        } 
        if ($att{'L3'} eq 'U') { 
          if ($att{'L2'} eq 'T') { 
            return 'IH'; # unique at depth 5
          } 
          return '_';
        } 
        return '_';
      } 
      return '_';
    } 
    if ($att{'R1'} eq 'I') { 
      if ($att{'L1'} eq 'E') { 
        if ($att{'L3'} eq 'H') { 
          return 'IH'; # unique at depth 4
        } 
        return 'N';
      } 
      if ($att{'L1'} eq 'N') { 
        return '_'; # unique at depth 3
      } 
      return 'N';
    } 
    if ($att{'R1'} eq 'K') { 
      return 'NG';
    } 
    if ($att{'R1'} eq 'L') { 
      if ($att{'L3'} eq 'D') { 
        return 'EN'; # unique at depth 3
      } 
      if ($att{'L3'} eq 'T') { 
        return 'EN'; # unique at depth 3
      } 
      return 'N';
    } 
    if ($att{'R1'} eq 'N') { 
      if ($att{'L2'} eq 'C') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'D') { 
        if ($att{'L3'} eq 'C') { 
          return 'AH+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          return 'N'; # unique at depth 4
        } 
        return 'AH+1';
      } 
      return 'N';
    } 
    if ($att{'R1'} eq 'O') { 
      if ($att{'L1'} eq 'N') { 
        if ($att{'L3'} eq 'D') { 
          return 'N'; # unique at depth 4
        } 
        return '_';
      } 
      return 'N';
    } 
    if ($att{'R1'} eq 'S') { 
      if ($att{'L3'} eq 'X') { 
        if ($att{'L1'} eq 'A') { 
          return 'AE+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'E') { 
          return 'EH+1'; # unique at depth 4
        } 
        return 'EH+1';
      } 
      return 'N';
    } 
    if ($att{'R1'} eq 'T') { 
      if ($att{'L3'} eq 'I') { 
        if ($att{'L2'} eq 'M') { 
          return 'EH+1'; # unique at depth 4
        } 
        return 'N';
      } 
      if ($att{'L3'} eq 'O') { 
        if ($att{'R2'} eq '-') { 
          if ($att{'L2'} eq 'L') { 
            return 'N'; # unique at depth 5
          } 
          return 'EN';
        } 
        return 'N';
      } 
      if ($att{'L3'} eq 'R') { 
        if ($att{'L2'} eq 'T') { 
          return 'EN'; # unique at depth 4
        } 
        return 'N';
      } 
      if ($att{'L3'} eq 'U') { 
        if ($att{'R2'} eq '-') { 
          return 'EN'; # unique at depth 4
        } 
        return 'N';
      } 
      return 'N';
    } 
    if ($att{'R1'} eq 'U') { 
      if ($att{'L2'} eq 'A') { 
        return 'Y'; # unique at depth 3
      } 
      return 'N';
    } 
    if ($att{'R1'} eq '-') { 
      if ($att{'L2'} eq 'T') { 
        if ($att{'L3'} eq 'A') { 
          return 'EN'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'W') { 
          return 'EN'; # unique at depth 4
        } 
        return 'N';
      } 
      if ($att{'L2'} eq 'U') { 
        if ($att{'L1'} eq 'N') { 
          return '_'; # unique at depth 4
        } 
        return 'N';
      } 
      if ($att{'L2'} eq 'Y') { 
        if ($att{'L3'} eq '-') { 
          return '_'; # unique at depth 4
        } 
        return 'N';
      } 
      return 'N';
    } 
    return 'N';
  } 
  if ($att{'L'} eq 'O') { 
    if ($att{'R1'} eq 'A') { 
      if ($att{'R3'} eq '-') { 
        if ($att{'L2'} eq 'B') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'OW+1'; # unique at depth 4
        } 
        return 'OW+1';
      } 
      if ($att{'R3'} eq 'D') { 
        if ($att{'R2'} eq 'R') { 
          if ($att{'L1'} eq 'B') { 
            if ($att{'L2'} eq '-') { 
              if ($att{'L3'} eq '-') { 
                return 'AO+1'; # depth limit (2/3; 2 classes) at depth 7
              } 
              return 'AO+1';
            } 
            return 'AO+1';
          } 
          return 'AO+1';
        } 
        return 'AO+1';
      } 
      if ($att{'R3'} eq 'E') { 
        return 'OW+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'H') { 
        return 'OW+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'I') { 
        return 'OW+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'N') { 
        return 'OW'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'S') { 
        if ($att{'L3'} eq 'C') { 
          return 'OW'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          return 'OW+1'; # unique at depth 4
        } 
        return 'OW+1';
      } 
      return 'OW+1';
    } 
    if ($att{'R1'} eq 'B') { 
      if ($att{'R3'} eq '-') { 
        if ($att{'L2'} eq 'A') { 
          return 'AO'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'AA+1'; # unique at depth 4
        } 
        return 'AA+1';
      } 
      if ($att{'R3'} eq 'C') { 
        return 'OW+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'E') { 
        if ($att{'L2'} eq 'P') { 
          return 'AA+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'R3'} eq 'O') { 
        return 'AA+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'R') { 
        return 'AO'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'T') { 
        return 'OW+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'Y') { 
        return 'AA+1'; # unique at depth 3
      } 
      return 'AA+1';
    } 
    if ($att{'R1'} eq 'C') { 
      if ($att{'L1'} eq 'C') { 
        if ($att{'L3'} eq '-') { 
          return 'OW'; # unique at depth 4
        } 
        return 'AA';
      } 
      if ($att{'L1'} eq 'D') { 
        return 'AA+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'E') { 
        return 'AA+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'F') { 
        return 'OW+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'L') { 
        if ($att{'R3'} eq 'L') { 
          return 'OW+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'T') { 
          return 'OW'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'U') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq '-') { 
          return 'AA+1'; # unique at depth 4
        } 
        return 'AA+1';
      } 
      if ($att{'L1'} eq 'M') { 
        return 'AX';
      } 
      if ($att{'L1'} eq 'R') { 
        return 'AA+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'S') { 
        if ($att{'R3'} eq 'A') { 
          return 'OW+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'E') { 
          return 'AX'; # unique at depth 4
        } 
        return 'OW+1';
      } 
      if ($att{'L1'} eq 'T') { 
        return 'AA+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'V') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'L1'} eq '-') { 
        return 'AX';
      } 
      return 'AA+1';
    } 
    if ($att{'R1'} eq 'D') { 
      if ($att{'L2'} eq 'F') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'G') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'H') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'I') { 
        return 'OW+1'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'L') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'M') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'P') { 
        return 'AA+1'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'R') { 
        return 'OW+1'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'W') { 
        if ($att{'R2'} eq 'W') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'R2'} eq '-') { 
          return 'UH+1'; # unique at depth 4
        } 
        return 'UH+1';
      } 
      if ($att{'L2'} eq '-') { 
        if ($att{'L1'} eq 'B') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'C') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'D') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'M') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'T') { 
          return 'UW'; # unique at depth 4
        } 
        return 'AA+1';
      } 
      return 'AA+1';
    } 
    if ($att{'R1'} eq 'E') { 
      if ($att{'L1'} eq 'D') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'G') { 
        return 'OW+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'H') { 
        return '_'; # unique at depth 3
      } 
      return 'OW+1';
    } 
    if ($att{'R1'} eq 'F') { 
      if ($att{'R2'} eq 'E') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'F') { 
        if ($att{'R3'} eq 'E') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'I') { 
          if ($att{'L1'} eq '-') { 
            if ($att{'L2'} eq '-') { 
              if ($att{'L3'} eq '-') { 
                return 'AO+1'; # depth limit (2/3; 2 classes) at depth 7
              } 
              return 'AO+1';
            } 
            return 'AO+1';
          } 
          return 'AO+1';
        } 
        if ($att{'R3'} eq 'S') { 
          if ($att{'L2'} eq '-') { 
            return 'AO+1'; # unique at depth 5
          } 
          return 'AO';
        } 
        if ($att{'R3'} eq '-') { 
          return 'AO'; # unique at depth 4
        } 
        return 'AO+1';
      } 
      if ($att{'R2'} eq 'I') { 
        return 'AA+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'T') { 
        return 'AO+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq '-') { 
        return 'AH'; # unique at depth 3
      } 
      return 'AO+1';
    } 
    if ($att{'R1'} eq 'G') { 
      if ($att{'R3'} eq '-') { 
        if ($att{'L3'} eq 'I') { 
          return 'AX'; # unique at depth 4
        } 
        return 'AO';
      } 
      if ($att{'R3'} eq 'A') { 
        return 'OW+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'C') { 
        return 'AA+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'N') { 
        return 'OW+1'; # unique at depth 3
      } 
      return 'AX';
    } 
    if ($att{'R1'} eq 'H') { 
      if ($att{'L1'} eq 'C') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'J') { 
        return 'AA+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'R') { 
        return 'OW+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq '-') { 
        return 'OW+1'; # unique at depth 3
      } 
      return 'AA+1';
    } 
    if ($att{'R1'} eq 'I') { 
      if ($att{'L1'} eq 'C') { 
        return 'OY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'D') { 
        return 'UW+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'G') { 
        return 'OW+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'H') { 
        return 'OY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'J') { 
        return 'OY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'M') { 
        return 'OY'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'N') { 
        return 'OY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'P') { 
        return 'OY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'V') { 
        return 'OY+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq '-') { 
        return 'OY+1'; # unique at depth 3
      } 
      return 'OY+1';
    } 
    if ($att{'R1'} eq 'J') { 
      return 'AA+1'; # unique at depth 2
    } 
    if ($att{'R1'} eq 'K') { 
      if ($att{'L1'} eq 'J') { 
        return 'OW+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'M') { 
        return 'OW+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'P') { 
        return 'OW+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'R') { 
        if ($att{'L3'} eq 'K') { 
          return 'OW+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'T') { 
        return 'OW+1'; # unique at depth 3
      } 
      return '_';
    } 
    if ($att{'R1'} eq 'L') { 
      if ($att{'R3'} eq '-') { 
        if ($att{'L2'} eq 'A') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'F') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'H') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'N') { 
          if ($att{'L3'} eq '-') { 
            return 'OW+1'; # unique at depth 5
          } 
          return 'AX';
        } 
        if ($att{'L2'} eq 'O') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'P') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'T') { 
          return 'OW+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'W') { 
          return 'OW+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'OW+1'; # unique at depth 4
        } 
        return 'OW+1';
      } 
      if ($att{'R3'} eq 'A') { 
        if ($att{'L3'} eq 'N') { 
          return 'OW+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          return 'AA+1'; # unique at depth 4
        } 
        return 'AA+1';
      } 
      if ($att{'R3'} eq 'C') { 
        if ($att{'L1'} eq 'P') { 
          if ($att{'R2'} eq 'I') { 
            if ($att{'L2'} eq '-') { 
              if ($att{'L3'} eq '-') { 
                return 'AA+1'; # depth limit (2/3; 2 classes) at depth 7
              } 
              return 'AA+1';
            } 
            return 'AA+1';
          } 
          return 'AA+1';
        } 
        return 'AX';
      } 
      if ($att{'R3'} eq 'E') { 
        if ($att{'R2'} eq 'D') { 
          return 'OW+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'L') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'V') { 
          return 'AA+1'; # unique at depth 4
        } 
        return 'AA+1';
      } 
      if ($att{'R3'} eq 'G') { 
        if ($att{'L1'} eq 'E') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'H') { 
          return 'AX';
        } 
        if ($att{'L1'} eq 'I') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'P') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'R') { 
          return 'AA+1'; # unique at depth 4
        } 
        return 'AA+1';
      } 
      if ($att{'R3'} eq 'I') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'M') { 
        if ($att{'L2'} eq 'N') { 
          return 'OW+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'AO+1'; # unique at depth 4
        } 
        return 'OW+1';
      } 
      if ($att{'R3'} eq 'N') { 
        if ($att{'R2'} eq 'O') { 
          return 'OW'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'U') { 
          if ($att{'L1'} eq 'V') { 
            if ($att{'L2'} eq '-') { 
              if ($att{'L3'} eq '-') { 
                return 'AA+1'; # depth limit (2/3; 2 classes) at depth 7
              } 
              return 'AA+1';
            } 
            return 'AA+1';
          } 
          return 'AA+1';
        } 
        return 'AX';
      } 
      if ($att{'R3'} eq 'R') { 
        if ($att{'L1'} eq 'C') { 
          return 'AH+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'H') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'T') { 
          return 'AA+1'; # unique at depth 4
        } 
        return 'AA+1';
      } 
      if ($att{'R3'} eq 'S') { 
        return 'OW+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'T') { 
        if ($att{'R2'} eq 'I') { 
          if ($att{'L1'} eq 'P') { 
            if ($att{'L2'} eq '-') { 
              if ($att{'L3'} eq '-') { 
                return 'AA+1'; # depth limit (3/4; 2 classes) at depth 7
              } 
              return 'AA+1';
            } 
            return 'AA+1';
          } 
          return 'AA+1';
        } 
        return 'AX';
      } 
      if ($att{'R3'} eq 'U') { 
        return 'AX'; # unique at depth 3
      } 
      return 'AA+1';
    } 
    if ($att{'R1'} eq 'M') { 
      if ($att{'L1'} eq 'C') { 
        if ($att{'R3'} eq 'E') { 
          if ($att{'R2'} eq 'M') { 
            return 'AA+1'; # unique at depth 5
          } 
          if ($att{'R2'} eq 'P') { 
            return 'AX'; # unique at depth 5
          } 
          return 'AA+1';
        } 
        if ($att{'R3'} eq 'N') { 
          return 'AH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'O') { 
          if ($att{'R2'} eq 'F') { 
            return 'AH+1'; # unique at depth 5
          } 
          if ($att{'R2'} eq 'M') { 
            return 'AA+1'; # unique at depth 5
          } 
          return 'AA+1';
        } 
        if ($att{'R3'} eq 'R') { 
          if ($att{'L3'} eq 'E') { 
            return 'AH+1'; # unique at depth 5
          } 
          return 'AX';
        } 
        if ($att{'R3'} eq 'S') { 
          return 'AH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq '-') { 
          if ($att{'L2'} eq 'E') { 
            return 'AH+1'; # unique at depth 5
          } 
          if ($att{'L2'} eq 'N') { 
            return 'AH'; # unique at depth 5
          } 
          if ($att{'L2'} eq '-') { 
            return 'AH+1'; # unique at depth 5
          } 
          return 'AX';
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'H') { 
        if ($att{'R2'} eq 'E') { 
          return 'OW+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'I') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'O') { 
          return 'OW+1'; # unique at depth 4
        } 
        return 'OW+1';
      } 
      if ($att{'L1'} eq 'N') { 
        if ($att{'L3'} eq 'C') { 
          return 'AA+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'O') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'R') { 
        if ($att{'R2'} eq 'I') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'O') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'R2'} eq '-') { 
          return 'AH'; # unique at depth 4
        } 
        return 'AA+1';
      } 
      if ($att{'L1'} eq 'S') { 
        if ($att{'R3'} eq 'O') { 
          return 'AH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'T') { 
          return 'AH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq '-') { 
          return 'AH'; # unique at depth 4
        } 
        return 'AH+1';
      } 
      if ($att{'L1'} eq 'T') { 
        if ($att{'R2'} eq 'P') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq '-') { 
          return 'AA+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'W') { 
        if ($att{'R2'} eq 'A') { 
          return 'UH+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'E') { 
          return 'IH+1'; # unique at depth 4
        } 
        return 'UH+1';
      } 
      return 'AX';
    } 
    if ($att{'R1'} eq 'N') { 
      if ($att{'L1'} eq 'B') { 
        if ($att{'R2'} eq 'D') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'E') { 
          return 'OW+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'C') { 
        if ($att{'R2'} eq 'D') { 
          if ($att{'R3'} eq 'A') { 
            return 'AX'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'I') { 
            return 'AX'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'O') { 
            return 'AA+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'R') { 
            return 'AA+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'U') { 
            return 'AA+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq '-') { 
            return 'AX'; # unique at depth 5
          } 
          return 'AA+1';
        } 
        if ($att{'R2'} eq 'F') { 
          if ($att{'R3'} eq 'E') { 
            return 'AA+1'; # unique at depth 5
          } 
          return 'AX';
        } 
        if ($att{'R2'} eq 'G') { 
          if ($att{'R3'} eq 'R') { 
            if ($att{'L2'} eq '-') { 
              if ($att{'L3'} eq '-') { 
                return 'AA+1'; # depth limit (2/3; 2 classes) at depth 7
              } 
              return 'AA+1';
            } 
            return 'AA+1';
          } 
          return 'AA+1';
        } 
        if ($att{'R2'} eq 'L') { 
          return 'AA'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'S') { 
          if ($att{'L2'} eq 'N') { 
            return 'AA'; # unique at depth 5
          } 
          if ($att{'L2'} eq 'S') { 
            return 'AA+1'; # unique at depth 5
          } 
          if ($att{'L2'} eq '-') { 
            if ($att{'R3'} eq 'C') { 
              return 'AA+1'; # unique at depth 6
            } 
            if ($att{'R3'} eq 'E') { 
              if ($att{'L3'} eq '-') { 
                return 'AA+1'; # depth limit (2/3; 2 classes) at depth 7
              } 
              return 'AA+1';
            } 
            return 'AX';
          } 
          return 'AX';
        } 
        if ($att{'R2'} eq 'T') { 
          if ($att{'R3'} eq 'R') { 
            if ($att{'L2'} eq '-') { 
              if ($att{'L3'} eq '-') { 
                return 'AA+1'; # depth limit (4/7; 2 classes) at depth 7
              } 
              return 'AA+1';
            } 
            return 'AX';
          } 
          return 'AX';
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'D') { 
        if ($att{'R3'} eq 'L') { 
          if ($att{'L2'} eq 'C') { 
            return 'DCLD'; # unique at depth 5
          } 
          if ($att{'L2'} eq '-') { 
            return 'AA+1'; # unique at depth 5
          } 
          return 'AA+1';
        } 
        if ($att{'R3'} eq 'T') { 
          return 'OW'; # unique at depth 4
        } 
        return 'DCLD';
      } 
      if ($att{'L1'} eq 'E') { 
        if ($att{'L3'} eq 'O') { 
          return 'AH+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          return '_'; # unique at depth 4
        } 
        return 'AH+1';
      } 
      if ($att{'L1'} eq 'H') { 
        return 'OW+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'J') { 
        return 'OW+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'L') { 
        if ($att{'R2'} eq 'E') { 
          return 'OW+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'G') { 
          if ($att{'L3'} eq 'R') { 
            return 'AA+1'; # unique at depth 5
          } 
          if ($att{'L3'} eq '-') { 
            return 'AO+1'; # unique at depth 5
          } 
          return 'AO+1';
        } 
        if ($att{'R2'} eq 'S') { 
          return 'AA+1'; # unique at depth 4
        } 
        return 'AO+1';
      } 
      if ($att{'L1'} eq 'M') { 
        if ($att{'R2'} eq 'D') { 
          if ($att{'L3'} eq '-') { 
            return 'AH+1'; # unique at depth 5
          } 
          return 'AX';
        } 
        if ($att{'R2'} eq 'E') { 
          return 'AH+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'G') { 
          return 'AH+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'I') { 
          if ($att{'L3'} eq 'E') { 
            return 'OW+1'; # unique at depth 5
          } 
          if ($att{'L3'} eq 'R') { 
            return 'OW+1'; # unique at depth 5
          } 
          if ($att{'L3'} eq '-') { 
            return 'AA+1'; # unique at depth 5
          } 
          return 'OW+1';
        } 
        if ($att{'R2'} eq 'S') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'T') { 
          return 'AH+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq '-') { 
          return 'AX'; # unique at depth 4
        } 
        return 'AH+1';
      } 
      if ($att{'L1'} eq 'N') { 
        if ($att{'L3'} eq 'A') { 
          return 'AX'; # unique at depth 4
        } 
        return 'AH';
      } 
      if ($att{'L1'} eq 'O') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'P') { 
        if ($att{'L2'} eq 'A') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'P') { 
          return 'OW+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'S') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'U') { 
          return 'AA+1'; # unique at depth 4
        } 
        return 'AA+1';
      } 
      if ($att{'L1'} eq 'R') { 
        if ($att{'L2'} eq 'A') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'F') { 
          return 'AH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'W') { 
          return 'AO+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'S') { 
        if ($att{'L3'} eq 'A') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'T') { 
          return 'OW+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          if ($att{'L2'} eq 'T') { 
            return 'OW+1'; # unique at depth 5
          } 
          if ($att{'L2'} eq '-') { 
            return 'AH+1'; # unique at depth 5
          } 
          return 'OW+1';
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'T') { 
        if ($att{'L2'} eq 'U') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'W') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'OW+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'W') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'Y') { 
        if ($att{'L2'} eq 'E') { 
          return 'AA+1'; # unique at depth 4
        } 
        return 'W';
      } 
      if ($att{'L1'} eq 'Z') { 
        return 'OW+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq '-') { 
        if ($att{'R3'} eq 'E') { 
          return 'W'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'O') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'Y') { 
          return 'OW+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq '-') { 
          if ($att{'R2'} eq 'E') { 
            return 'W'; # unique at depth 5
          } 
          return 'AA';
        } 
        return 'AA+1';
      } 
      return 'AX';
    } 
    if ($att{'R1'} eq 'O') { 
      if ($att{'R2'} eq 'D') { 
        if ($att{'L1'} eq 'F') { 
          return 'UW+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'G') { 
          return 'UH+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'H') { 
          return 'UH+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'L') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'W') { 
          if ($att{'R3'} eq 'W') { 
            return 'UH+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq '-') { 
            return '_'; # unique at depth 5
          } 
          return 'UH+1';
        } 
        return 'UH+1';
      } 
      if ($att{'R2'} eq 'K') { 
        return 'UH+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'L') { 
        return 'UW+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'M') { 
        if ($att{'R3'} eq 'E') { 
          return 'UW'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'I') { 
          return 'UW+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'S') { 
          return 'UH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq '-') { 
          return 'UW+1'; # unique at depth 4
        } 
        return 'UW+1';
      } 
      if ($att{'R2'} eq 'N') { 
        return 'UW+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'R') { 
        return 'AO+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'S') { 
        return 'UW+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'T') { 
        if ($att{'L2'} eq 'K') { 
          return 'UW+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'S') { 
          return 'UW+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'UH+1'; # unique at depth 4
        } 
        return 'UW+1';
      } 
      if ($att{'R2'} eq '-') { 
        return 'UW+1'; # unique at depth 3
      } 
      return 'UW+1';
    } 
    if ($att{'R1'} eq 'P') { 
      if ($att{'R2'} eq 'A') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'E') { 
        if ($att{'L1'} eq 'C') { 
          return 'OW+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'H') { 
          return 'OW+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'L') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'R') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq '-') { 
          if ($att{'R3'} eq 'N') { 
            return 'OW+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'R') { 
            return 'AA+1'; # unique at depth 5
          } 
          return 'AA+1';
        } 
        return 'AA+1';
      } 
      if ($att{'R2'} eq 'H') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'I') { 
        return 'OW+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'K') { 
        return 'AA+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'L') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'M') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'O') { 
        return 'AX';
      } 
      if ($att{'R2'} eq 'P') { 
        if ($att{'L2'} eq 'D') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'S') { 
          return 'AA+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'R2'} eq 'R') { 
        return 'OW+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'S') { 
        return 'AA+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'T') { 
        return 'AA+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'U') { 
        return 'AA+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq '-') { 
        return 'AA+1'; # unique at depth 3
      } 
      return 'AA+1';
    } 
    if ($att{'R1'} eq 'R') { 
      if ($att{'L1'} eq 'B') { 
        if ($att{'R2'} eq 'D') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'H') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'N') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'T') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq '-') { 
          return 'AX'; # unique at depth 4
        } 
        return 'AO+1';
      } 
      if ($att{'L1'} eq 'C') { 
        if ($att{'R3'} eq 'E') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'I') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'N') { 
          return 'OW+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'O') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'U') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'R3'} eq '-') { 
          if ($att{'L2'} eq '-') { 
            return 'OW+1'; # unique at depth 5
          } 
          return 'AX';
        } 
        return 'AO+1';
      } 
      if ($att{'L1'} eq 'D') { 
        return 'AO+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'E') { 
        if ($att{'L2'} eq 'G') { 
          return 'AO+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'F') { 
        if ($att{'R2'} eq 'C') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'D') { 
          if ($att{'R3'} eq 'A') { 
            return 'AO+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq '-') { 
            if ($att{'L3'} eq '-') { 
              return 'OW+1'; # unique at depth 6
            } 
            return 'AX';
          } 
          return 'AX';
        } 
        if ($att{'R2'} eq 'E') { 
          if ($att{'R3'} eq 'C') { 
            return 'AO+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'V') { 
            return 'AO'; # unique at depth 5
          } 
          if ($att{'R3'} eq '-') { 
            return 'AO+1'; # unique at depth 5
          } 
          return 'AO+1';
        } 
        if ($att{'R2'} eq 'G') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'M') { 
          if ($att{'L2'} eq 'E') { 
            return 'AO+1'; # unique at depth 5
          } 
          if ($att{'L2'} eq 'N') { 
            return 'AX';
          } 
          if ($att{'L2'} eq 'R') { 
            return 'AO+1'; # unique at depth 5
          } 
          if ($att{'L2'} eq 'T') { 
            return 'AO'; # unique at depth 5
          } 
          if ($att{'L2'} eq '-') { 
            return 'AO+1'; # unique at depth 5
          } 
          return 'AO+1';
        } 
        if ($att{'R2'} eq 'N') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'T') { 
          if ($att{'L2'} eq 'N') { 
            return 'AO+1'; # unique at depth 5
          } 
          if ($att{'L2'} eq '-') { 
            return 'AO+1'; # unique at depth 5
          } 
          return 'AX';
        } 
        if ($att{'R2'} eq 'U') { 
          return 'OW+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq '-') { 
          return 'AO'; # unique at depth 4
        } 
        return 'AO+1';
      } 
      if ($att{'L1'} eq 'G') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'H') { 
        if ($att{'L2'} eq 'P') { 
          return 'OW+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'S') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'T') { 
          return 'AO+1'; # unique at depth 4
        } 
        return 'AO+1';
      } 
      if ($att{'L1'} eq 'I') { 
        if ($att{'L3'} eq '-') { 
          return 'AO+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'J') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'L') { 
        if ($att{'L2'} eq 'G') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'AO+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'M') { 
        if ($att{'R2'} eq 'A') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'E') { 
          return 'AO'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'G') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'I') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'S') { 
          return 'AX'; # unique at depth 4
        } 
        return 'AO+1';
      } 
      if ($att{'L1'} eq 'N') { 
        if ($att{'R2'} eq 'E') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'I') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'M') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'T') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq '-') { 
          if ($att{'L3'} eq 'E') { 
            return 'AX'; # unique at depth 5
          } 
          return 'AO';
        } 
        return 'AO+1';
      } 
      if ($att{'L1'} eq 'O') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'P') { 
        if ($att{'R3'} eq 'A') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'E') { 
          if ($att{'L2'} eq 'E') { 
            if ($att{'R2'} eq 'T') { 
              if ($att{'L3'} eq '-') { 
                return 'AO+1'; # depth limit (3/4; 2 classes) at depth 7
              } 
              return 'AO+1';
            } 
            return 'AO+1';
          } 
          if ($att{'L2'} eq 'P') { 
            return 'AO+1'; # unique at depth 5
          } 
          if ($att{'L2'} eq '-') { 
            return 'OW'; # unique at depth 5
          } 
          return 'AO+1';
        } 
        if ($att{'R3'} eq 'R') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'S') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'T') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'R3'} eq '-') { 
          if ($att{'L3'} eq 'C') { 
            return 'OW+1'; # unique at depth 5
          } 
          if ($att{'L3'} eq 'U') { 
            return 'OW+1'; # unique at depth 5
          } 
          if ($att{'L3'} eq '-') { 
            return 'AO+1'; # unique at depth 5
          } 
          return 'OW+1';
        } 
        return 'AO+1';
      } 
      if ($att{'L1'} eq 'S') { 
        if ($att{'L2'} eq 'E') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'OW+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'T') { 
        if ($att{'R2'} eq 'E') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'I') { 
          if ($att{'L2'} eq 'A') { 
            return 'OW+1'; # unique at depth 5
          } 
          if ($att{'L2'} eq 'S') { 
            return 'AO+1'; # unique at depth 5
          } 
          return 'AX';
        } 
        if ($att{'R2'} eq 'N') { 
          if ($att{'L2'} eq 'T') { 
            return 'AH+1'; # unique at depth 5
          } 
          if ($att{'L2'} eq '-') { 
            return 'AO+1'; # unique at depth 5
          } 
          return 'AH+1';
        } 
        if ($att{'R2'} eq 'Y') { 
          if ($att{'L3'} eq 'D') { 
            return 'AO+1'; # unique at depth 5
          } 
          if ($att{'L3'} eq 'N') { 
            return 'OW+1'; # unique at depth 5
          } 
          if ($att{'L3'} eq 'P') { 
            return 'OW+1'; # unique at depth 5
          } 
          if ($att{'L3'} eq '-') { 
            return 'AO+1'; # unique at depth 5
          } 
          return 'OW+1';
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'V') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'W') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'Y') { 
        if ($att{'L2'} eq '-') { 
          return 'AO+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq '-') { 
        if ($att{'R2'} eq 'C') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'D') { 
          return 'AO'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'G') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'I') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq '-') { 
          return 'AO'; # unique at depth 4
        } 
        return 'AO+1';
      } 
      return 'AO+1';
    } 
    if ($att{'R1'} eq 'S') { 
      if ($att{'R3'} eq '-') { 
        if ($att{'L1'} eq 'B') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'C') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'H') { 
          if ($att{'L2'} eq 'T') { 
            return 'OW'; # unique at depth 5
          } 
          return 'UW';
        } 
        if ($att{'L1'} eq 'I') { 
          return 'OW'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'J') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'L') { 
          if ($att{'R2'} eq 'E') { 
            if ($att{'L3'} eq 'S') { 
              return 'OW+1'; # unique at depth 6
            } 
            if ($att{'L3'} eq '-') { 
              return 'UW+1'; # unique at depth 6
            } 
            return 'UW+1';
          } 
          if ($att{'R2'} eq 'S') { 
            return 'AO+1'; # unique at depth 5
          } 
          if ($att{'R2'} eq 'T') { 
            return 'AO+1'; # unique at depth 5
          } 
          if ($att{'R2'} eq '-') { 
            return 'AO+1'; # unique at depth 5
          } 
          return 'AO+1';
        } 
        if ($att{'L1'} eq 'M') { 
          return 'OW'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'P') { 
          return 'OW+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'R') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'T') { 
          return 'AX'; # unique at depth 4
        } 
        return 'AO+1';
      } 
      if ($att{'R3'} eq 'A') { 
        return 'AA+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'C') { 
        return 'AA+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'D') { 
        return 'OW+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'I') { 
        return 'AA+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'L') { 
        if ($att{'L1'} eq 'C') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'M') { 
          return 'OW+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'P') { 
          return 'OW+1'; # unique at depth 4
        } 
        return 'OW+1';
      } 
      if ($att{'R3'} eq 'N') { 
        if ($att{'L2'} eq 'C') { 
          return 'OW+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'H') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'UW+1'; # unique at depth 4
        } 
        return 'UW+1';
      } 
      if ($att{'R3'} eq 'O') { 
        return 'AO+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'P') { 
        if ($att{'L3'} eq 'H') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          return 'OW+1'; # unique at depth 4
        } 
        return 'OW+1';
      } 
      if ($att{'R3'} eq 'R') { 
        if ($att{'L2'} eq 'P') { 
          return 'AA+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'X') { 
          return 'PCLP'; # unique at depth 4
        } 
        return 'AA+1';
      } 
      if ($att{'R3'} eq 'S') { 
        return 'AO+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'T') { 
        if ($att{'L2'} eq 'C') { 
          return 'AA+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      return 'AA+1';
    } 
    if ($att{'R1'} eq 'T') { 
      if ($att{'L1'} eq 'B') { 
        if ($att{'R2'} eq 'H') { 
          return 'OW'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'T') { 
          return 'AA+1'; # unique at depth 4
        } 
        return 'AA+1';
      } 
      if ($att{'L1'} eq 'C') { 
        return 'AA+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'G') { 
        if ($att{'L2'} eq 'E') { 
          return 'OW+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          return 'AA+1'; # unique at depth 4
        } 
        return 'OW+1';
      } 
      if ($att{'L1'} eq 'H') { 
        return 'AA+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'L') { 
        if ($att{'L3'} eq '-') { 
          return 'AO+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'M') { 
        if ($att{'R2'} eq 'E') { 
          return 'OW+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'H') { 
          return 'AH+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'I') { 
          return 'OW+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'O') { 
          return 'OW+1'; # unique at depth 4
        } 
        return 'OW+1';
      } 
      if ($att{'L1'} eq 'N') { 
        if ($att{'R2'} eq 'H') { 
          return 'AH+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'I') { 
          return 'OW+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq '-') { 
          return 'AA'; # unique at depth 4
        } 
        return 'AH+1';
      } 
      if ($att{'L1'} eq 'O') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'P') { 
        return 'AX';
      } 
      if ($att{'L1'} eq 'R') { 
        if ($att{'R3'} eq 'E') { 
          return 'AH+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L1'} eq 'T') { 
        return 'OW+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'U') { 
        return 'OW+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'V') { 
        return 'OW+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq '-') { 
        return 'AH+1'; # unique at depth 3
      } 
      return 'OW+1';
    } 
    if ($att{'R1'} eq 'U') { 
      if ($att{'R2'} eq 'G') { 
        if ($att{'L1'} eq 'D') { 
          if ($att{'R3'} eq 'H') { 
            return 'OW+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'L') { 
            return '_'; # unique at depth 5
          } 
          return 'OW+1';
        } 
        if ($att{'L1'} eq 'H') { 
          if ($att{'L3'} eq 'L') { 
            return 'OW+1'; # unique at depth 5
          } 
          if ($att{'L3'} eq '-') { 
            return 'OW'; # unique at depth 5
          } 
          return 'OW+1';
        } 
        if ($att{'L1'} eq 'N') { 
          if ($att{'L3'} eq '-') { 
            return '_'; # unique at depth 5
          } 
          return 'AX';
        } 
        if ($att{'L1'} eq '-') { 
          return 'AO+1'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'R2'} eq 'N') { 
        if ($att{'L1'} eq 'F') { 
          return 'AW';
        } 
        return '_';
      } 
      if ($att{'R2'} eq 'R') { 
        if ($att{'L1'} eq '-') { 
          return 'AA'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'C') { 
          if ($att{'L2'} eq 'N') { 
            return '_'; # unique at depth 5
          } 
          if ($att{'L2'} eq 'R') { 
            return 'AO+1'; # unique at depth 5
          } 
          if ($att{'L2'} eq 'S') { 
            return '_'; # unique at depth 5
          } 
          if ($att{'L2'} eq '-') { 
            return 'AO+1'; # unique at depth 5
          } 
          return 'AO+1';
        } 
        if ($att{'L1'} eq 'F') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'H') { 
          return 'AW+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'M') { 
          return 'AO'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'P') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'S') { 
          return 'AO+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'Y') { 
          return 'AO'; # unique at depth 4
        } 
        return 'AO+1';
      } 
      if ($att{'R2'} eq 'S') { 
        if ($att{'L3'} eq 'U') { 
          return 'IY'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          if ($att{'L1'} eq 'M') { 
            return 'AX'; # unique at depth 5
          } 
          return '_';
        } 
        return 'AX';
      } 
      if ($att{'R2'} eq 'T') { 
        if ($att{'L1'} eq '-') { 
          if ($att{'R3'} eq '-') { 
            return 'AW'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'R') { 
            return 'AW';
          } 
          return '_';
        } 
        if ($att{'L1'} eq 'M') { 
          return 'AX'; # unique at depth 4
        } 
        return '_';
      } 
      return '_';
    } 
    if ($att{'R1'} eq 'V') { 
      if ($att{'L1'} eq '-') { 
        if ($att{'R3'} eq 'R') { 
          if ($att{'R2'} eq 'E') { 
            if ($att{'L2'} eq '-') { 
              if ($att{'L3'} eq '-') { 
                return 'OW+1'; # depth limit (7/8; 2 classes) at depth 7
              } 
              return 'OW+1';
            } 
            return 'OW+1';
          } 
          return 'OW+1';
        } 
        return 'OW+1';
      } 
      if ($att{'L1'} eq 'C') { 
        if ($att{'L3'} eq 'N') { 
          return 'OW+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          return 'AH+1'; # unique at depth 4
        } 
        return 'AH+1';
      } 
      if ($att{'L1'} eq 'D') { 
        return 'OW+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'G') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'L') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'M') { 
        return 'UW+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'N') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'P') { 
        return 'AA+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'R') { 
        if ($att{'L3'} eq 'M') { 
          return 'UW+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'N') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'P') { 
          return 'UW+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          return 'AX'; # unique at depth 4
        } 
        return 'UW+1';
      } 
      return 'UW+1';
    } 
    if ($att{'R1'} eq 'W') { 
      if ($att{'L2'} eq 'B') { 
        return 'OW+1'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'G') { 
        return 'OW+1'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'H') { 
        return 'OW+1'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'K') { 
        return 'OW+1'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'R') { 
        return 'OW'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'S') { 
        if ($att{'R3'} eq '-') { 
          return 'OW+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'D') { 
          return 'OW+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'R') { 
          return '_'; # unique at depth 4
        } 
        return 'OW+1';
      } 
      if ($att{'L2'} eq '-') { 
        if ($att{'L1'} eq 'L') { 
          return 'OW+1'; # unique at depth 4
        } 
        if ($att{'L1'} eq '-') { 
          if ($att{'R3'} eq '-') { 
            return 'OW'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'E') { 
            return 'OW+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'N') { 
            return 'OW+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'S') { 
            return 'OW+1'; # unique at depth 5
          } 
          return 'OW+1';
        } 
        return '_';
      } 
      return '_';
    } 
    if ($att{'R1'} eq 'Y') { 
      return '_'; # unique at depth 2
    } 
    if ($att{'R1'} eq 'Z') { 
      return 'AH+1'; # unique at depth 2
    } 
    if ($att{'R1'} eq '-') { 
      if ($att{'L1'} eq 'C') { 
        return 'OW+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'D') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'G') { 
        if ($att{'L3'} eq 'E') { 
          return 'OW+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          return 'OW+1'; # unique at depth 4
        } 
        return 'OW';
      } 
      if ($att{'L1'} eq 'H') { 
        return 'UW'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'O') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'T') { 
        if ($att{'L2'} eq 'A') { 
          return 'OW'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'U') { 
          return 'OW'; # unique at depth 4
        } 
        return 'UW';
      } 
      if ($att{'L1'} eq 'W') { 
        return 'UW+1'; # unique at depth 3
      } 
      return 'OW';
    } 
    return 'AX';
  } 
  if ($att{'L'} eq 'P') { 
    if ($att{'L1'} eq '-') { 
      if ($att{'R1'} eq 'H') { 
        return 'F'; # unique at depth 3
      } 
      if ($att{'R1'} eq 'N') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'R1'} eq 'S') { 
        return '_'; # unique at depth 3
      } 
      return 'PCLP';
    } 
    if ($att{'L1'} eq 'A') { 
      if ($att{'R3'} eq 'E') { 
        if ($att{'L2'} eq 'R') { 
          return 'F'; # unique at depth 4
        } 
        return 'PCLP';
      } 
      if ($att{'R3'} eq 'I') { 
        if ($att{'R2'} eq 'L') { 
          return '_'; # unique at depth 4
        } 
        return 'PCLP';
      } 
      return 'PCLP';
    } 
    if ($att{'L1'} eq 'E') { 
      if ($att{'L3'} eq 'O') { 
        return 'F'; # unique at depth 3
      } 
      return 'PCLP';
    } 
    if ($att{'L1'} eq 'M') { 
      if ($att{'R1'} eq 'H') { 
        return 'F'; # unique at depth 3
      } 
      if ($att{'R1'} eq 'T') { 
        if ($att{'L3'} eq 'X') { 
          return 'M'; # unique at depth 4
        } 
        return 'PCLP';
      } 
      return 'PCLP';
    } 
    if ($att{'L1'} eq 'O') { 
      if ($att{'R1'} eq 'H') { 
        return 'F'; # unique at depth 3
      } 
      if ($att{'R1'} eq 'P') { 
        if ($att{'L2'} eq 'R') { 
          return '_'; # unique at depth 4
        } 
        return 'PCLP';
      } 
      return 'PCLP';
    } 
    if ($att{'L1'} eq 'P') { 
      if ($att{'R2'} eq 'D') { 
        if ($att{'L3'} eq 'R') { 
          return 'PCLP'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'R2'} eq 'E') { 
        if ($att{'R3'} eq 'C') { 
          if ($att{'R1'} eq 'R') { 
            return '_'; # unique at depth 5
          } 
          return 'AX';
        } 
        return '_';
      } 
      if ($att{'R2'} eq 'I') { 
        if ($att{'R1'} eq 'O') { 
          return '_'; # unique at depth 4
        } 
        return 'PCLP';
      } 
      if ($att{'R2'} eq 'R') { 
        if ($att{'R3'} eq 'L') { 
          return 'PCLP'; # unique at depth 4
        } 
        return '_';
      } 
      return '_';
    } 
    if ($att{'L1'} eq 'S') { 
      if ($att{'R1'} eq 'H') { 
        return 'F'; # unique at depth 3
      } 
      return 'PCLP';
    } 
    if ($att{'L1'} eq 'U') { 
      if ($att{'R1'} eq 'H') { 
        return 'F'; # unique at depth 3
      } 
      return 'PCLP';
    } 
    if ($att{'L1'} eq 'X') { 
      return 'S'; # unique at depth 2
    } 
    return 'PCLP';
  } 
  if ($att{'L'} eq 'Q') { 
    return 'KCLK'; # unique at depth 1
  } 
  if ($att{'L'} eq 'R') { 
    if ($att{'L1'} eq 'C') { 
      if ($att{'R3'} eq '-') { 
        if ($att{'R2'} eq 'S') { 
          return 'AX'; # unique at depth 4
        } 
        return 'R';
      } 
      return 'R';
    } 
    if ($att{'L1'} eq 'E') { 
      if ($att{'L3'} eq 'E') { 
        if ($att{'R1'} eq 'R') { 
          return 'AH+1'; # unique at depth 4
        } 
        return 'R';
      } 
      if ($att{'L3'} eq 'G') { 
        if ($att{'R2'} eq '-') { 
          if ($att{'L2'} eq 'H') { 
            return 'AXR'; # unique at depth 5
          } 
          return 'R';
        } 
        return 'R';
      } 
      if ($att{'L3'} eq 'S') { 
        if ($att{'L2'} eq 'F') { 
          return '_'; # unique at depth 4
        } 
        return 'R';
      } 
      if ($att{'L3'} eq 'X') { 
        if ($att{'R2'} eq 'E') { 
          return 'IY+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'M') { 
          return 'EH+1'; # unique at depth 4
        } 
        return 'EH+1';
      } 
      return 'R';
    } 
    if ($att{'L1'} eq 'I') { 
      if ($att{'L2'} eq 'F') { 
        if ($att{'R1'} eq 'S') { 
          return 'R'; # unique at depth 4
        } 
        return 'AXR';
      } 
      if ($att{'L2'} eq 'P') { 
        if ($att{'L3'} eq 'X') { 
          return 'AY+1'; # unique at depth 4
        } 
        return 'R';
      } 
      if ($att{'L2'} eq 'U') { 
        return 'AXR'; # unique at depth 3
      } 
      return 'R';
    } 
    if ($att{'L1'} eq 'R') { 
      if ($att{'L3'} eq 'F') { 
        return 'R'; # unique at depth 3
      } 
      if ($att{'L3'} eq 'V') { 
        return 'R'; # unique at depth 3
      } 
      if ($att{'L3'} eq '-') { 
        if ($att{'L2'} eq 'U') { 
          return 'R'; # unique at depth 4
        } 
        return '_';
      } 
      return '_';
    } 
    if ($att{'L1'} eq 'U') { 
      if ($att{'R1'} eq 'E') { 
        if ($att{'L3'} eq 'E') { 
          return 'UH+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'I') { 
          if ($att{'L2'} eq 'Z') { 
            return 'R'; # unique at depth 5
          } 
          return 'AX';
        } 
        if ($att{'L3'} eq 'O') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'U') { 
          return 'AX'; # unique at depth 4
        } 
        return 'R';
      } 
      if ($att{'R1'} eq 'I') { 
        if ($att{'L2'} eq 'F') { 
          return 'UH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'T') { 
          return 'AX';
        } 
        return 'R';
      } 
      if ($att{'R1'} eq 'P') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'R1'} eq 'R') { 
        if ($att{'R3'} eq '-') { 
          if ($att{'L2'} eq 'C') { 
            return '_'; # unique at depth 5
          } 
          return 'R';
        } 
        if ($att{'R3'} eq 'N') { 
          return '_'; # unique at depth 4
        } 
        return 'R';
      } 
      return 'R';
    } 
    return 'R';
  } 
  if ($att{'L'} eq 'S') { 
    if ($att{'R1'} eq '-') { 
      if ($att{'L1'} eq 'A') { 
        if ($att{'L3'} eq 'G') { 
          return 'S'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'N') { 
          return 'S'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'T') { 
          return 'S'; # unique at depth 4
        } 
        return 'Z';
      } 
      if ($att{'L1'} eq 'B') { 
        if ($att{'L3'} eq 'C') { 
          return 'S'; # unique at depth 4
        } 
        return 'Z';
      } 
      if ($att{'L1'} eq 'C') { 
        return 'S'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'E') { 
        if ($att{'L2'} eq 'K') { 
          return 'S'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'P') { 
          return 'S'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'T') { 
          return 'S'; # unique at depth 4
        } 
        return 'Z';
      } 
      if ($att{'L1'} eq 'F') { 
        return 'S'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'H') { 
        if ($att{'L3'} eq 'N') { 
          return 'S'; # unique at depth 4
        } 
        return 'Z';
      } 
      if ($att{'L1'} eq 'I') { 
        if ($att{'L2'} eq 'H') { 
          return 'Z';
        } 
        if ($att{'L2'} eq '-') { 
          return 'Z'; # unique at depth 4
        } 
        return 'S';
      } 
      if ($att{'L1'} eq 'K') { 
        return 'S'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'N') { 
        if ($att{'L3'} eq 'R') { 
          return 'S'; # unique at depth 4
        } 
        return 'Z';
      } 
      if ($att{'L1'} eq 'O') { 
        return 'S'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'P') { 
        return 'S'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'S') { 
        if ($att{'L2'} eq 'A') { 
          return 'S'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'E') { 
          if ($att{'L3'} eq 'C') { 
            return 'S';
          } 
          if ($att{'L3'} eq 'R') { 
            return 'S';
          } 
          return '_';
        } 
        return '_';
      } 
      if ($att{'L1'} eq 'T') { 
        if ($att{'L2'} eq 'R') { 
          if ($att{'L3'} eq 'E') { 
            return 'Z'; # unique at depth 5
          } 
          return 'S';
        } 
        return 'S';
      } 
      if ($att{'L1'} eq 'U') { 
        if ($att{'L3'} eq 'L') { 
          return 'Z'; # unique at depth 4
        } 
        return 'S';
      } 
      return 'Z';
    } 
    if ($att{'R1'} eq 'A') { 
      if ($att{'L2'} eq 'A') { 
        if ($att{'L3'} eq '-') { 
          return '_'; # unique at depth 4
        } 
        return 'Z';
      } 
      if ($att{'L2'} eq 'E') { 
        if ($att{'L3'} eq 'V') { 
          return 'S'; # unique at depth 4
        } 
        return 'IH';
      } 
      if ($att{'L2'} eq 'O') { 
        return 'Z'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'P') { 
        return 'Z'; # unique at depth 3
      } 
      return 'S';
    } 
    if ($att{'R1'} eq 'B') { 
      if ($att{'L2'} eq 'H') { 
        return 'Z'; # unique at depth 3
      } 
      return 'S';
    } 
    if ($att{'R1'} eq 'C') { 
      if ($att{'L2'} eq 'O') { 
        return '_'; # unique at depth 3
      } 
      return 'S';
    } 
    if ($att{'R1'} eq 'E') { 
      if ($att{'L1'} eq 'A') { 
        if ($att{'L3'} eq 'S') { 
          return 'Z'; # unique at depth 4
        } 
        if ($att{'L3'} eq '-') { 
          if ($att{'L2'} eq 'E') { 
            return 'Z'; # unique at depth 5
          } 
          return 'S';
        } 
        return 'S';
      } 
      if ($att{'L1'} eq 'B') { 
        if ($att{'L2'} eq 'U') { 
          return 'S'; # unique at depth 4
        } 
        return 'Z';
      } 
      if ($att{'L1'} eq 'E') { 
        if ($att{'R2'} eq 'A') { 
          return 'S'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'X') { 
          return 'EH+1'; # unique at depth 4
        } 
        return 'Z';
      } 
      if ($att{'L1'} eq 'I') { 
        if ($att{'L3'} eq 'O') { 
          return 'S'; # unique at depth 4
        } 
        return 'Z';
      } 
      if ($att{'L1'} eq 'L') { 
        if ($att{'L3'} eq '-') { 
          return 'S'; # unique at depth 4
        } 
        return 'Z';
      } 
      if ($att{'L1'} eq 'O') { 
        if ($att{'L2'} eq 'L') { 
          if ($att{'R2'} eq 'D') { 
            return 'S'; # unique at depth 5
          } 
          return 'Z';
        } 
        if ($att{'L2'} eq 'N') { 
          return 'S'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'R') { 
          return 'S'; # unique at depth 4
        } 
        return 'Z';
      } 
      if ($att{'L1'} eq 'S') { 
        if ($att{'L3'} eq 'L') { 
          return 'S'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'L1'} eq 'U') { 
        if ($att{'L2'} eq 'F') { 
          return 'UW+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'H') { 
          return 'S'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'O') { 
          if ($att{'L3'} eq 'R') { 
            return 'Z'; # unique at depth 5
          } 
          return 'S';
        } 
        if ($att{'L2'} eq 'T') { 
          return 'S'; # unique at depth 4
        } 
        if ($att{'L2'} eq '-') { 
          if ($att{'R2'} eq 'D') { 
            return 'UW'; # unique at depth 5
          } 
          if ($att{'R2'} eq '-') { 
            return 'UW+1'; # unique at depth 5
          } 
          return 'UW+1';
        } 
        return 'Z';
      } 
      return 'S';
    } 
    if ($att{'R1'} eq 'F') { 
      if ($att{'L3'} eq 'C') { 
        return '_'; # unique at depth 3
      } 
      return 'S';
    } 
    if ($att{'R1'} eq 'H') { 
      return 'SH'; # unique at depth 2
    } 
    if ($att{'R1'} eq 'I') { 
      if ($att{'L1'} eq '-') { 
        if ($att{'R3'} eq '-') { 
          return '_'; # unique at depth 4
        } 
        return 'S';
      } 
      if ($att{'L1'} eq 'D') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'E') { 
        return 'Z'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'I') { 
        if ($att{'R2'} eq 'O') { 
          return 'ZH'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'S') { 
          return 'S'; # unique at depth 4
        } 
        return 'Z';
      } 
      if ($att{'L1'} eq 'N') { 
        if ($att{'R2'} eq 'O') { 
          if ($att{'L3'} eq '-') { 
            return '_'; # unique at depth 5
          } 
          return 'N';
        } 
        if ($att{'R2'} eq 'V') { 
          return 'N'; # unique at depth 4
        } 
        return 'S';
      } 
      if ($att{'L1'} eq 'O') { 
        return 'Z'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'R') { 
        return 'ZH'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'S') { 
        if ($att{'R3'} eq 'L') { 
          if ($att{'L3'} eq '-') { 
            return 'S'; # unique at depth 5
          } 
          return '_';
        } 
        return '_';
      } 
      if ($att{'L1'} eq 'U') { 
        if ($att{'L3'} eq 'C') { 
          return 'S'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'N') { 
          return 'UW+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'O') { 
          return 'S'; # unique at depth 4
        } 
        return 'Z';
      } 
      if ($att{'L1'} eq 'Y') { 
        return 'Z'; # unique at depth 3
      } 
      return 'S';
    } 
    if ($att{'R1'} eq 'L') { 
      if ($att{'R3'} eq 'N') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'S') { 
        return 'Z'; # unique at depth 3
      } 
      return 'S';
    } 
    if ($att{'R1'} eq 'M') { 
      if ($att{'L2'} eq 'E') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'H') { 
        return 'Z'; # unique at depth 3
      } 
      return 'S';
    } 
    if ($att{'R1'} eq 'N') { 
      if ($att{'L3'} eq '-') { 
        return 'Z'; # unique at depth 3
      } 
      return 'S';
    } 
    if ($att{'R1'} eq 'O') { 
      if ($att{'L1'} eq 'A') { 
        return 'Z'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'E') { 
        if ($att{'R2'} eq 'U') { 
          return 'S'; # unique at depth 4
        } 
        return 'Z';
      } 
      if ($att{'L1'} eq 'I') { 
        if ($att{'L2'} eq 'D') { 
          return 'S'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'P') { 
          return 'S'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'R') { 
          if ($att{'L3'} eq 'A') { 
            return 'S'; # unique at depth 5
          } 
          return 'Z';
        } 
        if ($att{'L2'} eq '-') { 
          return 'S'; # unique at depth 4
        } 
        return 'Z';
      } 
      if ($att{'L1'} eq 'N') { 
        if ($att{'L3'} eq 'L') { 
          return 'Z'; # unique at depth 4
        } 
        return 'S';
      } 
      if ($att{'L1'} eq 'S') { 
        return '_'; # unique at depth 3
      } 
      return 'S';
    } 
    if ($att{'R1'} eq 'S') { 
      if ($att{'R3'} eq '-') { 
        if ($att{'L3'} eq 'O') { 
          if ($att{'L2'} eq 'C') { 
            return '_'; # unique at depth 5
          } 
          return 'S';
        } 
        if ($att{'L3'} eq 'S') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'T') { 
          if ($att{'L2'} eq 'R') { 
            return '_'; # unique at depth 5
          } 
          return 'S';
        } 
        if ($att{'L3'} eq '-') { 
          if ($att{'L1'} eq 'A') { 
            return '_'; # unique at depth 5
          } 
          return 'S';
        } 
        return 'S';
      } 
      if ($att{'R3'} eq 'A') { 
        if ($att{'L3'} eq '-') { 
          return '_'; # unique at depth 4
        } 
        return 'S';
      } 
      if ($att{'R3'} eq 'B') { 
        if ($att{'L3'} eq '-') { 
          return '_'; # unique at depth 4
        } 
        return 'S';
      } 
      if ($att{'R3'} eq 'E') { 
        if ($att{'L2'} eq 'M') { 
          return 'S'; # unique at depth 4
        } 
        return 'SH';
      } 
      if ($att{'R3'} eq 'O') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'R') { 
        if ($att{'L3'} eq '-') { 
          return 'SH'; # unique at depth 4
        } 
        return 'S';
      } 
      if ($att{'R3'} eq 'S') { 
        if ($att{'L2'} eq 'L') { 
          return '_'; # unique at depth 4
        } 
        return 'S';
      } 
      return 'S';
    } 
    if ($att{'R1'} eq 'T') { 
      if ($att{'L2'} eq 'X') { 
        return 'IH+1'; # unique at depth 3
      } 
      return 'S';
    } 
    if ($att{'R1'} eq 'U') { 
      if ($att{'L1'} eq '-') { 
        if ($att{'R3'} eq 'E') { 
          if ($att{'R2'} eq 'R') { 
            return 'SH'; # unique at depth 5
          } 
          return 'S';
        } 
        return 'S';
      } 
      if ($att{'L1'} eq 'A') { 
        return 'ZH'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'E') { 
        return 'Z'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'N') { 
        if ($att{'L2'} eq 'E') { 
          return 'SH'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'I') { 
          return 'SH'; # unique at depth 4
        } 
        return 'S';
      } 
      if ($att{'L1'} eq 'O') { 
        return 'OW+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'S') { 
        return '_'; # unique at depth 3
      } 
      return 'S';
    } 
    if ($att{'R1'} eq 'Y') { 
      if ($att{'L1'} eq 'A') { 
        if ($att{'L2'} eq '-') { 
          return 'S'; # unique at depth 4
        } 
        return 'Z';
      } 
      if ($att{'L1'} eq 'I') { 
        return 'Z'; # unique at depth 3
      } 
      return 'S';
    } 
    return 'S';
  } 
  if ($att{'L'} eq 'T') { 
    if ($att{'R1'} eq '-') { 
      if ($att{'L1'} eq 'A') { 
        if ($att{'L2'} eq 'H') { 
          return 'TCL';
        } 
        return 'TCLT';
      } 
      if ($att{'L1'} eq 'N') { 
        if ($att{'L3'} eq 'L') { 
          if ($att{'L2'} eq 'E') { 
            return 'TCL';
          } 
          return 'TCLT';
        } 
        return 'TCLT';
      } 
      if ($att{'L1'} eq 'O') { 
        if ($att{'L2'} eq 'N') { 
          return 'TCL'; # unique at depth 4
        } 
        return 'TCLT';
      } 
      if ($att{'L1'} eq 'R') { 
        if ($att{'L3'} eq '-') { 
          return 'TCL'; # unique at depth 4
        } 
        return 'TCLT';
      } 
      if ($att{'L1'} eq 'S') { 
        if ($att{'L2'} eq 'A') { 
          if ($att{'L3'} eq '-') { 
            return 'TCL';
          } 
          return 'TCLT';
        } 
        if ($att{'L2'} eq 'I') { 
          if ($att{'L3'} eq 'R') { 
            return 'TCL'; # unique at depth 5
          } 
          return 'TCLT';
        } 
        if ($att{'L2'} eq 'R') { 
          return 'TCL'; # unique at depth 4
        } 
        return 'TCLT';
      } 
      if ($att{'L1'} eq 'T') { 
        return '_'; # unique at depth 3
      } 
      return 'TCLT';
    } 
    if ($att{'R1'} eq 'A') { 
      if ($att{'L1'} eq 'T') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'U') { 
        return 'AX'; # unique at depth 3
      } 
      return 'TCLT';
    } 
    if ($att{'R1'} eq 'C') { 
      if ($att{'L2'} eq 'M') { 
        return 'TCLT'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'O') { 
        return 'TCLT'; # unique at depth 3
      } 
      return '_';
    } 
    if ($att{'R1'} eq 'E') { 
      if ($att{'L1'} eq 'A') { 
        if ($att{'L2'} eq 'V') { 
          if ($att{'L3'} eq 'O') { 
            return 'TCLT'; # unique at depth 5
          } 
          return 'DX';
        } 
        return 'TCLT';
      } 
      if ($att{'L1'} eq 'C') { 
        if ($att{'L3'} eq 'P') { 
          return 'KCLTCLT'; # unique at depth 4
        } 
        return 'TCLT';
      } 
      if ($att{'L1'} eq 'F') { 
        if ($att{'L2'} eq 'O') { 
          return '_'; # unique at depth 4
        } 
        return 'TCLT';
      } 
      if ($att{'L1'} eq 'R') { 
        if ($att{'R3'} eq 'L') { 
          return 'DX'; # unique at depth 4
        } 
        return 'TCLT';
      } 
      if ($att{'L1'} eq 'S') { 
        if ($att{'R2'} eq 'N') { 
          return '_'; # unique at depth 4
        } 
        return 'TCLT';
      } 
      if ($att{'L1'} eq 'T') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'U') { 
        if ($att{'L2'} eq 'B') { 
          return 'UW'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'C') { 
          return 'UW+1'; # unique at depth 4
        } 
        return 'TCLT';
      } 
      if ($att{'L1'} eq 'X') { 
        return 'S'; # unique at depth 3
      } 
      return 'TCLT';
    } 
    if ($att{'R1'} eq 'H') { 
      if ($att{'R2'} eq '-') { 
        if ($att{'L3'} eq 'I') { 
          return 'EY+1'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'R2'} eq 'A') { 
        if ($att{'L2'} eq 'A') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'M') { 
          return '_'; # unique at depth 4
        } 
        return 'DH';
      } 
      if ($att{'R2'} eq 'E') { 
        if ($att{'R3'} eq 'D') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'O') { 
          return '_'; # unique at depth 4
        } 
        return 'DH';
      } 
      if ($att{'R2'} eq 'I') { 
        if ($att{'R3'} eq 'N') { 
          if ($att{'L2'} eq 'W') { 
            return 'DH'; # unique at depth 5
          } 
          return '_';
        } 
        if ($att{'R3'} eq 'R') { 
          return 'TH'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'S') { 
          return 'DH'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'R2'} eq 'O') { 
        if ($att{'L1'} eq 'U') { 
          return '_'; # unique at depth 4
        } 
        return 'DH';
      } 
      if ($att{'R2'} eq 'S') { 
        if ($att{'L3'} eq 'R') { 
          return 'DH'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'R2'} eq 'U') { 
        if ($att{'L2'} eq 'E') { 
          return '_'; # unique at depth 4
        } 
        return 'DH';
      } 
      return '_';
    } 
    if ($att{'R1'} eq 'I') { 
      if ($att{'R2'} eq 'A') { 
        if ($att{'R3'} eq 'L') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'N') { 
          return 'TCLCH'; # unique at depth 4
        } 
        return 'SH';
      } 
      if ($att{'R2'} eq 'C') { 
        if ($att{'L3'} eq 'A') { 
          return 'DX'; # unique at depth 4
        } 
        return 'TCLT';
      } 
      if ($att{'R2'} eq 'E') { 
        if ($att{'L3'} eq 'I') { 
          return '_'; # unique at depth 4
        } 
        return 'TCLT';
      } 
      if ($att{'R2'} eq 'L') { 
        if ($att{'L2'} eq 'F') { 
          return 'UW+1'; # unique at depth 4
        } 
        return 'TCLT';
      } 
      if ($att{'R2'} eq 'N') { 
        if ($att{'L1'} eq 'A') { 
          if ($att{'L3'} eq 'L') { 
            return 'EY+1'; # unique at depth 5
          } 
          if ($att{'L3'} eq 'R') { 
            return 'EY+1'; # unique at depth 5
          } 
          return 'TCLT';
        } 
        if ($att{'L1'} eq 'P') { 
          return 'PCLP'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'S') { 
          if ($att{'L3'} eq 'X') { 
            return 'S'; # unique at depth 5
          } 
          return 'TCLT';
        } 
        if ($att{'L1'} eq 'T') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L1'} eq 'U') { 
          if ($att{'L3'} eq 'E') { 
            return 'UW+1'; # unique at depth 5
          } 
          if ($att{'L3'} eq '-') { 
            return 'TCLT'; # unique at depth 5
          } 
          return 'UW+1';
        } 
        return 'TCLT';
      } 
      if ($att{'R2'} eq 'O') { 
        if ($att{'L3'} eq 'A') { 
          if ($att{'L2'} eq 'N') { 
            return 'EY+1'; # unique at depth 5
          } 
          if ($att{'L2'} eq 'X') { 
            return 'EY+1'; # unique at depth 5
          } 
          return '_';
        } 
        if ($att{'L3'} eq 'E') { 
          if ($att{'L2'} eq 'C') { 
            return 'UW+1'; # unique at depth 5
          } 
          return '_';
        } 
        if ($att{'L3'} eq 'I') { 
          if ($att{'L2'} eq 'B') { 
            if ($att{'L1'} eq 'I') { 
              return '_'; # unique at depth 6
            } 
            if ($att{'L1'} eq 'U') { 
              return 'UW+1'; # unique at depth 6
            } 
            return 'UW+1';
          } 
          return '_';
        } 
        if ($att{'L3'} eq 'U') { 
          if ($att{'L2'} eq 'C') { 
            return '_'; # unique at depth 5
          } 
          if ($att{'L2'} eq 'E') { 
            return 'TCLCH'; # unique at depth 5
          } 
          if ($att{'L2'} eq 'L') { 
            return 'EY+1'; # unique at depth 5
          } 
          if ($att{'L2'} eq 'P') { 
            return '_'; # unique at depth 5
          } 
          if ($att{'L2'} eq 'T') { 
            return 'EY+1'; # unique at depth 5
          } 
          return 'EY+1';
        } 
        if ($att{'L3'} eq 'V') { 
          return 'TCLCH';
        } 
        return '_';
      } 
      if ($att{'R2'} eq 'T') { 
        if ($att{'L2'} eq 'A') { 
          return '_'; # unique at depth 4
        } 
        return 'TCLT';
      } 
      if ($att{'R2'} eq 'V') { 
        if ($att{'L2'} eq 'M') { 
          return 'DX'; # unique at depth 4
        } 
        return 'TCLT';
      } 
      return 'TCLT';
    } 
    if ($att{'R1'} eq 'L') { 
      if ($att{'L1'} eq 'T') { 
        return '_'; # unique at depth 3
      } 
      return 'TCLT';
    } 
    if ($att{'R1'} eq 'M') { 
      if ($att{'L2'} eq 'I') { 
        return '_'; # unique at depth 3
      } 
      return 'TCLT';
    } 
    if ($att{'R1'} eq 'O') { 
      if ($att{'L1'} eq 'T') { 
        if ($att{'R3'} eq 'N') { 
          return 'R';
        } 
        return '_';
      } 
      return 'TCLT';
    } 
    if ($att{'R1'} eq 'S') { 
      if ($att{'L3'} eq 'B') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'L3'} eq 'S') { 
        if ($att{'L2'} eq 'E') { 
          return '_'; # unique at depth 4
        } 
        return 'TCLT';
      } 
      if ($att{'L3'} eq 'U') { 
        if ($att{'L1'} eq 'N') { 
          return 'TCLT'; # unique at depth 4
        } 
        return '_';
      } 
      return 'TCLT';
    } 
    if ($att{'R1'} eq 'U') { 
      if ($att{'L2'} eq 'A') { 
        if ($att{'L3'} eq '-') { 
          return 'TCLCH'; # unique at depth 4
        } 
        return 'KCLK';
      } 
      if ($att{'L2'} eq 'E') { 
        return 'TCLCH'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'F') { 
        if ($att{'L1'} eq 'U') { 
          return 'UW+1'; # unique at depth 4
        } 
        return 'TCLT';
      } 
      if ($att{'L2'} eq 'I') { 
        if ($att{'L1'} eq 'C') { 
          return 'TCLCH'; # unique at depth 4
        } 
        return 'TCLT';
      } 
      if ($att{'L2'} eq 'L') { 
        return 'TCLCH'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'N') { 
        return 'TCLCH'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'O') { 
        return 'TCLCH'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'S') { 
        return 'TCLCH'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'T') { 
        if ($att{'R2'} eq 'E') { 
          return 'TCLCH'; # unique at depth 4
        } 
        return 'TCLT';
      } 
      if ($att{'L2'} eq 'U') { 
        return 'TCLCH'; # unique at depth 3
      } 
      return 'TCLT';
    } 
    if ($att{'R1'} eq 'Y') { 
      if ($att{'L1'} eq 'E') { 
        if ($att{'L3'} eq 'I') { 
          return '_'; # unique at depth 4
        } 
        return 'TCLT';
      } 
      if ($att{'L1'} eq 'T') { 
        return '_'; # unique at depth 3
      } 
      return 'TCLT';
    } 
    return 'TCLT';
  } 
  if ($att{'L'} eq 'U') { 
    if ($att{'L1'} eq '-') { 
      if ($att{'R2'} eq '-') { 
        return 'AH'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'A') { 
        if ($att{'R3'} eq 'W') { 
          return 'AH+1'; # unique at depth 4
        } 
        return 'AH';
      } 
      if ($att{'R2'} eq 'B') { 
        if ($att{'R1'} eq 'R') { 
          return 'AH+1'; # unique at depth 4
        } 
        return 'AH';
      } 
      if ($att{'R2'} eq 'C') { 
        if ($att{'R3'} eq 'L') { 
          return 'AH'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'O') { 
          return 'AH+1'; # unique at depth 4
        } 
        return 'AH+1';
      } 
      if ($att{'R2'} eq 'D') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'E') { 
        if ($att{'R1'} eq 'N') { 
          return 'AH+1'; # unique at depth 4
        } 
        return 'Y';
      } 
      if ($att{'R2'} eq 'F') { 
        return 'AH'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'G') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'L') { 
        if ($att{'R3'} eq 'I') { 
          return 'AH+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'R2'} eq 'O') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'P') { 
        return 'AH'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'S') { 
        if ($att{'R3'} eq 'C') { 
          return 'AH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'O') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'U') { 
          return 'AH+1'; # unique at depth 4
        } 
        return 'AH';
      } 
      if ($att{'R2'} eq 'T') { 
        return 'AH';
      } 
      if ($att{'R2'} eq 'V') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'W') { 
        return 'AH'; # unique at depth 3
      } 
      return 'AH+1';
    } 
    if ($att{'L1'} eq 'A') { 
      if ($att{'L2'} eq 'C') { 
        if ($att{'R3'} eq '-') { 
          if ($att{'L3'} eq '-') { 
            return 'AH+1'; # unique at depth 5
          } 
          if ($att{'L3'} eq 'E') { 
            return '_'; # unique at depth 5
          } 
          return 'AH+1';
        } 
        if ($att{'R3'} eq 'D') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'N') { 
          return 'AH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'O') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'S') { 
          return 'AH+1'; # unique at depth 4
        } 
        return 'AH+1';
      } 
      if ($att{'L2'} eq 'H') { 
        if ($att{'L3'} eq 'G') { 
          return 'AW+1'; # unique at depth 4
        } 
        return '_';
      } 
      return '_';
    } 
    if ($att{'L1'} eq 'B') { 
      if ($att{'R2'} eq '-') { 
        if ($att{'R1'} eq 'Y') { 
          return '_'; # unique at depth 4
        } 
        return 'AH';
      } 
      if ($att{'R2'} eq 'B') { 
        return 'AH'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'E') { 
        if ($att{'L3'} eq '-') { 
          return 'UH+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'R') { 
          return 'Y'; # unique at depth 4
        } 
        return 'UH+1';
      } 
      if ($att{'R2'} eq 'G') { 
        if ($att{'L3'} eq '-') { 
          return 'AH+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'A') { 
          return 'AH'; # unique at depth 4
        } 
        return 'AH+1';
      } 
      if ($att{'R2'} eq 'H') { 
        return 'UH+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'I') { 
        if ($att{'L3'} eq '-') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'R') { 
          return 'Y'; # unique at depth 4
        } 
        return 'IH+1';
      } 
      if ($att{'R2'} eq 'K') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'L') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'N') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'S') { 
        return 'AH+1'; # unique at depth 3
      } 
      return 'AH+1';
    } 
    if ($att{'L1'} eq 'C') { 
      if ($att{'R2'} eq '-') { 
        if ($att{'L3'} eq '-') { 
          return 'AH+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'T') { 
          return 'AX'; # unique at depth 4
        } 
        return 'AH+1';
      } 
      if ($att{'R2'} eq 'A') { 
        if ($att{'L3'} eq '-') { 
          return 'AX'; # unique at depth 4
        } 
        return 'Y';
      } 
      if ($att{'R2'} eq 'B') { 
        if ($att{'L2'} eq '-') { 
          return 'AH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'I') { 
          return 'AH'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'N') { 
          return 'AH+1'; # unique at depth 4
        } 
        return 'AH+1';
      } 
      if ($att{'R2'} eq 'E') { 
        return 'Y'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'H') { 
        return 'UH+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'I') { 
        if ($att{'L3'} eq 'S') { 
          return 'Y'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'R2'} eq 'R') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'S') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'T') { 
        return 'AH+1'; # unique at depth 3
      } 
      return 'AH+1';
    } 
    if ($att{'L1'} eq 'D') { 
      if ($att{'R2'} eq '-') { 
        if ($att{'L3'} eq '-') { 
          return 'UW+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'E') { 
          return 'AX'; # unique at depth 4
        } 
        return 'UW+1';
      } 
      if ($att{'R2'} eq 'A') { 
        if ($att{'L2'} eq '-') { 
          return 'UW'; # unique at depth 4
        } 
        return 'UH';
      } 
      if ($att{'R2'} eq 'E') { 
        return 'UW+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'I') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'L') { 
        return 'UW'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'N') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'T') { 
        if ($att{'R1'} eq 'A') { 
          return 'UW'; # unique at depth 4
        } 
        return 'AX';
      } 
      return 'AX';
    } 
    if ($att{'L1'} eq 'E') { 
      if ($att{'R1'} eq 'L') { 
        return 'UW+1'; # unique at depth 3
      } 
      if ($att{'R1'} eq 'M') { 
        return 'UH'; # unique at depth 3
      } 
      if ($att{'R1'} eq 'P') { 
        return 'UW'; # unique at depth 3
      } 
      if ($att{'R1'} eq 'T') { 
        return 'UW+1'; # unique at depth 3
      } 
      return 'UW+1';
    } 
    if ($att{'L1'} eq 'F') { 
      if ($att{'R2'} eq '-') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'D') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'L') { 
        if ($att{'L3'} eq '-') { 
          return 'UH+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'R') { 
          return 'AX'; # unique at depth 4
        } 
        return 'UH+1';
      } 
      if ($att{'R2'} eq 'N') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'T') { 
        return 'AH+1'; # unique at depth 3
      } 
      return 'Y';
    } 
    if ($att{'L1'} eq 'G') { 
      if ($att{'R2'} eq '-') { 
        if ($att{'L2'} eq 'R') { 
          return 'Y'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'R2'} eq 'A') { 
        return 'Y'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'D') { 
        return 'Y'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'E') { 
        return 'UW+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'G') { 
        return 'W'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'S') { 
        if ($att{'L3'} eq '-') { 
          return 'AH+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'I') { 
          return 'W'; # unique at depth 4
        } 
        return 'AH+1';
      } 
      if ($att{'R2'} eq 'T') { 
        return 'AH+1'; # unique at depth 3
      } 
      return '_';
    } 
    if ($att{'L1'} eq 'H') { 
      if ($att{'R2'} eq '-') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'B') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'C') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'D') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'E') { 
        return 'UW+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'F') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'G') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'I') { 
        if ($att{'L3'} eq '-') { 
          return 'Y'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'N') { 
          return 'UW+1'; # unique at depth 4
        } 
        return 'UW+1';
      } 
      if ($att{'R2'} eq 'T') { 
        return 'AH+1'; # unique at depth 3
      } 
      return 'AH+1';
    } 
    if ($att{'L1'} eq 'J') { 
      if ($att{'R2'} eq 'E') { 
        return 'UW+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'G') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'I') { 
        return 'UW+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'T') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'Y') { 
        if ($att{'R1'} eq 'L') { 
          return 'UW'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'R') { 
          return 'UH+1'; # unique at depth 4
        } 
        return 'UH+1';
      } 
      return 'UW+1';
    } 
    if ($att{'L1'} eq 'K') { 
      return 'AH+1'; # unique at depth 2
    } 
    if ($att{'L1'} eq 'L') { 
      if ($att{'L2'} eq '-') { 
        return 'UH+1'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'A') { 
        return 'Y'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'B') { 
        return 'UW+1'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'C') { 
        if ($att{'L3'} eq '-') { 
          return 'AH+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'N') { 
          return 'UW+1'; # unique at depth 4
        } 
        return 'UW+1';
      } 
      if ($att{'L2'} eq 'F') { 
        return 'UW'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'I') { 
        return 'Y'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'L') { 
        return 'UW+1'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'O') { 
        if ($att{'R1'} eq 'M') { 
          return 'Y'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'T') { 
          return 'UW+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L2'} eq 'P') { 
        return 'AH'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'S') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'Y') { 
        return 'AX'; # unique at depth 3
      } 
      return 'UW+1';
    } 
    if ($att{'L1'} eq 'M') { 
      if ($att{'R3'} eq '-') { 
        if ($att{'L2'} eq 'A') { 
          return 'AX'; # unique at depth 4
        } 
        return 'AH';
      } 
      if ($att{'R3'} eq 'C') { 
        return 'UW+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'E') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'I') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'L') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'O') { 
        return 'UW+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'R') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'T') { 
        return 'UW+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'Z') { 
        return 'AX'; # unique at depth 3
      } 
      return 'AH+1';
    } 
    if ($att{'L1'} eq 'N') { 
      if ($att{'R1'} eq 'C') { 
        return 'UW+1'; # unique at depth 3
      } 
      if ($att{'R1'} eq 'E') { 
        if ($att{'R2'} eq 'S') { 
          return 'UW'; # unique at depth 4
        } 
        return 'Y';
      } 
      if ($att{'R1'} eq 'F') { 
        return 'Y'; # unique at depth 3
      } 
      if ($att{'R1'} eq 'M') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'R1'} eq 'N') { 
        return 'UW+1'; # unique at depth 3
      } 
      if ($att{'R1'} eq 'R') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'R1'} eq 'S') { 
        return 'AX'; # unique at depth 3
      } 
      return 'UW';
    } 
    if ($att{'L1'} eq 'O') { 
      if ($att{'R1'} eq '-') { 
        return 'UW'; # unique at depth 3
      } 
      if ($att{'R1'} eq 'B') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'R1'} eq 'C') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'R1'} eq 'D') { 
        return 'AW+1'; # unique at depth 3
      } 
      if ($att{'R1'} eq 'G') { 
        if ($att{'L2'} eq 'D') { 
          if ($att{'R2'} eq 'L') { 
            return 'AH+1'; # unique at depth 5
          } 
          return 'R';
        } 
        if ($att{'L2'} eq 'N') { 
          if ($att{'L3'} eq '-') { 
            return 'AH+1'; # unique at depth 5
          } 
          if ($att{'L3'} eq 'N') { 
            return '_'; # unique at depth 5
          } 
          return 'AH+1';
        } 
        if ($att{'L2'} eq 'R') { 
          if ($att{'R3'} eq '-') { 
            return 'UW'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'O') { 
            return 'UW+1'; # unique at depth 5
          } 
          return 'UW+1';
        } 
        return '_';
      } 
      if ($att{'R1'} eq 'I') { 
        return 'UW+1'; # unique at depth 3
      } 
      if ($att{'R1'} eq 'L') { 
        return 'UH'; # unique at depth 3
      } 
      if ($att{'R1'} eq 'N') { 
        if ($att{'L2'} eq 'B') { 
          return 'AW+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'C') { 
          if ($att{'R3'} eq '-') { 
            return 'AW+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'E') { 
            return 'AW+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'I') { 
            return 'AW+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'L') { 
            return 'AW+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'R') { 
            return 'AH+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'Y') { 
            return 'AW+1'; # unique at depth 5
          } 
          return 'AW+1';
        } 
        if ($att{'L2'} eq 'F') { 
          if ($att{'R3'} eq '-') { 
            return 'AW+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'A') { 
            return '_'; # unique at depth 5
          } 
          return 'AW+1';
        } 
        if ($att{'L2'} eq 'M') { 
          return 'AW+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'N') { 
          return 'AW+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'R') { 
          return 'AW+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'S') { 
          return 'AW+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'Y') { 
          return 'AH+1'; # unique at depth 4
        } 
        return 'AW+1';
      } 
      if ($att{'R1'} eq 'P') { 
        if ($att{'L2'} eq 'C') { 
          return 'AH+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'R') { 
          return 'UW+1'; # unique at depth 4
        } 
        return 'UW+1';
      } 
      if ($att{'R1'} eq 'R') { 
        if ($att{'R3'} eq '-') { 
          if ($att{'L2'} eq 'H') { 
            return 'AX'; # unique at depth 5
          } 
          return '_';
        } 
        if ($att{'R3'} eq 'G') { 
          return 'AH+1'; # unique at depth 4
        } 
        return '_';
      } 
      if ($att{'R1'} eq 'S') { 
        if ($att{'L3'} eq '-') { 
          return 'AW+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'R') { 
          if ($att{'L2'} eq 'I') { 
            if ($att{'R2'} eq 'N') { 
              return '_'; # unique at depth 6
            } 
            return 'AX';
          } 
          return '_';
        } 
        return '_';
      } 
      if ($att{'R1'} eq 'T') { 
        if ($att{'L2'} eq '-') { 
          if ($att{'R3'} eq '-') { 
            return '_'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'A') { 
            return 'AW+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'E') { 
            return '_'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'I') { 
            return 'AW+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'O') { 
            return 'AW+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'U') { 
            return 'AW+1'; # unique at depth 5
          } 
          return 'AW+1';
        } 
        if ($att{'L2'} eq 'B') { 
          return 'AW+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'H') { 
          return 'AW+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'K') { 
          return 'AW+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'M') { 
          return '_'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'R') { 
          return 'UW+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'S') { 
          return 'AW+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'T') { 
          return 'AW+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'Y') { 
          return 'UW+1'; # unique at depth 4
        } 
        return 'AW+1';
      } 
      return 'AW+1';
    } 
    if ($att{'L1'} eq 'P') { 
      if ($att{'R2'} eq '-') { 
        return 'UH+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'A') { 
        return 'Y'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'C') { 
        return 'AH'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'H') { 
        return 'UH+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'L') { 
        if ($att{'L2'} eq '-') { 
          if ($att{'R3'} eq 'I') { 
            if ($att{'R1'} eq 'B') { 
              if ($att{'L3'} eq '-') { 
                return 'AH+1'; # depth limit (3/4; 2 classes) at depth 7
              } 
              return 'AH+1';
            } 
            return 'AH+1';
          } 
          return 'AH+1';
        } 
        if ($att{'L2'} eq 'E') { 
          return 'AH+1'; # unique at depth 4
        } 
        return 'AH+1';
      } 
      if ($att{'R2'} eq 'S') { 
        if ($att{'R1'} eq 'T') { 
          return 'UH+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'R2'} eq 'T') { 
        return 'UH+1'; # unique at depth 3
      } 
      return 'UH+1';
    } 
    if ($att{'L1'} eq 'Q') { 
      if ($att{'L3'} eq 'A') { 
        return '_'; # unique at depth 3
      } 
      return 'W';
    } 
    if ($att{'L1'} eq 'R') { 
      if ($att{'R1'} eq 'C') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'R1'} eq 'E') { 
        return 'UW+1'; # unique at depth 3
      } 
      if ($att{'R1'} eq 'G') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'R1'} eq 'I') { 
        return 'UW+1'; # unique at depth 3
      } 
      if ($att{'R1'} eq 'L') { 
        return 'UW+1'; # unique at depth 3
      } 
      if ($att{'R1'} eq 'M') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'R1'} eq 'N') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'R1'} eq 'P') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'R1'} eq 'S') { 
        if ($att{'R3'} eq '-') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'D') { 
          return 'UW'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'E') { 
          if ($att{'L3'} eq 'N') { 
            return 'AH+1'; # unique at depth 5
          } 
          return 'AH';
        } 
        if ($att{'R3'} eq 'R') { 
          return 'AH+1'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'S') { 
          return 'AH+1'; # unique at depth 4
        } 
        return 'AH+1';
      } 
      return 'AH+1';
    } 
    if ($att{'L1'} eq 'S') { 
      if ($att{'R2'} eq '-') { 
        return 'UW'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'A') { 
        return 'UH+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'D') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'E') { 
        if ($att{'L2'} eq '-') { 
          if ($att{'R3'} eq '-') { 
            return 'AH+1'; # unique at depth 5
          } 
          if ($att{'R3'} eq 'R') { 
            if ($att{'R1'} eq 'P') { 
              if ($att{'L3'} eq '-') { 
                return 'UW+1'; # depth limit (1/2; 2 classes) at depth 7
              } 
              return 'UW+1';
            } 
            return 'UW+1';
          } 
          return 'UW+1';
        } 
        if ($att{'L2'} eq 'A') { 
          return 'AX'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'E') { 
          return 'UW+1'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'N') { 
          if ($att{'L3'} eq '-') { 
            return 'UH+1'; # unique at depth 5
          } 
          if ($att{'L3'} eq 'O') { 
            return 'UW+1'; # unique at depth 5
          } 
          return 'UW+1';
        } 
        if ($att{'L2'} eq 'O') { 
          return 'ZH'; # unique at depth 4
        } 
        if ($att{'L2'} eq 'S') { 
          return 'AX'; # unique at depth 4
        } 
        return 'UW+1';
      } 
      if ($att{'R2'} eq 'F') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'H') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'I') { 
        return 'UW+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'L') { 
        if ($att{'L2'} eq '-') { 
          return 'AH+1'; # unique at depth 4
        } 
        return 'UW';
      } 
      if ($att{'R2'} eq 'M') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'N') { 
        return 'UW+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'P') { 
        if ($att{'R3'} eq 'L') { 
          return 'AH+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'R2'} eq 'S') { 
        if ($att{'R3'} eq '-') { 
          return 'UW'; # unique at depth 4
        } 
        if ($att{'R3'} eq 'E') { 
          return 'AH+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'R2'} eq 'T') { 
        if ($att{'L3'} eq '-') { 
          return 'AH+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'A') { 
          return 'UW+1'; # unique at depth 4
        } 
        return 'UW+1';
      } 
      if ($att{'R2'} eq 'U') { 
        if ($att{'R1'} eq 'B') { 
          return 'AH+1'; # unique at depth 4
        } 
        return 'UW';
      } 
      if ($att{'R2'} eq 'V') { 
        if ($att{'R3'} eq 'E') { 
          return 'AH+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      return 'AX';
    } 
    if ($att{'L1'} eq 'T') { 
      if ($att{'L2'} eq '-') { 
        return 'AH+1'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'A') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'C') { 
        if ($att{'L3'} eq '-') { 
          return 'UW'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'A') { 
          return 'TCLCH'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L2'} eq 'E') { 
        if ($att{'R1'} eq 'R') { 
          return 'AH+1'; # unique at depth 4
        } 
        return 'AX';
      } 
      if ($att{'L2'} eq 'I') { 
        if ($att{'R1'} eq 'A') { 
          return 'UW'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'D') { 
          return 'UW+1'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'E') { 
          return 'UW'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'T') { 
          return 'UW+1'; # unique at depth 4
        } 
        return 'UW+1';
      } 
      if ($att{'L2'} eq 'N') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'R') { 
        return 'AX'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'S') { 
        if ($att{'R2'} eq 'B') { 
          return 'AH+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'E') { 
          return 'UW+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'I') { 
          return 'AH+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'R') { 
          return 'UW+1'; # unique at depth 4
        } 
        if ($att{'R2'} eq 'Y') { 
          return 'AH+1'; # unique at depth 4
        } 
        return 'AH+1';
      } 
      if ($att{'L2'} eq 'U') { 
        return 'TCLCH'; # unique at depth 3
      } 
      return 'AH+1';
    } 
    if ($att{'L1'} eq 'Z') { 
      return 'UW'; # unique at depth 2
    } 
    return 'AH+1';
  } 
  if ($att{'L'} eq 'V') { 
    if ($att{'L2'} eq 'H') { 
      if ($att{'R1'} eq 'E') { 
        return '_'; # unique at depth 3
      } 
      return 'V';
    } 
    if ($att{'L2'} eq 'S') { 
      if ($att{'L3'} eq 'N') { 
        return 'IH'; # unique at depth 3
      } 
      return 'V';
    } 
    return 'V';
  } 
  if ($att{'L'} eq 'W') { 
    if ($att{'L2'} eq '-') { 
      if ($att{'R1'} eq 'E') { 
        if ($att{'L1'} eq 'O') { 
          return '_'; # unique at depth 4
        } 
        return 'W';
      } 
      if ($att{'R1'} eq 'H') { 
        if ($att{'R2'} eq 'O') { 
          return '_'; # unique at depth 4
        } 
        return 'W';
      } 
      if ($att{'R1'} eq 'N') { 
        return '_'; # unique at depth 3
      } 
      if ($att{'R1'} eq 'O') { 
        if ($att{'L1'} eq 'T') { 
          return '_'; # unique at depth 4
        } 
        return 'W';
      } 
      if ($att{'R1'} eq 'R') { 
        if ($att{'R3'} eq 'K') { 
          return 'W'; # unique at depth 4
        } 
        return '_';
      } 
      return 'W';
    } 
    if ($att{'L2'} eq 'C') { 
      return 'AW+1'; # unique at depth 2
    } 
    if ($att{'L2'} eq 'D') { 
      if ($att{'R2'} eq '-') { 
        return 'AW'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'P') { 
        return 'AW+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'S') { 
        return 'AW'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'T') { 
        return 'AW+1'; # unique at depth 3
      } 
      return 'AW+1';
    } 
    if ($att{'L2'} eq 'F') { 
      return 'UW'; # unique at depth 2
    } 
    if ($att{'L2'} eq 'H') { 
      if ($att{'R2'} eq '-') { 
        if ($att{'R1'} eq '-') { 
          return 'AW';
        } 
        return '_';
      } 
      if ($att{'R2'} eq 'R') { 
        return 'AW+1'; # unique at depth 3
      } 
      if ($att{'R2'} eq 'V') { 
        return 'AW'; # unique at depth 3
      } 
      return '_';
    } 
    if ($att{'L2'} eq 'I') { 
      return 'UW+1'; # unique at depth 2
    } 
    if ($att{'L2'} eq 'L') { 
      if ($att{'L3'} eq '-') { 
        if ($att{'R1'} eq '-') { 
          if ($att{'L1'} eq 'O') { 
            if ($att{'R3'} eq '-') { 
              if ($att{'R2'} eq '-') { 
                return 'AW+1'; # depth limit (1/2; 2 classes) at depth 7
              } 
              return 'AW+1';
            } 
            return 'AW+1';
          } 
          return '_';
        } 
        return '_';
      } 
      if ($att{'L3'} eq 'L') { 
        return 'AW+1'; # unique at depth 3
      } 
      return '_';
    } 
    if ($att{'L2'} eq 'N') { 
      if ($att{'L1'} eq 'A') { 
        return 'W'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'E') { 
        return 'UW+1'; # unique at depth 3
      } 
      if ($att{'L1'} eq 'O') { 
        if ($att{'R1'} eq '-') { 
          return 'AW';
        } 
        return '_';
      } 
      return 'UW+1';
    } 
    if ($att{'L2'} eq 'P') { 
      return 'AW+1'; # unique at depth 2
    } 
    if ($att{'L2'} eq 'R') { 
      if ($att{'R1'} eq 'D') { 
        return 'AW+1'; # unique at depth 3
      } 
      if ($att{'R1'} eq 'N') { 
        if ($att{'R3'} eq '-') { 
          if ($att{'L3'} eq '-') { 
            if ($att{'R2'} eq '-') { 
              if ($att{'L1'} eq 'O') { 
                return 'AW+1'; # depth limit (1/2; 2 classes) at depth 7
              } 
              return 'AW+1';
            } 
            return 'AW+1';
          } 
          return '_';
        } 
        if ($att{'R3'} eq 'D') { 
          return 'AW+1'; # unique at depth 4
        } 
        return 'AW+1';
      } 
      return '_';
    } 
    if ($att{'L2'} eq 'T') { 
      if ($att{'L3'} eq '-') { 
        return 'AW+1'; # unique at depth 3
      } 
      if ($att{'L3'} eq 'A') { 
        return 'W'; # unique at depth 3
      } 
      if ($att{'L3'} eq 'L') { 
        return 'AW+1'; # unique at depth 3
      } 
      if ($att{'L3'} eq 'N') { 
        return 'AW+1'; # unique at depth 3
      } 
      if ($att{'L3'} eq 'U') { 
        return 'W'; # unique at depth 3
      } 
      return 'AW+1';
    } 
    return 'W';
  } 
  if ($att{'L'} eq 'X') { 
    if ($att{'R2'} eq '-') { 
      return 'S'; # unique at depth 2
    } 
    if ($att{'R2'} eq 'M') { 
      return 'GCLG'; # unique at depth 2
    } 
    if ($att{'R2'} eq 'S') { 
      return 'GCLG'; # unique at depth 2
    } 
    return 'KCLK';
  } 
  if ($att{'L'} eq 'Y') { 
    if ($att{'L1'} eq '-') { 
      return 'Y'; # unique at depth 2
    } 
    if ($att{'L1'} eq 'A') { 
      if ($att{'L3'} eq 'L') { 
        return 'EY'; # unique at depth 3
      } 
      if ($att{'L3'} eq 'N') { 
        return 'EY'; # unique at depth 3
      } 
      if ($att{'L3'} eq 'R') { 
        return 'EY'; # unique at depth 3
      } 
      if ($att{'L3'} eq 'X') { 
        return 'EY+1'; # unique at depth 3
      } 
      return '_';
    } 
    if ($att{'L1'} eq 'B') { 
      if ($att{'L2'} eq '-') { 
        return 'AY'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'R') { 
        return 'AY+1'; # unique at depth 3
      } 
      return 'IY';
    } 
    if ($att{'L1'} eq 'C') { 
      if ($att{'L3'} eq '-') { 
        return 'AY+1'; # unique at depth 3
      } 
      return 'IY';
    } 
    if ($att{'L1'} eq 'E') { 
      if ($att{'L2'} eq '-') { 
        return 'AY+1'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'B') { 
        return 'Y'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'H') { 
        return 'EY'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'K') { 
        if ($att{'L3'} eq '-') { 
          return '_'; # unique at depth 4
        } 
        return 'IY';
      } 
      if ($att{'L2'} eq 'L') { 
        if ($att{'L3'} eq 'N') { 
          return '_'; # unique at depth 4
        } 
        return 'IY';
      } 
      if ($att{'L2'} eq 'M') { 
        return 'Y'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'S') { 
        if ($att{'L3'} eq '-') { 
          return '_'; # unique at depth 4
        } 
        return 'IY';
      } 
      if ($att{'L2'} eq 'V') { 
        return 'EY'; # unique at depth 3
      } 
      return 'IY';
    } 
    if ($att{'L1'} eq 'F') { 
      return 'AY+1'; # unique at depth 2
    } 
    if ($att{'L1'} eq 'H') { 
      if ($att{'L2'} eq 'E') { 
        return 'AY+1'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'P') { 
        if ($att{'R3'} eq 'C') { 
          if ($att{'R2'} eq 'I') { 
            if ($att{'R1'} eq 'S') { 
              if ($att{'L3'} eq '-') { 
                return 'IH+1'; # depth limit (1/2; 2 classes) at depth 7
              } 
              return 'IH+1';
            } 
            return 'IH+1';
          } 
          return 'IH+1';
        } 
        return 'IY';
      } 
      if ($att{'L2'} eq 'W') { 
        return 'AY'; # unique at depth 3
      } 
      return 'IY';
    } 
    if ($att{'L1'} eq 'K') { 
      return 'IY+1'; # unique at depth 2
    } 
    if ($att{'L1'} eq 'L') { 
      if ($att{'L2'} eq '-') { 
        if ($att{'R1'} eq 'I') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'R1'} eq 'N') { 
          return 'IH+1'; # unique at depth 4
        } 
        return 'IH+1';
      } 
      if ($att{'L2'} eq 'A') { 
        return 'IH'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'E') { 
        if ($att{'R1'} eq 'N') { 
          return 'IH'; # unique at depth 4
        } 
        return 'IY';
      } 
      if ($att{'L2'} eq 'F') { 
        return 'IH+1'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'P') { 
        if ($att{'L3'} eq '-') { 
          return 'IH+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'P') { 
          return 'AY+1'; # unique at depth 4
        } 
        return 'IH+1';
      } 
      if ($att{'L2'} eq 'U') { 
        if ($att{'L3'} eq '-') { 
          return 'AY+1'; # unique at depth 4
        } 
        return 'IY';
      } 
      return 'IY';
    } 
    if ($att{'L1'} eq 'N') { 
      if ($att{'L2'} eq 'E') { 
        return 'AY+1'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'I') { 
        return 'IY+1'; # unique at depth 3
      } 
      return 'IY';
    } 
    if ($att{'L1'} eq 'O') { 
      if ($att{'R3'} eq '-') { 
        return 'OY+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'L') { 
        return 'OY+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'N') { 
        return 'OY+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'S') { 
        return 'OY'; # unique at depth 3
      } 
      return 'OY+1';
    } 
    if ($att{'L1'} eq 'R') { 
      if ($att{'L2'} eq 'D') { 
        return 'AY+1'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'T') { 
        if ($att{'L3'} eq '-') { 
          return 'AY+1'; # unique at depth 4
        } 
        if ($att{'L3'} eq 'N') { 
          return 'IY'; # unique at depth 4
        } 
        return 'AY+1';
      } 
      return 'IY';
    } 
    if ($att{'L1'} eq 'S') { 
      if ($att{'R3'} eq 'E') { 
        return 'IH+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'I') { 
        return 'AY+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'M') { 
        return 'AY+1'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'O') { 
        return 'AY';
      } 
      return 'IY';
    } 
    if ($att{'L1'} eq 'T') { 
      if ($att{'L2'} eq '-') { 
        return 'IH+1'; # unique at depth 3
      } 
      if ($att{'L2'} eq 'S') { 
        return 'AY+1'; # unique at depth 3
      } 
      return 'IY';
    } 
    if ($att{'L1'} eq 'U') { 
      return 'AY+1'; # unique at depth 2
    } 
    if ($att{'L1'} eq 'V') { 
      if ($att{'L2'} eq '-') { 
        return 'AY+1'; # unique at depth 3
      } 
      return 'IY';
    } 
    if ($att{'L1'} eq 'W') { 
      if ($att{'R3'} eq '-') { 
        return 'Y'; # unique at depth 3
      } 
      if ($att{'R3'} eq 'S') { 
        return 'OY+1'; # unique at depth 3
      } 
      return 'OY+1';
    } 
    return 'IY';
  } 
  if ($att{'L'} eq 'Z') { 
    if ($att{'R1'} eq '-') { 
      return 'S'; # unique at depth 2
    } 
    if ($att{'R1'} eq 'U') { 
      return 'Y'; # unique at depth 2
    } 
    return 'Z';
  } 
  return '_';
};

1;
