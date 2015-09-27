class IncomesController < ApplicationController

	def new
		@budget = Budget.find( params[ :budget_id ] )
		@income = @budget.incomes.build
	end

	def create
		@budget = Budget.find( params[ :budget_id ] )
		@income = @budget.incomes.build( income_params )

		if @income.save
			redirect_to budget_path( @budget )
		else
			render 'new'
		end
	end

	def destroy
		@budget = Budget.find( params[ :budget_id ] )
		@income = @budget.incomes.find( params[ :id ] )
		@income.destroy
		redirect_to budget_path( @budget )
	end

	private
		def income_params
			params.require( :income )
				.permit( :title, :value )
		end

end
