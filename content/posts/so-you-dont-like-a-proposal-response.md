+++
title =  "So, you don't like a web platform proposal, a response"
date = "2023-07-23"
Categories = []
+++

# Introduction

I regret to inform you that I am once again, mad on the internet. 

There is a new Chromium proposal that's officially designed to cut out click fraud on the web by allowing the server to automatically inspect and validate the hardware, OS, and browser state of the client. Given Chrome's market dominance, it's expected that this feature would rapidly become an industry norm if released.

The community freaked out. A lot of people had concerns about how this capability might be eventually abused to restrict competitive browsers and tools used to block ads. To the authors' credit they did include a section about risks, but the technical details were too light to be persuasive in my opinion[^manager-hat]. Eventually Yoav, a high level Chromium contributor, stepped in to do crisis comms and it did not go well. As of this writing the repo is locked, always a sign things have gone from bad to worse[^locked].


[^locked]: "For the weekend". I have never, ever seen locking a repository in this situation go well. Pruning non-constructive, abusive, or repetitive comments in these situations is a very fine art. Outright locking discussion, even temporarily, tends to piss people off and rarely results in cooler heads prevailing. 

[^manager-hat]: I might do a followup on this later, but I have my manager hat on right now. So it's time to think about people and process.

Yoav decided to provide some public [feedback](https://blog.yoav.ws/posts/web_platform_change_you_do_not_like/), and frankly it had me seeing a bit red. I think that this blog post was both counter productive to Yoav's goals, and presumes that the problem lies entirely with the way that the community interacts with Chromium project leaders, and does not even broach the possibility that the Chromium devs and the proposal authors might have opportunities to improve.

While I obviously have my complaints about the proposal itself, I want to focus on what a failure in community communication and crisis management this blog post was. If Yoav wanted cooler heads to prevail and to guide the discussion back towards what he sees as productive, this was not the blog post to write.

A bit more broader, this post seems to demonstrate a high handed attitude towards community feedback, which is worrying. I would implore Yoav and his peers to rethink how they interact with the community during these moments of crises, and reflect on whether or not the attitude he expresses how he wants to be seen by the community writ large.

# The Post
## Yoav's Introduction

> You wake up one morning, scrolling the feeds while sipping your coffee, when all of the sudden you land on a post related to a web platform proposal that you really don't like. Worse, one that you believe would have significant negative consequences on the web if shipped?

> At the same time, there are some pitfalls you may want to avoid when engaging in those discussions.

If I may offer some rhetorical critique, the paternalistic tone here does not work. Yoav is not a neutral party in this discussion, he's chairing this proposal to guide it through public criticism and the review process. Taking a high handed approach explaining what tone they should use to persuade you to stop doing the thing that you’re doing is not convincing. 

## It’s just a proposal we swear 

> Often a proposal is just that - someone trying to solve a problem by proposing technical means to address it. Having a proposal sent out to public forums doesn't necessarily imply that the sender's employer is determined on pushing that proposal as is.

Technically speaking, he's right. Creating a proposal does not at all imply that one's employer is intending to ram things through. But it's also not inconsistent with it either, so a wise person would be well suited to look at other evidence before jumping to conclusions. 

But wait, why are we talking about employers at all here? Isn't Chromium open source? Who wrote this proposal anyways?

- Ben Wiser (Google)
- Borbala Benko (Google)
- Philipp Pfeiffenberger (Google)
- Sergey Kataev (Google)



[^chair]: Yoav isn't an author for this proposal, but he's "chairing" it. Which means he's basically helping it through the process and doing public comms. This is almost certainly a necessary role for a controversial proposal, but the chair has a decent amount of influence so his employer matters even though he's not an author. As we’ll see in a bit, he also is one of the final gate keepers for these types of changes. His opinion matters a lot. 

So four Google employees wrote a proposal, a fifth employee is chairing[^chair] it, and they intend to add it to Google's majority market share browser and the community is concerned about the interoperability and privacy implications of this proposal, including concerns that the authors have not responded to[^concerns]. This obviously isn't proof of conspiracy or malicious intent, but it's not hard to see why someone might think so. I don't think that dismissing people's concerns about it being driven by Google out of hand is going to convince anyone. 

[^concerns]: I’ll get into it in another post but this proposal is very thin on details, and does not provide convincing controls to potential sources of abuse. There is a good reason people are suspicious of this already heading into the prototype stage.

Saying something to the effect "we weren't ordered by Google managers to do this" is also to miss the point quite a bit. We have quite a bit of real world experience of how organizations can encourage employees to do unethical or outright illegal[^wells-fargo] things without giving them explicit orders. Humans are social creatures, peer pressure and prevailing norms are much more effective on us than we'd often like to admit. Constant pressure to improve company metrics and a culture that devalues the concerns of those outside of the company is quite a powerful combination. 

[^wells-fargo]: This is basically how Wells Fargo got its employees to [defraud customers](https://en.wikipedia.org/wiki/Wells_Fargo_cross-selling_scandal) without executives having to tell people to go do fraud. This kind of stuff happens all the time. 

> It also doesn't mean that the proposal is "done" and the proposal authors won't appreciate constructive suggestions for improvement. Different proposals may be in [different stages](https://blog.chromium.org/2019/11/intent-to-explain-demystifying-blink.html#:~:text=Step%201%20%2D%20Initial%20research) of their development, and early stage proposals are often extremely malleable.

They aren’t actually malleable though, at least not in a substantive way. I asked Yoav by what process the proposal might not be modified, but abandoned entirely. The answer was “Presenting unmitigated risks that outweigh the benefits of the anti-abuse use cases, and that go beyond the status-quo of device fingerprinting could be one way of convincing e.g. the [Blink API owners](https://blog.chromium.org/2019/11/intent-to-explain-demystifying-blink.html#:~:text=What%E2%80%99s%20an%20%E2%80%9CAPI%20owner%E2%80%9D%3F) not to approve this proposal when it reaches an Intent to Ship stage”. 

Again, you can swear up and down all you want that the proposal isn't final, but this sentence and the block quote are mutually incompatible in practice. Only if you provide "unmitigated risks" that outweigh the "benefits" of the use case[^use-case] after the code has been implemented, tested,  shipped behind a feature flag, and beta tested by public users, only then do you get a chance that it might get rejected. The proposal might not be "done" in the most technical sense, but if you or the community thinks the proposal is fundamentally bad it's damn near a fait accompli. 

[^use-case]: And we'll soon see, arguing about the use case is explicitly called out as pointless.

Oh, and the final step is it's enabled if 3 of the 10 Blink API Owners approve. Seven work for Google, including Yoav. If I was going to design a process designed to look open normally while also tipping the scales so that controversial proposals from Google usually make it through, it would look exactly like this. 

And the community **knows** this. People aren't dumb, especially since the process documents are public. Providing assurances that the community finds non-credible is a very bad strategy for calming things down. 

## On Occam and his razor company

> When thinking about a new proposal, it's often safe to assume that [Occam's razor](https://en.wikipedia.org/wiki/Occam%27s_razor) is applicable and the reason it is being proposed is that the team proposing it is trying to tackle the use cases the proposal handles. While the full set of organizational motivations behind supporting certain use cases may not always public[^crazy-pills] (e.g. a new device type not yet announced, legal obligations, etc), the use cases themselves should give a clear enough picture of what is being solved.

[^crazy-pills]: This sentence makes me feel like I'm taking [crazy pills](https://www.youtube.com/watch?v=ilcRS5eUpwk). Doesn't this directly contradict an appeal to Occam's razor? Why even include this?

That's not how Occam's razor works[^conspiracy]. To be charitable I believe that Yoav was trying to reference the more general "benefit of the doubt", where when something is unclear you assume good intent until proven otherwise. 

[^conspiracy]: Occam is often invoked as a counter argument to conspiracy. This only really works for baroque, complicated ones. "We actually built rockets and went to the moon" is simpler than "NASA has run a decades long conspiracy with thousands of people in order to fake the moon langing and humble the Soviets a tiny bit in 1969". Sometimes hidden motives are simple though; "the ad company is modifying their browser to make it easier to sell ads" is a rather simple hypothetical scenario.

And in every day life offering individuals[^individuals] the benefit of the doubt is certainly good advice. Most people mean well-ish most of the time, so assuming good intent is a good habit.

But the "benefit of the doubt" does not require that we ignore past experiences. If some hypothetical individual repeatedly lied to you, you would stop offering them the benefit of the doubt. That's just how human relationships work; you can invoke the benefit of the doubt as a good principle all you want, nothing will require (or make) anyone trust someone they see as fundamentally untrustworthy.

And as I've written on this blog before, Google has spent a huge amount of its credibility with the public and the technical community itself. Obviously a lot of this centers around Google's troubled history with user privacy which is highly relevant in this context, but a lot of it comes down to Google just not being seen as keeping its word. Not only is this becoming a bit of a drag for some Google products[^stadia], but it's relevant here. There are aspects[^aspects] of this proposal that depend on quite literally on trusting Google[^validators] to do things like certify rival browsers **and never ever stop doing that**, with no mechanism in place to enforce continued good behavior.

[^aspects]: Again, there are more details than this. I will get into that in another post.

[^validators]: *Technically* Google will not be the only one that can attest to a browser's validity. But of course they're going to be the default for a lot of websites, including their own properties. If Google stops attesting for a given browser, then enough of the web becomes off-limits to that browser to render it unusable. 

I can certainly see how the authors might be able to convince themselves that they'll never ever break this, but from the outside this is equivalent to asking end users to trust that Google will never change its mind in a way that might bring anti-competitive benefits to Google itself. This *might* work with a company that has more user trust around this area, but it won't work with Google.

[^stadia]: This is probably a large amount of what killed Stadia, as a lack of user trust around Google's commitment to the project became both a drag on adoption, and eventually a self fulfilling prophecy.

[^individuals]: I say individuals here deliberately. Over the years I've come to the conclusion that it's much easier for large organizations to lie because responsibility and knowledge is diffused enough that nobody is truly responsible for an organizational lie. Therefore an organization is much more likely to be duplicitous than an individual is, at least in my experience.

As a matter of practical public communication, there is nothing that Yoav (or any of the proposal writers) can do to instantly fix Google's trust issue. Trust is built slowly and destroyed quickly, and very few individuals in Google have enough power to meaningfully change this, and even those individuals will need to work for a very long time to repair the damage that is done. But for the time being, Yoav and his colleagues can do a couple of different things to make this go smoother.

1. Do not appeal to the benefit of the doubt, or simply assert that no secret agenda exists. Those who don't trust Google will not believe you, those who are neutral will find it suspicious.
2. Tread gently around community concerns about interoperability, openness, and privacy. There's not much you can do to fix the credibility issue, but you can certainly make it worse by acting high handed or dismissive of community concerns.
3. Pre-prepare for push back on privacy and interoperability concerns
	1. Very, very carefully locking out abuse potential in the mechanisms of the proposal. No "we won't turn off holdback ever" or "we promise to always attest competitor browsers. 
	2. Work with people outside Google, ideally ones that don't depend on selling ads so that proposals don't look like they come from Google and Google alone.

# Legal Stuff

> The fastest way to get someone working for a large corporation to disengage from a discussion is by using legal or quasi-legal language. Such language will prevent them from replying to your claims without talking to their corporate legal counsel, which will probably mean they will _not_ reply to your claims. If you want to have a productive exchange with the folks making the proposal, it's best to not pretend you're a lawyer. (and if you are one, may be best to pretend you're not)

Two takeaways from this paragraph.

First, this is kind of giving the ball game away about this being a Google initiative, not one coincidentally written by Google employees. If Google employees working on an open source project are worried creating legal risk for Google the company and therefore said employees will not engage with discussions on the topic of legality[^gdpr], then perhaps the community is completely correct in viewing this as Google trying to force this through for their own benefit at the cost of everyone else. 

[^gdpr]: In an era where GDPR is a thing, avoiding discussing legality at all seems completely unfeasible. This stuff is going to come up at some point, even in open source projects.

Second, as a matter of tone policing "don't point out that what we're doing might be a crime" is unpersuasive. You are not obligated to take anyone's specific interpretation of the law as true, of course, but whether or not it violates the law in relevant jurisdictions is extremely relevant and on topic. You should either just drop the pretense of this not being a Google initiative and involve Google lawyers[^lawyer], or you should build a stronger firewall between Google the company and Chromium the project so that individual proposals cannot pose a legal risk to Google the company.

[^lawyer]: You should've run this by legal already, actually. Even if you have no legal liability personally, being involved in major litigation is a bad experience. 

Personally, I'd be privately thankful for the warning, being deposed sounds unpleasant, and have legal come up with a canned "thanks for the feedback, I'm running this past legal" response. That or not work on proposals that create legal risk. Either or.

# Lalalalala I’m not listening 


> In cases where controversial browser proposals (or lack of adoption for features folks want, which is a related, but different, subject), it's not uncommon to see issues with dozens or even hundreds of comments from presumably well-intentioned folks, trying to influence the team working on the feature to change their minds.

> In the many years I've been working on the web platform, I've yet to see this work. Not even once.

I'm trying not to be snarky, but I am struggling how to interpret this as anything other than "we do not listen to community feedback". Saying that you do not change your mind in the face of feedback as an individual is generally seen as a serious character flaw no matter how it's presented. If you've never seen people in this project ever change their mind about a proposal’s goal is a sign that something is catastrophically wrong with the process and the culture of the project.

I'm not saying that Chromium proposal writers need to change their mind every single time there's large push back, but it literally never working is a sign that something is very, very wrong.

> On the receiving end, this creates a deluge of emails that's very hard to sort out.

I can understand that this is frustrating but it seems like incredibly small potatoes when you're discussing features that impact this many people. A lot of people are worried about their privacy, their freedoms, and maybe their careers. Complaining about how this fills your inbox comes across as more than a tiny bit tone deaf.

Let me say this as snark-free as I can[^editing]; sometimes the consequence for power is more work. Nobody is forcing you to take such a prominent position at Google or Chromium or even on any given proposal. You volunteered for this, and you could easily stop doing it. Hell, you could probably keep your job at Google, with all the perks and compensation that includes. It's on you as someone with power and authority to learn how to deal with the pressure and noise of these moments, not on the rest of us to think about your inbox first.

[^editing]: This paragraph went through a lot of rewrites. 

> While some of those may be full of technical insights, it's very hard to find them in that pile and distinguish them from the other forms of commentary.

I guess only technical insights matter?

> So while it may feel good to join a good old-fashioned internet pile-up, it's very unlikely to lead to the outcomes you actually want.

Personally I think I’d take the large scale opprobrium of my peers as a sign I’m on the wrong path. This isn’t an internet pile on by random yahoos, but the expressed opinion of fellow engineers and IT professionals. Dismissing their outrage as a mere “internet pile on” is insulting.

Also, in the strongest of terms possible, **do not denigrate your angered peers and community as merely "trolls"[^trolls] or as participating in a pile on**. It's offensive, it never calms people down, and it can make you look worse in the process. Even related to your own goals, such comments are extremely likely to make the noise of feedback louder, and not quieter. I promise you that you can find ways to reference controversy and spirited[^spirited] discussion on certain issues without dismissing everyone as doing something fundamentally invalid. 

[^trolls]: Even the trolls, which there certainly will be. Prune trollish stuff away with a careful hand, of course, but even implying that the discussion is full of trolls is dangerous territory. 

[^spirited]: See? I did it just now!

# Use Cases

> In some cases, you may consider the use cases themselves to be ones you think shouldn't be supported on the web. If that's the case, if I'm being honest, you're up for an uphill battle.

If discussing whether or not the use case is soft off limits, then this is not an open process. Discussion about whether the problem needs to be solved at all should always be on the table[^can-should]. No honest comparison of benefits and costs can be honestly done if certain discussions about the proposed use case are framed as invalid or low utility. 

Presuming that the use case is valid and discouraging any discussion on the matter is a pretty nifty way to get unpopular proposals through the process. And people on the Github absolutely noticed this as well.

[^can-should]: That quote from Jurassic Park became a meme for a reason.

> If the proposal contains risks in terms of [compatibility](https://docs.Google.com/document/d/1RC-pBBvsazYfCNNUSkPqAVpSpNJ96U8trhNkfV0v9fk/edit), [interoperability](https://docs.Google.com/document/d/1romO1kHzpcwTwPsCzrkNWlh0bBXBwHfUsCt98-CNzkY/edit#heading=h.mxgkfxtgzxqs), or any other risks to the open and safe nature of the web platform, that's something worthwhile pointing out.

The proposal we’re discussing is a fundamental risk to the open and safe nature of the internet, as well as having extremely obvious compatibility risks. Many people pointed that out quite eloquently, and the authors didn’t respond and then locked the repo[^fairness]. While I'm sure that Yoav didn't intend it this way, it does feel a bit gas-lighty to suggest that people provide the feedback that they did provide, that thus far has been ignored, all to a forum that has since been locked.

[^fairness]: In all fairness, he wrote this before the repo was locked, and he was not the one who locked it. But he could acknowledge that some people did provide said feedback, just to be polite and fair. 

I mean, it’s good advice in general. But it tastes more than a bit bitter given the context. A single sentence along the lines of "some people did provide high quality feedback about compatibility and interoperability risks, the proposal authors are getting to it I promise" would have done wonders for this section.

> This should come without saying, but.. people are less likely to understand and internalize your constructive feedback when it's littered with distracting and unprofessional language.

I certainly agree that some level of professionalism makes sense, as does banning people who behave way outside the acceptable bounds[^moderating][^even-handed]. But in this discussion somehow "professional conduct" has somehow morphed into "you cannot discuss if you feel mislead". 

[^moderating]: Again, a _very_ light hand is required here. Go too far and it tends to turn the temperature of the discussion up, not down. Not many people like trolls, even ones they agree with temporarily, but feeling like legitimate discussion is being shut down is a sure fire way to get lots more people seeing red.

[^even-handed]: Also, be even handed in moderation. As I write this some abusive comments **supporting** the proposal remain up. People have very fine tuned hypocrisy sensors in general, if they think you’re moderating dissent more than consent they will get angrier. 

To be blunt, no definition of civility or professional conduct has ever required that someone accept what they believe to be misleading statements or harmful proposals without honest comment. It might impose limits on evidence and the way they bring up the issue, but there is no requirement to self censor. 

“Everyone pushing this works for the same organization that has incentives misaligned against the end user, and has a history of both lying about privacy and abusing its control over chrome to erode privacy and bolster their profits. I do not believe promises that this feature will not be abused, and I think someone might be lying to us” is not unprofessional. You might not *like* it, but that’s a different matter altogether. 

# Conclusion

> Obviously, the above doesn't guarantee that the next point of feedback you provide on a proposal would be accepted and integrated. But at the same time, I think these guidelines can increase your chances of being heard and impacting the outcome of the discussions you're involved in. And after all, that's the point of getting involved, right?

As I said at the beginning, the entire framing of this article is that the community is Doing Engagement Wrong, and at no point does Yoav engage with the possibility that maybe people are angry because they feel not heard. Aside from the technical merits of the proposal itself, I think that this is an counter productive way to respond to controversy and a destructive way to run a community. I encourage Yoav and his peers to find a way to listen to the community as readily as he's willing to talk at the community. 
