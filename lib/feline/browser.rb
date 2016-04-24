module Feline
  class Browser
    def initialize
      puts "Open a browser window"
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
