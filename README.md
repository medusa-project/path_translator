# PathTranslator

This gem will allow one to specify one or more root directories and then
translate paths relative to them. Also will provide utility functionality
such as checking that the final path actually winds up under the root, 
creating directories relative to the root, etc. These are things I find
myself doing quite a bit with the various Medusa applications, so it
seems useful to extract into a single gem.

Of course you can do this with Pathname or File, etc. The advantage here is
to configure the root directory just once and then use the PathTranslator code
the rest of the time.

