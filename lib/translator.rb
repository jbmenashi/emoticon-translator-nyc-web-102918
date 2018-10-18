require 'yaml'

def load_library(file_path)
  emoticons_hash = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }
  emoticons =
  YAML.load_file(file_path)
  emoticons.each do |meaning, emoticons_array|
    emo_hash["get_meaning"][emoticons_array[1]]= meaning
    emo_hash["get_emoticon"][emoticons_array[0]]= emoticons_array[1]
  end
  emoticons_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end