class Public::PostViscerasController < ApplicationController
  def index
    @post_viscera_pages = PostViscera.order(id: "DESC").page(params[:page]).per(10)
  end

  def show
    @postviscera = PostViscera.find(params[:id])
    impressionist(@postviscera, nil)
    @pageviews = @postviscera.impressionist_count
  end
end
