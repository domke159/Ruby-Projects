require "./linked_list.rb"
require "./node.rb"

linked_list = LinkedList.new

linked_list.append(1)
linked_list.append(4)
linked_list.append(77)
linked_list.append(1023)
linked_list.append(55)
linked_list.prepend(8)
linked_list.prepend(111)

puts linked_list


puts linked_list.at(3)
puts linked_list.at(15)

puts linked_list.find(3)
puts linked_list.find(15)

puts linked_list.contains?(15)
puts linked_list.contains?(111)



puts linked_list
