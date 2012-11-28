class InitiativesController < ResourceController
  respond_to :html
  respond_to :js, only: :create

  authorize_actions_for Initiative, :except => [:show, :index]

  def index
    @initiatives = Initiative.published
    index!
  end

  def new
   @initiative = Initiative.new
   @card = @initiative.build_card
   @location = @initiative.build_location
   new!
  end

  def create
   @initiative = Initiative.new(params[:initiative])
   @card = @initiative.card
   @location = @initiative.location
   create!
   @current_account.add_role :owner, @initiative if @initiative.save
  end

  def show
   @initiative = Initiative.find_using_slug(params[:id])
   @card = @initiative.card
   @location = @initiative.location
   show!
  end

  def edit
   @initiative = Initiative.find_using_slug(params[:id])
   authorize_action_for(@initiative)
   @card = @initiative.card.nil? ? @initiative.build_card : @initiative.card
   @location = @initiative.location.nil? ? @initiative.build_location : @initiative.location
   edit!
  end

  def update
    @initiative = Initiative.find_using_slug(params[:id])
    update!
  end

  def destroy
   @initiative = Initiative.find_using_slug(params[:id])
   authorize_action_for(@initiative)
   destroy!
  end
end
