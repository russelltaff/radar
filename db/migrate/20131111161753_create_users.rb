class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :password, null: false
      t.string :type, null: false
      
      #generic
      t.string :city
      t.string :state
      t.string :phone
      t.text :summary
      
      #student
      t.string :portfolio_url
      t.string :github_url
      
      #employer
      t.string :company_url
      t.boolean :apprentice_partner


      t.timestamp 

    end
    #student
    add_attachment :users, :resume
    
    #generic
    add_attachment :users, :photo
  end
end
