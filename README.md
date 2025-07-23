# 🐍 Ruby Playground

A collection of Ruby programs and solutions for interesting problems, coding challenges, and learning exercises.

## 📁 Purpose

This folder is dedicated to writing Ruby programs that I find interesting or wish to solve using Ruby. All problems, challenges, and experiments come under this directory.

## 🏗️ Structure

Each problem/solution follows this structure:
```
problem_name/
├── problem_name.rb          # Main implementation
├── test_problem_name.rb     # Test suite using Minitest
└── README.md               # Problem description (if needed)
```

## 🚀 Problems

### 1. 🔍 Find Substring
**Files:** `find_substring.rb`, `test_find_substring.rb`

**Description:** A custom string method to find a substring within a provided string.

**Usage:**
```ruby
"find here about string alfred is that fine?".substr('alfred')  # => true
"find here about string alfred is that fine?".substr('alwin')   # => false
```

**Features:**
- Extends the String class with a `substr` method
- Handles empty string validation
- Includes comprehensive test suite using Minitest

**Run Tests:**
```bash
ruby test_find_substring.rb
```

## 🛠️ Development

### Prerequisites
- Ruby 3.4+
- Minitest (included with Ruby)

### Running Tests
```bash
# Run all tests
ruby test_*.rb

# Run specific test
ruby test_find_substring.rb
```

### Code Style
This project uses RuboCop for code formatting and linting. The global configuration from `~/.rubocop.yml` is applied.

## 📝 Adding New Problems

1. Create a new directory for your problem
2. Implement the solution in `problem_name.rb`
3. Write tests in `test_problem_name.rb`
4. Update this README with problem description
5. Commit your changes

## 🎯 Goals

- Practice Ruby programming
- Solve interesting problems
- Learn new Ruby concepts and techniques
- Build a collection of reusable solutions
- Improve coding skills through regular practice

---

*Happy coding! 🎉*
