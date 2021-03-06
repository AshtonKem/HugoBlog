+++
title = "Octopress"
date = "2013-04-22"
aliases = ["/blog/2013/04/22/octopress"]
Categories = []
+++

I'm currently in the process of changing my website over from Wordpress.com to Octopress on Github pages. There are two things driving me from Wordpress.com: control and price.

Wordpress is fine if you are either a big PHP afficianado, or are afraid of web programming in general. It's quite easy to install themes and plugins without any knowledge of what this means. However, this only is true if you're self-hosting Wordpress.org (the project) and not using Wordpress.com (the commercial website using Wordpress.org). On Wordpress.org you're stuck using a limited number of (mostly for pay) themes and plugins, and are restricted from inserting HTML, JS, or CSS into your website.

So if you want Google Analytics, you'll need to use a third party CDN who can inject the Google Analytics JS into the DOM. No thanks. If you want any social networking integration, you better hope that Wordpress.com supports it (sorry, app.net users!). And if you want pictures or other media, you'll have to manually control the links to a third party system or hope that you don't exceed the cheap data storage tier on wordpress.com.

So what's so great about Octopress?

1. Free or cheap hosting wherever.
2. Easy dev preview.
3. Version controlling.

Octopress uses Jekyll, which makes it really easy to separate content from presentation, and produces purely static webpages that can be tossed onto any webhost. It also has great integration for thid party systems, and adding your own is only a hop, skip, and a bit of JS away. Local development is super straightforward with the `rake generate` and `rake preview` commands, which produce static HTML and a testing webserver, respectively. And everything is stored in Git, so upgrading is only a matter of merging (!), and you can host on Github by pushing to the correct repo  (or use `rake deploy`). And since your side is code, you don't have to count on flimsy undo support, merely revert commits as needed to go back in history.


So far the only hiccup is moving all of the comments over from Worpress to Disqus. All of the docs on this I've seen are out of date, I'll report if I get this working.
