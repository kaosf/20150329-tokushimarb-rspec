def add(x, y)
  x + y
end

def sub(x, y)
  x - y
end

def mul(x, y)
  x * y
end

def div(x, y)
  x / y
end

def sqrt(x)
  a = x
  while (x ** 2 - a).abs > 0.000001
    x1 = x - (x ** 2 - a) / (2.0 * x)
    x = x1
  end
  x
end
