class DogSitters < ActiveRecord::Migration[5.2]
  def change
    create_table :dog_sitters do |t|
      t.string :name
      t.references :city, foreign_key: true
      t.timestamps
    end
  end
end