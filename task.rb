# frozen_string_literal: true

# string
class Task
  attr_accessor :name, :description, :completed

  def initialize(name, description, due_date)
    @name = name
    @description = description
    @completed = false
    @due_date = due_date
  end

  def complete!
    @completed = true
  end

  def to_s
    "#{@name}: #{@description} (#{completed ? 'Completed' : 'Not Completed'}) due date: #{@due_date}"
  end
end
