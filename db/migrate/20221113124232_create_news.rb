class CreateNews < ActiveRecord::Migration[7.0]
  def change
    create_table :news do |t|
      t.string :header
      t.text :content
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
