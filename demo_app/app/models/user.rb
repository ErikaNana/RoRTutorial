class User < ActiveRecord::Base
    #each user has many microposts
    has_many :microposts
    #therefore can do:
    # first_user = User.first
    # first_user.microposts --> gives all the microposts for this user
        #returns all microposts with user_id equal to the id of first_user
end
