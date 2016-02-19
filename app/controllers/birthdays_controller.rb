class BirthdaysController < ApplicationController
  before_action :set_birthday, only: [:show, :edit, :update, :destroy]

  # GET /birthdays
  # GET /birthdays.json
  def index
    # @birthdays = Birthday.order(month: :asc)
    # ここでまた @birthdays を order するけど、普通のルビーコードで
    # @birthdays.each do 〜 みたいな文
    # @birthdays = Birthday.order(day: :asc).reorder(month: :asc)
    # @birthdays = Birthday.order(month: :asc)
    @birthdays = Birthday.order(month: :asc, day: :asc)



  end

  # GET /birthdays/1
  # GET /birthdays/1.json
  def show
  end

  # GET /birthdays/new
  def new
    @birthday = Birthday.new
  end

  # GET /birthdays/1/edit
  def edit
  end

  # POST /birthdays
  # POST /birthdays.json
  def create
    @birthday = Birthday.new(birthday_params)

    respond_to do |format|
      if @birthday.save
        format.html { redirect_to @birthday, notice: '誕生日がうまく記録されました.' }
        format.json { render :show, status: :created, location: @birthday }
      else
        format.html { render :new }
        format.json { render json: @birthday.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /birthdays/1
  # PATCH/PUT /birthdays/1.json
  def update
    respond_to do |format|
      if @birthday.update(birthday_params)
        format.html { redirect_to @birthday, notice: '誕生日はうまくアップデートされました.' }
        format.json { render :show, status: :ok, location: @birthday }
      else
        format.html { render :edit }
        format.json { render json: @birthday.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /birthdays/1
  # DELETE /birthdays/1.json
  def destroy
    @birthday.destroy
    respond_to do |format|
      format.html { redirect_to birthdays_url, notice: '誕生日はうまく削除されました.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_birthday
      @birthday = Birthday.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def birthday_params
      params.require(:birthday).permit(:namae, :month, :day)
    end
end
