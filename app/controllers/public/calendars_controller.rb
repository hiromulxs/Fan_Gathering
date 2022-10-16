class Public::CalendarsController < ApplicationController

  def index
    @calendars = Calendar.all
    @community = Community.find(params[:community_id])
  end

  def new
    @calendar = Calendar.new
  end

  def create
   	@calendar = Calendar.new(calendar_params)
    @calendar.save!
    redirect_to community_calendars_path
  end

  def show
   
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private
    def calendar_params
      params.require(:calendar).permit(:community_id ,:prefectures, :venue,:product_sales, :opening_time, :start_time, :drink_fee, :venue_information, :postscript)
    end
end
