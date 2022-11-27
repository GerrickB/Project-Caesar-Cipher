# str = "hello there"
# str.split("")
# ["h", "e", "l", "l", "o", " ", "t", "h", "e", "r", "e"]
# use .next or .next!
require 'pry-byebug'

def caesar_cipher(string, shift)
    string_array = string.split("")

    shift.times do
        new_array = []
        string_array.each do |string|
            if string.count("a-zA-Z") > 0
                new_array.push(string.next)
                
                binding.pry
            else
                new_array.push(string)
            end
        end
        string_array = new_array 
    end

    print format_cipher(string_array)
end

def format_cipher(array)
    format_array = []

    array.each do |string|
        if string.length > 1
            format_array.push(string[1])
        else
            format_array.push(string)
        end
    end
    format_array.join
end

caesar_cipher('What a string!', 5)