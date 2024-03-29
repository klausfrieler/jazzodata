% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/jazzodata-package.R
\docType{data}
\name{wjd_meta}
\alias{wjd_meta}
\title{Weimar Jazz Database Metadata}
\format{
A tibble with 456 rows and 33 variables:
\describe{
 \item{id}{Solo ID}
\item{signature}{Annotated signature (possible more than one, space separate,  or FREE)}
\item{number_notes}{Number of events}
\item{performer}{Performer}
\item{title}{Title}
\item{titleaddon}{Add-on for title}
\item{solopart}{Running number of a solo in a piece}
\item{full_title}{Full title (including solo part and title addon)}
\item{instrument}{Instrument of the soloist. One of ts, ts-c, as, bs, bsx, cbsx, ss, sss, cl, bcl, acl, tp, tpt, flgn, tb, fl, cor, ptp, frhn, ob, voc  or empty}
\item{style}{Style of piece. One of TRADITIONAL, SWING,  BEBOP, COOL, HARDBOP, POSTBOP, FREE, FUSION, OTHER, MIX  or empty}
\item{avgtempo}{Avg. Tempo (bpm)}
\item{tempoclass}{Tempo class. One of SLOW, MEDIUM SLOW, MEDIUM, MEDIUM UP, UP or empty}
\item{rhythmfeel}{Basic rhythmic feel/groove style. One of TWOBEAT, SWING, BALLAD, LATIN, FUNK or empty}
\item{key}{Key or tonal center of the piece}
\item{filename_sv}{Filename of originating SV project file}
\item{status}{Status of transcription. One of PREFINAL, FINAL, DRAFT, ASSIGNED or empty}
\item{composer}{Composer of the piece}
\item{tonality_type}{Tonality type of the composition. One of FUNCTIONAL, MODAL, COLOR, FREE, BLUES, JAZZ-BLUES or empty}
\item{genre}{Genre of the composition. One of TRADITIONAL, BLUES, GREAT AMERICAN SONGBOOK, WORMS, ORIGINAL, RIFF or empty}
\item{form}{Form of the composition}
\item{signature}{Signature(s) of solo}
\item{mbzid}{Music Brainz ID}
\item{recordingdate}{Recording date(s) of containing record}
\item{recordingyear}{Recording year of containing record}
\item{recordbib}{Bibliography of record}
\item{recordtitle}{Title of containing record}
\item{label}{Record label of containing record}
\item{solostart}{Start time of solo in full track}
\item{soloend}{End time of solo in full track}
\item{lineup}{Line-up of track}
\item{chord_changes}{Chord changes as compact string}
\item{chorus_count}{Number of full choruses in the solo}
\item{harmony_template}{Underlying harmony template of composition}
\item{solo_time}{Start/End of solo in surrounding track}
}
}
\usage{
wjd_meta
}
\description{
Metadata for the 456 solos of the Weimar Jazz Database (WJD).
See \url{https://jazzomat.hfm-weimar.de/dbformat/glossary.html} for further information.
}
