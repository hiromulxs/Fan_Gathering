class Public::AfterglowsController < ApplicationController
  def index
    @community = Community.find(params[:community_id])
  end

  def new
  end

  def show
  end

  def edit
  end
end
