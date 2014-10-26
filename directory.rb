
def interactive_menu
	
	students =[]
	
	loop do
		
		# 1. print the menu and ask the user what to do
		puts "1. Input the students"
		puts "2. Show the students"
		puts "9. Exit"
		
		# 2. read the input and save it
		selection = gets.chomp
		
		# 3. do what user asked
			case selection
				
				when "1"
					students = input_students
				
				when "2"
					print_header
					print_out(students)
					print_footer(students)
				
				when "9"
					exit #program termination
					
				else
					puts "I dont know what you meant, try again."
			end
	end
end








def input_students
	print "Please enter the name of the students\n"
	print "To finish, just hit enter twice.\n"
	
	#create an empty array
	students = []
	
	#get the first name
	name = gets.chomp
	
	#while the name is not empty, repeat this code
	while !name.empty? do
		
		#add the student hash to the array
		students << {name: name, cohort: :november}
		print "Now we have #{students.length} students.\n"
		
		#get another name from the user
		name = gets.chomp
	end
	
	#return the array of students
	students
end

def print_header
	print " The students of my cohort at Makers Academy\n"
	print "---------------------\n"
end

def print_out(students)

	students.each.with_index(1) do |student, index|
		
		print "#{index} #{student[:name]} (#{student[:cohort]} cohort)\n" if student[:name].start_with?("a")
	
	end

end


def print_footer(names)
	print "Overall, we have #{names.length} great student\n"
end

interactive_menu