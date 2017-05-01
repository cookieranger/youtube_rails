class VideosController < ApplicationController
  def index
    @videos = Video.order('created_at DESC[A]')
  end

  def new
    @video = Video.new
  end

  def create

  end
end
