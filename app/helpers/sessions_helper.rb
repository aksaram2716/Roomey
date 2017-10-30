module SessionsHelper

  # Logs in the given user.
  def log_in(user)
    session[:user_uid] = user.uid
  end

  # Remembers a user in a persistent session.
  def remember(user)
      user.remember
      cookies.permanent.signed[:user_uid] = user.uid
      cookies.permanent[:remember_token] = user.remember_token
  end

  def current_user?(user)
    user == current_user
  end

  # Returns the current logged-in user (if any).
  def current_user
    if (user_id = session[:user_uid])
      @current_user ||= User.find_by(id: user_uid)
    elsif (user_uid = cookies.signed[:user_uid])
      user = User.find_by(id: user_uid)
      if user && user.authenticated?(cookies[:remember_token])
        log_in user
        @current_user = user
      end
    end
  end


  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end

  # Forgets a persistent session.
  def forget(user)
      user.forget
      cookies.delete(:user_uid)
      cookies.delete(:remember_token)
  end


  def log_out
      forget(current_user)
      session.delete(:user_uid)
      @current_user = nil
  end
end