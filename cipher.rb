# str = "hello there"
# str.split("")
# ["h", "e", "l", "l", "o", " ", "t", "h", "e", "r", "e"]
# use .next or .next!
# Not woriking: string_array = string_array.filter_map { |string| string.next unless string == " " }

def caesar_cipher(string, shift)
    string_array = string.split("")

    shift.times do
        new_array = []
        string_array.each do |string|
            if string != " "
                new_array.push(string.next)
            else
                new_array.push(string)
            end
        end
        string_array = new_array 
    end

    print string_array
end

caesar_cipher('computer', 7)