class PenaltiesController < ApplicationController
  def index
    @penalties = Penalty.select("penalties.target_user_id, users.name, sum(penalties.count) AS counts").group("target_user_id").joins("INNER JOIN users ON users.id = penalties.target_user_id")
  end

  def new
  end

  def create
  end

  def show
  end

  def destroy
  end
end
