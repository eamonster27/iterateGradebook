require 'csv'

def print_gradebook(filename)
  # TODO
end

if __FILE__ == $0
  filename = $ARGV[0]
  if filename
    full_filename = File.absolute_path(filename)
    if File.exists?(full_filename)
      print_gradebook(full_filename)
    else
      puts "#{filename} does not exist!"
    end
  else
    puts "Please give a filename as an argument."
  end
end
