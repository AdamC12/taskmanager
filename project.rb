# frozen_string_literal: true

class Project
  attr_accessor :name, :tasks

  def initialize(name)
    @name = name
    @tasks = []
    @team = []
  end

  def add_task(task)
    @tasks << task
  end

  def remove_task(task_name)
    @tasks.reject! { |task| task.name == task_name }
  end

  def add_user(user, role)
    @team << { user: user, role: role }
  end

  def to_s(user)
    task_list = @tasks.map(&:to_s).join("\n")
    "Project: #{@name}\nRole: #{user_role(user)}\nTasks:\n#{task_list}"
  end

  def user_role(user)
    member = @team.select { |member| member[:user] == user.name }
    member[0][:role]
  end
end

