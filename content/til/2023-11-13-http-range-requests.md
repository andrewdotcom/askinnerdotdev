+++
title = "HTTP Range Requests don't work on data.gov.au"
date = 2023-11-13
+++

The [data.gov.au](http://data.gov.au) http server does not support http range requests. this is what I learned looking at how to work with data directly from the [data.gov.au](http://data.gov.au) server.

### What was I trying to do?
The [data.gov.au](http://data.gov.au) data catalogue contains many large CSV files of data. I am interested in connecting to the server and downloading portions of these large CSV files to explore/summarise their content without having to download the whole file. It turns out that the [data.gov.au](http://data.gov.au) web server does not support range requests.

### What is a HTTP range request?
An HTTP Range Request is a mechanism that allows clients such as web browsers and other internet tools to request and receive specific portions (in bytes) of a file from a web server by providing additional information in the request header. Range requests are supported by many modern web servers but not all servers support it so you need to check. Range requests are most often used when downloading things like large images but can also be really helpful when trying to download portions of datasets that don’t change too often.

The headers returned from the [data.gov.au](http://data.gov.au) server are:

```
HTTP/2 200
content-type: text/csv
content-length: 1148756
vary: Accept-Encoding
date: Mon, 13 Nov 2023 00:46:10 GMT
server: nginx
content-disposition: inline; filename=labelreg.csv
last-modified: Thu, 09 Nov 2023 05:34:22 GMT
cache-control: no-cache, public, max-age=0, must-revalidate
etag: "1699508062.409-1148756-3459452690"
set-cookie: ckan=ac3cb131866b044a96b1cb0d863ca406470964dafff8516dd0ba422bb66901fed8f1fdbd; expires=Tue, 19-Jan-2038 14:14:07 GMT; Path=/; SameSite=Lax
x-cache: Miss from cloudfront
via: 1.1 903696f43fdfc4019d7102b6711e9fca.cloudfront.net (CloudFront)
x-amz-cf-pop: SYD62-P1
x-amz-cf-id: CFLIwxMmhniLSsOpu1eqmbKkhI7Y1F_v2oaKNaBcODDPobt1VORRGg==
x-xss-protection: 1; mode=block
x-frame-options: SAMEORIGIN
referrer-policy: strict-origin-when-cross-origin
x-content-type-options: nosniff
strict-transport-security: max-age=31536000
vary: Origin
```

There are a few interesting things in here that we won’t cover now but for the server to support range requests we would expect to see:

```
Accept-Ranges: bytes
```

### Why are range requests useful?
HTTP Range Requests are useful for several reasons. They enable the resumption of interrupted downloads, optimise bandwidth by allowing clients to request and download only specific portions of a resource, facilitate parallel downloads for improved speed, and are commonly employed in streaming media applications to dynamically adjust content quality. Additionally, servers can respond with partial content, indicating that only a portion of the requested resource is being returned, enhancing efficiency in various scenarios.

### Is there a workaround?
It is possible to request the first x lines of a file using wget and head. For example:

```
wget https://data.gov.au/data/dataset/0de37904-43e0-4814-b21b-5b64fafefe6f/resource/a83d500d-b47a-4f03-9d77-4c0524217855/download/labelreg.csv -qO - | head -10
```

[According to stack overflow:](https://unix.stackexchange.com/questions/29964/are-linux-utilities-smart-when-running-piped-commands/29976#29976)

> If grep finds more than 10 lines that say "hello world" then head will have all 10 lines it wants, and close the pipe. This will cause grep to be killed with a SIGPIPE, so it does not need to continue scanning a very large file.

This means that in our case, wget will be terminated after retrieving the required number of lines and will stop downloading the file. This doesn’t provide the same flexibility as a range request (as it only returns the head of the file) but it does enable the download of a sample of the linked dataset without having to download the full dataset. This can then be piped again into the tool of your choice or example below we pip the file head into duckdb.

```
wget https://data.gov.au/data/dataset/0de37904-43e0-4814-b21b-5b64fafefe6f/resource/a83d500d-b47a-4f03-9d77-4c0524217855/download/labelreg.csv -qO - | head -10  | duckdb :memory: "SELECT * FROM read_csv_auto('/dev/stdin')"
```

Finally removing head and downloading and piping the full file into duckdb from wget removes any range request incompatibilities with the duckdb httpfs extension trying to perform range requests on a server that doesn't support them.

👍🏻
