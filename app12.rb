# encoding: cp1251

if (Gem.win_platform?)
        Encoding.default_external = Encoding.find(Encoding.locale_charmap)
        Encoding.default_internal = __ENCODING__

        [STDIN, STDOUT].each do |io|
                io.set_encoding(Encoding.default_external, Encoding.default_internal)
        end
end

print "Введите слово: "
x = gets.chomp
y = x.length - 1
z = 0

10.times do
	y.times do
		print x.byteslice(z)
		sleep 0.3
		print "-"
		z = z + 1 
		sleep 0.3
	end
	print x.byteslice(z)
	print "     "
	z = 0
	sleep 0.3
end