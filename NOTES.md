# Notes

These are notes for developers.

## GitBook fails to copy images to `_book/`

It's unclear why `gitbook build` does not copy e.g. `chapter1/*.svg` to `_book/chapter1/`. It should.

As a workaround the `Makefile` is made to duplicate any generated images is both the source folder (for markdown editors), as well as the `_book` target folder (for the served book). Works, not clean, but no much down sides either.

If you find a fix, please pitch in a PR. :)

## No spaces, please

Due to what looks like a GitBook [bug](https://github.com/GitbookIO/gitbook/issues/1070), internal links cannot have spaces within them - either in the path or the filename. If they do, they will generate a warning and broken output files.

So, let's avoid spaces in paths and filenames, unless the bug is fixed.

e.g. `SomeChapter/SomeFile.md` instead of `Some Chapter/Some File.md`.

## "Is GitBook alive?"

It's good to be aware of this:

- https://github.com/GitbookIO/gitbook/issues/1808

>It's obvious Gitbook has gone in a different direction. They've completely nixed statically generated docs, as well as plugins and pretty much everything that made Gitbook good while also making their name "GitBook" completely irrelevant.
>
>So shall we start an effort to fork, rename and maintain our beloved "Legacy" Gitbook?

*Comment by a GitBook user (Aug 2018)*

This does not change the usability of GitBook a lot. It just means there's likely no support, no changes...

The mindset of this UML + markdown build setup can easily be adjusted to other similar (static content creation) tools. If you know of candidates, please create an Issue for discussion.







   