class Public::CommunityController < ApplicationController
  def new
    @community = Community.new
  end

  def create
    # @community = Community.new(community_params)
    # if @community.save
    #   @community.save_tags(params[:community][:tag])
    #   redirect_to community_index_path
    # else
    #   render :new
    # end

    # @community = Community.new(community_params)
    # if @community.save
    #   tag_list = tag_params[:tag_names].delete(" ").split("、")
    #   @community.save_tags(tag_list)
    #   redirect_to community_index_path
    # else
    #   render 'new'
    # end

    @community = current_user.communities.new(community_params)
    tag_list = params[:community][:tag_name].split("/")
    if @community.save!
      @community.save_tag(tag_list)
       redirect_to community_index_path
    else
      render 'new'
    end
  end

  def index
    @communities = Community.all
  end

  def show
  end

  def edit
  end

  private
  def community_params
    params.require(:community).permit(:name, :introduction)
  end
end
