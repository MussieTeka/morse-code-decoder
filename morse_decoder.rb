def decode_char(morse_char)
  morse_code = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
    '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-'  => 'K', '.-..' => 'L',
    '--' => 'M', '-.'   => 'N', '---'  => 'O', '.--.' => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z'
  }

  morse_code[morse_char]
end

def decode_word(morse_word)
  decoded_word = ''
  morse_chars = morse_word.split(' ')

  morse_chars.each do |morse_char|
    decoded_word += decode_char(morse_char)
  end

  decoded_word
end

def decode(message)
  decoded_message = ''
  morse_words = message.split('   ')

  morse_words.each do |morse_word|
    decoded_word = decode_word(morse_word)
    decoded_message += decoded_word + ' ' unless decoded_word.empty?
  end

  decoded_message.rstrip
end

# Decode the message from the old bottle
message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
decoded_message = decode(message)
puts decoded_message
