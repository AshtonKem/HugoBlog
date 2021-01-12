---
title: Parler, AWS, and the ACLU
date: 2021-01-12T01:00:00-07:00
---

# Parler, AWS, and the ACLU

Parler was recently kicked off AWS, and as of this writing is currently offline. I would be fairly surprised if we see it come back online anytime soon.

I was only mildly surprised to see the ACLU step in to make arguments on Parler’s behalf, but not that surprised. Free Speech law and general advocacy almost universally involves defending speech that is either unpopular or said by repulsive people; popular speech is rarely first up to be banned. Usually suppressing unpopular speech is the first step to more general suppression, which is why groups like the ACLU often end up defending the speech of unpleasant people.

But I was deeply irked to see this sentence from them:

> But there is a difference between a social media platform like Twitter, which is a speech community, deciding who its members are and what its guidelines should be, and a company like Amazon that really holds the keys to the internet.

This is objectively nonsense. The implication is that AWS has the power to deny companies and people the ability to host their content online based on their political views, “mob” sentiment, or whether or not Bezos personally hates you. This does not hold water. Not only does it not hold water, this statement by the ACLU can be interpreted in some fairly authoritarian ways, which is less than great.

Here are the best arguments I could think of for making AWS take Parler back and why they’re all wrong.

## On Monopoly

Typically the first argument here is that AWS controls so much of the market place that their ability to deny you access to their services is a death knell. The person making this argument will occasionally self consciously call AWS a monopaly. Once you do any research on the subject, you'll realize that not only is this not true, it's almost hilariously not true.

AWS has competitors, big ones. You can probably name two, and Oracle deeply wishes that you'd name three. Even if we just restrict ourselves to “the cloud”, you already have at least three or four options; more options than you have purchasing a cell phone in the US, both in terms of contract or ecosystem.

Oh, and AWS themselves estimated that only 4% of companies[^cloud-usage] are on "the cloud", any cloud. That only leaves a measly _96% of companies_ that are using hosting providers that aren't in the big three.

Secondly, there are a lot of hosting providers. By most estimates AWS isn’t even the largest hosting provider in the world; it’s estimated that GoDaddy hosts a bit under twice as many websites (not companies) as AWS. There are literally _hundreds_[^hundreds] of hosting providers of various different sizes, capabilities, and prices all within the US. In a very real way, the average American might have more hosting providers than local food options. There is no monopoly in this market, and there are too many for there to be a meaningful cartel.

And that’s before we even mention self hosting. There are a literally uncountable number of places one could co-locate servers or reasonably build a datacenter. 

No, there is no plausible claim that AWS has a monopoly hold on internet hosting.[^career]

[^hundreds]: I found a list with "101+ Hosting Providers to Try in 2021" and decided that that was enough, thankyouverymuch. 

[^cloud-usage]: I think engineers often underestimate how much the thought leadership of FAANG and other top tier companies affect perception far ahead of reality. Not everyone is on AWS, even though everyone _talks_ about AWS. This is the exact same process that leads engineers to talk about Rust and act surprised at how much PHP is still being written.

[^career]: I sat down and counted how many jobs I'd had that depended wholly on AWS, and I got 2/6. 3/6 if you raise the bar slightly to "Depends heavily on AWS". Everything else used other hosting providers, other cloud providers, or on-premise servers. AWS doesn't even have a monopoly on my career, let alone the internet.

## On “The Mob”

Side note: I find it frustrating that less than a week after a literal mob stormed the Capitol to assassinate multiple members of Congress that people are still trying to compare public outrage on social media as a mob. Twitter outrage can be scary, but please come up with a new term.

The second theory is that public outrage is so strong that no hosting provider will ever provide for such unpleasant services.

So, um, why is 8kun still up?

Like “cancelled” celebrities going around talking about their “cancellation”, the ability for the crowd to actually take these websites down is overstated. It happens, obviously, but it doesn't seem to happen anywhere near as often as we talk about it. LiveLeak is still up after videos of the Christchurch mosque shootings were posted on it. 4chan is still up. ZeroHedge[^zero] is still up. Controversial websites either find companies that don’t mind hosting them, self host, or move their hosting to countries which either like their content or don’t care about its unpopularity in the America. There’s a reason why 8kun is hosted in Russia, for example.

[^zero]: I must admit that I was a bit baffled to find out that ZeroHedge got blocked by Australia during the Christchurch Mosque Shootings. I remember ZH as putting up a few nutball financial pieces that I found mildly interesting back when I worked in finance, but not something I cared to actually follow. I guess I should've seen that turn coming, in retrospect. 

Parler is not being forced offline by outrage; that is only the proximate trigger. If they want to they can find new hosting companies that don’t care, or find a new jurisdiction where social outrage in America won’t have any effect.

## On Net Neutrality

As a society, we’ve decided that you have a right to purchase certain goods and services based purely on your geography. It doesn’t matter how much of an unpleasant jerk you are, you still have the right to purchase electricity and water from the utility company, and nobody can stop that. 

Utilities also don’t have a right to tell you what to do with what they sell you. The power company can’t say “You can’t power sex toys with this, that’s gross”; and it’s good that they don’t have that power[^pun].

[^pun]: Pun absolutely intended.

ISPs are not currently in that category, even though there are lots of good arguments that they should be. I personally am very pro net-neutrality, for what it’s worth, and I think that we as a society should classify ISPs as a utility.

Does that affect the Parler/AWS issue? No. Because I don’t think that AWS is anything close to an ISP or a utility.

The primary reason why we’ve decided to treat utilities that way is because infrastructure doesn’t scale. For most utilities, it is not physically possible for another company to spring up and duplicate every power line or water pipe in order to offer a parallel service[^electricity]. It is effectively impossible for there to be anything but a monopoly for utilities, so we regulate them much more heavily.

Secondly, utilities offer a commodity product. Electricity is electricity, all tap water is treated to EPA limits, and you don’t really care about different ways your sewage and trash could be processed. There is no space for innovation in this area, because they all produce a commodity product that’s produced to a universal standard.

I think that ISPs fit neatly into this mold, but I don’t think that hosting companies do. Hosting companies do not have the same space and cost limitations that your water company does; if you wish to buy hosting from Kazakhstan then you’re free to do so. Hosting companies also do not offer a uniform product; AWS is not the same as GCP which is not the same as GoDaddy. The choice available to the end consumer is actually breathtakingly large and diverse, unlike power and water.

[^electricity]: Electricity is one of the more deregulated utilities in America. In some states consumers have the right to purchase their power from an independent provider, with green energy being a popular choice. This works by separating generation from transmission. If you use this option you end up separating your bill and paying part to the generator, and part to the local monopoly utility company for delivery into your house. It’s possible ISPs could work that way, I don’t know enough about ISP grade hardware to know.

# What Actually Happened

What actually happened was a complete and utter failure of planning on Parler’s side. Well, multiple failures of planning[^hacked][^okta], but we’ll focus on one.

[^hacked]: I mean, they did get hacked. If anything else, I bet this hack prevents a comeback.
[^okta]: Getting caught using a [_trial_](https://twitter.com/okta/status/1348191370528256002) version of Okta was both stupid and hilarious.

Having a single hosting provider is a risk. Having one that requires deep integration into your technical stack is a bigger risk. Doing that while being aware that you’re controversial is foolhardy to a degree I can’t imagine. Sane businesses try to avoid risk as much as possible, or at least create contingency plans for cases where the risk is worth the reward.

Knowing everything that we know about Parler, choosing to deploy on AWS was a huge risk. They should have known that they would be controversial, and they should have had a backup plan that doesn’t involve trying to sue one of the richest companies on the planet on [flimsy legal theories](https://twitter.com/questauthority/status/1348686562415042561). If I were them I wouldn’t have started off with AWS. Or, if I had I would've migrated a few years ago as the heat began to rise. Or, at least I would've written a plan and practied a migration at the very minimum. Literally _anything_ other than letting an entirely predictable problem catch them flat footed.

That they weren’t ready for such an obvious risk is their problem, not ours as a society. Companies far less controversial than Parler have contingency plans if they need to leave AWS; a failure of planning on their part does not create an emergency for the rest of us.

# Why It’s Worrying

The ACLU’s comments leave open an interesting question: So what are they actually proposing?

It’s possible that they’re just commenting on this socially. In which case I really wish that they’d consult with engineering experts before making such obvious mistakes. Complaining that AWS didn’t provide a reasonable time window for them to migrate is one thing, claiming that they have the “keys to the internet” is another. Although if this really just comes down to process complaints, it’s not exactly clear why the ACLU is stepping in at all. Complaints about how big cloud providers offboard users feels like something that the EFF is much better positioned to handle, in my opnion.

It’s also possible that they’re recommending that something be done, which is scary to me. It is not uncommon to hear calls for the government to step in here and force companies to do something for the sake of “free speech”. Given that the ACLU primarily deals with the government, I have a hard time not jumping to that assumption myself even if it’s not explicitly said.

I don’t expect a lot of people to feel sympathy with the trampled rights of large corporations, but the idea that the government would step in and force companies to do business with someone against their will[^cakes] is quite alarming. That is a wildly dangerous power to hand out to a government, and it is one that will be abused eventually. Where exactly does that power end? I’m not exactly sure, but I can't imagine it being good. 

To my eye, there isn’t anything here for the ACLU to weigh in on, and I’m disappointed that they’ve decided to come out so disastrously on this one.

[^cakes]: It’s common to hear a complaint about “but you made that baker make a gay wedding cake”. The theory for anti-discrimination law is that it is based on immutable characteristics, and that the government has a compelling interest to ensure that people aren’t discriminated against because of who they are. These laws apply to things that you can’t control, such as your race and sex, but not to things that you can control such as your political affiliation or speech. The case for state intervention is always weak when viewed individually, I’m sure there were other bakeries available, but strong when you consider the effect in aggregate. America has had periods of history where common prejudice among the majority can effectively lock out minorities from any kind of social or economic interaction or betterment. The state has a compelling interest in preventing that. 
