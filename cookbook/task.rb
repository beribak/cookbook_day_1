
class Task
    def initialize(content)
        @content = content
        @completed = nil
    end

    def complete!
        @completed = true
    end

    def complete?
        @completed
    end

    def content
        @content
    end
end