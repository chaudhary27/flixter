require 'test_helper'

class Instructor::CoursesControllerTest < ActionController::TestCase
   test "course_added" do
     user = FactoryGirl.create(:user)
     sign_in user

     	course = FactoryGirl.create(:course)

     		assert_difference 'Course.count' do
     			post :create, :title => course.title, :description => course.description, :cost => course.cost
     		end
     		assert_equal 1, course.count
     		assert_redirected_to instructor_course_path(course)
   end

end
