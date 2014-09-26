class AddReceiverNameToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :receiver_name, :string
  end
end
