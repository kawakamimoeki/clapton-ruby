class TaskListState < Clapton::State
  attribute :tasks

  def add_task(params)
    task = Task.create(title: "New Task", due: Date.today, done: false)
    self.tasks << { id: task.id, title: task.title, due: task.due, done: task.done }
  end

  def toggle_done(params)
    task = Task.find(params[:id])
    task.update(done: !params[:done])
    self.tasks.find { |t| t[:id] == params[:id] }[:done] = task.done
  end

  def update_title(params)
    task = Task.find(params[:id])
    task.update(title: params[:title])
    self.tasks.find { |t| t[:id] == params[:id] }[:title] = task.title
  end

  def update_due(params)
    task = Task.find(params[:id])
    task.update(due: params[:due])
    self.tasks.find { |t| t[:id] == params[:id] }[:due] = task.due
  end
end

