
class Router

    def initialize(controller)
        @controller = controller
    end

    def run
        choice = nil

        until choice == "done"
            p "What do you want to do"
            p "1 create"
            p "2 display tasks"
            p "3 update a task"
            p "4 delete a task"
            p "5 exit task manager"

            choice = gets.chomp.to_i

            if choice == 1
                @controller.create
            elsif choice == 2
                @controller.list
            elsif choice == 3
                @controller.update
            elsif choice == 4
                @controller.destroy
            elsif choice == 5
                choice = "done"
            else
                p "Wrong input!!!"
            end
        end
    end
end