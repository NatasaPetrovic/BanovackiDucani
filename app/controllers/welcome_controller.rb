class WelcomeController < ApplicationController
   
   def home
       #@search = params[:search]
       #if @search
        #  @users = User.joins(:categories).where("categories.name = ? OR users.name = ?", @search, @search).order("role_id DESC")
         # redirect_to welcome_results_path(@search)
       #else
        #  render 'home'
       #end
       
       
   end
   
   def results
      if params[:search]
           # @users = User.joins(:categories).find(:all, :conditions=>['categories.name LIKE CONCAT("%", ?, "%") OR users.name LIKE CONCAT("%", ?, "%")', params[:search],params[:search])
            #@users = User.where("users.name LIKE ?", params[:search]).order("role_id DESC")
            @users = User.joins(:categories).where("users.name LIKE ? OR categories.name LIKE ?"  , "%#{params[:search]}%","%#{params[:search]}%")
                     .order("role_id DESC").distinct
       
           # redirect_to welcome_results_path
      
      end
   end
   
end