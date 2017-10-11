require 'pry'
class Translator


  def dictionary
                  {"a" => ".-",
                	"b" => "-...",
                	"c" => "-.-.",
                	"d" => "-..",
                	"e" => ".",
                	"f" => "..-.",
                	"g" => "--.",
                	"h" => "....",
                	"i" => "..",
                	"j" => ".---",
                	"k" => "-.-",
                	"l" => ".-..",
                	"m" => "--",
                	"n" => "-.",
                	"o" => "---",
                	"p" => ".--.",
                	"q" => "--.-",
                	"r" => ".-.",
                	"s" => "...",
                	"t" => "-",
                	"u" => "..-",
                	"v" => "...-",
                	"w" => ".--",
                	"x" => "-..-",
                	"y" => "-.--",
                	"z" => "--..",
                	" " => " ",
                	"1" => ".----",
                	"2" => "..---",
                	"3" => "...--",
                	"4" => "....-",
                	"5" => ".....",
                	"6" => "-....",
                	"7" => "--...",
                	"8" => "---..",
                	"9" => "----.",
                	"0" => "-----"
                }


  end

  def eng_to_morse(text)
    #dictionary[text]

    translated = text.downcase.chars.map do |char|
      dictionary[char]
    end.join
  end

  def from_file(filename)
    file = File.read(filename)
    eng_to_morse(text)
  end
end
