require 'test/unit'

class StringTest < Test::Unit::TestCase

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


