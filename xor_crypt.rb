#!/usr/bin/env ruby

text = 'If you give a hacker a new toy, the first thing he will do is take it apart to figure out how it works.'
key = 0b00000010

puts "String: #{text}"
puts "Size: #{text.size}"

text.each_char do |char|
	temp = char.unpack('C*')
	xored = temp[0] ^ key
	print xored.chr
end

puts ""

