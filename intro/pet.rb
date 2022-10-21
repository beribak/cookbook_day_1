class Pet 

    def initialize(name, color)
        @name = name
        @color = color
        @hungry = true
    end

    def feed!
        @hungry = false
    end     
end

