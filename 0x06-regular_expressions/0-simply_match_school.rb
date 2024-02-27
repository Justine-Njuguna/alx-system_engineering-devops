#!/usr/bin/env ruby

regex_pattern = /School/

argument = ARGV[0]

if match = regex_pattern.match(argument)
  puts match[0]
else
end
