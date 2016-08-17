def caesar(plaintext, shift_num)
  # entire lowercase alphabet
  alphabet = Array('a'..'z')
  # translates letters to shifted letters
  shifted_alphabet = alphabet.rotate(shift_num)
  # make plaintext into lowercase
  lower_plaintext = plaintext.downcase.split("")

  # blank array to store shifted chars
  encrypted_text = []

  lower_plaintext.each do |char|
    # if it isn't apart of the alphabet push it in as is
    if !alphabet.include?(char)
      encrypted_text.push(char)
    # if it is a part of the alphabet, use the shifted alphabet we made above to change the letter
    else
      encrypted_text.push(shifted_alphabet[alphabet.index(char)])
    end
  end
  # join back together and capitalize first character
  puts encrypted_text.join.capitalize!
end

puts 'Enter a string to cipher: '
plaintext = gets.chomp
puts 'Enter the number to shift it by: '
shift_num = gets.chomp.to_i

caesar(plaintext, shift_num)
