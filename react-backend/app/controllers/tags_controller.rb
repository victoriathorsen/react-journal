class TagsController < ApplicationController
    def index
    #   name = params[:name]
      @tags = ActsAsTaggableOn::Tag.all
      render json: @tags
    end
  
    # def destroy
    #   @tag = ActsAsTaggableOn::Tag.find(params[:id])
    #   @tag.destroy
    #   render json: @tag
    # end
  
    # def update
    #   tag = ActsAsTaggableOn::Tag.find(params[:id])
    #   tag.update_attributes(name: params[:name])
    #   render json: {success: true}
    # end
  end