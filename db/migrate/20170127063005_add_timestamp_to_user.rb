class AddTimestampToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :timestamp, :string
  end
end
