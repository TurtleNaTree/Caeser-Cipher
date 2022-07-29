
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

puts caeser_cipher("What a string!", 5)

