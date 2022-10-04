class Public::CalendarsController < ApplicationController

  def index
 	@calendar = Calendar.new
 	# @customer = current_customer
  # @memos = Memo.where(customer_id: current_customer).order(start_time: "desc").page(params[:page]).per(8)
  @calendars = Calendar.all
  end

  def edit

  end

  def create
   	calendar = Calendar.new(calendar_params)
    calendar.save
    redirect_to community_index_path
  end

  def update
    # if @memo.update(memos_params)
    #   flash[:notice] = "トレーニングを更新しました"
    #   redirect_to memos_path
    # else
    #   render :edit
    # end
  end

  def destroy
    # @memo.destroy
    # flash[:notice] = "トレーニングを削除しました"
    # redirect_to memos_path
  end

  # def ensure_correct_customer
  #   @memo = Memo.find(params[:id])
  #   unless @memo.customer == current_customer
  #     redirect_to memos_path
  #   end
  # end

  private
    def calendar_params
      params.require(:calendar).permit(:community_id ,:prefectures, :venue,:product_sales, :opening_time, :start_time, :drink_fee, :venue_information, :postscript)
    end
end
