class AddCompanyToProspects < ActiveRecord::Migration[5.2]
  def change
    add_column :prospects, :company, :string
    add_column :jobs, :company, :string
  end
end
