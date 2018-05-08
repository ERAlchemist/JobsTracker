class CreateProspects < ActiveRecord::Migration[5.2]
  def change
    create_table :prospects do |t|
      t.string :job_title
      t.string :link
      t.text :technologies
      t.text :comment
      t.string :location

      t.timestamps
    end
  end
end
