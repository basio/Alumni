class CreateAlumnus < ActiveRecord::Migration
  def change
    create_table :alumnus do |t|
      t.integer :id
      t.string :name
      t.string :degree
      t.integer :year
      t.string :email
      t.string :address
      t.text :bio
      t.string :resume

      t.timestamps
    end
  end
end
