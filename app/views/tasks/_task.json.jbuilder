json.extract! task, :id, :title, :description, :days_to_complete, :status, :project_id, :user_id, :created_at, :updated_at
json.url task_url(task, format: :json)
