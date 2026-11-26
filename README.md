# linked_list


## Description

A method can add items to a linked list and return the list as string.

## Purpose

- Practice implementing a linked list in Ruby.
- Understand how nodes reference on another.
- Understand how to traverse nodes.
- Reinforce test-driven development with RSpec.


## How to Run

Make sure Ruby is installed on your system.

1. Clone the repository and navigate to the project directory.
2. Run the program:

```ruby
ruby main.rb
```

## Example Usage

```ruby
require_relative "lib/linked_list"

list = LinkedList.new

list.append(10)
list.append(20)
list.append(30)
list.prepend(5)

puts list
```

## What I learned

- Gained an understanding of linked list structures and how nodes reference on another.
- Became more comfortable with Ruby syntax, particularly checking for nil and using truthy/falsy values to simplify conditional statements and loops.
- Learned how to traverse a linked list to access, count, search for, and manipulate nodes.
- Practiced using TDD to break down problems into smaller, manageable steps.