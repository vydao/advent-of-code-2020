# lines = ['.#..#.....#....##..............',
#           '......#...#..#.....#.#....#...#'
#         ]
STEP_RIGHT = 3
STEP_DOWN = 1
TREE = '#'.freeze

line_number = 1
position = 3
count = 0

while line_number <= lines.size - 1
  current_line = lines[line_number]
  position -= current_line.length if position > current_line.length - 1
  count += 1 if current_line[position] == TREE

  line_number += STEP_DOWN
  position += STEP_RIGHT
end

puts count