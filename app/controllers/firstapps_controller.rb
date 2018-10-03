class FirstappsController < ApplicationController

	def new
		@firstapp= Firstapp.new
	end

	def create
		@firstapp = Firstapp.new(firstapp_params)
		if @firstapp.save
			flash[:notice] = "Your Post is success"
			redirect_to firstapp_path(@firstapp)
		else
			render 'new'
		end
	end
		def show
			@firstapp = Firstapp.find(params[:id])
		end

	private
		def firstapp_params
			params.require(:firstapp).permit(:name, :department, :company)
		end
end