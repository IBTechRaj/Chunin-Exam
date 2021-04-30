# require "digest/sha2"

class Shortener

    attr_reader :url, :link_model

    def initialize(url)
    
        end

   
 
    def lookup_code
    string = ""
    7.times do |n|
        string << (rand * n).round
    end
    string
    end

end