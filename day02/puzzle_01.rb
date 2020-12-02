# password_arr = ['1-13 r: gqdrspndrpsrjfjx', '5-16 j: jjjjkjjzjjjjjfjzjjj', '14-16 r: rrrnrrrrrcnrgxrr']

result = 0
password_arr.each do |string|
  data = string.match(/(\d+)-(\d+)\s([a-z]):\s(\w+)/)
  min_times = data[1].to_i
  max_times = data[2].to_i
  char = data[3]
  password = data[4]

  result += 1 if password.count(char) >= min_times && password.count(char) <= max_times
end

puts result