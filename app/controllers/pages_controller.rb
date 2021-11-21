class PagesController < ApplicationController
  def home
    @time = Date.today.strftime("%B #{Date.today.day.ordinalize} ")
  end

  def about
  end

  def contact
    search = params[:member]
    @members = ['Jake', 'Max', 'Lori', 'Julian']

    if search.present?
      @members = @members.select { |name| name.start_with?(search) }
    end

  end
end


