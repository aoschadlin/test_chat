class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :email
      t.string :logo, :default => nil
      t.string :description, :default => nil

      t.timestamps
    end
  end
end
