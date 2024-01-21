#let project(
  title: "",
  authors: (),
  date: none,
  logo: "assets/espol_logo.png",
  body,
) = {
  // Set the document's basic properties.
  set document(author: authors.map(a => a.name), title: title)
  set page(paper: "us-letter", numbering: "1", number-align: end)
  set text(font: "Linux Libertine", lang: "es")

  // Set paragraph spacing.
  show par: set block(above: 2em, below: 2em)

  set heading(numbering: "1.1")
  set par(leading: 0.75em)

  // Title page.
  // The page can contain a logo if you pass one with `logo: "logo.png"`.
  v(0.6fr)
  if logo != none {
    image("assets/espol_fcnm_logo.png", width: 96%)
  }
  
  v(15em)

  text(1.1em, "Enero 30, 2024")
  v(1.2em, weak: true)
  text(2em, weight: 700, title)

  // Author information.
  pad(
    top: 0.7em,
    right: 20%,
    grid(
      columns: (1fr,) * calc.min(3, authors.len()),
      gutter: 1em,
      ..authors.map(author => align(start)[
        *#author.name* \
        #author.email \
        #author.affiliation
      ]),
    ),
  )

  v(2.4fr)
  pagebreak()


  // Table of contents.
  outline(depth: 3, indent: true)
  pagebreak()


  // Main body.
  set par(justify: true, leading: 1.5em)
  set text(hyphenate: false)

  body
}