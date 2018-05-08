json.extract! job, :id, :link, :comment, :date_applied, :heard_back, :job_title, :cover_letter_used, :resume_used, :listing_site, :technologies, :remote_possible, :location, :created_at, :updated_at
json.url job_url(job, format: :json)
