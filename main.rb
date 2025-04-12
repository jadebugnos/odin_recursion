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
    fib << (fib[-1]) + (fib[-2])
  end
  fib
end

p fibs(8)