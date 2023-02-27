require 'todo_list'
require 'todo'

RSpec.describe "todo integration" do
  describe "completed tasks behaviour" do
    it "returns only the tasks marked done" do
      todolist = TodoList.new
      todo1 = Todo.new("todo1")
      todo2 = Todo.new("todo2")
      todolist.add(todo1)
      todolist.add(todo2)
      todo1.mark_done!
      expect(todolist.complete).to eq [todo1]
    end
    it "returns all tasks if all marked done" do
      todolist = TodoList.new
      todo1 = Todo.new("todo1")
      todo2 = Todo.new("todo2")
      todolist.add(todo1)
      todolist.add(todo2)
      todo1.mark_done!
      todo2.mark_done!
      expect(todolist.complete).to eq [todo1, todo2]
    end
  end

  describe "incomplete tasks behaviour" do
    it "returns only the tasks that have not been marked done" do
      todolist = TodoList.new
      todo1 = Todo.new("todo1")
      todo2 = Todo.new("todo2")
      todolist.add(todo1)
      todolist.add(todo2)
      todo1.mark_done!
      expect(todolist.incomplete).to eq [todo2]
    end
    it "returns all tasks if all are not marked done" do
      todolist = TodoList.new
      todo1 = Todo.new("todo1")
      todo2 = Todo.new("todo2")
      todolist.add(todo1)
      todolist.add(todo2)
      expect(todolist.incomplete).to eq [todo1, todo2]
    end
  end

  describe "give up tasks behaviour" do
    it "marks all tasks as done" do
      todolist = TodoList.new
      todo1 = Todo.new("todo1")
      todo2 = Todo.new("todo2")
      todolist.add(todo1)
      todolist.add(todo2)
      todolist.give_up!
      expect(todolist.complete).to eq [todo1, todo2]
    end
  end
end