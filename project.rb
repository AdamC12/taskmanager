# frozen_string_literal: true

class Project
  attr_accessor :name, :tasks

  def initialize(name)
    @name = name
    @tasks = []
  end

  def add_task(task)
    @tasks << task
  end

  def remove_task(task_name)
    @tasks.reject! { |task| task.name == task_name }
  end

  def to_s
    task_list = @tasks.map(&:to_s).join("\n")
    "Project: #{@name}\nTasks:\n#{task_list}"
  end
end
