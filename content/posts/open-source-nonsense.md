+++
date = 2020-02-02T17:00:00-08:00
title = "Open Source Nonsense"
categories = ["open source"]
draft = true
+++

# Introduction

Another day, another bit of drama in the open source community.

Okay, I'm being far too dismissive. An unspecified period of time ago a moderately high profile open source contributor burned out publicly. I'm purposefully leaving *which* contributor and community ambiguous, mostly to avoid getting bogged down in the details of that one event. My obvservations here should be universal enough to avoid the unnecessary trauma of attaching names to things.

As is typical for public burnouts, there was a lot of soul searching about what had happened and why. I'm of the opinion that this instinct is mostly good; even if no new ideas come out of it, it's healthy for communities to regularly stop and ask if they could do better somehow. However I did notice a few bad themes and ideas crop up at the margins, ones that I have seen enough that I've deemed it worthwhile to discuss them here in the abstract. While I am not doubting the good intentions of these ideas, being that they were all about preventing burnout, I believe that these ideas are untimately harmful to communities that adopt them.

## A Side Note on Burnout, Assholes

Before proceeding, I'd like to level set on two very important things. First, people burn out *all the time* for a wide variety of reasons. Second, assholes exist.

On the former, it's perfectly reasonable for anyone to decide that they're done contributing to open source for any reason at all. People get tired of doing the same thing for long periods of time, they want to have other hobbies, they have families, whatever. It's also common and normal for people to get heavily involved in open source only to discover that they don't like it as much as they thought they would. People are notoriously bad at preducting what will make us happy, and I would *encourage* any contributor who is unhappy with their current role to politely say "this isn't as much fun as I thought it would, I'm going to go do other things now". Life is too short to be miserable.

Secondly, assholes are a thing, and they are unevenly distributed. Various communities and forums have differing levels of civil norms and moderation, so the X language community on Github and the Y language community of Reddit might behave wildly differently, being made up of different people moderated under different rules. Assholes, if left unchecked, will kill any community and burn out all contributors in an extremely short period of time. None of the arguments I'm going to make here apply to a community that refuses to censure or evict toxic members; those communities are doomed to eventually burn out non-assholes. Generally assume that for all examples below I am talking about good-faith actors communicating in a professional manner.

# The Bad Idea Distilled

The absolute core of all the ~~bad~~ misguided ideas can be sumarized as such:

> Open source creators are owed an unrepayable debt for their gift to us all, they are above criticism or reproach. Asking anything else from them is to be ungrateful.

Obviously, this is a provocative and hyperbolic way to phrase an idea that I believe underpins a wider array of complaints and talking points. Discussions about the community being "demanding" or "entitled" might sometimes be true, but often the above concept undergirds such discussions.

Obviously, I *am* thankful that people have contributed to open source. All engineers have benefitted immensely from the open source community, the result of countless engineers volunteering untold human years of their labor, for free, to create something for all of us. But I think that the above idea is to badly misunderstand the relationship between the open source maintainer and the community who use their code. From this misunderstanding an untold number of frustrations and hurt feelings arise, and I'd like to make it stop.


## Gift vs. Role

I believe that the entire problem stems from a mismatch between how various people view the roles of various people in the open source community. Some people view open source as a gift, while others view open source is more like a role. Both are right, but only in the correct circumstances.

See, giving to the open source community is a gift. If you release a script, contribute a patch, or craft a logo for a project, you've given a thing to the community. Chances are you are completely done with whatever you released; the project will take responsibility for the patch, use the logo, etc. This one time transaction provides little expectations on either side of the transaction, and it's a one-time deal.

Running a project is *not* a gift, it is a role. And like all roles, they come with a wide arrange of benefits and ~~responsibilities~~ expectations (more on this in a minute). The scope of these benefits and expectations scale with the scope of the project, bigger projects both come with more benefits and higher expectations among a wider arrange of end users. Typically the success of the project, and the nature of the benefits conferred to the creator, hinge upon the successful management of the expectations created by the project. This is an ongoing, two directional interaction between the creator and user which makes the above mentioned "gift" model completely insufficient.

Neither model is completely correct, they only apply in certain circumstances. At the extremes this is extremely obvious; the contributor of a single patch has very little obligation to continue to interact with the community, while someone who creates an operating system does. Thankfully the resources to help manage these expectations often rises with the success of the project; the creator of a popular operating system has orders of magnitude more resources at their disposal to interact with the community compared to someone who releases a few scripts on their Github account. What mostly remains is the awkward gray area; semi popular repositories with a sole maintainer, or projects that are clearly on their way to widespread adoption but aren't there yet.

## Expectations

Before I continue to what the actual expectations might be, I'd like to expand on why I said "expectations" and not "responsibilties". This difference is mildly subtle, but extremely important to my core argument.

The difference between the two is force. An expectation is a social pressure to perform some task or duty to some specified level of completion, while a responsibility is an expectation with the risk of negative consequences added on. Responsibilities typically involve the ability for a separate party to impose negative consequences on the responsibility holder if they fail; bosses can fire employees, people can dump/divorce their significant others, governments can jail those who don't follow the laws, etc. This power to unilaterally impose negative consequences is a large part of what makes a responsibility a responsibility.

In the open source world, there are very little mechanisms available to force a maintainer to adhere to social expectations, reasonable or otherwise. The community can apply a large amount of social pressure on the project by complaining, forking, or abandoning it, but they have no means at their disposal to force the maintainer to change their behavior. If the maintainer simply does not care what others think of them, then there is little the community can do.

Of course, failure to meet expectations might eliminate some of the benefits of leading a community. This might involve loss of speaking opportunities, loss of users, or hostile forks springing into existence. But none of these are really punishment per se, and none remove the maintainer. All of these are just a loss of the benefits that would have been extended to the maintaier if they'd met the expecations of their peers.

# What *Are* These Expectations

Up until now, I've been hand waiving this idea that the community has expecations, but I've totally neglected to actually list any of them. I have also totally failed to specify if these expectations have any value to them, e.g. are they good or bad?

Assuming good faith, these expecations are typically good, but run the range in terms of feasability and utility. It's up to the maintainer to respond to highly feasible and useful expectations, politely dismiss unfeasible ones, and tell the difference between the two. Exactly how to evaluate an expectation depends on the nature of the project; the maintainer of a language has to think very far ahead compared to frameworks and libraries, which will change the calculus of the maintainer.

Adding complexity to this, expecations can be managed with good communication. Highly successful projects often negotiate expecattions up front in their documentation or bug tracker, disuading users from making requests that will likely result in failure and hurt feelings. This explicit setting of expecations up front can go a long way to reduce maintainer workload, reduce user frustration, and probably goes a very long way to explain the subjective differences between open source communities.

Here is a non-exhaustive list of possible community expectations, and my feelings on them.

## Bugs, Questions, and Documentation

Any project of significant size will produce a large number of the above, and they're often interrelated. They also can't be ignored if you want a non-trivial user base, as issues surrounding the above are serious turn offs and major causes for users abandoning a project. Bugs in particular should be triaged at a reasonable rate, as they're often causing non-trivial end user pain.

These types of issues are also canaries in the coal mine for your project. Large numbers of questions or bugs around a certain topic is a warning sign that either the documentation or design is deficient in some way. Conveniently they are also often easy ways to begin to involve the community in the maintenance of the project, as these types of issues are often easily handled by someone other than the maintainer.

## Feature Requests

Features are a tricky subject to handle, since some features are tiny and others are massive. The more complicated the project, the more clear that the maintainer should be about the slowness and downsides of feature requests due to unintended consequences and feature bloat. Well designed feature request templates go a long way here, as does some community process to gauge potential user rates.

It's also really common for some projects to never accept features. Programming languages in particular are at extreme risk of features creating unintended consequences, and many just don't accept feature requests. I think this is fine, but it's probably best to make a note about that if a lot of users keep asking.

## Code Quality

Code quality, and the risk of exploits and bugs are an extremely common source of friction. Sometimes the issue at hand is about code style, an issue which is commonly contentious and rarely fully resolved. In these cases I suspect that the best the maintainer can do is set down code style guidelines and deal with a large number of tickets. In other

## Architecture & Language

# Counter Arguments

## But They Did it for Free

The single most common complaint is that open source maintainers are not financially compensated for their work. And while the financial compensation of open source maintainers is a very large and very real issue, one that is beyond the scope of this article, I do not believe that this is strictlry relevant to the question of maintainer-community interactions.

First, all maintainers should know that their work will be uncomponsated by the community. This has been the state of affairs for a very long time, and should have been extremely apparent to any prospective maintainer. The lack of paid compensation for otherwise valuable labor is a fantastic reason to not maintain a project, it's not a great reason to totally ignore a large portion of what is necessary to actually maintain a open source project.

Secondly, successful open source maintainers are expecting their users to take a risk on their project. The larger the project, the larger the risk. If you've written a programming language, web framework, database, or similarly high profile open source library, you've asked your end users to trust your work to not fail them in production. While they might not be directly compensating you, they are often giving the maintainer a large amount of trust back, which the maintainer should honor to some degree.

Finally, while the community might not financially compensate the maintainer directly, successful maintainers are often rewarded by the community for their efforts. High profile open source maintainers often have access to jobs, speaking, sponsorship, and consulting opportunities that are not available to all of their peers. These opportunities are indirectly available because the community spent a large amount of their time convincing their peers to use the project, eventually building up the momentum necessary to deliver these benefits. These benefits are available because the community helped push for project adoption, and are largely contingent on meeting community expecations.

## The Community is Entitled

Words like "entitled" have a very perjorative edge to my ears, which always puts me on edge for bad faith arguments. Also I've been called "entitled" by a maintainer before in a high profile way, so I always react to that word negatively.

That being said, any project with a large number of users will end up with a large number of bugs and feature requests. That's just a natural consequence of success. So the question is: is the community entitled, or is the maintainer simply overwhelmed?

This question is impossible to answer in a universal way, it's just too situationally dependent to answer here. What I will say is that it's important to remember that *you* hypothetical maintainer did convince a bunch of your peers to depend on your project. It's entirely unreasonable to ask a large number of people to depend on your code, and then be angry once they discover bugs or want new features; one follows the other.

That being said, if the number of bugs and feature requests are truly overwhelming, it's probable that something else is wrong with the project structure causing the issues. Sometimes the fix might be as simple as realigning expectations via documentation (e.g. "We value speed over everything, and will accept less safe code for performance reasons"), or a more efficient social structure within the project. It's not uncommon for the maintainer to become the bottleneck for all changes to the project, including minor bug fixes, which both burns out the maintainer and leaves the community feeling ignored. There are a variety of social arrangements that projects can adopt to reduce the risk of this, and potentially better leverage the talent of the community to drive the project forward even faster.

# Flagship Projects



## Too Many Tickets

One of the most common and tragic events in open source is someone creating a project and then becoming overwhelmed with bug reports and feature requests. This is extremely common for what I would call "flagship" open source projects; languages, web frameworks, database drivers, basically anything without a descriptive name that a lot of people recognize instantly. More thoughtful leaders might mention how exhausing community management is, but it's common for maintainers to talk about how "demanding" or "entitled" people are.

Simply put, if you make a large open source project, you have made a community. If you wish for more people to use your project, which I assume is a goal, community management is now part of the process. You can deny this at your peril, but successful projects must find a way to grow a healthy community and a healthy codebase. From the maintainer's perspective there are a ton of needy users with bug reports and feature requests, which can be overwhelming. But from the user's perspective *you convinced them to use your project*, which means they will come to you when bugs in the project crash their work server. Finding some mutual understanding across this interaction will go a long way to make everyone happy.

This is tragic, because it's pretty rare to find someone who is both willing to do all the work to create a flagship open source project, and who also wants to handle a community. It is relatively common to find people who are driven to create a new X, but discover that they hate interacting with the X community once done. Aside from this being a fantastic reason to quit maintaining a large project, I would highly recommend that open source maintainers find someone in the community to help them run the community; this is likely to work out better for everyone in the long run.

Also, ban people who are assholes in the bug tracker, explicitly and quickly. Life is too short to deal with assholes.

## Fights Over Code

Another common point of tension between maintainer and user are bugs in the code, especially subtle edge cases that might be hard to close off. Occasionally maintainers can become very sensitive about the code that they wrote, causing friction and bad blood between the maintainer and the community.

While I understand being sensitive about code, I'm no saint in this area myself, a bit of context is really important here. The maintainer is *asking their community to trust their code in production*. If the end users feel that the code is unsafe, their fears must be allayed or they will leave.
