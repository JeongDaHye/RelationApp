class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :mobile
      t.string :address
      t.date :birth
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
