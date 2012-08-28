class Admin::CompaniesController < Admin::ResourceController
  add_breadcrumb "bedrijven", :admin_companies_path

  def new
    add_breadcrumb "nieuw"
    @company = Company.new
    @card = @company.build_card
    @location = @company.build_location
    new!
  end

  def create
    @company = Company.new(params[:company])
    @card = @company.card
    @location = @company.location
    create!
  end

  def show
    @company = Company.find(params[:id])
    @card = @company.card
    @location = @company.location
    # add_breadcrumb @company.name
    show!
  end

  def edit
    @company = Company.find(params[:id])
    @card = @company.card.nil? ? @company.build_card : @company.card
    @location = @company.location.nil? ? @company.build_location : @company.location
    add_breadcrumb "wijzigen"
    edit!
  end
end
