import tables

var scoreTable: Table[string, int]
for opponent in 'A'..'C':
  for player in 'X'..'Z':
    scoreTable[opponent & " " & player] = (case player:
      of 'X': # Lose
        0 + (case opponent:
        of 'A': 3 # Rock
        of 'B': 1 # Paper
        of 'C': 2 # Scissors
        else: 0
        )
      of 'Y': # Draw
        3 + (case opponent:
        of 'A': 1 # Rock
        of 'B': 2 # Paper
        of 'C': 3 # Scissors
        else: 0
        )
      of 'Z': # Win
        6 + (case opponent:
        of 'A': 2 # Rock
        of 'B': 3 # Paper
        of 'C': 1 # Scissors
        else: 0
        )
      else: 0
    )

var score = 0
for line in "input.txt".lines:
  score += scoreTable[line]

echo score
