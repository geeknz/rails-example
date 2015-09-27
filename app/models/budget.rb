class Budget < ActiveRecord::Base
	has_many :expenses, dependent: :destroy
	has_many :incomes, dependent: :destroy
	validates :title, presence: true
end
