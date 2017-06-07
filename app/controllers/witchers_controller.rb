class WitchersController < ApplicationController
  before_action :set_witcher, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @graph = Koala::Facebook::API.new()
    p @graph
    # @user = current_user
    # @user.fb_token =
    # @graph = Koala::Facebook::API.new('EAAFA5DMpdnQBAOA5tKh12UKLz5nOFEgseoamj1h8AVf8wfOXeMZCDLRSc2zd1fGhFgQhgWRNxKjAEcAtJstRMyZBxM4Pv0Ycur5IkTUcIZCvTCrbNiZAyZAswtRZB4TTBmIDOfiUlYrmtZAVp1Mp4C2o74kamE0MiIvyW1Fo6YRYyZA21GjY4Mo1hwWLJrPPTp8ZD')

    # @oauth = Koala::Facebook::OAuth.new('352823831787124', '2a5e37ca5eb45c8db9aa4afbd80bee8f', 'http://localhost:3000/')
    # @oauth.get_app_access_token
    # p @oauth
    # p('===========================')





  end

  # GET /witchers/1
  # GET /witchers/1.json
  def show
  end

  # GET /witchers/new
  def new
    @witcher = Witcher.new
  end

  # GET /witchers/1/edit
  def edit
  end

  # POST /witchers
  # POST /witchers.json
  def create
    @witcher = Witcher.new(witcher_params)

    respond_to do |format|
      if @witcher.save
        format.html { redirect_to @witcher, notice: 'Witcher was successfully created.' }
        format.json { render :show, status: :created, location: @witcher }
      else
        format.html { render :new }
        format.json { render json: @witcher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /witchers/1
  # PATCH/PUT /witchers/1.json
  def update
    respond_to do |format|
      if @witcher.update(witcher_params)
        format.html { redirect_to @witcher, notice: 'Witcher was successfully updated.' }
        format.json { render :show, status: :ok, location: @witcher }
      else
        format.html { render :edit }
        format.json { render json: @witcher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /witchers/1
  # DELETE /witchers/1.json
  def destroy
    @witcher.destroy
    respond_to do |format|
      format.html { redirect_to witchers_url, notice: 'Witcher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_witcher
      @witcher = Witcher.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def witcher_params
      params.fetch(:witcher, {})
    end
end
