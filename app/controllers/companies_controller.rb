class CompaniesController < ResourceController
  authorize_actions_for Company

  def new
    add_breadcrumb "nieuw", new_admin_company_path
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
    add_breadcrumb @company.name, admin_company_path(@company)
    show!
  end

  def edit
    @company = Company.find(params[:id])
    authorize_action_for(@company)
    @card = @company.card.nil? ? @company.build_card : @company.card
    @location = @company.location.nil? ? @company.build_location : @company.location
    add_breadcrumb "wijzigen", edit_admin_company_path(@company)
    edit!
  end

  def destroy
    @company = Company.find(params[:id])
    authorize_action_for(@company)
    destroy!
  end

  # protected

  # def company_params
  #   role = is_admin? ? :admin : :default
  #   sanitize_for_mass_assignment(params[:company], role)
  # end

end
