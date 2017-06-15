# Single Responsibility
> The single responsibility principle is a computer programming principle that states that every module or class should have responsibility over a single part of the functionality provided by the software, and that responsibility should be entirely encapsulated by the class.
[Wikipedia](https://en.wikipedia.org/wiki/Single_responsibility_principle)

## WTF?
Your class must do one thing and one thing only. Why? Because if it does more,
than it’s very likely you’d end up changing one part of the class and
accidentally you may break the other. Of course you may argue your class
is fairly simple and you see all the code on one page, and you can’t break it etc.
But you never know and in software development it’s much better to rely on
principles and stick to them robotically than pretend to be an oracle
and guess the future of your code.
So to sum up: *create a shitload of classes, each having 1 single responsibility,
don’t make your classes multifunctional.*
Eventually you’ll have much more files and way more classes.
But it’s a good trade off because you’ll be able to create tests for
every class (every feature/responsibility), your tests will be simpler and smaller
and when you want to alter a feature, you’ll have way less chances
to break other features.
