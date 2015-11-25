class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :name_roma
      t.string :name_kana
      t.string :mail

      t.timestamps
    end
  end
end
