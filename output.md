This is a demo file for pandoc-crossref. With this filter, you can
cross-reference figures (see figs. 2-4), display equations (see eq. 1)
and tables (see tbl. 1)

For immediate example, see fig. 1

![Figure \# 1: A figure](img1.jpg)

There is also support for code blocks, for example, lsts. 1-3

It's possible to capitalize reference prefixes, like this: Fig. 2.

In case of multiple references, capitalization is determined by first
reference. Figs. 2, 3 is capitalized, while figs. 2, 3 is not.

It is also possible to mix different references, like fig. 2, tbl. 1,
lsts. 1, 2, figs. 3, 4, which will be grouped in order they are
specified. You can even intermix this with regular citations, although
it's not recommended: fig. 2, tbl. 1, [@unprocessedCitation]

Chapter 1. Figures
==================

![Figure \# 2: First figure](img1.jpg)

![Figure \# 3: Second figure](img2.jpg)

![Figure \# 4: Third figure](img3.jpg)

![Unlabelled image](img1.jpg)

Chapter 2. Equations
====================

$$ P_i(x) = \sum_i a_i x^i \qquad(1)$$

Chapter 3. Tables
=================

  First Header   Second Header
  -------------- ---------------
  Content Cell   Content Cell
  Content Cell   Content Cell

  : *Table 1*: Table example

Table without caption:

  First Header   Second Header
  -------------- ---------------
  Content Cell   Content Cell
  Content Cell   Content Cell

Chapter 4. Code blocks
======================

There are a couple options for code block labels. Those work only if
code block id starts with `lst:`, e.g. `{#lst:label}`

`caption` attribute
-------------------

`caption` attribute will be treated as code block caption. If code block
has both id and `caption` attributes, it will be treated as numbered
code block.

<div id="lst:captionAttr" class="listing haskell">

Listing 1: Listing caption

``` {.haskell}
main :: IO ()
main = putStrLn "Hello World!"
```

</div>

\pagebreak

Table-style captions
--------------------

Enabled with `codeBlockCaptions` metadata option. If code block is
immediately adjacent to paragraph, starting with `Listing:` or `:`, said
paragraph will be treated as code block caption.

<div id="lst:tableCaption" class="listing haskell">

Listing 2: Listing caption

``` {.haskell}
main :: IO ()
main = putStrLn "Hello World!"
```

</div>

Wrapping div
------------

Wrapping code block without label in a div with id `lst:...` and class,
starting with `listing`, and adding paragraph before code block, but
inside div, will treat said paragraph as code block caption.

<div id="lst:wrappingDiv" class="listing haskell">

Listing 3: Listing caption

``` {.haskell}
main :: IO ()
main = putStrLn "Hello World!"
```

</div>

Unnumbered chapter. {#unnumbered-chapter. .unnumbered}
===================

This chapter doesn't change chapter prefix of referenced elements,
instead keeping number of previous chapter, e.g.

$$ S(x) = \int_{x_1}^{x_2} a x+b \  \mathrm{d}x \qquad(2)$$

Chapter 5. Reference lists
==========================

It's also possible to show lists of figures and tables, like this:

List of Figures
---------------

1.  A figure
2.  First figure
3.  Second figure
4.  Third figure

List of Tables
--------------

1.  Table example

List of Listings
================

1.  Listing caption
2.  Listing caption
3.  Listing caption

