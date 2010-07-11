require 'test/unit'

class NumberTest < Test::Unit::TestCase
  
  def test_truth
    assert_equal(true, if 5 then true end)
  end
  
  def test_integer_operation_produces_integer_even_division
    assert_equal(2, 5/2)
  end
  
  def test_operation_w_float_produces_float
    assert_equal(11.0, 1.1*10)
    assert_equal(2.5, 5/2.0)
  end
  
end
