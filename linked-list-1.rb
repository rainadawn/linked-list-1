class LinkedListNode
	attr_accessor :value, :next_node

	def initialize(value, next_node=nil)
		@value = value
		@next_node = next_node
	end
end

class Stack
	attr_reader :data

	def initialize
		@data = nil
	end

	# Push a value onto the stack
	def push(value)
		@data = LinkedListNode.new(value, @data)
	end

	def pop
		if @data
			top_value = @data.value
			@data = @data.next_node
		else
			top_value = nil
		end
			top_value
	end
end


def print_stack_values stack
  if stack.data
  	print "#{stack.pop()} --> "
  	print_stack_values(stack)
  else
  	print "nil\n"
  end
end

	def reverse_list(list)
	  new_stack = Stack.new

		while list
			new_stack.push(list.value)
			list = list.next_node
		end

		new_stack
	end

def print_values(list_node)
	if list_node
		print "#{list_node.value} --> "
		print_values(list_node.next_node)
	else
		print "nil\n"
		return
	end
end


node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)

puts "--------"

revlist = reverse_list(node3)
print_stack_values(revlist)
