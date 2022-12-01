import strutils

var
  highest = 0
  current = 0

for line in "input.txt".lines:
  try:
    current += parseInt(line)
  except:
    highest = max(highest, current)
    current = 0

highest = max(highest, current)

echo highest
