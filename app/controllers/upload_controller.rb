class UploadController < ApplicationController

  def upload
    puts params[:ruql_file].read
    # File.open(params["ruql_file"].tempfile, 'r').each do |lines|
    #   puts lines
    # end
    flash[:notice] = "Sucessfully uploaded file"
    redirect_to problems_path 
  end
end