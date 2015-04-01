class BlorghCreateAmount < ActiveRecord::Migration
  def change
    create_table(:) do |t|

      <% attributes.each do |attribute| -%>
            t.integer :id
      <% end -%>

      t.timestamps null: false
    end

    add_index :<%= table_name %>, :email,                unique: true
    add_index :<%= table_name %>, :reset_password_token, unique: true
    # add_index :<%= table_name %>, :confirmation_token,   unique: true
    # add_index :<%= table_name %>, :unlock_token,         unique: true
  end
end
