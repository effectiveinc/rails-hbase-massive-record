class LinksController < ApplicationController
  respond_to :html, :json

  def create
    link = Link.create :id => Link.new_id(params[:link]), :link => params[:link]
    respond_with(link, :location => short_code_path(link.id))
  end

  def show
    @link = Link.find(params[:id])
  end
end
