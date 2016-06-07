class String 
    #Hash map of valid colors
    @colors = Hash["red", 31, "green", 32, "yellow", 33, "blue", 34, "pink", 35, "light_blue", 96, "white", 97,
                  "light_grey", 37, "black", 30]

    def self.create_colors
        #Using instance methods to create colors
        @colors.each do |(color,code)|
            self.send(:define_method,"#{color}") do
                "\e[#{code}m #{self} \e[0m"
            end
        end
                
    end
    
    def colors
        #Displays an array of colors
    end

    def sample_colors
        #Displays a sample output of colors
    end
end

String.create_colors
redc = "example string"
redc.red
redc.blue
