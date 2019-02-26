class InvitedMembersController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
<<<<<<< HEAD
        @notify = current_user.invited_members;
=======
>>>>>>> b8db9d60f00fcbc2024e9334583c4063a782ccab
        @order = Order.find_by(id: params[:order_id])
        @invited_members = @order.invited_members.joins(:user).select(:name, :email, :id)
    end

    #POST /orders/invite.json
    def invite
<<<<<<< HEAD
        @notify = current_user.invited_members;
=======
>>>>>>> b8db9d60f00fcbc2024e9334583c4063a782ccab
        @user_id = User.find_by(name: params[:name])
        if @user_id
             @user = current_user.user_friends.find_by(friend_id:@user_id.id)
             if @user
                  render json: [@user_id].to_json(only: [:id, :email, :name]) and return
             end
        end
        render json: [].to_json() and return
    end
end
