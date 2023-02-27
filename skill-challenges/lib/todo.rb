class Todo
  def initialize(task) 
    @task = task
    @is_done = false
  end

  def task
    return @task
  end

  def mark_done!
    @is_done = true
  end

  def done?
    return @is_done
  end
end