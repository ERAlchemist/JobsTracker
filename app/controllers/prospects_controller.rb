class ProspectsController < ApplicationController
  before_action :set_prospect, only: [:show, :edit, :update, :destroy, :move_to_applied]

  # GET /prospects
  # GET /prospects.json
  def index
    @prospects = Prospect.all
  end

  # GET /prospects/1
  # GET /prospects/1.json
  def show
  end

  # GET /prospects/new
  def new
    @prospect = Prospect.new
  end

  # GET /prospects/1/edit
  def edit
  end

  # POST /prospects
  # POST /prospects.json
  def create
    @prospect = Prospect.new(prospect_params)

    respond_to do |format|
      if @prospect.save
        format.html { redirect_to prospects_url, notice: 'Prospect was successfully created.' }
        format.json { render :index, status: :created, location: @prospect }
      else
        format.html { render :new }
        format.json { render json: @prospect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prospects/1
  # PATCH/PUT /prospects/1.json
  def update
    respond_to do |format|
      if @prospect.update(prospect_params)
        format.html { redirect_to prospects_url, notice: 'Prospect was successfully updated.' }
        format.json { render :index, status: :ok, location: @prospect }
      else
        format.html { render :edit }
        format.json { render json: @prospect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prospects/1
  # DELETE /prospects/1.json
  def destroy
    @prospect.destroy
    respond_to do |format|
      format.html { redirect_to prospects_url, notice: 'Prospect was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def move_to_applied
    @job = Job.new(:job_title => @prospect.job_title, :link => @prospect.link, :comment => @prospect.comment, :technologies => @prospect.technologies, :location => @prospect.location)

     @job.save
    @prospect.destroy
    redirect_to jobs_url
   
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prospect
      @prospect = Prospect.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prospect_params
      params.require(:prospect).permit(:job_title, :link, :technologies, :location, :listing_site, :comment)
    end
end
