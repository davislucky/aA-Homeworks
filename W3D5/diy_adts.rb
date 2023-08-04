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

end
