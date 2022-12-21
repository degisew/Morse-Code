# decode char method
def decode_char(code)

    # let's create a hash table that contains a code with a corresponding char
    code_char_hash = {
    '.-' => 'a', '-...' => 'b',
    '-.-.' => 'c', '-..' => 'd',
    '.' => 'e', '..-.' => 'f',
    '--.' => 'g', '....' => 'h',
    '..' => 'i', '.---' => 'j',
    '-.-' => 'k', '.-..' => 'l',
    '--' => 'm', '-.' => 'n',
    '---' => 'o', '.--.' => 'p',
    '--.-' => 'q', '.-.' => 'r',
    '...' => 's', '-' => 't',
    '..-' => 'u', '...-' => 'v',
    '.--' => 'w', '-..-' => 'x',
    '-.--' => 'y', '--..' => 'z',
    ' ' => ' '
  }

  result = code_char_hash.each{ |key, value| return value.capitalize if key === code }

end

# decode word method
def decode_word(word)
    decodeded_word = ''
    list = word.split
    list.each { |char| decodeded_word += decode_char(char).to_s }
decodeded_word
end


def decode_message(message)
    decodeded_message = ''
    list = message.split('   ')
    list.each { |word| decodeded_message += decode_word(word) + " "}
    decodeded_message 
end