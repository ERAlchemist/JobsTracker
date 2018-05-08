class AddResumeUsedToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :resume_used, :string
  end
end
