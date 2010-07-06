class AddWishFieldsToWishes < ActiveRecord::Migration
  def self.up
    add_column :wishes, :wish_list_id, :integer
    add_column :wishes, :name, :string
    add_column :wishes, :age, :integer
    add_column :wishes, :sex, :string
    add_column :wishes, :gift_1, :string
    add_column :wishes, :gift_1_delivered_on, :date
    add_column :wishes, :gift_1_thank_you_to, :string
    add_column :wishes, :gift_2, :string
    add_column :wishes, :gift_2_delivered_on, :date
    add_column :wishes, :gift_2_thank_you_to, :string
    add_column :wishes, :notes, :text

    add_index :wishes, :wish_list_id
  end

  def self.down
    remove_index :wishes, :column => :wish_list_id

    remove_column :wishes, :notes
    remove_column :wishes, :gift_2_thank_you_to
    remove_column :wishes, :gift_2_delivered_on
    remove_column :wishes, :gift_2
    remove_column :wishes, :gift_1_thank_you_to
    remove_column :wishes, :gift_1_delivered_on
    remove_column :wishes, :gift_1
    remove_column :wishes, :sex
    remove_column :wishes, :age
    remove_column :wishes, :name
    remove_column :wishes, :wish_list_id
  end
end
