class TaskListComponent < Clapton::Component
  def render
    box = c(:div)
    @state.tasks.each do |task|
      box.add(TaskItemComponent.new(id: task[:id], title: task[:title], due: task[:due], done: task[:done]))
    end
    add_button = c(:button)
    add_button.add(c(:text, "Add Task"))
    add_button.add_action(:click, :TaskListState, :add_task)
    box.add(add_button)
  end
end
