class CreateLocationUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :location_users do |t|
      t.belongs_to :location
      t.belongs_to :user
    end
  end
end
