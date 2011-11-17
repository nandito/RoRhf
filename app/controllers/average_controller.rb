class AverageController < ApplicationController
  def index
	@subjects = Subject.all
	@result = ''
	@kreditek = ''
#	@jegyek = ''
  end
  def szamol
	@subjects = Subject.all
#	@result = params[:f].to_i + params[:s].to_i
#	jegyek = Array.new
	@subjects.each do |i|
#		@jegyek = Array.new(:i.to_i)
		@result = i
	end
#	@result = @jegyek.sum
	@kreditek = Subject.sum(:credit)
	
	render :action => :index
  end

end
