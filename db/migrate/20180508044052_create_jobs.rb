class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :job_title
      t.string :link
      t.date :date_applied
      t.string :cover_letter_used
      t.string :reume_used
      t.string :listing_site
      t.text :technologies
      t.boolean :remote_possible
      t.string :location
      t.boolean :heard_back
      t.text :comment

      t.timestamps
    end
  end
end
