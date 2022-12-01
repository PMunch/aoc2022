import strutils, sequtils

var
  highest = [0, 0, 0]
  current = 0

proc evaluateHighest() =
  var
    smallest = int.high
    smallestIndex = -1
  for i, h in highest:
    if h < smallest:
      smallest = h
      smallestIndex = i
  highest[smallestIndex] = max(highest[smallestIndex], current)

for line in "input.txt".lines:
  try:
    current += parseInt(line)
  except:
    evaluateHighest()
    current = 0

evaluateHighest()

echo highest.foldl(a + b)
