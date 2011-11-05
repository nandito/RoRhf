class AverageController < ApplicationController
  def index
	@subjects = Subject.all
  end

end
