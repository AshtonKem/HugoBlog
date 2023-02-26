+++
title = "Telemetry and Trust"
date = "2023-02-25"
Categories = []
+++

I recently read an [article](https://twi.github.io/blog/making-go-telemetry-opt-in-is-a-mistake.html) about Go opt in tracking being a mistake. The author was very earnest about the pros of compiler tool chain telemetry, how it was very common among Google and Go's competitors, and how opt in tracking would skew the data set. Their general argument was that anonymized telemetry is extremely useful for compiler writers, and that shifting Go to opt in rather than opt out doesn't help user safety and reduces the ability of the Go team to correctly steer their important project

Reading the article I was struck by a feeling of "I'm confused 
why you're confused"[^confused]. The author made a ton of great points, but to me they missed the main problem completely. The issue never was telemetry, the issue was Google[^go]. Very few people trust Google anymore, and therefore the problem was that the telemetry suggestion came from Google. Focusing on the pros and potential safety rails of an open telemetry system is not wrong per se, it's just completely orthogonal to what got everyone worked up in the first place.

[^confused]: I'm not actually certain if OP is confused. But this is the short hand phrase I say when some extrenal problem is immediately obvious to me, and I'm confused why someone else doesn't focus on same thing I do.

[^go]: I believe that the official line is that Google doesn't own Go, it just happens to employ everyone who is on the core team. I find this unpersuasive.

Google as an organization has spent its credibility, both among the larger public and among engineers. It spent its credibility [misleading consumers](https://www.forbes.com/sites/zakdoffman/2021/03/20/stop-using-google-chrome-on-apple-iphone-12-pro-max-ipad-and-macbook-pro/?sh=2786a7444d08) about the privacy implications of its actions, it spent its credibility by carelessly [killing off](https://killedbygoogle.com/) services people loved, and it spent its credibility by [regularly breaking](https://steve-yegge.medium.com/dear-google-cloud-your-deprecation-policy-is-killing-you-ee7525dc05dc) non-Google developers stuff. And like many large organizations it has made the catastrophic mistake of assuming that its size, money, and market penetration means that its credibility does not matter. And now they're discovering exactly how wrong that assumption is. 

In this specific case, google is discovering that low credibility makes anything involving public consent really hard. Easy things become difficult, possible things become almost impossible, and prophecies become [self fulfilling](https://techcrunch.com/2022/10/01/stadia-died-because-no-one-trusts-google/). Even when the Go team goes way out of their way to demonstrate good intentions, people don't believe them. And of course they don't! It's not like we've all seen Google sneak in privacy defeating "features" under the guise of performance or safety before. Why shouldn't people assume that this data collection proposal won't be abused? 

No amount of promises, analysis,  or poorly advised [accusations of trolling](https://research.swtch.com/telemetry-opt-in)[^trolls] is going to overcome an issue of people not trusting you. In fact it probably makes the problem worse, not better. The only solution for low credibility is to take the long, incremental, and unpleasant steps required to repair that credibility. Opt in telemetry is probably a good step in this direction, or it would have been if they'd not been dragged kicking and screaming to it.

[^trolls]: Seriously, don't call concerned end users trolls. It will never work out for you.
