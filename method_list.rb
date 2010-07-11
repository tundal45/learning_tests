def one_arg(x)
  x
end

def multi_args(*x)
  x
end

def two_or_more(a,b,*c)
  [a, b, c]
end

def default_args(a,b,c=1)
  [a,b,c]
end

def mixed_args(a,b,*c,d)
  [a,b,c,d]
end

def mixed_bag(a,b=1,*c,d,e)
  [a,b,c,d,e]
end
