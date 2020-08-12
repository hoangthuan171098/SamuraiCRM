class CreateSamuraiTasksTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :samurai_tasks_tasks do |t|
      t.string :title
      t.text :content
      t.references :samurai_user, foreign_key: true
      t.references :samurai_contacts_contact, foreign_key: true

      t.timestamps
    end

    rename_column :samurai_tasks_tasks, :samurai_user_id, :user_id
    rename_column :samurai_tasks_tasks, :samurai_contacts_contact_id, :contact_id
  end
end
