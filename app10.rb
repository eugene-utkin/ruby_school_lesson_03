# encoding: cp1251

if (Gem.win_platform?)
        Encoding.default_external = Encoding.find(Encoding.locale_charmap)
        Encoding.default_internal = __ENCODING__

        [STDIN, STDOUT].each do |io|
                io.set_encoding(Encoding.default_external, Encoding.default_internal)
        end
end

print "����� ����� ����� ����������� � �����: "
x = gets.to_f

print "������� �������: "
y = gets.to_i

1.upto(y) do |mm|
	puts "���������� �� #{mm} �����: #{x*mm}"		
end	