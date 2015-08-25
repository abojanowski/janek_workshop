class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.references :ivitaiting
      t.references :invited
      t.boolean :accepted, default: false

      t.timestamps null: false
    end
  end
end
