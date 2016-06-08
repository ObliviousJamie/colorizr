## Colorizr
Colorize is a gem that can quickly colour the output of Strings to the terminal. Colorize aims to make your life easier by changing the colour of string to the terminal.

##Usage
Make sure to require this gem
```
require 'colorizr'
```

For most efficient the approach first use `String.create_colors`

Colours available are listed by typing `String.colors`

Alternatively if you'd like to see a sample of that colour this can be done with `String.sample_colors`

To change the colour of any string just call the method named after the colour.
For example to make a string "hello" red and print to terminal
```
puts "hello".red
```

##Installation 
Please install this gem using the following command
```
gem install colorizr-0.0.1.gem
```

##License
This project is released under the MIT License
