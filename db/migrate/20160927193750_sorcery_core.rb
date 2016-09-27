class SorceryCore < ActiveRecord::Migration
  def change
    # create_table :users do |t|
    #   t.string :email,            :null => false
    #   t.string :crypted_password
    #   t.string :salt
    #
    #   t.timestamps
    # end
    add_column :users, :crypted_password, :string
    add_column :users, :salt, :string 
    # add_column :products, :part_number, :string
    add_index :users, :email, unique: true
  end
end
