\name{egodata}
\alias{as.egodata}
\alias{as.egodata.data.frame}
\alias{egodata.object}
\alias{egodata}
\alias{na.omit.egodata}
\alias{dim.egodata}
\alias{dimnames.egodata}
\alias{sample.egodata}
\title{
  Convert to or Construct \code{\link{egodata}} Objects
}
\description{
  \code{\link{as.egodata}} is a generic function to construct
  \code{\link{egodata}} objects from a variety of
  sources. \code{\link{egodata}} function is the standard constructor,
  taking two data frames. For other methods for this class, see the Miscellaneous Methods section.
}
\usage{
as.egodata(object, \dots, egoIDcol = "egoID")

\method{as.egodata}{data.frame}(object, alters, egoWt = 1, ..., egoIDcol="egoID")

egodata(egos, alters, egoWt=1, ..., egoIDcol="egoID")

}
\arguments{
  \item{object, egos}{
    The object from which the egocentric data should be constructed. For
    the \code{\link{data.frame}} methods and \code{\link{egodata}}
    itself, a data frame containing at least the column named in
    \code{egoIDcol}, whose values must all be unique. Other columns
    contain information about the egos.
  }

  \item{alters}{ A data frame containing at least the column named in
    \code{egoIDcol}, whose values do not have to be unique, and not
    every ego must be represented. Other columns contain information
    about the alters.  }

  \item{egoWt}{A vector of the same length as number of rows in
    \code{egos} or \code{object}, containing the relative sampling
    weight of each ego.}

  \item{\dots}{
    Additional arguments; currently unused.
}
  \item{egoIDcol}{
    Name of the column in the ego table containing the unique ego identifier.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
  An \code{\link{egodata}} object. The object is a list containing the
  following elements:
  
  \item{egos}{
    A data frame with one row for each ego, containing at least the column named in
    \code{egoIDcol}, and other columns
    containing attributes of the egos.
  }
  
  \item{alters}{ A data frame containing at least the column named in
    \code{egoIDcol}, and other columns containing attributes of the alters.  }
    
  \item{egoWt}{A vector of the same length as the number of egos,
    containing the relative sampling weight of each ego.}
  
  \item{egoIDcol}{
    Name of the column in the ego table containing the unique ego identifier.
  }
  
}

\section{Miscellaneous Methods}{
  The following "standard" methods have also been implemented for
  \code{\link{egodata}}:
  \describe{
    \item{\code{\link{dim.egodata}}}{A vector with three elements containing
      the "dimensions" of the \code{\link{egodata}} object: number of
      egos, number of columns in the \code{egos} table, and number of
      columns in the \code{alters} table, inclsive of the ego
      identifier column. As a corollary, \code{\link{nrow}} returns the
      number of egos in the dataset.
    }

    \item{\code{\link{dimnames.egodata}}}{A list with three elements containing
      the "dimension names" of the \code{\link{egodata}} object: ego
      IDs, column names of the \code{egos} table, and column names of the \code{alters} table, inclsive of the ego
      identifier column.
    }

    \item{\code{\link{sample.egodata}}}{
      As \code{\link{sample}}, but takes and returns a simulated \code{\link{egodata}} dataset by resampling
      egos, adjusting ego weights as necessary, if weighted sampling
      was used.
    }
    
    \item{\code{\link{na.omit.egodata}}}{
      As \code{\link{na.omit.data.frame}}, but takes and returns an
      \code{\link{egodata}} dataset, with egos with \code{NA} in their
      rows or in their alters' rows. An optional argument
      \code{relevant}, defaulting to all columns, can be used to select (by index or name) based on
      which columns an ego may be dropped. (I.e., \code{NA}s in those not "relevant"
      are ignored.)
    }
  }
}

\references{
%% ~put references to the literature/web site here ~
}
\author{
  Pavel N. Krivitsky
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
  \code{\link{as.network.egodata}}, \code{\link{as.egodata.network}},
  \code{\link{subset.egodata}}, \code{\link{[.egodata}}
}
\examples{
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line