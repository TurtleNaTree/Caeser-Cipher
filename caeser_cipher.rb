
def caeser_cipher(text, shift)
    encrypted_text = text.split(//).map do |char|
        if char === char.capitalize
            char.match(/[A-Z]/) ? char.setbyte(0, char.getbyte(0) + shift > 90 ? char.getbyte(0) + shift - 90 + 64 : char.getbyte(0) + shift) : char
            char
        else 
            char.match(/[a-z]/) ? char.setbyte(0, char.getbyte(0) + shift > 122 ? char.getbyte(0) + shift - 122 + 96 : char.getbyte(0) + shift) : char
            char
        end
    end
    encrypted_text.join()
end

valid_input = false
input_string = ""
shift = ""

puts "Type the sentance you want to encrypt and press enter."
input_string = gets.chomp


until valid_input
    puts "Type the shift amount and press enter. (Must be a number between 1-99)"
    shift = gets.chomp
    shift.match(/^[1-9]{1}\d?$/) ? valid_input = true : valid_input = false
    puts "#{shift} is not a number between 1-99" unless valid_input
end

shift = shift.to_i

puts caeser_cipher(input_string, shift)


