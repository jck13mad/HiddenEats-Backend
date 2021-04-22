class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :image
      t.text :description
      t.string :company

      t.timestamps
    end
  end
end
