class NotesController < ApplicationController
  def index
	render :file => 'app/views/notes/notes.html.erb'
  end
  def uploadFile
	post = DataFile.save(params[:upload])
	flash[:notice] = 'Fájlfeltöltés sikeres!'
	redirect_to :action => "index"
  end
#  def cleanup
#    File.delete("#{RAILS_ROOT}/public/data/#{@filename}") 
#            if File.exist?("#{RAILS_ROOT}/public/data/#{@filename}")
#	end
#  end
end
