require_relative 'entry'

class AddressBook
  attr_accessor :entries

  def initialize
     @entries = []
  end

  def add_entry(name, phone_number, email)
     index = 0 #insertion index
     @entries.each do |entry|
       if name < entry.name #compare with existing names (alphabetical order)
         break #if it precedes the other entry alphabetically, break loop (we found the correct index)
       end
       index += 1 #
     end
     @entries.insert(index, Entry.new(name, phone_number, email)) #insert a new entry at calculated index
   end

   def remove_entry(name, phone_number, email)
     index = 0
     @entries.each do |entry|
       if name == entry.name
         break
       end
       index += 1
     end
     @entries.delete_at(index)
   end


end
