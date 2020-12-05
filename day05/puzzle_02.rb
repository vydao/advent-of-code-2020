def seat_ids
  data = read_file
  data.map do |seat|
    rows = (0..127).to_a
    columns = (0..8).to_a
    seat.chars.each do |char|
      case char
      when 'F'
        rows = rows.slice(0, rows.length / 2)
      when 'B'
        rows = rows.slice(rows.length / 2, rows.length)
      when 'L'
        columns = columns.slice(0, columns.length / 2)
      when 'R'
        columns = columns.slice(columns.length / 2, columns.length)
      end
    end
    rows.pop * 8 + columns.pop
  end
end

def read_file
  File.open('seats.txt').readlines.map(&:chomp)
end

ids = seat_ids
puts ids.find { |id| !ids.include?(id + 1) && !ids.include?(id - 1) }
