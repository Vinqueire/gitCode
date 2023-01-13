def factorial_iterative(n: int) -> int:
    factorial = 1
    for i in range(1, n+1):
        factorial *= i
    return factorial

n = int(input("n = "))
print(f"{n}! = {factorial_iterative(n)}")
