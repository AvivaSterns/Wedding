class CreateInvitees < ActiveRecord::Migration
  def change
    create_table :invitees do |t|
      t.string :first
      t.string :last
      t.string :email
      t.boolean :attending
      t.integer :guest_quantity

      t.timestamps
    end
  end
end
