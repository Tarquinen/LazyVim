def add(a, b):
    return a + b


def hello_world():
    return "Hello, World!"


def greet(name):
    return f"Hello, {name}!"


def calculate_sum():
    result1 = add(1, 2)
    result2 = add(3, 4)
    result3 = add(5, 6)
    result4 = add(7, 8)
    result5 = add(9, 10)
    return result1 + result2 + result3 + result4 + result5


def process_data():
    x = add(100, 200)
    y = add(x, 50)
    z = add(y, 25)
    return add(z, 10)


def main():
    message = hello_world()
    print(message)
    greeting = greet("Python")
    print(greeting)
    total = calculate_sum()
    print(f"Sum: {total}")
    processed = process_data()
    print(f"Processed: {processed}")
    final = add(total, processed)
    print(f"Final: {final}")


if __name__ == "__main__":
    main()
