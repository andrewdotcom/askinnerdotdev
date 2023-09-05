+++
title = "Kicking the tires of Llama2 with Ollama."
date = 2023-08-05
+++

I've been spending a tiny bit of time over the last couple of weeks experimenting with the Meta open source Llama models on my Macbook Pro using [Ollama](https://github.com/jmorganca/ollama). The best way to describe Ollama is that it is like a package manager for large language models and it makes it super simple to get many of the available open source models up and running quickly and easily. This is pretty neat as getting a lot of these models to run on consumer hardware is in many cases non trivial.

The use case I currently have in mind is fairly simple. I get sent and or find a lot of research reports that I need to read or at the very least be aware of. This is a time consuming task and finding the signal in the noise can be hard. Despite what you may be reading in the press at the moment many of the current large language models available are fairly narrow in what they are good at, especially the chat tuned models such as chat-gpt and Llama2. These models work well for tasks such as:

* Answering questions
* Enabling conversations with data
* Content generation
* Summerisation

Hmmm Summerisation, well, that looks promising, I have a stack of PDF documents that I want to summerise to see if they are of interest. How might I automate this?

There is another cli tool I have been using for a while called [textra](https://github.com/freedmand/textra). It's a command line tool that utilises the Apple Machine Vision APIs on OSX to pull text from PDFs, Images and Audio. I can't really comment on how good it is at this task but for me it works ok. There are quite a few PDFs it struggles to open but on the whole for research type PDF reports it seems to work well. I've found that it tends to be heavily designed PDFs that it struggles with like brochures and flashy strategy documents etc.

The command I have come up with that does the extraction and summerisation in a single line is:

```text
ollama run llama2 "summarize this text:" "$(textra -s ~/Downloads/test2.pdf -x)" > summary.txt
```

It's not perfect as textra freaks out a little and chucks it's help info to the screen once per page but it works.

I'll be refining this over the coming weeks and will post any updates as I make them. For example there is a version of this that I am going to make that uses the OpenAI Whisper model to pull text from audio files (I suspect this will be superior to the Apple Vision model) and then get's LLama2 to summerise and perform other tasks on it. This will make managing the transcripts from the interviews I do much easier.
