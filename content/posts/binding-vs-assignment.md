+++
title = "Binding vs Assignment"
date = "2013-04-30"
aliases = ["/blog/2013/04/30/binding-vs-assignment"]
Categories = []
+++


A coworker of mine was recently running into problems with the following snippet of Python code, and turned to another functionally oriented developer and myself for help.

{{< highlight python >}}
funs = []
for i in ["a" "b"]:
    def internal_function():
        return i
    funs.append(internal_function)
print funs[0]()
print funs[1]()
{{< /highlight >}}


At first glance, one would expect this to print "a" then "b". But much to my surprise (and my coworkers frustration), it was returning "b" both times.

My first instinct was that Python was closing properly, but was messing up the namespacing. So I asked him to use lambdas instead, creating this:

{{< highlight python >}}
funs = []
for i in ["a", "b"]:
    funs.append(lambda : i)
print funs[0]()
print funs[1]()
{{< /highlight >}}


Same result! So by this point we know that its not namespacing that is causing the problems, as you can't accidentally assign two lambdas the same name. So I began to suspect that the use of "i" was the issue. Perhaps we're closing around i, which is a mutable variable, and Python can't anticipate that we want a copy instead of the actual reference. Since i is mutable, both closures are having what i means changed from underneath them after closure creation time. (Coincidentally, Python 2.7.3 keeps i around even after the loop is completed, which I think is odd).

So the solution here would be to use a temporary variable. Any variable first created inside a loop should theoretically only have a lifespan of one iteration through the loop. So let's try the following:

{{< highlight python >}}
funs = []
for i in ["a", "b"]:
    temp = i
    funs.append(lambda : temp)
print funs[0]()
print funs[1]()
{{< /highlight >}}


Same result, again! So clearly python is mishandling variables by a large amount. So what's going on here? My fellow functional coworker was finally able to explain: the real problem here is that Python conflates binding and assignment. Binding is used to create a new variable *within the current context*, while assignment can only change the value of a given variable within the narrowest bound scope.

Why is this an issue? Well, Python uses the same symbol "=", to specify binding and assignment, while most other languages use two syntactic rules. For example Go apparently uses ":=" to bind, and "=" to assign. Java uses type declarations to denote bindings, and Clojure/Haskell more or less only have bindings underneath. Unfortunately there's an upper limit to how intelligent an imperative compiler can get, especially in interpreted languages where the compiler must be fairly quick. So Python doesn't do the leg work to realize that temp is only used inside the loop, and binds it only once *outside the loop*. The side effect of this is that anyone who closes over any local variable inside the loop will be surprised when it is mutated by further iterations, and said variables will be left laying around **after the loop is done**.

So how do we get out of this? One obvious option is to pick a language that understands the difference. Short of that, use a separate function to force Python's hand.

{{< highlight python >}}
def create_lambda(x):
    return lambda : x

funs = []
for i in ["a", "b"]:
    funs.append(create_lambda(i))

funs[0]()
funs[1]()
{{< /highlight >}}


Which unfortunately is pretty ugly. Other languages will get you out of this bind though. Clojure has no concept of assigning variables, only binding. So the only way to create mutable state in Clojure is through successive binds, or via the special Software Transactional Memory functions, which are specially designed for concurrency.

{{< highlight clojure >}}
(def funs
     (for [i ["a" "b"]]
         (fn []
             i)))

(println ((first funs)))
(println ((second funs))
{{< /highlight >}}


And according to my Go enthused coworker, this also works:

{{< highlight go >}}

func main() {
    for i:=0; i<4; i++ {
        tmp := i

        funs[i] = func () int {
            return tmp
        }
    }
    fmt.Println(funs[0]())
    fmt.Println(funs[1]())
    fmt.Println(funs[2]())
}
{{< /highlight >}}


If you are currently working on a Python project, or are a Python enthusiast, the only hope is to be careful, and hope that Python 3's compiler might be more intelligent.
