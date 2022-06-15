class Public::HomesController < ApplicationController
  def top
    @post_brains = PostBrain.order(id: "DESC")
    @post_visceras = PostViscera.order(id: "DESC")
    @post_muscles = PostMuscle.order(id: "DESC")
  end

  def about
  end
end
