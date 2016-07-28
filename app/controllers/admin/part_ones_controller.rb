class Admin::PartOnesController < ApplicationController
  def index

  end

  def show
    @part_one = PartOne.find params[:id]
  end

  def new
    @part_one = PartOne.new
  end

  def create
    @part_one = current_user.part_ones.build part_one_params
    if @part_one.save
      redirect_to admin_part_one_path(@part_one)
    else
      render 'new'
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private
  def part_one_params
    params.fetch(:part_one, {}).permit(:audio, :photo, :correct_option)
  end
end
