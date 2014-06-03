class PagesController < ApplicationController
  def index
  	@grandma = params[:grandma]
  end

  def grandma
  	if params[:user_input] == params[:user_input].downcase
  		# redirect_to action: 'index', :grandma => 'Speak Up Sonny!'
  		@grandma = 'Speak Up Sonny!'
  	else
  		# redirect_to action: 'index', :grandma => 'NOT SINCE 1883!'
  		@grandma = 'NOT SINCE 1883!'
  	end

  	render :index
  end
end