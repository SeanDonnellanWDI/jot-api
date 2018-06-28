class CreateJots < ActiveRecord::Migration[5.1]
  def change
    create_table :jots do |t|
      t.string :name
      t.string :content
      t.references :user, foreign_key: true
      t.boolean :active

      t.timestamps
    end
  end
end
