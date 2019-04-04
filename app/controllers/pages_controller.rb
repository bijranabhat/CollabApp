class PagesController < ApplicationController
    #Since in our app the PagesController is responsible for the homepage, 
    #we’ll need to query data inside the pages_controller.rb file’s index action. 
    #Inside the index action retrieve some records from the posts table.
    #Assign the retrieved records to an instance variable,
    #so the retrieved objects are going to be available inside the home page’s views
    
    
    def index
        @posts = Post.limit(5)
    end
end
