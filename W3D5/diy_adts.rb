class Stack
    def initialize
        @stack = []
    end

    def push(el)
        @stack << el
    end

    def pop
        @stack.shift
    end

    def peek
        @stack[0]
    end
end

class Queue 
    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue << el
    end

    def dequeue
        @queue.delete_at(-1)
    end

    def peek
        @stack.last
    end
end

class Map
    def initialize
        @map = []
    end

    def set(key,value)
        @map << [key, value]
    end

    def get(key)
        @map.each do |pairs|
            if pairs.include?(key)
                return pair
            end
        end
        return nil
    end

    def delete(key)
        @map.each_with_index do |pairs, i|
            if pairs.include?(key)
                @map.delete_at(i)
            end
        end
    end

    def show
        puts @map
    end
end
