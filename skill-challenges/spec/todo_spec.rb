require 'todo'

RSpec.describe Todo do
  it "constructs" do
    todo1 = Todo.new("todo1")
    expect(todo1.task).to eq "todo1"
  end

  describe "@done?" do
    it "returns true if task has been marked done" do
      todo1 = Todo.new("todo1")
      todo1.mark_done!
      expect(todo1.done?).to eq true
    end
    it "returns false if task has not been marked done" do
      todo1 = Todo.new("todo1")
      expect(todo1.done?).to eq false
    end
  end
end