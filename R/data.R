#' Essen Folk Song Collection (Jazzomat version) Metadata
#'
#' Metadata for the  Essen Folk Song Collection (EFSC or ESAC) with 7.825 tunes (as provided by the Jazzomat project).
#' @name esac_meta
#' @usage esac_meta
#' @docType data
#' @format A tibble with 7289 rows and 14 variables:
#' \describe{
#' \item{id}{ESAC ID of the tune (not completely unique!)}
#' \item{collection}{Collection}
#' \item{esac_title}{Orignal EsAC title}
#' \item{region}{Region of origin}
#' \item{esac_key}{Annotated key (tonic)}
#' \item{unit}{Annotated minimal rhythmic unit}
#' \item{signature}{Annotated signature (possible more than one, space separate,  or FREE)}
#' \item{source}{Annotated key (tonic)}
#' \item{comment}{Comment section}
#' \item{cnr}{CNR section (with yet unknown meaning!)}
#' \item{tunefamily}{Tunefamily based on EsAC-Ids}
#' \item{text}{Annotated lyrics}
#' \item{melstring}{Original melody code}
#' \item{signature}{Signature(s) of solo}
#' }
"esac_meta"

