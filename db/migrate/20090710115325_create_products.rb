class CreateProducts < ActiveRecord::Migration
  def self.up
    create_versioned_table :products do |t|
      t.string :name 
      t.integer :price 
      t.text :description, :size => (64.kilobytes + 1) 
    end
    
    
    ContentType.create!(:name => "Product", :group_name => "Product")
  end

  def self.down
    ContentType.delete_all(['name = ?', 'Product'])
    CategoryType.all(:conditions => ['name = ?', 'Product']).each(&:destroy)
    drop_table :product_versions
    drop_table :products
  end
end
