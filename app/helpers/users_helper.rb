module UsersHelper
  def user_link(user)
      link_to user.name, user_url(user)
  end
end
