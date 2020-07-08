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
    @lastNode = nil
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
    #   1=>2=>4=>5=>6=>8
    #  1=>2=>3=>4
    i = 1
    new_node = Node.new(item)
    while @currentNode != nil
        if index == 0
            @head = Node.new(new_node)
            new_node.next_node = @head
            break;
        elsif index == i
            @lastNode = @currentNode.next_node
            @currentNode.next_node = new_node
            new_node.next_node = @lastNode
            @list.insert(index, new_node.value)
            break;
        end
    @currentNode = @currentNode.next_node
      i += 1  
    end
    @currentNode
  end
  

end

list = LinkedList.new
list.add(1)
list.add(2)
list.add(4)
list.add(5)
list.add_at(3,3)
p list






