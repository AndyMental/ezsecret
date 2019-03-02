class UserRoleMap < ActiveRecord::Migration[5.2]
  def change
    create_table :user_role_maps do |t|
      t.bigint :user_id
      t.bigint :role_id
      t.timestamps
    end
  end
end
