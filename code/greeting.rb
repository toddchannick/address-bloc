greeting = ARGV[0]

length = ARGV.length

ARGV[1..length].each do |name|
  puts "#{greeting} #{name}"
end
