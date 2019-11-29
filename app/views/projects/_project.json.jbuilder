json.extract! project, :id, :title, :description, :days_to_complete, :user_id, :created_at, :updated_at
json.url project_url(project, format: :json)
