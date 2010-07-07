class CreateDonorOrganizationAndDonors < ActiveRecord::Migration
  def self.up
    create_table :donor_organizations do |t|
      t.string :name
    end
    create_table :donors do |t|
      t.string :name
      t.boolean :admin, :default => false
      t.integer :donor_organization_id
    end    
  end

  def self.down
    drop_table :donors
    drop_table :donor_organizations
  end
end
