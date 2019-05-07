class AddAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table 'addresses', force: :cascade do |t|
      t.references :user
      t.string 'street'
      t.string 'city'
      t.string 'state'
      t.string 'zip_code'

      t.timestamps
    end
  end
end
