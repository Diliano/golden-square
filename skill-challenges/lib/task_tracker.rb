class TaskTracker

  def initialize
    @list = []
  end

  def add_task(task)
    @list << task
  end

  def delete_task(task)
    fail "Cannot delete task - it is not currently stored" if !@list.include?(task)
    @list.delete(task)
  end

  def list_tasks
    fail "There are no tasks stored" if @list.empty?
    return @list.uniq
  end

end