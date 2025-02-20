# By MOON

def read_string prompt
	puts prompt
	value = gets.chomp
end

def read_float prompt
	value = read_string(prompt)
	value.chomp.to_f
end

def read_integer prompt
	value = read_string(prompt)
	value.to_i
end

def read_integer_in_range(prompt, min, max)
	value = read_integer(prompt)
	while (value < min or value > max)
		puts "Please enter a value between " + min.to_s + " and " + max.to_s + ": "
		value = read_integer(prompt);
	end
	value
end

def read_boolean prompt
	value = read_string(prompt)
	case value
	when 'y', 'yes', 'Yes', 'YES'
		true
	else
		false
	end
end

def print_float(value, decimal_places)
	print(value.round(decimal_places).to_s.chomp('.0'))
end

def read_patient_name()
	name = read_string("Enter patient name: ")
	return name
end

def calculate_accommodation_charges()
	charge = read_float("Enter the accommodation charges: ")
	return charge
end

def calculate_theatre_charges()
	charge = read_float("Enter the theatre charges: ")
	return charge
end

def calculate_pathology_charges()
	charge = read_float("Enter the pathology charges: ")
	return charge
end

def print_patient_bill(name, total)
	puts("The patient name: " + name.to_s)
	printf("The total amount due is: $" + "%.2f", total)
end

def create_patient_bill()
	total = 0 
	patient_name = read_patient_name()
	total += calculate_accommodation_charges()
	total += calculate_theatre_charges()
	total += calculate_pathology_charges()
	print_patient_bill(patient_name, total)
end

def main()
	create_patient_bill()
end

main()
