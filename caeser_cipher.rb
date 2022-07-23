letter = "S"
puts letter
puts letter.getbyte(0) + 1
letter.setbyte(0, letter.getbyte(0) + 1)
puts letter

z = "Z"
puts z
z.setbyte(0, z.getbyte(0) + 1)
puts z

test = "apple"

testArray = test.split(//)
puts "#{testArray} test array"
testArray = testArray.map do |char|  
    char.setbyte(0, char.getbyte(0) + 1)
    char
end
puts "#{testArray} modified test array"
