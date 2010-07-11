require 'test/unit'
require 'method_list'

class MethodTest < Test::Unit::TestCase
  def test_one_arg
    assert_equal(5, one_arg(5))
  end
  
  def test_two_or_more
    assert_equal([5,7,[]], two_or_more(5,7))
    assert_equal([5,7,[9]], two_or_more(5,7,9))
    assert_equal([5,7,[9,11,13]], two_or_more(5,7,9,11,13))
  end
  
  def test_multi_args
    assert_equal([], multi_args)
    assert_equal([1], multi_args(1))
    assert_equal([1,2,3], multi_args(1,2,3))
  end
  
  def test_default_args
    assert_equal([5,7,1], default_args(5,7))
    assert_equal([5,7,9], default_args(5,7,9))
  end
  
  def test_mixed_args
    assert_equal([5,7,[],9], mixed_args(5,7,9))
    assert_equal([5,7,[9],11], mixed_args(5,7,9,11))
    assert_equal([5,7,[9,11,13,15],17], mixed_args(5,7,9,11,13,15,17))
  end
  
  def test_mixed_bag
    assert_equal([5,1,[],7,9], mixed_bag(5,7,9))
    assert_equal([5,7,[],9,11], mixed_bag(5,7,9,11))
    assert_equal([5,7,[9,11,13],15,17], mixed_bag(5,7,9,11,13,15,17))
  end
end
