% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/renal_function.R
\name{estimate_gfr_mdrd}
\alias{estimate_gfr_mdrd}
\title{Estimate creatinine clearance and glomerular filtration rate using the MDRD formula}
\usage{
estimate_gfr_mdrd(creatinine, age, is_female, is_african_american)
}
\arguments{
\item{creatinine}{Creatinine (\eqn{\text{μmol} \text{l}^{-1}}).}

\item{age}{Age (years).}

\item{is_female}{\code{TRUE} if patient is female, \code{FALSE} if patient is
male.}

\item{is_african_american}{\code{TRUE} if patient is African-American, \code{FALSE} if patient is not.}
}
\value{
eGFR (\eqn{\text{ml} \text{min}^{-1} 1.73 \text{m}^{-2}}), or \code{NA} if any parameters are \code{NA}.
}
\description{
The MDRD formula is: \eqn{175 \times (\frac{\text{creatinine}}{88.4})^{-1.154} \times (\text{age})^{-0.203} \times S \times A}, where \eqn{S} is 1 for males and 0.742 for females and \eqn{A} is 1.212 for African-Americans and 1 for non-African-Americans. This is the so-called 4-variable version (as opposed to the 6-variable version).
}
\section{Caveats}{

Note that this formula returns an eGFR for a standardised body surface area of 1.73 \eqn{m^2}. The MDRD formula may underestimate actual glomerular filtration rate in healthy patients. The original publication used 186 as a constant, but this was later revised to 175 provided the laboratory had calibrated its serum creatinine measurements to isotope dilution mass spectrometry (and therefore, 175 is used here). The factor 'African-American' was published as black/non-black - I do not know if this is an acceptable/usable generalisation for all people with a black skin tone (or for people of other non-Caucasian, non-African-American descent for that matter).
}

\references{
\href{https://doi.org/10.7326/0003-4819-130-6-199903160-00002}{Levey, A. S. A More Accurate Method To Estimate Glomerular Filtration Rate from Serum Creatinine: A New Prediction Equation. Ann Intern Med 130, 461 (1999).} and \href{https://doi.org/10.7326/0003-4819-145-4-200608150-00004}{Levey, A. S. et al. Using Standardized Serum Creatinine Values in the Modification of Diet in Renal Disease Study Equation for Estimating Glomerular Filtration Rate. Ann Intern Med 145, 247 (2006). }
}
\seealso{
\code{\link[units:set_units]{units::set_units()}}, \code{\link[units:drop_units]{units::drop_units()}}
}
