class UserStepsController < ApplicationController
    include Wicked::Wizard
    steps :personal, :profile, :address

    def show
        @user = current_user
        render_wizard
    end
      
    def update
        @user = current_user
        @user.update_attributes(user_params)
        render_wizard @user
    end
      
    private
    
    def finish_wizard_path
        user_path(current_user)
    end

      def user_params
        params.require(:user).permit(:first_name, :middle_name, :last_name, :age, :gender, :email, :dob, :marriage_status, address: [:street_address, :city, :state, :zip])
      end
end
