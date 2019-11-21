json.extract! favourite_job, :id, :title, :salary, :description, :functions, :benefits, :remote, :city, :country, :seniority, :logo_url, :modality, :company_name, :company_description, :job_id, :user_id, :created_at, :updated_at
json.url favourite_job_url(favourite_job, format: :json)
