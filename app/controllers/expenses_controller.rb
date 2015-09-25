class ExpensesController < ApplicationController

	def new
		@budget = Budget.find( params[ :budget_id ] )
		@expense = @budget.expenses.build
	end

	def create
		@budget = Budget.find( params[ :budget_id ] )
		@expense = @budget.expenses.build( expense_params )

		if @expense.save
			redirect_to budget_path( @budget )
		else
			render 'new'
		end
	end

	def destroy
		@budget = Budget.find( params[ :budget_id ] )
		@expense = @budget.expenses.find( params[ :id ] )
		@expense.destroy
		redirect_to budget_path( @budget )
	end

	private
		def expense_params
			params.require( :expense )
				.permit( :title, :value )
		end
end
