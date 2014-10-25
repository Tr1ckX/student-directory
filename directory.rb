
# let's put all students into an array
students = [
"Ben H",
"Rich L",
"Chris H",
"Izzy M",
"Nick D",
"Attila M"]

def print_header
	puts "\n"
	puts " The students of my cohort at Makers Academy"
	puts "---------------------"
end

def print(names)

	names.each do |name|
		puts name
	end

end


def print_footer(names)
	puts "Overall, we have #{names.length} great student"
end

#nothing happens until we call the methods
print_header
print(students)
print_footer(students)