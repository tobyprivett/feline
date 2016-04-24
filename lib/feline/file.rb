module Feline
  class File
    def initialize
      response = open(Feline::Cat::RANDOM_IMAGE)
      Object::File.open(filename, 'wb') { |file| file.write(response.read) }
    end

    def move
      `mv #{ filename } ~/Desktop/`
    end

    def filename
      @filename ||= "tmp/cat-#{ Time.now.to_i }.gif"
    end
  end
end
