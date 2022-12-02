import tables

var scoreTable: Table[string, int]
for opponent in 'A'..'C':
  for player in 'X'..'Z':
    scoreTable[opponent & " " & player] = (case player:
      of 'X': # Rock
        1 + (case opponent:
        of 'A': 3 # Rock
        of 'B': 0 # Paper
        of 'C': 6 # Scissors
        else: 0
        )
      of 'Y': # Paper
        2 + (case opponent:
        of 'A': 6 # Rock
        of 'B': 3 # Paper
        of 'C': 0 # Scissors
        else: 0
        )
      of 'Z': # Scissors
        3 + (case opponent:
        of 'A': 0 # Rock
        of 'B': 6 # Paper
        of 'C': 3 # Scissors
        else: 0
        )
      else: 0
    )

var score = 0
for line in "input.txt".lines:
  score += scoreTable[line]

echo score
