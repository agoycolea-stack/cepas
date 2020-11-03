class CreatePositions < ActiveRecord::Migration[5.2]
  def change
    create_table :positions do |t|
      t.string :name
      t.references :enologist, foreign_key: true
      t.references :magazine, foreign_key: true

      t.timestamps
    end
  end
end
