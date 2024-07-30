# frozen_string_literal: true
require 'pry'

class User
  attr_accessor :name, :projects

  def initialize(name)
    @name = name
    @projects = []
  end

  def add_project(project, user, role)
    project.add_user(user, role)
    @projects << project
  end

  def remove_project(project_name)
    @projects.reject! { |project| project.name == project_name }
  end

  def to_s
    project_list = @projects.map { |project| project.to_s(self) }.join("\n\n")
    "User: #{@name}\nProjects:\n#{project_list}"
  end
end

# puts == x.to_s
