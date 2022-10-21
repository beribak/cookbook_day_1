require_relative "task_controller.rb"
require_relative "task_repository.rb"
require_relative "task_view.rb"

repo = TaskRepository.new
view = TaskView.new 
controller = TaskController.new(repo, view)

controller.create
controller.list
controller.destroy
controller.list
# task1 = Task.new("Do the laundry")
# task2 = Task.new("Do the dishes")
# task3 = Task.new("Cook")

# repo.add(task1)
# repo.add(task2)
# repo.add(task3)

# view.display(repo.list_tasks)