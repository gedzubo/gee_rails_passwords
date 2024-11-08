class CreateVaults < ActiveRecord::Migration[7.2]
  def change
    create_table :vaults, id: :uuid do |t|
      t.string :name
      t.text :description
      t.references :user, index: true

      t.timestamps
    end

    add_index :vaults, [ :name, :user_id ], unique: true
  end
end
