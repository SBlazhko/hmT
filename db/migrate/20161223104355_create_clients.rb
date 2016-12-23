class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :sellers do |t|
      t.string :name
      t.timestamps null: false
    end

    create_table :clients do |t|
      t.string :name
      t.timestamps null: false
    end

    create_table :orders do |t|
      t.belongs_to :seller
      t.belongs_to :client
      t.timestamps null: false
    end
  end
end
