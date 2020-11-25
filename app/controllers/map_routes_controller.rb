class MapRoutesController < ApplicationController
  def index
  end

  def new
  end

  def create
    uploaded_file = params[:archivo]
    @stops = JSON.parse(uploaded_file.read)
    
    
  end

  def show
    
  end
end
