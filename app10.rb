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

print "Сколько месяцев: "
y = gets.to_i

1.upto(y) do |mm|
	puts "Накопления за #{mm} месяц: #{x*mm}"		
end	