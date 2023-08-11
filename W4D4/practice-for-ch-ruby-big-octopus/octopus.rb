def sluggish_octopus(arr)
    arr.each_with_index do |fish1, i1|
        max_length = true

        arr.each_with_index do |fish2, i2|
            next if i1 == i2
            max_length = false if fish2.length > fish1.length
        end

        return fish1 if max_length
    end
end

class Array
    def merge_sort(&prc)
        prc ||= proc { |a,b| a <=> b }
        return self if self.length <= 1

        mid = self.length / 2
        left = self[0...mid].merge_sort(&prc)
        right = self[mid..-1].merge_sort(&prc)

        Array.merge(left, right, mid)
    end

    private 
    def self.merge(left,right,&prc)
        merged = []

        until left.empty? || right.empty?
            case prc.call(left.first, right.first)
            when -1
                merged << left.shift
            when 0
                merged << left.shift
            when 1
                merged << right.shift
            end
        end
        merged + left + right
    end

    def linear_biggest_fish(arr)
        max = arr[0]

        arr.each do |fish|
            if fish.length > max.length
                max = fish
            end
        end
        max
    end

    def slow_dance(tile_direction, tiles_array)
        tiles_array.each_with_index do |tile, i|
            return i if tile == tile_direction
        end
    end

    def fast_dance(tile_direction, tiles_hash)
        tiles_hash[direction]
    end
end

def blah
