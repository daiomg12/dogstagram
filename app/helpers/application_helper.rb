module ApplicationHelper

  def avatar_url(user)
    return user.profile_photo.medium.url unless user.profile_photo.medium.url.blank?
    gravatar_id = Digest::MD5::hexdigest(user.email).downcase
    "https://www.gravatar.com/avatar/#{gravatar_id}.jpg"
  end
  
end
