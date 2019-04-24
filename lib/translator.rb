require "yaml"

def load_library(file)
 library = YAML.load_file("lib/emoticons.yml") 
 emoticons_library = {"get_meaning" => {}, "get_emoticon" => {}}
 
 library.map do |meaning, emoticon|
   english = emoticon[0]
   japanese = emoticon[1] 
   emoticons_library["get_meaning"][japanese] = meaning
   emoticons_library["get_emoticon"][english] = japanese
 end
 emoticons_library
end

def get_japanese_emoticon(file, emoticon)
  emoticons_library = load_library(file)
  emoticons_library["get_emoticon"].map do |english, japanese|
    if english == emoticon 
      puts japanese
    else
      puts "Sorry, I don't know that emoticon"
    end
  end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end