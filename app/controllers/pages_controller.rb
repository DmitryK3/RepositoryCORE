class PagesController < ApplicationController
    #GET request for /nothing and this nothing is our home page!
    def home
        @basic_plan= Contact.find(1)
        @pro_plan= Contact.find(2)
    end 
    def about
    end end
