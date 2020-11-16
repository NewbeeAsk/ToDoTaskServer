class ToDoItem < ApplicationRecord
  belongs_to :сontact, optional: true
end
