require 'yaml'

def load_library(file_path)
  emoticons_hash = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }
  emoticons =
  YAML.load_file(file_path)
  emoticons.each do |meaning, emoticons_array|
    emoticons_hash["get_meaning"][emoticons_array[1]]= meaning
    emoticons_hash["get_emoticon"][emoticons_array[0]]= emoticons_array[1]
  end
  emoticons_hash
end

def get_japanese_emoticon(file_path, emoticon)
  emoticons_hash = load_library(file_path)
  
end

def get_english_meaning
  # code goes here
end