#creating an array of hashes in order to use index
@contacts = [
	{ name: "Jerry", age: 50, phone: 123 },
	{ name: "Sarah", age: 25, phone: 234 },
	{ name: "Connor", age: 71, phone: 345 }
]

#Defining the menu prompt 
def menu
	puts "Please select one of the following by number: "
	puts "1) Create a Contact"
	puts "2) View All Contacts"
	puts "3) Delete a Contact"
	puts "4) Edit a Contact"
	puts "5) Exit"
end
#Defining the menu actions with a cas inside of a method to allow the options 1 - 5
#So they are interactable.

def access_menu
	menu
	menu_selection = gets.strip.to_i
	case menu_selection
			when 1
				puts "Would you like to create a contact?"
					if gets.chomp == "y"
						puts "Whats the contacts name"
						name = gets.chomp
						puts "Whats the contacts age"
						age = gets.chomp.to_i
						puts "Whats the contacts phone number?"
						phone = gets.chomp.to_i
						create_contact(name,age,phone)
					else get.chomp == "n"
						puts "Not a problem what would you like to do?"
						access_menu
						end
			when 2
					view_all_contacts
			when 3
					delete_contact
			when 4
					edit_contact
			when 5
					puts "Thank you! Goodbye!"
					exit
			else
					puts "Invalid Choice"
	end
end


# Creating a method so that the user may enter Name, Age and Phone contact info
# Need the system to input the key so it does not confuse user or user does nto create duplicates.
def create_contact (name, age, phone)
  contact = {
    name: "#{name}",
    age:  "#{age}",
 		phone: "#{phone}",
  }
   @contacts << contact
	 access_menu
		end

	def view_all_contacts
		@contacts.each do | contact, index | #Need to have the each display ALL indexes in the array. only displaying frist right now.
			puts "Name: #{contact[:name]} Age: #{contact[:age]} Phone: #{contact[:phone]}"
		access_menu
	end

	def delete_contact #Need to give option of contacts, then needs to remove option selected.
		puts " What contact would you like to delete?"
		index = gets.chomp.to_i
		puts "Are you sure?"
		del_answer = gets.chomp
		 if del_answer == "y"
			puts "delete #{index +1}"
			@contacts.delete_at(index)
		 else del_answer
		access_menu
		 end
	end

	def edit_name(index)
		puts "What contact do you want to change?"
		new_name = gets.chomp  
		new_age = gets.chomp_i
		new_phone = gets.chomp_i
		@contacts[index + 1][:name]=new_name[:age]=new_age[:phone]=new_phone 
	end

	def edit_contact
		display_contacts
		puts " What contact would you like to change?"
		index = gets.chomp.to_i
			edit_name(index)
		access_menu
	end


end

access_menu
