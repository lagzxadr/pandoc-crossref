This is a demo file for pandoc-crossref. With this filter, you can
cross-reference figures (see figs. 1.1-1.3), display equations (see
eq. 2.1) and tables (see tbl. 3.1)

For immediate example, see fig. 1

![Figure \# 1: A figure](img1.jpg)

There is also support for code blocks, for example, lsts. 4.1-4.3

It's possible to capitalize reference prefixes, like this: Fig. 1.1.

In case of multiple references, capitalization is determined by first
reference. Figs. 1.1, 1.2 is capitalized, while figs. 1.1, 1.2 is not.

It is also possible to mix different references, like fig. 1.1,
tbl. 3.1, lsts. 4.1, 4.2, figs. 1.2, 1.3, which will be grouped in order
they are specified. You can even intermix this with regular citations,
although it's not recommended: fig. 1.1, tbl. 3.1,
[@unprocessedCitation]

Chapter 1. Figures
==================

![Figure \# 1.1: First figure](img1.jpg)

![Figure \# 1.2: Second figure](img2.jpg)

![Figure \# 1.3: Third figure](img3.jpg)

![Unlabelled image](img1.jpg)

Chapter 2. Equations
====================

$$ P_i(x) = \sum_i a_i x^i \qquad(2.1)$$

Chapter 3. Tables
=================

  First Header   Second Header
  -------------- ---------------
  Content Cell   Content Cell
  Content Cell   Content Cell

  : *Table 3.1*: Table example

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

Listing 4.1: Listing caption

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

Listing 4.2: Listing caption

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

Listing 4.3: Listing caption

``` {.haskell}
main :: IO ()
main = putStrLn "Hello World!"
```

</div>

Unnumbered chapter. {#unnumbered-chapter. .unnumbered}
===================

This chapter doesn't change chapter prefix of referenced elements,
instead keeping number of previous chapter, e.g.

$$ S(x) = \int_{x_1}^{x_2} a x+b \  \mathrm{d}x \qquad(4.1)$$

Chapter 5. Reference lists
==========================

It's also possible to show lists of figures and tables, like this:

List of Figures
---------------

<div class="list">

1 A figure

1.1 First figure

1.2 Second figure

1.3 Third figure

</div>

List of Tables
--------------

<div class="list">

3.1 Table example

</div>

List of Listings
================

<div class="list">

4.1 Listing caption

4.2 Listing caption

4.3 Listing caption

</div>
