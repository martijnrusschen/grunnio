class CompaniesController < ApplicationController
  respond_to :html, :json

  # GET /companies
  # GET /companies.json
  def index
    @companies = Company.all
    respond_with @companies
  end

  # GET /companies/1
  # GET /companies/1.json
  def show
    @company = Company.find(params[:id])
    @card = @company.card
    @location = @company.location
    respond_with @company
  end

  # GET /companies/new
  # GET /companies/new.json
  def new
    @company = Company.new
    @card = @company.build_card
    @location = @company.build_location
    respond_with @company, @card, @location
  end

  # GET /companies/1/edit
  def edit
    @company = Company.find(params[:id])
    @card = @company.card.nil? ? @company.build_card : @company.card
    @location = @company.location.nil? ? @company.build_location : @company.location
  end

  # POST /companies
  # POST /companies.json
  def create
    @company = Company.new(params[:company])
    @card = @company.card
    @location = @company.location

    respond_to do |format|
      if @company.save
        format.html { redirect_to @company, notice: 'Company was successfully created.' }
        format.json { render json: @company, status: :created, location: @company }
      else
        format.html { render action: "new" }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /companies/1
  # PUT /companies/1.json
  def update
    @company = Company.find(params[:id])

    respond_to do |format|
      if @company.update_attributes(params[:company])
        format.html { redirect_to @company, notice: 'Company was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companies/1
  # DELETE /companies/1.json
  def destroy
    @company = Company.find(params[:id])
    @company.destroy

    respond_to do |format|
      format.html { redirect_to companies_url }
      format.json { head :no_content }
    end
  end
end
