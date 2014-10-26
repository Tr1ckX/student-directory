
@students = [] #an empty array accessible to all methods

def print_menu
	
	# 1. print the menu and ask the user what to do
		puts "1. Input the students"
		puts "2. Show the students"
		puts "3. Save the list to student.csv"
		puts "4. Load the list from student.csv"
		puts "9. Exit"
end

def show_students

	print_header
	print_out(@students)
	print_footer(@students)
end

def print_header
	print " The students of my cohort at Makers Academy\n"
	print "---------------------\n"
end

def print_out(students)

	students.each.with_index(1) do |student, index|
		
		print "#{index} #{student[:name]} (#{student[:cohort]} cohort)\n"
	
	end

end

def print_footer(names)
	print "Overall, we have #{names.length} great student\n"
end

def input_students
	print "Please enter the name of the students\n"
	print "To finish, just hit enter twice.\n"
	
	#get the first name
	name = gets.chomp
	
	#while the name is not empty, repeat this code
	while !name.empty? do
		
		#add the student hash to the array
		@students << {name: name, cohort: :november}
		print "Now we have #{@students.length} students.\n"
		
		#get another name from the user
		name = gets.chomp
	end
	
	#return the array of students
	@students
end

def interactive_menu
	
	loop do
		
		print_menu
		
		
		# 2. read the input and save it
		selection = gets.chomp
		
		# 3. do what user asked
			case selection
				
				when "1"
					@students = input_students
				
				when "2"
					show_students
				
				when "3"
					save_students
				
				when "4"
					load_students
					
				when "9"
					exit #program termination
					
				else
					puts "I dont know what you meant, try again."
			end
	end
end

def save_students
	
	#open file for writing 
	file = File.open("student.csv", "w")
	
	#iterate over the array of students
	@students.each do |student|
		student_data = [student[:name], student[:cohort]]
		csv_line = student_data.join(",")
		file.puts csv_line
	end
	
	file.close
end

def load_students

	file = File.open("student.csv", "r")
	
	file.readlines.each do |line|
		name, cohort = line.chomp.split(',')
		@students << {name: name, cohort: cohort.to_sym}
	end
	file.close
end


interactive_menu