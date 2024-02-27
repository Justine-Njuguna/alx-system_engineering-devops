#!/usr/bin/env ruby

# Accept one argument from the command line and check if it matches the regex
if ARGV.length == 1
  test_string = ARGV[0]
  puts test_string.match(/hbt+n/) ? "The test string '#{test_string}' matches the regular expression." : "The test string '#{test_string}' does not match the regular expression."
else
  puts "Please provide exactly one argument."
end

