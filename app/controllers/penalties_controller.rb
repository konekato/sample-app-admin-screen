class PenaltiesController < ApplicationController
  def index
    @penalties = Penalty.select("penalties.target_user_id, users.name, sum(penalties.count) AS counts").group("target_user_id").joins("INNER JOIN users ON users.id = penalties.target_user_id")
  end

  def new
  end

  def create
    @penalty = Penalty.new
    @penalty.target_user_id = params[:target_user_id]
    @penalty.reason = params[:penalty][:reason]
    @penalty.count = params[:penalty][:count]
    @penalty.save
    redirect_to '/admin/penalties/u/' + params[:target_user_id]
  end

  def show
    @user = User.find(params[:target_user_id])
    @penalties = Penalty.where("target_user_id = ?", params[:target_user_id])
  
    @penalty = Penalty.new
  end

  def destroy
  end
end
