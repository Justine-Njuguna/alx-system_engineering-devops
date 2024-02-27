#!/usr/bin/env ruby

regex_pattern = /School/

argument = ARGV[0]

if regex_pattern.match(argument)
  puts argument
else
end
