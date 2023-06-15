MORSE_CODE_DICT ={
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

def decode_char(morse_char)
  MORSE_CODE_DICT[morse_char]
end

puts decode_char('.--')

def decode_word(morse_word)
  morse_chars = morse_word.split
  decoded_word = morse_chars.map { |char| decode_char(char) }.join

  decoded_word
end

puts decode_char('A')

def decode_message(morse_message)
  morse_words = morse_message.split
  decoded_message = morse_words.map { |word| decode_word(word) }.join

  decoded_message
end

morse_message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
decoded_message = decode_message(morse_message)
puts decoded_message
