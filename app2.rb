# encoding: cp1251

if (Gem.win_platform?)
	Encoding.default_external = Encoding.find(Encoding.locale_charmap)
	Encoding.default_internal = __ENCODING__

	[STDIN, STDOUT].each do |io|
		io.set_encoding(Encoding.default_external, Encoding.default_internal)
	end
end

print "Введите ваше имя: "
x = gets.strip
puts "Добрый день,\t#{x.capitalize}!\nВ вашем имени\t#{x.length} букв"