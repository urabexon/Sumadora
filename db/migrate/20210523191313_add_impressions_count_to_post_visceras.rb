class AddImpressionsCountToPostVisceras < ActiveRecord::Migration[5.2]
  def change
    add_column :post_visceras, :impressions_count, :integer, default: 0
  end
end
