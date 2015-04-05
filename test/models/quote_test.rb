require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
   test "unique_tag" do
     quote = Quote.create(:saying => "The 90's was awesome", :author => 'Isiah Singh')
     puts quote.inspect
     expected = 'IS#' + quote.id.to_s
     actual = quote.unique_tag
     assert_equal(expected, actual)
   end
end
