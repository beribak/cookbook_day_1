
class TaskRepository
    def initialize
        @tasks = []
    end

    def add(task)
        @tasks << task
    end

    def list_tasks
        return @tasks
    end

    def find(index)
        @tasks[index]
    end

    def delete(index)
        @tasks.delete_at(index)
    end
end