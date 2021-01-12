# frozen_string_literal: true

class SecretHandshake
    def initialize 
        @instruction = 0
        @array_decimal = []
        @commands = []
    end

    def generate_instruction 
        @instruction = rand(0..254)
        puts @instruction
    end

    def print_message
        print "You said " + @instruction.to_s + "  and is:  "
    end

    def add_to_array
        while @instruction > 0
            is_pair(@instruction) ? @array_decimal.unshift(0) : @array_decimal.unshift(1)
            @instruction /= 2
        end
    end

    def is_pair(instruction)
        instruction.even?
    end

    def actions 
        @array_decimal.each_with_index do |number, index|
            @commands << 'wink' if index.zero? && number == 1
            @commands << 'double blink' if index == 1 && number == 1
            @commands << 'close your eyes' if index == 2 && number == 1
            @commands << 'jump' if index == 3 && number == 1
            reverse_array if index == 4 && number == 1
        end
        puts @commands.to_s
    end

    def reverse_array
        @commands = []
        @array_decimal.each_with_index do |number, index|
            @commands.<< ('wink') if index ==4 && number == 1
            @commands.<< ('double blink') if index == 3 && number == 1
            @commands.<< ('close your eyes') if index == 2 && number == 1
            @commands.<< ('jump') if index == 1 && number == 1
        end
    end

end