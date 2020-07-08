class Node
  attr_accessor :value, :next_node
  
  def initialize(value, next_node = nil)
	  @value = value
    @next_node = next_node
  end
end

class LinkedList
    

  #setup head and tail
  def initialize
    @head = Node.new(nil)
    @tail = @head
    @currentNode = @head
    @lastNode = @head
    @length = 0
    @list = []
  end

  def add(number)
    # your code here
    new_node = Node.new(number)
    @tail.next_node = new_node
    @tail = new_node
    @list << @tail.value
    @length += 1 
  end

  def get(index)
    @list[index]
  end
  
  def add_at(index, item)
      i = 1  
      new_node = Node.new(item)
      while @currentNode != nil
        if index == 0
        @head = Node.new(new_node)
        new_node.next_node = @head
        @list.insert(index, new_node.value)
        @length += 1
        break;
        elsif i == index
          @lastNode = @currentNode.next_node
          @currentNode.next_node = new_node
          new_node.next_node = @lastNode
          @list.insert(index, new_node.value)
          @length += 1
          break;
        end
        @currentNode = @currentNode.next_node
        i += 1
      end
      @list
  end
  

end
# @current.next_node.next_node
list = LinkedList.new
list.add(3)
list.add(5)
list.add_at(1, 11)
list.add_at(0, 13)
# list.add_at(2,3)

p list

puts list.get(2)
puts list.get(3)



