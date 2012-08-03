class InitiativesController < ApplicationController
  respond_to :html, :json

  # GET /initiatives
  # GET /initiatives.json
  def index
    @initiatives = Initiative.all
    respond_with @initiatives
  end

  # GET /initiatives/1
  # GET /initiatives/1.json
  def show
    @initiative = Initiative.find(params[:id])
    @card = @initiative.card
    @location = @initiative.location
    respond_with @initiative
  end

  # GET /initiatives/new
  # GET /initiatives/new.json
  def new
    @initiative = Initiative.new
    @card = @initiative.build_card
    @location = @initiative.build_location
    respond_with @initiative, @card, @location
  end

  # GET /initiatives/1/edit
  def edit
    @initiative = Initiative.find(params[:id])
    @card = @initiative.card.nil? ? @initiative.build_card : @initiative.card
    @location = @initiative.location.nil? ? @initiative.build_location : @initiative.location
  end

  # POST /initiatives
  # POST /initiatives.json
  def create
    @initiative = Initiative.new(params[:initiative])
    @card = @initiative.card
    @location = @initiative.location

    respond_to do |format|
      if @initiative.save
        format.html { redirect_to @initiative, notice: 'Initiative was successfully created.' }
        format.json { render json: @initiative, status: :created, location: @initiative }
      else
        format.html { render action: "new" }
        format.json { render json: @initiative.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /initiatives/1
  # PUT /initiatives/1.json
  def update
    @initiative = Initiative.find(params[:id])

    respond_to do |format|
      if @initiative.update_attributes(params[:initiative])
        format.html { redirect_to @initiative, notice: 'Initiative was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @initiative.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /initiatives/1
  # DELETE /initiatives/1.json
  def destroy
    @initiative = Initiative.find(params[:id])
    @initiative.destroy

    respond_to do |format|
      format.html { redirect_to initiatives_url }
      format.json { head :no_content }
    end
  end
end
