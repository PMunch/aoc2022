import strutils

var totalScore = 0

for line in "input.txt".lines:
  var dupe: char
  for c in 0..<(line.len div 2):
    if line.find(line[c], line.len div 2) != -1:
      dupe = line[c]
      break
  let score = if dupe.ord > 'Z'.ord: dupe.ord - 96 else: dupe.ord - 38
  echo line, " ", dupe, " ", score
  totalScore += score

echo totalScore
