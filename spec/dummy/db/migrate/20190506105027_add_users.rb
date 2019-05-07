class AddUsers < ActiveRecord::Migration[6.0]
  def change
    create_table 'users', force: :cascade do |t|
      t.string 'email'
      t.string 'password'
      t.text 'comments'
      t.string 'status'
      t.string 'misc'
      t.text 'preferences'
      t.boolean 'terms', default: false
      t.string 'type'

      t.timestamps
    end
  end
end
