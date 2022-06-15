class AddLinkstoPostviscera < ActiveRecord::Migration[5.2]
  def change
    add_column :post_visceras, :amazon_link, :text
    add_column :post_visceras, :iheab_link, :text
  end
end
