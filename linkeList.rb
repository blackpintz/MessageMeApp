class Node
    
attr_accessor :value, :next_node

def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
end

end

class LinkedList
    
    attr_accessor :head, :tail
    
    def initialize
        @head = Node.new(1)
        @tail = @head
        @currentNode = @head
        @previousNode = @head
        @length = 0
    end
    
    def add(number)
        new_node = Node.new(number)
        @head.value = new_node.value if @head.value.nil?
        @tail.next_node = new_node
        @tail = new_node
        @length += 1
    end
    
    def begin_add(number)
        new_node = Node.new(number)
        next_node = @head
        @head = Node.new(new_node.value, next_node)
        @length += 1
    end
    
    
    
    def insert(index, value) 
        i = 0
        new_node = Node.new(value)
    #     @previousNode =  @currentNode.next_node.next_node
    #  @currentNode.next_node.next_node = new_node
    #  new_node.next_node = @previousNode
        while i < @length
            @previousNode = @currentNode.next_node
            
            if index == i+1
                @currentNode.next_node = new_node
                new_node.next_node = @previousNode
                @length += 1
                break;
            end
            @currentNode = @currentNode.next_node
            i += 1
        end
        @currentNode
    end
    
    
end
[1,2,4,5,7]
node1 = LinkedList.new
node1.add(2)
node1.add(4)
node1.add(5)
node1.add(7)
# node1.add(7)
p node1.insert(2,3)
p node1.insert(4,6)
# node1.begin_add(3)

# node1.begin_add(5)
p node1
