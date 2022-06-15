class AddLinkstoPostmuscle < ActiveRecord::Migration[5.2]
  def change
    add_column :post_muscles, :amazon_link, :text
    add_column :post_muscles, :iheab_link, :text
  end
end
