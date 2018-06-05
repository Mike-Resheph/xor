#!/usr/bin/env ruby

code = 'Kd"{mw"ektg"c"jcaigp"c"lgu"vm{."vjg"dkpqv"vjkle"jg"uknn"fm"kq"vcig"kv"crcpv"vm"dkewpg"mwv"jmu"kv"umpiq,'
result = ""

0.upto(255) do |key|
	decrypted = ""
	puts "Trying key: #{key}"
	code.each_char do |char|
		temp = char.unpack('C*')
		xored = temp[0] ^ key
		decrypted += xored.chr
	end
	result = decrypted
	break if decrypted.include? 'figure'
end
puts "Code is: #{result}"
