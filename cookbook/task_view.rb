class TaskView
    
    def display(tasks)
        tasks.each_with_index do |task, index|
            status = task.complete? ? "[x]" : "[ ]"
            p "#{index + 1} -- #{task.content} -- #{status}"
        end
    end

    def ask_user_for_task
        p "What task do you want to create?"
        content = gets.chomp
    end

    def ask_user_for_index
        p "Select a task"
        gets.chomp.to_i
    end
end