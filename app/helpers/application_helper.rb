module ApplicationHelper
    def avatar_url(user)
        gravatar_id = Digest::MD5::hexdigest(user.email).downcase
        if user.image
            user.image
        else
        "https://www.gravatar.com/avatar/#{gravatar_id}.jpg?d=identical&s=150"
        end
    end
end

#The above code checks for the user image. Then returns either that or the default gravatar.

 def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end