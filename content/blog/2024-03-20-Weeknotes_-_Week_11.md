+++
title = "Weeknotes - Week 11"
date = 2024-03-20
+++

*this has been sitting in notes for a few days so I’m only just posting it for last Friday. 

I’ve been a bit sick this week and not that productive. To cheer myself up, I’ve been doing some fun things with LLMs. I have been experimenting with fine tuning a couple of LLMs for some time now but haven’t had a good benchmark to measure inference performance. Following on from the benchmark created by Bailey J Stocks I’ve been making a question set to benchmark against Australian agronomy. 

This as it turns out was a lot harder than I thought it was going to be. Unlike for Bailey’s benchmark there doesn’t seem to be any accessible question sets available from Australian education providers. I found a couple of examples but they seemed to be either very old or very incomplete (all of the ones I found didn’t have the answers). In the end I took all of the GRDC grow notes and compiled a multiple choice question set. I used the Mixtral model to do this. Basically I gave it a grow note as context and asked the model to generate at least 5 multiple choice questions from the content and reply in json format. On the whole this worked pretty well. When the grow notes had additional data that wasn’t described in the prompt the model had a hard time ignoring it and often decided to augment the json to make comment on it. As a result from the resulting combined json there were quite a few objects to prune but I still got a good list of questions. 

Once I had generated the question list, I went through them again and pruned out all the questions that were a bit dumb, required knowledge of the rest of a specific paper - for example “What was the colour of the authors hat?” Without the paper would wouldn’t know that the author had a hat or what colour it was. This left me with a list of xxxx questions that seem ok. Now I have no idea if they are good questions to assess agronomic proficiency but at least I now have a list of questions and answers with which to experiment. 

***Next week***
I’m going to keep experimenting with this next week to see if I can prune a few more questions to optimise quality. I’m also going to start chucking them at a few models to see how they perform. This should give me a good idea of the viability of the data set. 

I am still iterating on the MTM core platform. There is a lot of functionality in the platform now for ingesting, processing and searching data. 

As usual I also have a few reports and grant applications to write. All being well leading to some new work. 

We’re also off to stay with some injured Koalas at a sanctuary a a couple of hours up the coast, so I have a nice, restful weekend ahead. Oh and footy is back. 