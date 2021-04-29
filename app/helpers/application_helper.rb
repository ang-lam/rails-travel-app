module ApplicationHelper
    #put methods that you will use for views
    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end

    def logged_in?
        current_user
    end

    def redirect_if_logged_in
        if logged_in?
            redirect_to root_path
        end
    end

end
