require 'test/unit'

class StringTest < Test::Unit::TestCase

  def test_truth
    assert_equal(true, if "abc" then true end)
  end
  
  def test_length
    s = "Learning Ruby is fun"
    assert_equal(20, s.length)
  end
  
  def test_expression_substitution
    assert_equal("Hello! Hello! Hello! ", "#{'Hello! ' * 3}")
  end
  
  def test_index
    assert_equal(19, "Where can I find Ruby".index('b'))
  end
  
  def test_conversion
    assert_equal(100, "100.0".to_i)
    assert_equal(101.09, "101.09".to_f)
    assert_equal(["a,b,c"], "a,b,c".to_a)
  end
  
  def test_concatenation
    assert_equal("John " + "Doe", "John Doe")
  end
  
  def test_interpolation
    assert_equal("2 + 5 = 7", "2 + 5 = #{2 + 5}")
    assert_not_equal('2 + 5 = #{2 + 5}', "2 + 5 = #{2 + 5}")
  end  
  
  def test_plus_equals_creates_new_object
    original_string = "Hello, "
    hi = original_string
    assert_equal original_string.object_id, hi.object_id
    there = "World"
    hi += there
    assert_not_equal original_string.object_id, hi.object_id
  end

  def test_shovel_does_not_create_new_object
    original_string = "Hello, "
    hi = original_string
    assert_equal original_string.object_id, hi.object_id
    there = "World"
    hi << there
    assert_equal original_string.object_id, hi.object_id
  end
end


