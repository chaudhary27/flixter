require 'test_helper'

class Instructor::CoursesControllerTest < ActionController::TestCase
   test "course_added" do
     user = FactoryGirl.create(:user)
     sign_in user

     	course = FactoryGirl.create(:course)
     		#count  = Course.count

     		assert_difference 'Course.count' do
     			post :create, :course => {
     				:title => course.title,
     				:description => course.description,
     				:cost => course.cost
     			}
     		end
     		#assert_equal count + 1, Course.count
     		course_last = Course.order(:created_at).last
     		assert_redirected_to instructor_course_path(course_last)
   end

end
