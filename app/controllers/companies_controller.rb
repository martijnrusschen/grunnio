class CompaniesController < ResourceController
  authorize_actions_for Company, :except => [:show, :index]

  def index
    @companies = Company.published
    index!
  end

  def new
    add_breadcrumb "nieuw", new_company_path
    @company = Company.new
    @card = @company.build_card
    @location = @company.build_location
    new!
  end

  def create
    @company = Company.new(params[:company])
    @card = @company.card
    @location = @company.location
    @current_account.add_role :owner, @company
    create!
  end

  def show
    @company = Company.find_using_slug(params[:id])
    @card = @company.card
    @location = @company.location
    @json = @company.location.to_gmaps4rails
    add_breadcrumb @company.name, admin_company_path(@company)
    show!
  end

  def edit
    @company = Company.find_using_slug(params[:id])
    authorize_action_for(@company)
    @card = @company.card.nil? ? @company.build_card : @company.card
    @location = @company.location.nil? ? @company.build_location : @company.location
    add_breadcrumb "wijzigen", edit_admin_company_path(@company)
    edit!
  end

  def destroy
    @company = Company.find_using_slug(params[:id])
    authorize_action_for(@company)
    destroy!
  end
end
