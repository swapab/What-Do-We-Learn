#!/usr/bin/env ruby

require 'set'  
require 'json'

if ARGV.length != 3  
  puts "Usage: detect_leaks [FIRST.json] [SECOND.json] [THIRD.json]"
  exit 1
end

puts "Agruments : #{ARGV}"

first_addrs = Set.new  
third_addrs = Set.new

puts "Parsing File 1 : #{ARGV[0]} "
# Get a list of memory addresses from the first dump
File.open(ARGV[0], "r").each_line do |line|
  parsed = JSON.parse(line) rescue nil
  first_addrs << parsed["address"] if parsed && parsed["address"]
end

puts "=> Done File 1 : #{ARGV[0]} "

puts "Parsing File 3 : #{ARGV[2]} "

# Get a list of memory addresses from the last dump
File.open(ARGV[2], "r").each_line do |line|
  parsed = JSON.parse(line) rescue nil
  third_addrs << parsed["address"] if parsed && parsed["address"]
end

diff = []

puts "=> Done File 3 : #{ARGV[2]} "
puts "Parsing File 2 : #{ARGV[1]} "

# Get a list of all items present in both the second and
# third dumps but not in the first.
File.open(ARGV[1], "r").each_line do |line|
  parsed = JSON.parse(line) rescue nil
  if parsed && parsed["address"]
    if !first_addrs.include?(parsed["address"]) && third_addrs.include?(parsed["address"])
      diff << parsed
    end
  end
end

puts "=> Done File 2 : #{ARGV[1]} "

puts "----- Computing Leaks -----"
# Group items
diff.group_by do |x|  
  [x["type"], x["file"], x["line"]]
end.map do |x,y|  
  # Collect memory size
  [x, y.count, y.inject(0){|sum,i| sum + (i['bytesize'] || 0) }, y.inject(0){|sum,i| sum + (i['memsize'] || 0) }]
end.sort do |a,b|  
  b[1] <=> a[1]
end.each do |x,y,bytesize,memsize|  
  # Output information about each potential leak
  puts "Leaked #{y} #{x[0]} objects of size #{bytesize}/#{memsize} at: #{x[1]}:#{x[2]}"
end

# Also output total memory usage, because why not?
memsize = diff.inject(0){|sum,i| sum + (i['memsize'] || 0) }  
bytesize = diff.inject(0){|sum,i| sum + (i['bytesize'] || 0) }  
puts "\n\nTotal Size: #{bytesize}/#{memsize}"
