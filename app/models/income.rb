class Income < ActiveRecord::Base
	validates :title, presence: true
	validates :value, presence: true, numericality: true
	belongs_to :budget
end
