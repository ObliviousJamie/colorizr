class String 
    #Hash map of valid colors
    @colors = Hash[:red, 31, :green, 32, :yellow, 33, :blue, 34, :pink, 35, :light_blue, 96, :white, 97,
                  :light_grey, 37, :black, 30]
    @@created = false

    #Loops through array of colors and
    #adds color code to self
    def self.create_colors
        #Using instance methods to create colors
        @@created = true
        @colors.each do |(color,code)|
            self.send(:define_method,"#{color.to_s}") do
                "\e[#{code}m#{self}\e[0m"
            end
        end
                
    end
    
    #Returns an array of colors
    def self.colors
        create_colors unless @@created
        #Displays an array of colors
        @colors.keys.to_a
    end

    #Loops and calls all color methods in the format
    #This is "color" with the correct color assigned
    def self.sample_colors
        #Displays a sample output of colors
        @colors.each_key do |color|
            sample = color.to_s.send(color)
            puts "This is #{sample}"
        end
    end

    #Creates colours if they have not been created before
    #otherwise throws error as usual
    def method_missing(method_name)
        unless @@created
            self.class.create_colors
            self.send(method_name.to_sym)
        else
            super
        end
    end

end
