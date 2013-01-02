#
# Correctness Tests
#

load("Optim")
using Optim

my_tests = ["test/l_bfgs.jl",
            "test/naive_gradient_descent.jl",
            "test/newton.jl",
            "test/nelder_mead.jl",
            "test/optimize.jl",
            "test/simulated_annealing.jl"]

println("Running tests:")

for my_test in my_tests
    println(" * $(my_test)")
    include(my_test)
end