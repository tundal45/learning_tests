require 'test/unit'

class ArrayTest < Test::Unit::TestCase

  def test_plus_equals_creates_new_object
    original_string = ["Hello"]
    hi = original_string
    assert_equal original_string.object_id, hi.object_id
    there = ["World"]
    hi += there
    assert_not_equal original_string.object_id, hi.object_id
  end

  def test_shovel_does_not_create_new_object
    original_string = ["Hello"]
    hi = original_string
    assert_equal original_string.object_id, hi.object_id
    there = ["World"]
    hi << there
    assert_equal original_string.object_id, hi.object_id
  end

end
