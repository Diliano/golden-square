class TodoList
  def initialize
    @list = []
    @complete = []
    @incomplete = []
  end

  def add(todo) 
    @list << todo
  end

  def incomplete
    @list.each do |task|
      if !task.done?
        @incomplete << task
      end
    end
    return @incomplete
  end

  def complete
    @list.each do |task|
      if task.done?
        @complete << task
      end
    end
    return @complete
  end

  def give_up!
    @list.each do |task|
      task.mark_done!
    end
  end
end