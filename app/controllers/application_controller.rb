class ApplicationController < ActionController::Base
    include SessionsHelper
    private
    def require_user_logged_in
        unless logged_in?
        redirect_to login_url
        end 
    end 
    
    def counts(users)
        @count_microposts = users.microposts.count
        @count_followings = users.followings.count
        @count_followers = users.followers.count
        @count_likes = users.favorable.count
    end 
end
