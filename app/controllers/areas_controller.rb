class PostsController < ApplicationController
  def create
    @area = Area.create(area_params)
  end
  
  private
    def area_params
      params.require(:area).permit(:name)
    end
end
