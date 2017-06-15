# Open-closed Principle
> In object-oriented programming, the open/closed principle states "software entities (classes, modules, functions, etc.) should be open for extension, but closed for modification";[1] that is, such an entity can allow its behaviour to be extended without modifying its source code.
[Wikipedia](https://en.wikipedia.org/wiki/Open/closed_principle)

## WTF?
In plain words it means an object should not change state (be modified)
by external factors whereas classes should be extendable (via inheritance).

### Don’t change state
Once initialized an object should stay the same (internally).
It can produce new objects, but mustn’t change itself.
Consider these examples:
```ruby
str1 = 'Hello'
str2 = str1.capitalize
```

```ruby
str1 = 'Hello'
str1.capitalize!
```

First example is a good demonstration of this principle.
`capitalize` method produces new object. `capitalize!` on
the other hand modifies internal state which violates
this principle.

Objects which don’t change state are called *immutable*.
Such objects are easier to test, maintain and they’re
generally thread-safe.

These two rules follow from the open/closed principle:
1. Don’t modify internal fields or properties, rather initialize them in constructor once.
2. Don’t open fields or properties for modification. There must be jail for people who do that!
You can’t allow any external knowledge of your object’s behavior, let alone change object’s state from outside.

### Extend
This one is tricky because Ruby isn’t doing really good job in OOP world.
For one thing it lacks interfaces and abstract classes. All Ruby classes
can be extended in many ways: via inheritance, via modules or even monkey patching.
In a true OOP language there should be a contract between code parts which asserts certain
expectations. An interface serves as such contract. If you have 10 classes implementing the same interface,
you can expect them all to act in accord to the interface.
Unfortunately in Ruby objects aren’t obliged by any contract and they can literally be anything.
This creates big uncertainty and is prone to bugs.
Anyway, you can simple remember that according to the open/closed principle
classes can be extended via inheritance.

By the way, here’s my attempt to introduce interfaces in Ruby: https://github.com/slavikdev/ruty
