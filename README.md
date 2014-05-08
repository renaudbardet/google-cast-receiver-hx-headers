google-cast-receiver-hx-headers
===============================

A set of haXe headers to create haXe/javascript receiver applications for the google chromecast.

See https://developers.google.com/cast/ for more information on Chromecast and how to use the original javascript library.

This software is distributed under the MIT liscence which extends only to the headers themselves, the actual software they give access to are the property of Google and may be subject to a different license.

P-Developer Fork
===============================
The externs in their original state were non-functional. I just applied some minor fixes to get the basics running. I haven't tested all aspects of the externs, but it's possible there are more fixes required.
Most issues were:
Type names in the externs were using the native namespace, which caused errors:
`cast.receiver.*`
Since cast is a keyword. Correct modification: `googlecast.receiver.*`

Some classes were missing. Simple to resolve using the reference at https://developers.google.com/cast/docs/reference/receiver/index-all
