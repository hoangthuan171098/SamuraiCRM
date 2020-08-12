class CreateSamuraiContactsContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :samurai_contacts_contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :email
      t.string :phone
      t.references :samurai_user, foreign_key: true

      t.timestamps
    end

    rename_column :samurai_contacts_contacts, :samurai_user_id, :user_id
  end
end