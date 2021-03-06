+++
title = "Org Mode"
date = "2013-11-04"
aliases = ["/blog/2013/11/04/org-mode"]
Categories = []
+++

Recently I've taken interest in making myself more productive, and at
least so far it's going well. I personally attribute part of my current
productivity to a new "shut up and get back to work" mentality, and
partly to a new (to me) organization system.

The problem I've had is that every single organization app is broken in
some way. The only truly flexible system uses paper and pen, and I
don't really want to deal with that.

The solution appears to be org-files. Think of them as a close cousin to
Markdown, but for organization instead of HTML. The systems that use
org-files support basically any kind of work flow imaginable because
the storage mechanism is just text, so in the worst case scenario you
can always just edit the file manually.

Org-files are originally from the Emacs plugin org-mode, but there are
now org-file readers for Vim, iPhone, and Android.

## Example File.

<pre>
#+LAST_MOBILE_CHANGE: 2013-10-01 19:59:54
#+TODO: TODO IN-PROGRESS DONE


* Butler                                                           :projects:
Butler is an Emacs plugin for Jenkins/Hudson use. Currently it supports:
+ Viewing jobs.
+ Encrypted authentication info.
+ Triggering non-parameterized jobs.
** Wish List.
*** Paramtererized jobs
Possible to get the parameter information along with the job status in one query.
*** DONE Better formatting.
DEADLINE: <2013-11-02 Sat>
CLOCK: [2013-05-06 Mon 20:21]--[2013-05-06 Mon 20:40] =>  0:19
:PROPERTIES:
:ID:       6A634BFA-F18E-4C92-A48D-DC3254A67CAE
:END:
Tabular mode?
*** DONE COMPLETED Job Progress
*** TODO Improved HTTP
:PROPERTIES:
:ORDERED:  t
:ID:       F720BD2F-4966-455B-8F14-5530393340CD
:END:
**** DONE Avoid roundtrip to encrypted auth file
**** TODO Silence message output
:PROPERTIES:
:ID:       DE9913E9-AC68-42D3-B7D2-613BB775A16B
:END:
**** TODO Auto refresh
 :PROPERTIES:
:ID:       01EC3DB8-ABCA-4063-8999-AA68D8D05528
:END:
**** TODO Console output
:PROPERTIES:
:ID:       112F3FD6-7D23-485F-8B5E-43F0B0BA839E
:END:
</pre>

## Okay Ashton, What the Hell is That?

Let's break this down bit by bit. Any line starting with <code>#+</code>
is used to tell the org-mode reader something. In this case it lets us
know the last time we synced this to our mobile device, and the possible
TODO states that an item can be in. It's not unusual to see formatting
directives at the top of the file to control color, indentation, and
similar settings. A lot of settings can either be set globally, or on a
per-file basis.

Next we have the individual headings. Each heading starts with a number
of asterisks. The number of asterisks indicates the level. So
<code>&#42;&#42; Wish List.</code> is a child of <code>&#42;
Butler</code>. Most editors allow you to fold headings to show or hide
their children, for convenience.

Each heading can optionally have a TODO state, which is displayed in
front of the heading title.. The default is one of blank, TODO,
IN-PROGRESS, and DONE. A simple keystroke in most editors cycles from
one state to the next. It's also possible to support multiple paths that
a project can flow through. I personally use the default along with
REFERENCE and ABANDONED, which allows for me to easily filter for
abandoned projects, along with notes that aren't actionable yet.

Org-mode supports 3 different kinds of time tracking and
scheduling. Each heading can have up to one deadline entry, one
scheduled entry, and multiple clock entries. Deadlines are for when an
item should be finished, and scheduled is for when a project should be
started. Clocks are for recording the amount of time used for an
item. You can see an example of both the deadline and clock under the
"Better formatting."  header. Org-mode also supports a very flexible
type of repeat scheduling.

With any good organization system you'll need the ability to tag and
filter items. Org provides two ways to do this, properties and
tags. Tags are generally shared across multiple entries, with values
like "work" and "home". They are displayed on the far right of the
tagged line, such as ":projects:" on the Butler line above. You can tag
a line with as many tags as you want.

Unlike tags, properties are composed of keys and values, many of which
are unique to a specific entry. If you use any kind of syncing system,
each item will get an ID property used to enforce uniqueness. A lot of
systems will also respect the LOCATION property if you sync to a system
that understands this, such as iCal.

And finally you can have notes and text underneath each entry. Most
org-mode readers understand free text, unordered lists (<code>-</code>
or <code>+</code>), numbered lists, and check boxes (<code>- [ ]</code>
and <code>- [X]</code>). Many of these can be easily manipulated with
simple keyboard macros, such as the check boxes.

As you can see, org-mode basically provides a super set of all the
organizational features available. It's up to you how you wish to nest
these, mark them due, and prioritize. That's why I love it, I'm not
locked into one particular layout that may or may not fit me, instead I
can slowly evolve it as my systems mature. Expect more posts in the
future about Emacs specific configuration settings to make org-mode
easier to use.
