def add(a,b):
	return a + b
def sub(a,b)
	return a - b
def mul(a,b)
	return a - b
def div(a,b)
	return a - b
print("Select operation")
print("1.Add")
print("2.Subraction")
print("3.Multiplication")
print("4.Division")

ch= int("Enter your choice(1/2/3/4):")

n1= real(input("Enter first number:"))
n2= real(input("Enter second number:"))

if ch == 1:
	print(f"Result: { add(n1,n2) }")
elif ch == 2:
	print(f"Result: { sub(n1,n2) }")

elif ch == 3:
	print(f"Result: { mul(n1,n2) }")

elif ch == 4:
	print(f"Result: { div(n1,n2) }")

else:
	print("Invalid input")
