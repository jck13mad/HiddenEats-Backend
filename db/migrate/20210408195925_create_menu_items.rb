class CreateMenuItems < ActiveRecord::Migration[6.1]
  def change
    create_table :menu_items do |t|
      t.string :name
      t.string :image
      t.text :description
      t.string :company

      t.timestamps
    end
  end
end
