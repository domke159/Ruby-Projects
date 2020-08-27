class LinkedList
  attr_accessor :head, :size, :tail
  
  def initialize
    @head = nil;
    @size = 0;
    @tail = nil
  end
  
  def append(value)
    newNode = Node.new(value)
  
    if head.nil?
      @head = newNode
    else
      @tail.next_node = newNode
    end
  
    @size += 1
    @tail = newNode
  end
  
  def prepend(value)
    newNode = Node.new(value)
    newNode.next_node = @head
    @head = newNode
  
    @size += 1
  end
  
  def at(index)
    node = @head
    counter = 0
  
    until counter == index || node.next_node == nil
      node = node.next_node
      counter += 1
    end
  
    counter == index ? node : nil
  end
  
  def pop
    secondLast = self.at(size - 2)
    secondLast.next_node = nil
    @tail = secondLast
  end
  
  def contains?(value)
    node = @head
    until node.next_node == nil || node.value == value
      node = node.next_node
    end
  
    node.value == value
  end
  
  def find(value)
    node = @head
    counter = 0
    until node.next_node == nil || node.value == value
      node = node.next_node
      counter += 1
    end
  
    node.value == value ? counter : nil
  end
  
  def to_s
    node = @head
    output = "#{node.value}"
    until node.next_node == nil
      node = node.next_node
      output << " <- #{node.value}"
    end
  
    output << " <- nil "
  end
  
  def insert_at(value, index)
    return nil if index < 0 || index > self.size
  
    if index == 0
      self.prepend(value)
    elsif index == self.size
      self.append(value)
    else
      prevNode = self.at(index-1)
      nextNode = prevNode.next_node
      prevNode.next_node = Node.new(value)
      prevNode.next_node.next_node = nextNode
    end
  end
  
  def remove_at(index)
    return nil if index < 0 || index >= self.size
  
    if index == 0 
      @head = self.at(1)
    elsif index == self.size - 1
      newTail = self.at(self.size - 2)
      @tail = newTail
      newTail.next_node = nil
    else
      targetNode = self.at(index)
      prevNode = self.at(index-1)
      prevNode.next_node = targetNode.next_node
    end
  end
end