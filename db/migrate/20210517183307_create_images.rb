class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      t.string :title
      t.string :author
      t.text :description
      t.boolean :public

      t.timestamps
    end
  end
end
