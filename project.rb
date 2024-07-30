# frozen_string_literal: true

class Project
  attr_accessor :name, :tasks, :team

  def initialize(name)
    @name = name
    @tasks = []
    @team = []
  end

  def add_user_to_team(user, role)
    @team << { user: user, role: role }
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

  def formatted_for_user(user)
    task_list = @tasks.map(&:to_s).join("\n")
    role = @team.find { |team_member| team_member[:user] == user }[:role]
    "Project: #{@name}\nRole: #{role}\nTasks:\n#{task_list}"
  end
end
