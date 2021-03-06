+++
title = "The Myth of the Lone Hacker"
date = "2012-11-22"
aliases = ["/blog/2012/11/22/the-myth-of-the-lone-hacker"]
Categories = []
+++

Most programmers start off their career relatively idealistic, and often marvel at the power of little used programming languages. For me, this language was Common Lisp, which I got to work with professionally. At first I believed that Lisp still had the power to revolutionize programming, but after a few years of work I realized exactly why Lisp ended up in the position it is now: community. Every programming community has a few core beliefs, both explicit and implicit, that shape the language, the libraries, and its users. The Haskell community believes that errors should be caught by the compiler as often as possible, and Ruby believes in the principle of least astonishment. The Lisp community suffers from a belief that I call the Myth of the Lone Hacker.

Most simply put, the myth of the lone hacker is a strong faith in the power of individual hackers to affect large scale change. Most programmers hold this belief to some degree, but the more closely held the belief, the more dangerous to the community it becomes.

Why is it dangerous? Because when you believe that individual hackers are the only means of affecting change, it de-incentivizes work on utilities and libraries that are necessary for group engineering efforts. Lone hackers don’t have anything to integrate, so there’s no point in working on CI utilities. Lone hackers get their work done the first time, so who needs unit tests? There’s only one machine to work on, so who needs packaging and repeatable builds? Lone hackers also know how they prefer to write their own libraries, and clearly everyone else would be better off doing as well!

This is largely what has happened to Lisp since the beginning of the AI Winter. Libraries tend to be single purpose “trivial” implementations that met the exact needs of the original author, and are often very difficult to extend or maintain. Documentation tends to be sparse (“read the code!” doesn’t count as documentation), in some cases resulting in a list of functions with no obvious entry points. And any attempt to learn from or copy popular languages such as Ruby, Python, and Java is dismissed as “reeking of the cubicle”.

Of course, what many people fail to realize is that the myth is fairly incorrect. While there may be some rare cases, the vast majority of the time brilliant hackers only start a movement. For every Donald Knuth who writes and maintains something like Tex, there are 10 or more Guido van Rossum and Linus Torvalds; highly motivated individuals who started a movement which eventually involved large numbers of engineers. Guido and Linus may be founders and public front figures of their projects, but without the effort of countless other engineers, part and full time, their projects would have never made it off the ground.

This is of course, nothing new. While individuals tend to have moments of insights, modern software projects are simply too large for a single individual to engineer it within a reasonable period of time. To dismiss team work as “cubicle work” is to simply dismiss the majority of potential software projects due to their scale.

There is some hope yet for Lisp, with tools such as QuickLisp coming along. Unfortunately I personally feel that the language has a lot of technical and social debt that’ll be difficult to overcome. What Lisp really needs to do is attract younger engineers who will eventually mature and produce good libraries for the community, and they need to do that without spoiling them with the myth in the mean time.
