class PeopleController < ResourceController
  authorize_actions_for Person, :except => [:show, :index]

  def index
    @people = Person.published
    index!
  end

  def new
    @person = Person.new
    @card = @person.build_card
    new!
  end

  def create
    @person = Person.new(params[:person])
    @card = @person.card
    create!
  end

  def show
    @person = Person.find_using_slug(params[:id])
    @card = @person.card
    show!
  end

  def edit
    @person = Person.find_using_slug(params[:id])
    authorize_action_for(@person)
    @card = @person.card.nil? ? @person.build_card : @person.card
    edit!
  end

  def update
    @person = Person.find_using_slug(params[:id])
    update!
  end

  def destroy
    @person = Person.find_using_slug(params[:id])
    authorize_action_for(@person)
    destroy!
  end
end
