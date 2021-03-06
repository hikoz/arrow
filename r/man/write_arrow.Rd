% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/write-arrow.R
\name{write_arrow}
\alias{write_arrow}
\title{Write Arrow formatted data}
\usage{
write_arrow(x, sink, ...)
}
\arguments{
\item{x}{an \link[=Table]{arrow::Table}, an \link[=RecordBatch]{arrow::RecordBatch} or a data.frame}

\item{sink}{where to serialize to
\itemize{
\item A \link[=RecordBatchWriter]{arrow::RecordBatchWriter}: the \verb{$write()}
of \code{x} is used. The stream is left open. This uses the streaming format
or the binary file format depending on the type of the writer.
\item A string file path: \code{x} is serialized with
a \link[=RecordBatchFileWriter]{arrow::RecordBatchFileWriter}, i.e.
using the binary file format.
\item A raw vector: typically of length zero (its data is ignored, and only used for
dispatch). \code{x} is serialized using the streaming format, i.e. using the
\link[=RecordBatchStreamWriter]{arrow::RecordBatchStreamWriter}
}}

\item{...}{extra parameters, currently ignored

\code{write_arrow} is a convenience function, the classes \link[=RecordBatchFileWriter]{arrow::RecordBatchFileWriter}
and \link[=RecordBatchStreamWriter]{arrow::RecordBatchStreamWriter} can be used for more flexibility.}
}
\value{
the input \code{x} invisibly.
}
\description{
Write Arrow formatted data
}
