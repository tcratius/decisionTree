% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/decisionTree.R
\name{decisionTree}
\alias{decisionTree}
\title{decisionTree}
\usage{
decisionTree(d, eta = 10, purity = 0.95, minsplit = 10)
}
\arguments{
\item{d}{data.frame, dependant variable must be in the first column and must be a character}

\item{eta}{stop criterium, size of a leaf}

\item{purity}{stop criterium, purity of a leaf}

\item{minsplit}{do not split nodes that are smaller than minsplit}
}
\value{
A \code{DecisionTreeObject} consists of two slots: resultDF and nodeChoices.
}
\description{
Decision tree algorithm uses information gain (entropy) as a division criterium, works both for categorical and numerical attributes. Based on Zaki, Meira Jr., Data Mining and Analysis, p.481-496.
}
\examples{
d <- iris[, c("Species", "Sepal.Length", "Sepal.Width")]
d$Species <- as.character(d$Species)
d$Species[d$Species != "setosa"] <- "non-setosa"
x <- d$Sepal.Length
x[d$Sepal.Length <= 5.2] <- "Very Short"
x[d$Sepal.Length >  5.2 & d$Sepal.Length <= 6.1] <- "Short"
x[d$Sepal.Length >  6.1 & d$Sepal.Length <= 7.0] <- "Long"
x[d$Sepal.Length >  7.0] <- "Very Long"
d$Sepal.Length <- x
decisionTree(d, eta = 5, purity=0.95, minsplit=0)
}
\keyword{decision}
\keyword{gain}
\keyword{information}
\keyword{tree,}
