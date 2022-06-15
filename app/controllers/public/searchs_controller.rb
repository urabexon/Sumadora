class Public::SearchsController < ApplicationController
  def search
    @content = params["content"]
    @model = params["model"]
    @method = params["method"]
    @records = search_for(@content, @model, @method).order(id: "DESC").page(params[:page]).per(10)
  end

  private

  def search_for(content, model, method)
    if model == "postbrain"
      if method == "perfect"
        PostBrain.where(title: content)
      else
        PostBrain.where("title LIKE ?", "%" + content + "%")
      end
    elsif model == "postviscera"
      if method == "perfect"
        PostViscera.where(title: content)
      else
        PostViscera.where("title LIKE ?", "%" + content + "%")
      end
    elsif model == "postmuscle"
      if method == "perfect"
        PostMuscle.where(title: content)
      else
        PostMuscle.where("title LIKE ?", "%" + content + "%")
      end
    end
  end
end
