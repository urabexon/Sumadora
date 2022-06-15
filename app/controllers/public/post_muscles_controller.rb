class Public::PostMusclesController < ApplicationController
  def index
    @post_muscle_pages = PostMuscle.order(id: "DESC").page(params[:page]).per(10)
  end

  def show
    @postmuscle = PostMuscle.find(params[:id])
    impressionist(@postmuscle, nil)
    @pageviews = @postmuscle.impressionist_count
  end
end
