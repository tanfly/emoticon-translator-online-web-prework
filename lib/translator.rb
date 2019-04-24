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
  if emoticons_library["get_emoticon"][emoticon] == nil
      return "Sorry, that emoticon was not found"
    else
      emoticons_library["get_emoticon"][emoticon]
  end
end


def get_english_meaning(file, emoticon)
  emoticons_library = load_library(file)
  if emoticons_library["get_meaning"][emoticon] == nil 
    return "Sorry, that emoticon was not found"
  else 
    emoticons_library["get_meaning"][emoticon]
 end 
end