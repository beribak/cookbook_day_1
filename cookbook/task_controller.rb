require_relative "task.rb"

class TaskController 
    def initialize(repo, view)
        @repo = repo
        @view = view
    end

    def create
        content = @view.ask_user_for_task
        
        task = Task.new(content)

        @repo.add(task)
    end

    def list
        tasks = @repo.list_tasks
        @view.display(tasks)
    end

    def update
     # 1 show tasks
        tasks = @repo.list_tasks
        @view.display(tasks)
     # 2 ask user for task
        index = @view.ask_user_for_index 
     # 3 select task
        task = @repo.find(index - 1)
     # 4 update task
        task.complete!
    end

    def destroy
        # 1 show tasks
            tasks = @repo.list_tasks
            @view.display(tasks)
        # 2 ask user for task
            index = @view.ask_user_for_index 
        # 3 delete task
            @repo.delete(index - 1)
    end
end