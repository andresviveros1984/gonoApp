class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :comment
      #need to change to t.text how?
      # t.text :comment
      t.timestamps
    end
  end
end
