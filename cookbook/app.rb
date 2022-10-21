require_relative "task_controller.rb"
require_relative "task_repository.rb"
require_relative "task_view.rb"
require_relative "router.rb"

repo = TaskRepository.new
view = TaskView.new 
controller = TaskController.new(repo, view)
router = Router.new(controller)
router.run