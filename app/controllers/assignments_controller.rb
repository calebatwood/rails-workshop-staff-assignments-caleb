class AssignmentsController < ApplicationController

  def new
    @person = Person.find(params[:person_id])
    @assignment = Assignment.new
  end

  def create
    @person = Person.find(params[:person_id])
    @assignment = Assignment.new(assignment_params)
    if @assignment.save
      redirect_to root_url
    else
      render :new
    end
  end

  private

  def assignment_params
    params.require(:assignment).permit(:role, :location_id, :person_id)
  end

end
