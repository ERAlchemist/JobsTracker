json.extract! prospect, :id, :job_title, :link, :technologies, :location, :listing_site, :comment, :created_at, :updated_at
json.url prospect_url(prospect, format: :json)
