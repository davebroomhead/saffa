class ApplicationController < ActionController::Base

    before_action :fetch_user

    def fetch_user
        if session[:user_id].present?
            @current_user = User.find_by id: session[:user_id]
          end # if
        session[:user_id] = nil   unless @current_user.present?
    end # fetch_user()


    def check_if_logged_in
        unless @current_user.present?
            flash[:error] = 'You must be logged in to perform that action.'
            redirect_to login_path
        end # unless
    end # check_if_logged_in()


    def check_if_admin
        
    end # check_if_admin()


end # application controller
