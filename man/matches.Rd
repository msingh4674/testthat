\name{matches}
\alias{expect_match}
\alias{matches}
\title{Expectation: does string match regular expression?}
\usage{
matches(regexp, all = TRUE, ...)

expect_match(object, regexp, ..., info = NULL, label = NULL)
}
\arguments{
  \item{regexp}{regular expression to test against}

  \item{all}{should all elements of actual value match
  \code{regexp} (TRUE), or does only one need to match
  (FALSE)}

  \item{...}{For \code{matches}: other arguments passed on
  to \code{\link{grepl}}. For \code{expect_match}: other
  arguments passed on to \code{matches}.}

  \item{object}{object to test}

  \item{info}{extra information to be included in the
  message (useful when writing tests in loops).}

  \item{label}{object label. When \code{NULL}, computed
  from deparsed object.}
}
\description{
If the object to be tested has length greater than one, all
elements of the vector must match the pattern in order to
pass.
}
\examples{
expect_that("Testing is fun", matches("fun"))
expect_that("Testing is fun", matches("f.n"))
expect_match("Testing is fun", "f.n")
}
\seealso{
Other expectations: \code{\link{equals}},
\code{\link{expect_equal}}; \code{\link{expect-compare}},
\code{\link{expect_less_than}},
\code{\link{expect_more_than}}, \code{\link{is_less_than}},
\code{\link{is_more_than}};
\code{\link{expect_equivalent}},
\code{\link{is_equivalent_to}}; \code{\link{expect_error}},
\code{\link{throws_error}}; \code{\link{expect_false}},
\code{\link{is_false}}; \code{\link{expect_identical}},
\code{\link{is_identical_to}}; \code{\link{expect_is}},
\code{\link{is_a}}; \code{\link{expect_message}},
\code{\link{shows_message}}; \code{\link{expect_named}},
\code{\link{has_names}}; \code{\link{expect_null}},
\code{\link{is_null}}; \code{\link{expect_output}},
\code{\link{prints_text}}; \code{\link{expect_true}},
\code{\link{is_true}}; \code{\link{expect_warning}},
\code{\link{gives_warning}}; \code{\link{takes_less_than}}
}

