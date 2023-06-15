# Define a hash to map Morse code characters to letters
MORSE_CODE_DICT = {
  '.-'   => 'A', '-...' => 'B', '-.-.' => 'C', '-..'  => 'D', '.'    => 'E',
  '..-.' => 'F', '--.'  => 'G', '....' => 'H', '..'   => 'I', '.---' => 'J',
  '-.-'  => 'K', '.-..' => 'L', '--'   => 'M', '-.'   => 'N', '---'  => 'O',
  '.--.' => 'P', '--.-' => 'Q', '.-.'  => 'R', '...'  => 'S', '-'    => 'T',
  '..-'  => 'U', '...-' => 'V', '.--'  => 'W', '-..-' => 'X', '-.--' => 'Y',
  '--..' => 'Z'
}

def decode_char(morse_char)
  # Convert the Morse code character to uppercase and return the corresponding letter
  MORSE_CODE_DICT[morse_char.upcase]
end
puts decode_char('.--')

def decode_word(morse_word)
  # Split the Morse code word into individual characters
  morse_chars = morse_word.split(' ')

  # Decode each Morse code character and join them to form the word
  decoded_word = morse_chars.map { |char| decode_char(char) }.join('')

  decoded_word
end

puts decode_char('A')

def decode_message(morse_message)
  # Split the Morse code message into individual words
  morse_words = morse_message.split('   ')

  # Decode each Morse code word and join them to form the message
  decoded_message = morse_words.map { |word| decode_word(word) }.join(' ')

  decoded_message
end

# Test the functions with the provided Morse code message
morse_message = ".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ..."
decoded_message = decode_message(morse_message)
puts decoded_message
