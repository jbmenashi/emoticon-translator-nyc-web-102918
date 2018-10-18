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
  emoticons_hash["get_emoticon"].each do |english, japanese|
    if english == emoticon
      return japanese
    end
  end
  "Sorry, that emoticon was not found"
end

def get_english_meaning(file_path, emoticon)
  emoticons_hash = load_library(file_path)
  emoticons_hash["get_meaning"].each do |japanese, meaning|
    if japanese = emoticon
      return meaning
    end
  end
  "Sorry, that emoticon was not found"
end