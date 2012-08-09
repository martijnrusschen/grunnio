class Admin::PeopleController < Admin::ResourceController
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
    @person = Person.find(params[:id])
    @card = @person.card
    show!
  end

  def edit
    @person = Person.find(params[:id])
    @card = @person.card.nil? ? @person.build_card : @person.card
    edit!
  end
end
