class Expense < ActiveRecord::Base
	validates :title, presence: true
	validates :value, presence: true, numericality: true
	validates :category, presence: true
	belongs_to :budget
end
