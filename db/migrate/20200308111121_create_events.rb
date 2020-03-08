class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :area
      t.string :address
      t.string :access
      t.string :businessHour
      t.string :holiday
      t.integer :price
      t.string :phoneNumber
      t.string :descriptionTitle
      t.string :descriptionText

      t.timestamps
    end
  end
end
