require_relative 'node'

class LinkedList
    attr_reader :head, :tail, :size

    def initialize
        @head = nil
        @tail = nil
        @size = 0
    end

    def append(value)
        node = Node.new(value)
        if @tail.nil?
            @head = @tail = node
        else
            @tail.next_node = node
            @tail = node
        end
        @size += 1
    end


    def prepend(value)
        node = Node.new(value)
        if @head.nil?
            @head = @tail = node
        else
            node.next_node = @head
            @head = node
        end
        @size += 1
    end


    def at(index)
        if index >= 0 && index < @size
            i = 0
            temp = @head
            until i == index
                temp = temp.next_node
                i += 1
            end
            temp
        else
            nil
        end
    end


    def pop
        if @size > 0
            if @size == 1
                @head = @tail = nil
            else
                i = 0
                temp = @head
                until temp.next_node == @tail
                    temp = temp.next_node
                end
                temp.next_node = nil
                @tail = temp
            end
            @size -= 1
        end
    end


    def contains?(value)
        temp = @head
        until temp == nil
            if temp.value == value
                return true
            else
                temp = temp.next_node
            end
        end
        false
    end


    def find(value)
        if contains(value)
            i = 0
            temp = @head
            until temp.value == value
                i += 1
                temp = temp.next_node
            end
            i 
        else
            -1
        end
    end

    
    def to_s
        temp = @head
        str = ""
        for i in 0..@size
            str += "( #{temp.value} ) -> "
            temp = temp.next_node
        end
        str += "nil"
    end


    def insert_at(value, index)
        if index == 0
            append(value)
        elsif index == @size
            prepend(value)
        elsif index > 0 && index < @size
            temp = @head
            for i in 0..index-1
                temp = temp.next_node
            end

            node = Node.new(value)
            node.next_node = temp.next_node
            temp.next_node = node

            @size += 1
        end
    end


    def remove_at(index)
        if index == 0 && @size > 0
            @head = @head.next_node
            if @size == 1
                @tail = nil
            end
            @size -= 1
        elsif index == @size - 1 && @size > 0
            pop
        elsif index > 0 && index < @size - 1
            temp = @head
            for i in 0..index-2
                temp = temp.next_node
            end
            temp.next_node = temp.next_node.next_node
            @size -= 1
        end
    end

end