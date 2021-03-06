% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wflow_open.R
\name{wflow_open}
\alias{wflow_open}
\title{Open R Markdown analysis file(s)}
\usage{
wflow_open(files, change_wd = TRUE, edit_in_rstudio = TRUE,
  project = ".")
}
\arguments{
\item{files}{character. R Markdown file(s) to open. Files must have the
extension Rmd or rmd. Supports file
\href{https://en.wikipedia.org/wiki/Glob_(programming)}{globbing}. Set
\code{project = NULL} to create an R Markdown file outside of the R
Markdown directory of a workflowr project.}

\item{change_wd}{logical (default: TRUE). Change the working directory to the
knit directory. If \code{project = NULL}, the working directory is
\bold{not} changed.}

\item{edit_in_rstudio}{logical (default: TRUE). Open the file(s) in the
RStudio editor.}

\item{project}{character (or NULL). By default the function assumes the
current working directory is within the project. If this is not true,
you'll need to provide the path to the project directory. Set \code{project
= NULL} if running this command to create a file for a non-workflowr
project.}
}
\value{
An object of class \code{wflow_open}, which is a list with the
  following elements:

  \item{files}{The input argument \code{files} as absolute paths.}

  \item{change_wd}{The input argument \code{change_wd}.}

  \item{edit_in_rstudio}{The input argument \code{edit_in_rstudio}.}

  \item{knit_root_dir}{The knit directory (see \code{\link{wflow_html}} for
  details). This is \code{NULL} if \code{project} was set to \code{NULL}.}

  \item{previous_wd}{The working directory in which \code{wflow_open} was
  executed.}

  \item{new_wd}{The working directory that \code{wflow_open} changed to. The
  value is \code{NULL} if the working directory was not changed.}

  \item{files_new}{The subset of the input argument \code{files} that were
  newly created. Paths are absolute.}
}
\description{
\code{wflow_open} opens R Markdown files in RStudio and sets the working
directory to the knit directory (see Details). If a file does not exist, a
minimal one is created.
}
\details{
\code{wflow_open} is a convenience function to make it easier to begin
working, especially when starting a new analysis. First, it creates a new
file if necessary and tries to make educated guesses about metadata like the
title, author, and date. Second, it sets the working directory to the knit
directory. The knit directory is where the code in the R Markdown files is
executed, and may be defined via the field \code{knit_root_dir} in the file
\code{_workflowr.yml} (see \code{\link{wflow_html}} for all the details). If
this field is not defined, then the knit directory is the R Markdown
directory. Third, it opens the file(s) in RStudio if applicable. The latter
two side effects can be turned off if desired.

If you would like to create an R Markdown file with \code{wflow_open} for an
analysis that is not part of a workflowr project, set \code{project = NULL}.
Otherwise \code{wflow_open} will throw an error. Note that the working
directory is \bold{not} changed when \code{project = NULL}.
}
\examples{
\dontrun{
wflow_open("analysis/model-data.Rmd")
# Multiple files
wflow_open(c("analysis/model-data.Rmd", "analysis/another-analysis.Rmd"))
# Open all R Markdown files
wflow_open("analysis/*Rmd")
# Create an R Markdown file in a non-worklowr project
wflow_open("model-data.Rmd", project = NULL)
}
}
