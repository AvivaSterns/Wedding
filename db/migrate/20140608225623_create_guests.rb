class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :first
      t.string :last
      t.references :invitee, index: true

      t.timestamps
    end
  end
end
