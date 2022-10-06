class Public::CommunityController < ApplicationController
  def new
    @community = Community.new
  end

  def create
    @community = current_user.communities.new(community_params)
    tag_list = params[:community][:tag_name].split("/")
    if @community.save!
      @community.save_tag(tag_list)
       redirect_to community_path(@community)
    else
      render 'new'
    end
  end

  def index
    @communities = Community.all
  end

  def show
    @community = Community.find(params[:id])
    @main_posts = @community.main_posts
    @main_post = MainPost.new
  end

  def edit
    @community = Community.find(params[:id])
  end

  def update
    @community = Community.find(params[:id])
    @community.update(community_params)
    redirect_to community_path(@community)
  end

  def destroy
    @community = Community.find(params[:id])
    @community.destroy
    redirect_to community_index_path
  end

  private
  def community_params
    params.require(:community).permit(:name, :introduction)
  end


end
