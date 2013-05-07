# particular pinboard

A modification of the [pinboard bookmarklet][pinboard] with enhancements that appeal to my fiddly nature. 

- Title is cleaned of extraneous "SEO-junk" through heuristics based on page structure 
- Description field is populated with the selected text, or pulled from description tags in page header
- Tags are added according to keyword rules setup by the user.

This bookmarklet is based on an existing modification to the pinboard bookmarklet by [Ben Ward][benward]. The build file makes variants for "Read Later" and for users of [Pinbook][pinbook] on iOS.

## Bookmarklets

- [Regular](https://gist.github.com/e945f9be615aa7e92931)
- [Read Later](https://gist.github.com/dfba062c093b3e110b08)
- [Pinbook iOS app](https://gist.github.com/9a4071cb313b41019bd0)

# Building

Run `build.sh` to compile the source file into bookmarklet form. You must have [UglifyJS][uglify] and [node][node] installed. To install node I recommend [homebrew][homebrew]:

	brew install node

To install UglifyJS:

	npm install uglify-js

# Customization

You can enable or disable various features by modifying the constants at the top of the source file. These should be well documented in source. Of particular interest for users are keyword rules which determine the tags based on the text of the document.

# License

This code is public domain. Fork it as the basis for your own particular pinboard and let me know what you discover.

[pinboard]:http://pinboard.in/howto/
[benward]:https://gist.github.com/BenWard/801657
[pinbook]:http://albinadevelopment.com/pinbook/
[homebrew]:http://mxcl.github.com/homebrew/
[node]:http://nodejs.org/
[uglify]:https://github.com/mishoo/UglifyJS