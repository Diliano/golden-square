require 'todo_list'

RSpec.describe TodoList do
  context "initially" do
    it "constructs" do
      todolist = TodoList.new
    end
    it "returns an empty list of complete tasks" do
      todolist = TodoList.new
      expect(todolist.complete).to eq []  
    end
    it "returns an empty list of incomplete tasks" do
      todolist = TodoList.new
      expect(todolist.incomplete).to eq []  
    end
  end

end