class ToDoItem < ApplicationRecord
  belongs_to :сontacts, optional: true
  validates :title, presence: true
end
