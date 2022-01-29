---
slug: old-blog-utterances-jekyll
title: utterances on jekyll
authors: [im-coder-lg]
tags: [old-times]
---

Utterances info and installation guide
<!--more-->

# ***Only for Jekyll, I'm sorry.***

# Utterances
Anyone here who is a comment freak? Like, any blog they visit, if there is support for comments, they will type one immediately? Well, they might have heard of Disqus. A free comment system but if used free, this happens:
```
today:
me: I hosted a blog today and added Disqus!
one month later...
me checking my blog: where did those horrid ads come from?
me finding out it was disqus: removing
me wanting a new comment system: what about cusdis?
1 week later...
me: god i cant manage those cusdis emails! within a week, i get 100 mails to approve comments
me sees utterances: good
one week later...
me checking blog: wow, no permission, no ads, utterances is cool!
```
I am going to explain how to install Utterances on your blog.

## What is Utterances?

Utterances is a comment system that uses GitHub Primer, the css toolkit that powers the GitHub sites. That is why if you look at it, you will think that GitHub also has this kind of UI.

It uses GitHub issues, so, all a person needs to comment is a GitHub account and for you, a repo included.

## Installation
We will be going via steps.

### Step 1: App installation

Install the Utterances app from [here](https://github.com/apps/utterances)

### Step 2: Utterances code
Go to [utteranc.es](https://utteranc.es) and toggle the settings.

Fill out the repo name, by making a repo for your comments or any other methods.

Choose an issue type.

Then choose your theme. It will show you a demo of the theme.

Then, make a label if you want.

Then, at last, copy the code. This code is important, so keep it safe somewhere.

### Step 3: Adding and modifying the code

Make a html file inside the `_includes` directory called `utterances.html`.

Then, make a text file, and copy the info filled in repo, issue-term, theme and label, if you add it.

Then , replace it with 
```yaml
{{ site.utterances.repo }}
{{ site.utterances.issue-term }}
{{ site.utterances.theme }}
{{ site.utterances.label }}
```
, only if you add labels.

Then, in config.yml, add these lines:

```yaml
utterances:
	repo:
	issue-term:
	theme:
	label: #if you add it.
```

After adding these lines, go to `_layouts` and open `post.html` in an editor. 

add these lines between `</article>` and `<style>`:

```yaml
{% if site.utterances.repo %}
{% if site.utterances.issue-term %}
{% if site.utterances.theme %}
{% include utterances.html %}
{% endif %}
{% endif %}
{% endif %}
```

If you have those lines filled up, Utterances will successfully work.

Happy commenting on open-source tech!

All code found in my portfolio.


