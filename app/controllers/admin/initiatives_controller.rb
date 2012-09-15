class Admin::InitiativesController < Admin::ResourceController
  authorize_actions_for Initiative

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
  end

  def show
   @initiative = Initiative.find(params[:id])
   @card = @initiative.card
   @location = @initiative.location
   show!
  end

  def edit
   @initiative = Initiative.find(params[:id])
   authorize_action_for(@initiative)
   @card = @initiative.card.nil? ? @initiative.build_card : @initiative.card
   @location = @initiative.location.nil? ? @initiative.build_location : @initiative.location
   edit!
  end

  def destroy
   @initiative = Initiative.find(params[:id])
   authorize_action_for(@initiative)
   destroy!
  end
end
