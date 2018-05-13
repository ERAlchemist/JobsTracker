class AddRatingToProspecs < ActiveRecord::Migration[5.2]
  def change
    add_column :prospects, :rating, :integer
    add_column :jobs, :rating, :integer
  end

  
end
