def add(a, b):
    """Add two numbers."""
    try:
        return float(a) + float(b)
    except (ValueError, TypeError):
        return "Error: Please provide numeric inputs"


if __name__ == "__main__":
    # Simple test
    print(add(1, 2))  # Expected: 3
    print(add("5", "3"))  # Expected: 8
    print(add("abc", 1))  # Expected: Error message
