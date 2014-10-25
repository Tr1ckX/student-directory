
# let's put all students into an array
students = [
{name: "Ben H", cohort: :october},
{name: "Rich L", cohort: :october},
{name: "Chris H", cohort: :october},
{name: "Izzy M", cohort: :october},
{name: "Nick D", cohort: :october},
{name: "Attila M", cohort: :october}
]

def print_header
	puts "\n"
	puts " The students of my cohort at Makers Academy"
	puts "---------------------"
end

def print(students)

	students.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end

end


def print_footer(names)
	puts "Overall, we have #{names.length} great student"
end

#nothing happens until we call the methods
print_header
print(students)
print_footer(students)