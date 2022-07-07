+++
title = "My writing workflow"
description = "An overview of how I have been approaching writing on the blog."
tags = ["writing", "blog"]
+++

I have been working on developing a workflow for writing regularly on my blog as it is something that I haven’t been able to achieve to date. I have read dozens of strategies over the years but nothing has really stuck. I thought i’d document my where I have got to with my process so I can come back to it and improve as I go. 

## Inspiration. 
I am firmly GenX therefore [twitter](http://www.twitter.com/andrewdotcom) is my weapon of choice for my daily onslaught of what is going on in the world and across my areas of interest. I’m generally a twitter [completionist](https://www.dictionary.com/browse/completionist) but the number of people I follow has now got to the volume where my tweet list now pretty much filters itself - I view the world through snippets of 1500 thoughts at a time (tweetbot and probably the twitter api tweet limit). 

Day to day I am starting to use [notion](https://www.notion.so) to collect notes. It's not perfect but I like the way I can pretty much store anything in there. I also like how it is available across all my devices. As I see interesting links or things I should know about I collect them in a notion database using the [notion](http://www.notion.so) ios share sheet. This is less than ideal, as in many ways the share sheet that notion provides is terrible. It usually takes several attempts to get it to show correctly and then it never remembers the previous share locations meaning I have to search for the place I want to save each time. I also can’t tag the links in the notion sharesheet. This means that my links database is becoming pretty unwieldy and hard to manage. However it’s the best I have at the moment. I like to think that at some point I will find the time to make the read it later tool of my dreams. Nobody has managed it yet. 

So now I have a great big bucket oflinks that I think might be interesting. When I have some downtime I pickup the list in notion and scan though it to see what interests me. It’s amazing to me how many links I save and then when I go back to them I wonder what the heck I was thinking - this provides another quick level of filtration/curation. So many topics go stale quickly. Something that seemed important on Monday often doesn’t feel so much on Wednesday. 

After reading through a few links, I’ll jot down any themes or things that have pulled some thoughts into the Apple notes app. I use the notes app for everything. In many ways it’s just how I use notion. It’s a dump of everything in my brain. Thankfully notes has a good search function so I can find things again. I should probably think about how I organise documents etc. 

The other place I get loads of my inspiration is from other people's blogs. I am still a big user of RSS and subscribe to many blogs. RSS use seems to have declined in recent years and it’s a real shame. RSS in many ways is what was/is great about the web. I use the free [NetNewsWire](https://netnewswire.com/) app as I can consume my feeds on my Mac and on my phone. It’s fast, expertly made and free. Again any thoughts or responses to other peoples posts I capture in Apple notes. 

## Writing. 
This blog is made with the [Zola](https://www.getzola.org/) blog engine. It’s simple and fast. Posts are written as markdown files which means I can create them in pretty much any text tool. I usually write in visual studio code, mainly because this is where I spend most of my time. I can also now quickly pull up a [vscode instance in my browser](https://github.dev/) which means I can write pretty much anywhere. I also made a small shell script to quickly create new markdown starter files formatted in the correct way so I just have to focus on the post title and the content. I am currently trying to have about 5 drafts in various stages of completeness at any one time so that I have a pipeline of content. Darfts are marked with a draft tag in the post front matter. Writing like this is one of my main strategies to keep posting here. 

## Publishing
Everything is committed to [git](http://www.git-scm.com) and when a post is ready I remove the draft tag and commit the post to the blogs git repository. It is then built using a [GitHub](http:www.github.com) action and pushed live to [netlify](http://www.netlify.com). 

There are loads of things I can probably optimise here and in many ways this blog is a running experiment. I expect the above will frequently change and I will try to update this post as it does. Hopefully someone may find this useful. 