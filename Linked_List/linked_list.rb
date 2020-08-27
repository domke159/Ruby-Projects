require "./node.rb"

class LinkedList
  attr_accessor :head, :size, :tail
    
  def initialize
    @head = nil
    @size = 0
    @tail = nil
  end

  def append(value)
    new_node = Node.new(value)
    @head.nil? ? @head = new_node : @tail.next_node = new_node
    @size += 1
    @tail = new_node

    @size += 1
    @tail = new_node
  end

  def prepend(value)
    new_node = Node.new(value)
    new_node.next_node = @head
    @head = new_node
    @size += 1
  end

  def at(index)
    node = @head
    i = 0

    until i == index || node.next_node == nil
      node = node.next_node
      i += 1
    end

    i == index ? node : nil
  end

  def pop
    new_last = self.at(size-2)
    new_last.next_node = nil
    @tail = new_last
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
    i = 0

    until node.next_node == nil || node.value == value
      node = node.next_node
      i += 1
    end

    node.value == value ? i : nil
  end

  def to_s
    node = @head
    output = "#{node.value}"

    until node.next_node == nil
      node = node.next_node
      output << " <- #{node.value}"
    end

    output << " <- nil"
  end

  def insert_at(value, index)
    return nil if index < 0 || index > self.size
  
    if index == 0
      self.prepend(value)
    elsif index == self.size
      self.append(value)
    else
      prev_node = self.at(index-1)
      next_node = prev_node.next_node
      prev_node.next_node = Node.new(value)
      prev_node.next_node.next_node = next_node
    end
  end

  def remove_at(index)
    return nil if index < 0 || index >= self.size

    if index == 0
      @head = self.at(1)
    elsif index == self.size - 1
      new_tail = self.at(self.size-2)
      @tail = new_tail
      new_tail.next_node = nil
    else
      target_node = self.at(index)
      prev_node = self.at(index-1)
      prev_node.next_node = target_node.next_node
    end
  end
end
