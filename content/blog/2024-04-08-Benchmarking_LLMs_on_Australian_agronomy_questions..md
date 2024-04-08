+++
title = "Benchmarking LLMs on Australian agronomy questions."
date = 2024-04-08
+++

For the last few months, I’ve been looking for good quality resources for benchmarking Large Language Models on their ability to support Australian Agriculture. Benchmarking is going to be increasingly important as #AusAg looks to adopt these models. 

Specifically, I went looking for multiple choice exam papers or tests. This turned out to be a lot harder than I thought as there aren’t really any that are publicly available, let alone in a machine friendly format (I know. Wishful thinking). 

So I made my own. 

To start with, I used the [Grains Research and Development Corporation](https://www.grdc.com.au) Update publications and Mistral to create 9000 multiple choice agronomy questions and answers spanning the last ten years of updates. I started with grains as it aligns with other international benchmarking datasets that I have seen being developed. 

They’re not perfect, and despite my best efforts prompting for questions that don’t require specific project knowledge a few have crept through. I'm also not an agronomist so a lot of the questions might be duff. Finally, I have the metadata, but this version doesn’t always include information about the region that question relates to in the question. The next iteration will - I forgot to add it this time and am kicking myself. 

The models I’ve tested so far understandably vary in their performance but they get surprisingly good results when they concentrate and reply as they should. More details on this to follow. 

The plan now is to continue to improve this dataset, to augment it with other grains data sources that we have available through the [More Than Machines](https://www.morethanmachines.com.au) platform and to reduce the number of questions to a more manageable number for benchmarking inference. 

You can download and view the dataset [here]( https://huggingface.co/datasets/andrewdotcom/aus-agronomy/blob/main/updates_questions.json)

Any corrections, feedback, improvements etc. Will be very well received.