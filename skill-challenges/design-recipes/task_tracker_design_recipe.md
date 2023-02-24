# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

> As a user
> So that I can keep track of my tasks
> I want a program that I can add todo tasks to and see a list of them.

> As a user
> So that I can focus on tasks to complete
> I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Class Interface  

```ruby

class TaskTracker

  def initialize
    # ...
  end

  def add_task(task)
    # task is a string that represents the task being added 
    # the task is stored in a list
    # method does not return any values
  end

  def delete_task(task)
    # task is a string that represents a task that has been completed
    # the task is deleted from the stored list
    # returns an error if the task is not stored
    # method does not return any values
  end

  def list_tasks
    # returns an array of strings representing the tasks that have been added
    # returns an error if there are no tasks stored
  end

end

```

## 3. Create Examples as Tests

```ruby

# 1
task_tracker = TaskTracker.new
task_tracker.list_tasks
# => "There are no tasks stored"

# 2
task_tracker = TaskTracker.new
task_tracker.add_task("Meditate")
task_tracker.list_tasks 
# => ["Medidate"]

# 3
task_tracker = TaskTracker.new
task_tracker.add_task("Meditate")
task_tracker.add_task("Wash the dishes")
task_tracker.add_task("Vacuum the bedroom")
task_tracker.list_tasks 
# => ["Meditate", "Wash the dishes", "Vacuum the bedroom"]

# 4
task_tracker = TaskTracker.new
task_tracker.add_task("Meditate")
task_tracker.add_task("Wash the dishes")
task_tracker.add_task("Vacuum the bedroom")
task_tracker.delete_task("Meditate")
task_tracker.list_tasks 
# => ["Wash the dishes", "Vacuum the bedroom"]

# 5
task_tracker = TaskTracker.new
task_tracker.add_task("Meditate")
task_tracker.add_task("Wash the dishes")
task_tracker.add_task("Vacuum the bedroom")
task_tracker.delete_task("Meditate")
task_tracker.delete_task("Vacuum the bedroom")
task_tracker.list_tasks 
# => ["Wash the dishes"]

# 6
task_tracker = TaskTracker.new
task_tracker.add_task("Wash the dishes")
task_tracker.add_task("Vacuum the bedroom")
task_tracker.delete_task("Meditate")
# => "Cannot delete task - it is not currently stored"

# 7
task_tracker = TaskTracker.new
task_tracker.add_task("Meditate")
task_tracker.add_task("Wash the dishes")
task_tracker.add_task("Meditate")
task_tracker.list_tasks 
# => ["Meditate", "Wash the dishes"]

```

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._



