class UsersController < ApplicationController
    before_action :set_user, only: %i[ show edit update destroy ]

    def index
        @users = User.all
    end

    def show
    end

    def new
    end

    def create
    end

    def update
        respond_to do |format|
            if @user.update(user_params)
              format.html { redirect_to users_path, notice: "User was successfully updated." }
              format.json { render :show, status: :ok, location: @user }
            else
              format.html { render :edit, status: :unprocessable_entity }
              format.json { render json: @user.errors, status: :unprocessable_entity }
            end
          end
    end

    def destroy
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :middle_name, :last_name, :age, :gender, :email, :dob, :marriage_status, address: [:street_address, :city, :state, :zip])
      end
    
    def set_user
        @user = User.find(params[:id])
    end
end
