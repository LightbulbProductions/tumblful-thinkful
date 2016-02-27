class CreateImageLinks < ActiveRecord::Migration
  def change
    create_table :image_links do |t|
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end
