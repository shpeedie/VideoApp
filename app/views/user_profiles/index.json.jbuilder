json.array!(@user_profiles) do |user_profile|
  json.extract! user_profile, :id, :name, :email, :profile_pic, :company_id
  json.url user_profile_url(user_profile, format: :json)
end
