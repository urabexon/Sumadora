class AddImpressionsCountToPostBrains < ActiveRecord::Migration[5.2]
  def change
    add_column :post_brains, :impressions_count, :integer, default: 0
  end
end
