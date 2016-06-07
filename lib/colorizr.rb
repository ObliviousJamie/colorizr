class String 
    #Hash map of valid colors
    @colors = Hash[:red, 31, :green, 32, :yellow, 33, :blue, 34, :pink, 35, :light_blue, 96, :white, 97,
                  :light_grey, 37, :black, 30]

    def self.create_colors
        #Using instance methods to create colors
        @colors.each do |(color,code)|
            puts color.to_s
            self.send(:define_method,"#{color.to_s}") do
                "\e[#{code}m#{self}\e[0m"
            end
        end
                
    end
    
    def self.colors
        #Displays an array of colors
        @colors.keys.to_a
    end

    def self.sample_colors
        #Displays a sample output of colors
        @colors.each_key do |color|
            sample = color.to_s.send(color)
            puts "This is #{sample}"
        end
    end
end

String.create_colors
redc = "example string"
puts redc.red
puts redc.blue
String.sample_colors
p String.colors
