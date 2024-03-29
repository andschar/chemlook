% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chemlook.R
\name{cl_query}
\alias{cl_query}
\title{Query the chemical lookup up database..}
\usage{
cl_query(
  query = NULL,
  query_match = "exact",
  from = NULL,
  what = "id",
  force_download = FALSE
)
}
\arguments{
\item{query}{A query string.}

\item{query_match}{Should the query be matched exactly (default) or fuzzily?}

\item{from}{Which identifier should the query string be matched against? See
details for more information.}

\item{what}{What should be returned? Can be one of 'id' (default), 'class'
and 'prop'.}

\item{force_download}{Force download anyway? Helpful if downloaded file is corrupt.}
}
\value{
Returns a data.table.
}
\description{
Query the chemical lookup up database..
}
\details{
The from argument can be one of the following identifiers:
\itemize{
  \item \code{'cl_id'} - chemlook identifier
  \item \code{'name'} - Chemical common name
  \item \code{'bvl_id'} - Identifier of the German Bundesamt für
  Verbraucherschutz und Lebensmittelsicherheit (BVL)
  \item \code{'cas'} - CAS registry number
  \item \code{'chebiid'} - ChEBI identifier
  \item \code{'chemspiderid'} - Chemspider identifier
  \item \code{'dtxsid'} - EPA Dashboard
  \item \code{'formula'} - Chemical formula
  \item \code{'inchi'} - Inchi identifier
  \item \code{'inchikey'} - Inchikey identifier
  \item \code{'norman_susdat_id'} - NORMAN network - Identifier
  \item \code{'pubchem_cid'} - Pubchem identifier
  \item \code{'smiles'} - Smiles
}
}
\examples{
query = c('1071-83-6', '100-00-5')
cl_query(query, from = 'cas')
query = 'glyph'
cl_query(query, query_match = 'fuzzy')

}
\author{
Andreas Scharmueller \email{andschar@proton.me}
}
