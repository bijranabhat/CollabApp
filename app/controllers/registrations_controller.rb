class RegistrationsController < Devise::RegistrationsController
    
    #This code overwrites the sign_up_params and account_update_paramsmethods to accept the :name attribute.
    #As you see, those methods are in the Devise RegistrationsController, so we specified it and altered its methods.
    #Now inside our routes we have to specify this controller, so these methods could be overwritten.
    
    private
    
    def sign_up_params
        params.require(:user).permit( :name,
                                      :email,
                                      :password,
                                      :password_confirmation
                                      )
    end
    
    def account_update_params
        params.require(:user).permit( :name,
                                      :email,
                                      :password,
                                      :password_confirmation,
                                      :current_password
                                      )
    end
                                  
    
end