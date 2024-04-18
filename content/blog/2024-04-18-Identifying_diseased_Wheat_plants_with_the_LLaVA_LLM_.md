+++
title = "Identifying diseased Wheat plants with the LLaVA LLM "
date = 2024-04-18
+++

I had a bit of time between meetings this afternoon and was somewhere with fast internet, so to kill some time I thought I would see how good the 4bit quantised 7B parameter multi modal model* [Llava](https://llava-vl.github.io/blog/2024-01-30-llava-next/) was at identifying issues with Wheat plants. As with most of my LLM experiments, it's not super scientific but it turns out that on the surface, untuned Llava doesn't do a bad job.

I struggled to quickly find an Australian dataset to test with but found one from Holeta wheat farm in Ethiopia on Kaggle. The test images were captured on farm, in an uncontrolled environment and categorised into healthy and rust infected. I make no comment on the quality but they looked ok for a quick test. Also if you're standing this close to a plant you probably don't need AI to tell you it's sick.

Llava correctly identified **91.17%** of 102 healthy plant images and **89.9%** of the 208 unhealthy rusty ones.

A reasonable starting position for a lobotomised, free open source vision model and it's just one of a growing number of models available (another thing to add to my benchmarking list).

[Ethiopian Kaggle dataset](https://www.kaggle.com/datasets/olyadgetch/wheat-leaf-dataset?resource=download)

[Test script for throwing plant images at Llava](https://gist.github.com/andrewdotcom/8397a7517224e622db68036dc42f22c7)

* Quantisation is a technique to reduce the computational and memory costs of running models by lowering the precision of the model weights. Basically, it means you can run them more easily without expensive GPUs and lots of computer memory.
