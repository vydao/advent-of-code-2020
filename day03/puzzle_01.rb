LINES = ['.#..#.....#....##..............',
         '...#.#...#...#.#..........#....',
         '#...###...#.#.....#.##.#.#...#.']
TREE = '#'.freeze

def count_trees(step_right, step_down)
  line_number = step_down
  position = step_right
  count = 0

  while line_number <= LINES.size - 1
    current_line = LINES[line_number]
    position -= current_line.length if position > current_line.length - 1
    count += 1 if current_line[position] == TREE

    line_number += step_down
    position += step_right
  end
  count
end

puts count_trees(3, 1)
