class Admin::PartOnesController < ApplicationController
  include StandardActions
  layout "admin/admin_lte_2"
  # layout 'admin_lte_2'

  def index
    standard_index
  end

  def show
    standard_show
  end

  def new
    standard_new
  end

  def create
    standard_create
  end

  def edit
    standard_edit
  end

  def update
    standard_update
  end

  def destroy
    standard_destroy
  end

  private
  def permit_params
    params.fetch(:part_one, {}).permit(:audio, :photo, :correct_option, :level)
  end
end
