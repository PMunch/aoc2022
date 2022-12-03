import std / [strutils, setutils]

var
  totalScore = 0
  groupMember = 0
  itemSet = Letters

for line in "input.txt".lines:
  itemSet = itemSet * line.toSet
  groupMember = (groupMember + 1) mod 3
  if groupMember == 0:
    for character in itemSet:
      let score = if character.ord > 'Z'.ord: character.ord - 96 else: character.ord - 38
      totalScore += score
    itemSet = Letters

echo totalScore
