ActiveAdmin.register PostMuscle do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  permit_params :title, :image, :posted_date, :body, :amazon_link, :iheab_link

  form title: "post_muscle" do |f|
    f.inputs do
      f.input :title
      f.input :image, as: :refile
      f.input :posted_date, as: :datetime_picker
      f.input :body
      f.input :amazon_link
      f.input :iheab_link
    end
    f.actions
  end
end
