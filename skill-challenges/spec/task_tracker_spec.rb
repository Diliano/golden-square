require 'task_tracker'

RSpec.describe TaskTracker do
  
  context "when no tasks have been added" do
    it "fails and raises an error when asked to list tasks" do
      task_tracker = TaskTracker.new
      expect { task_tracker.list_tasks }.to raise_error "There are no tasks stored"
    end
  end

  context "when tasks are added" do
    it "returns the task when the list is called" do
      task_tracker = TaskTracker.new
      task_tracker.add_task("Meditate")
      expect(task_tracker.list_tasks).to eq ["Meditate"]
    end
    it "returns a list of added tasks when called" do
      task_tracker = TaskTracker.new
      task_tracker.add_task("Meditate")
      task_tracker.add_task("Wash the dishes")
      task_tracker.add_task("Vacuum the bedroom")
      expect(task_tracker.list_tasks).to eq ["Meditate", "Wash the dishes", "Vacuum the bedroom"]
    end
  end

  context "when tasks are added and deleted" do
    it "returns of list of remaining tasks" do
      task_tracker = TaskTracker.new
      task_tracker.add_task("Meditate")
      task_tracker.add_task("Wash the dishes")
      task_tracker.add_task("Vacuum the bedroom")
      task_tracker.delete_task("Meditate")
      expect(task_tracker.list_tasks).to eq ["Wash the dishes", "Vacuum the bedroom"]
    end
    it "returns a list of remaining tasks" do
      task_tracker = TaskTracker.new
      task_tracker.add_task("Meditate")
      task_tracker.add_task("Wash the dishes")
      task_tracker.add_task("Vacuum the bedroom")
      task_tracker.delete_task("Meditate")
      task_tracker.delete_task("Vacuum the bedroom")
      expect(task_tracker.list_tasks).to eq ["Wash the dishes"]
    end
  end

  context "when asked to delete a task that has not been stored" do
    it "fails and raises an error" do
      task_tracker = TaskTracker.new
      task_tracker.add_task("Wash the dishes")
      task_tracker.add_task("Vacuum the bedroom")
      expect { task_tracker.delete_task("Meditate") }.to raise_error "Cannot delete task - it is not currently stored"
    end
  end

  context "when duplicate tasks are added" do
    it "returns a list without duplicates when called" do
      task_tracker = TaskTracker.new
      task_tracker.add_task("Meditate")
      task_tracker.add_task("Wash the dishes")
      task_tracker.add_task("Meditate")
      expect(task_tracker.list_tasks).to eq ["Meditate", "Wash the dishes"]
    end
  end

end