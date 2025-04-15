# def fibs(n)
#   fib = []
#   while n > 0
#     puts n
#     fib << (n - 1) + (n - 2)
#     n -= 1
#   end
#   fib
# end

def fibs(n)
  fib = [0, 1]
  (n - 2).times do
    fib << (fib[-1] + fib[-2])
  end
  fib
end

def fibs_rec(n)
  # base case
  return [0, 1] if n == 2
  return [0] if n == 1

  fib_sec = fibs_rec(n - 1) # recursively calls self until it reaches the base case which returns an array
  fib_sec << (fib_sec[-1] + fib_sec[-2]) # appends the sum of the last two elements to form the next fib sequence
  fib_sec
end

p fibs(5)
p fibs_rec(5)
