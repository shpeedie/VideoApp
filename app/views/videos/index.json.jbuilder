json.array!(@videos) do |video|
  json.extract! video, :id, :name, :description, :thumb, :content, :comments, :tags, :ratings, :user_id
  json.url video_url(video, format: :json)
end
