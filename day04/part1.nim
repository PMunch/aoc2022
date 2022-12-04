import strutils, sequtils

var completelyContained = 0

for line in "input.txt".lines:
  let
    pair = line.split(',').mapIt(it.split('-').mapIt(it.parseInt))
    firstRange = {pair[0][0]..pair[0][1]}
    secondRange = {pair[1][0]..pair[1][1]}
    unionRange = firstRange + secondRange
  if max(firstRange.card, secondRange.card) == unionRange.card:
    echo firstRange, " ", secondRange
    inc completelyContained

echo completelyContained
