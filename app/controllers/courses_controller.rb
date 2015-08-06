class CoursesController < ApplicationController
	def index
		@courses = Course.all
	end

	def show
		@course = Course.where(:id => params[:id]).first
		if @course.blank?
			render :text => "Not found", :status => :not_found
		end
	end
end
