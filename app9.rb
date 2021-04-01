# encoding: cp1251

if (Gem.win_platform?)
        Encoding.default_external = Encoding.find(Encoding.locale_charmap)
        Encoding.default_internal = __ENCODING__

        [STDIN, STDOUT].each do |io|
                io.set_encoding(Encoding.default_external, Encoding.default_internal)
        end
end

x = "Привет"

10.times do
	puts x 
	x = x + "!"
end


y = "!"

10.times do |x|
	print "Привет"
	x.times do
		print "!"
	end
	puts
end
	