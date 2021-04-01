# encoding: cp1251

if (Gem.win_platform?)
        Encoding.default_external = Encoding.find(Encoding.locale_charmap)
        Encoding.default_internal = __ENCODING__

        [STDIN, STDOUT].each do |io|
                io.set_encoding(Encoding.default_external, Encoding.default_internal)
        end
end

print "Какую сумму будем откладывать в месяц: "
x = gets.to_f

print "Сколько лет: "
z = gets.to_i


1.upto(z) do |yy|
	1.upto(12) do |mm|
	puts "Накопления за #{yy} год, #{mm} месяц: #{x*((yy-1)*12 + mm)}"
	end
	puts
end	