# @Author: Viacheslav Shynkarenko <Slavik>
# @Date:   2017-06-15T17:04:00+03:00
# @Email:  shinkarenko.vi@gmail.com
# @Last modified by:   Slavik
# @Last modified time: 2017-06-15T17:47:41+03:00
# @Copyright: Viacheslav Shynkarenko. All Rights Reserved.

# This is a typical Rails controller generated via rails g scaffold command.
# You can see how many responsibilities it has. It knows way too much.
class PhoneNumbersController < ApplicationController
  before_action :set_phone_number, only: [:show, :edit, :update, :destroy]

  # GET /phone_numbers
  def index
    @phone_numbers = PhoneNumber.all
  end

  # GET /phone_numbers/1
  def show
  end

  # GET /phone_numbers/new
  def new
    @phone_number = PhoneNumber.new
  end

  # GET /phone_numbers/1/edit
  def edit
  end

  # POST /phone_numbers
  def create
    @phone_number = PhoneNumber.new(phone_number_params)

    if @phone_number.save
      redirect_to @phone_number, notice: 'Phone number was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /phone_numbers/1
  def update
    if @phone_number.update(phone_number_params)
      redirect_to @phone_number, notice: 'Phone number was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /phone_numbers/1
  def destroy
    @phone_number.destroy
    redirect_to phone_numbers_url, notice: 'Phone number was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phone_number
      @phone_number = PhoneNumber.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def phone_number_params
      params.require(:phone_number).permit(:person_id, :phone_number_type, :value)
    end
end
