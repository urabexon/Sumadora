class AddLinkstoPostbrain < ActiveRecord::Migration[5.2]
  def change
    add_column :post_brains, :amazon_link, :text
    add_column :post_brains, :iheab_link, :text
  end
end