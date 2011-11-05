class AverageController < ApplicationController
  def index
	@subjects = Subject.all
	@result =''
	@kreditek = ''
  end
  def szamol
	@subjects = Subject.all
	@result = params[:f].to_i + params[:s].to_i
	@kreditek = Subject.sum(:credit)
	
	render :action => :index
  end
end
