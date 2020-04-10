---
title: "Two Open Source Models"
date: 2020-04-10T06:23:27-07:00
---

# Two Open Source Models

I have repeatedly seen clashes between users and maintainers of open source projects over who “owes” whom what, and I believe that these clashes come from a difference in mental models that are not explicitly stated. These clashes result in hurt feelings and the occasional accusation of entitlement or elitism, exacerbating the problem.

The heart of this disagreement can be simplified as such: are open source maintainers giving a free gift to the community, or are they fulfilling a role that comes with privileges and expectations? Neither model is completely correct, but problematically maintainers and users tend to adhere to different models, causing conflict.

## Open Source as Gift

To be clear, open source maintainers give a large gift to the community, for which we should all be thankful. Engineers lives have been massively improved by the gift of open source software, including everything from languages to entire operating systems. I do not want to go back to the 1970s when most compilers cost money.

Given that software engineering is a very expensive skill set, and that tons of for-profit endeavors will be supported by open source efforts, there is a lot of truth to viewing open source contributions as a gift. Every open source maintainer, large or small, could have used that time to either work for profit, or spend that time away from the computer doing other things. That they spent some of their limited time giving away an expensive skill set is something we should be thankful for.

The problem with viewing open source purely as a gift is that it puts the maintainer up on too much of a pedestal. Open source projects are a two way street; highly successful open source projects depend heavily on community contributions in the form of everything from patches to documentation and advocacy. No open source project succeeds without a large number of unrelated engineers staking out their reputation on projects they did not write.

## Open Source as a Role

The other way of thinking about open source projects, especially large ones, is that maintaining them is a role. Like all roles, they come with both privileges and ~~responsibilities~~ expectations (more on that later). The amount of the former given to the maintainer(s) is partially a function of how well they meet the latter.

For very large projects, this is typically about some level of responsiveness to community problems and inputs. While not every suggestion should be taken, it is important that the maintainers be seen being somewhat responsive to any legitimate concerns from the community. At the minimum this should involve some level of response to bugs and problems, as well as clear rules and expectations for contributing (more on that later too).

Why should maintainers do this? Practically speaking, maintainers get social and monetary perks that are in line with how many people use their projects; highly successful projects often land the creators lucrative speaking and consulting opportunities. If a project is going to continue to be successful, it needs to be somewhat responsive to the community; anything else will eventually drive people away.

Ethically speaking, it’s kind of shitty to encourage your peers to use your project, possibly in production, then turn a cold shoulder to them when they run into problems. People bet companies and careers on non-standard languages and projects; leaving them high and dry when it’s not convenient for you isn’t a great look.

## Conclusion

So, which is right? Neither is completely correct. While maintainers clearly owe their community _something_, at least if they want to continue to have a community, the fact that they’re doing this for free also gives them a lot of latitude to ignore some requests. While my gut instinct is that the “role” aspect increases with community size, it’s also true that larger projects took more of the creators time, increasing the “gift” aspect as well. 

While I can’t provide a concrete statement about which model applies when, I think that it’s important that both sides of the conversation understand that the other model exists and is valid too. Users should know that maintainers have given away a lot of free time and can’t (and shouldn’t) accept every single suggestion and bug request from every user, while maintainers should be mindful that end users have taken a bet on their project and they will not continue to have users if they’re totally ignored or abused.

In short, have some empathy people.

## P.S

### Expectations vs. Responsibilities

Open source roles come with expectations, not responsibilities. Responsibilities are expectations backed with the threat of force; fail at your responsibilities at work and get fired. In open source, there is no method of forcing a maintainer to do anything, therefore they have expectations and not responsibilities. If a maintainer does not care if they lose users, there is no meaningful way to force them to change.

### On Contributions

One of the more tricky areas of open source projects is the subject of contributing code. Some maintainers welcome all additions, while others fear that any external change might muddy their designs. 

While I don’t have an opinion on what contribution model is best, I do think that it’s necessary for every open source project to make the contribution process **crystal** clear. If your project only accepts changes from the creator, I’d rather know that before spending my time creating patches that will eventually be rejected. Vague rules around contribution only increases the workload of the maintainers while pissing off the community; it’s a lose lose. 

