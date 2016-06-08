require 'colorizr'

#DEMO
#
#Creating colors - optional
#String.create_colors

#Example strings
example = "example string"
String.colors.each do |color|
    puts example.send("#{color.to_s}")
end
#Sample colors
String.sample_colors
#Returns array of colors
p String.colors

