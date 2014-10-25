
# let's put all students into an array
students = [
"Ben H",
"Rich L",
"Chris H",
"Izzy M",
"Nick D",
"Attila M"]

# and print them
puts "\n"
puts " The students of my cohort at Makers Academy"
puts "---------------------"
students.each do |student|
	puts student
end
# finally we print the total
print "Overall, we have #{students.length} great student"
