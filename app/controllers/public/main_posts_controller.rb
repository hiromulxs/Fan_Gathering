class Public::MainPostsController < ApplicationController
  def create
    community = Community.find(params[:community_id])
    @main_post = MainPost.new(main_post_params)
    @main_post.user_id = current_user.id
    @main_post.community_id = community.id
    @main_post.save
    redirect_to community_path(community)
  end

  def show
    @community = Community.find(params[:community_id])
    @main_post =MainPost.find(params[:id])
  end

  def destroy
    @main_post = MainPost.find(params[:id])
    community = @main_post.community
    @main_post.destroy
    redirect_to community_path(community)
  end

  private
  def main_post_params
    params.require(:main_post).permit(:main_text)
  end
end
