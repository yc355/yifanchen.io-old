+++
date = "2017-01-01T15:53:34-05:00"
title = "HERE WE GO - A New Look for the TKO Webapp"
draft = false

+++
Hope everyone had a great New Year's!

To kick off 2017, I'm excited to publish <a href="http://tko.yifanchen.io/"
target="_blank">**TKO**</a>, a search engine for mixed martial arts fighters,
with a new <a href="https://material.io/guidelines/" target="_blank">Material
design</a>-inspired look:

![TKO](img/2017-01-01/TKO-new-look.png)

The most interesting and instructive part of the front-end revamp was switching from
Bootstrap layouts and UI components to FlexBox layouts via the <a href="https://github.com/angular/flex-layout"
target="_blank">Angular 2 Flex Layout</a> package and the ever-expanding
<a href="https://github.com/angular/material2" target="_blank">Material Design
for Angular 2</a> toolkit. FlexBox offers easier content alignment
and a more customizable responsive grid system than Bootstrap currently does, though Bootstrap v4-alpha
includes <a href="http://v4-alpha.getbootstrap.com/getting-started/flexbox/"
target="_blank">optional FlexBox support</a>.

Here are some of the improvements for TKO that are queued up for the near-future:  

**Features**

- Events section
- Fighter social media / news section

**Front-end**

- Mobile responsiveness
- Material design data table (the Material 2 package component is "in-progress" as of this post)
- UI/UX tweaks (e.g., fixed position for fighter search and info components)

**Back-end**

- Smarter search (e.g., <a href="http://www.faroo.com/hp/api/api.html" target="_blank">
FAROO</a>)
- Results caching
- Upgrade to Rails 5 <a href="http://edgeguides.rubyonrails.org/api_app.html" target="_blank">
API-only</a> mode
- As a stretch goal, explore migrating the entire back-end to the
<a href="http://www.phoenixframework.org/" target="_blank">Phoenix</a> web
framework (<a href="http://adrian-philipp.com/post/why-elixir-has-great-potential"
target="_blank">here</a> is an external blog post on the merits of Elixir, the
Erlang-based language that Phoenix uses)

Last but not least, the title of this post is a tribute to one of the many
catchphrases of longtime UFC play-by-play commentator Mike Goldberg,
who recently worked his last UFC show at UFC 207.

For those unfamiliar with Mike, he is the brother of Michael Buffer, the
iconic boxing ring announcer who coined the phrase "Let's get ready to rumble!",
and has been with the UFC for almost two decades. **Here are some of Goldie's
best moments:**

<div style="text-align: center">
  <iframe width="560" height="315" src="https://www.youtube.com/embed/8OLlkyFSLOM" frameborder="0" allowfullscreen></iframe>
</div>
