% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wflow_toc.R
\name{wflow_toc}
\alias{wflow_toc}
\title{Add a table of content on the clipboard}
\usage{
wflow_toc(gh_url = "https://jdblischak.github.io",
  proj_url = "workflowr")
}
\arguments{
\item{gh_url}{character. The Github Pages root directory.}

\item{proj_url}{character. The project name.}
}
\value{
text character. The list of table of content in the markdown syntax.
}
\description{
\code{wfow_toc} add a table of content on the clipboard. The users can paste it
in the \code{index.Rmd} document. The table of content includes all \code{html} document
in the \code{docs} directory the users want to display.
}
