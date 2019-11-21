class CreateFavouriteJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :favourite_jobs do |t|
      t.string :title
      t.string :salary
      t.string :description
      t.string :functions
      t.string :benefits
      t.boolean :remote
      t.string :city
      t.string :country
      t.string :seniority
      t.string :logo_url
      t.string :modality
      t.string :company_name
      t.string :company_description
      t.string :job_id
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
