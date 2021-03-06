% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/serial.R
\name{serialise_bytes}
\alias{serialise_bytes}
\alias{serialise_bytes.default}
\alias{bytes_unserialise}
\alias{bytes_unserialise.default}
\alias{serialize_bytes}
\alias{bytes_unserialize}
\title{Serialise and unserialise objects}
\usage{
serialise_bytes(x, global_env = FALSE)

\method{serialise_bytes}{default}(x, global_env = FALSE)

bytes_unserialise(bytes)

\method{bytes_unserialise}{default}(bytes)

serialize_bytes(x, global_env = FALSE)

bytes_unserialize(bytes)
}
\arguments{
\item{x}{An object to serialise.}

\item{global_env}{Whether to include a stripped version of the
global environment as part of the fake search path constructed
around closures.}

\item{bytes}{A raw vector to unserialise.}
}
\description{
These functions are equivalent to \code{\link[base:serialize]{base::serialize()}} and
\code{\link[base:unserialize]{base::unserialize()}} but try to preserve the enclosure of
closures, formulas, and quosures. It works by detecting which
environment or package attached on the search path at
serialisation-time are required by the function or quosure. The
relevant environments are then reconstructed in a fake search path
when the object is unserialised. The fake search path is specific
to each closure and quosure.
}
