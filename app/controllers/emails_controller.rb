class EmailsController < ApplicationController
  def index
    @emails = Email.all
  end

  def create 
    @email = Email.create(object: Faker::Lorem.sentence, body: Faker::Lorem.sentence(word_count: 15))
    respond_to do |format|
        format.html { redirect_to emails_path }
        format.js { }
    end
  end

  def show
    @email = Email.find(params[:id])
    respond_to do |format|
        format.html { redirect_to emails_path }
        format.js { }
    end
  end
end 