class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.boolean :is_sent_email, default: false

      t.timestamps
    end
  end
end
