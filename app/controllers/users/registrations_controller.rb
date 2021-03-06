class Users::RegistrationsController < Devise::RegistrationsController
before_filter :configure_sign_up_params, only: [:create]
before_filter :configure_account_update_params, only: [:update]


  # GET /resource/sign_up
   def new
     if params[:kind] == 'free'
          @kind = 'free'
     end
     super
     
   end

  # POST /resource
   def create
   
     super
    
   end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end
   
   protected

  # If you have extra params to permit, append them to the sanitizer.
   def configure_sign_up_params
    devise_parameter_sanitizer.for(:sign_up).push(:name, :phone, :address, :role_id, :working_hours,category_ids: [], images_attributes: [:image], premium_info_attributes: [:first_name, :last_name, :description,:personal_email, :personal_phone, :website]  )
   end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
   #  devise_parameter_sanitizer.for(:account_update) << :name
    # devise_parameter_sanitizer.for(:sign_up) <<:phone  
     #devise_parameter_sanitizer.for(:sign_up) <<:address

   #end

  # The path used after sign up.
   def after_sign_up_path_for(resource)
     super(resource)
     redirect_to root_path
   end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
