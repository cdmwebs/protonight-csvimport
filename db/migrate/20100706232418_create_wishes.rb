class CreateWishes < ActiveRecord::Migration
  def self.up
    create_table :wishes do |t|
      t.string :description
      t.integer :donor_organization_id
      t.integer :requestor_organization_id
    end
  end

  def self.down
    drop_table :wishes
  end
end
