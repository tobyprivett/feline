module Feline
  class Browser
    def initialize
      Object::File.open(filename, 'w') { |file| file.write(cat_html) }
    end

    def open
      `open #{ filename }`
    end

    def filename
      @filename ||= "tmp/cats-#{ Time.now.to_i }.html"
    end

    def cat_html
      html = []
      html << "<!DOCTYPE html>"
      html << "<html>"
      html << "<body>"
      html << "<h1>A random cat</h1>"
      html << "<p><img src='#{ Feline::Cat::RANDOM_IMAGE}'></p>"
      html << "</body>"
      html << "</html>"
      html.join("\n")
    end
  end
end
