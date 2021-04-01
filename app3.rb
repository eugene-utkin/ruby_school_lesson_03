# encoding: cp1251

if (Gem.win_platform?)
        Encoding.default_external = Encoding.find(Encoding.locale_charmap)
        Encoding.default_internal = __ENCODING__

        [STDIN, STDOUT].each do |io|
                io.set_encoding(Encoding.default_external, Encoding.default_internal)
        end
end

puts "Your Name is: "
x = gets.strip.capitalize
puts "Your name is:\t\t#{x}"
puts "Number of Letters:\t#{x.length}"