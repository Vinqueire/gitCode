def factorial_recursive(n: int) -> int:
    if n < 2:
        return 1
    else:
        return factorial_recursive(n-1) * n

n = int(input("n = "))
print(f"{n}! = {factorial_recursive(n)}")
