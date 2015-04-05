require 'test_helper'

class QuotesControllerTest < ActionController::TestCase
   test "add show page" do
    quote = Quote.create(:saying => 'yolo', :author => 'Isiah Singh')
    get :show, :id => quote.id
    assert_response :success
   end

   test "show page error" do 
   	get :show, :id => 'OMG'
   	assert_response :not_found
   end

end
