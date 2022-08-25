# str = "hello there"
# str.split("")
# ["h", "e", "l", "l", "o", " ", "t", "h", "e", "r", "e"]
# use .next or .next!

def caesar_cipher(string)
    string_array = string.split("")
    string_array = string_array.filter_map { |string| string.next unless string == " " }
    print string_array
end

caesar_cipher('hello world')