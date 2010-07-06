class ChangeDonorOrgRelationship < ActiveRecord::Migration
  def self.up
    remove_column :wishes, :donor_organization
    add_column :wish_lists, :donor_organization_id, :integer
    add_index :wish_lists, :donor_organization_id
  end

  def self.down
    remove_index :wish_lists, :column => :donor_organization_id
    remove_column :wish_lists, :donor_organization_id
    add_column :wishes, :donor_organization
  end
end
