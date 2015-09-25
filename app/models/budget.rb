class Budget < ActiveRecord::Base
	has_many :expenses, dependent: :destroy
	validates :title, presence: true
end
