#' @keywords internal
"_PACKAGE"

# The following block is used by usethis to automatically manage
# roxygen namespace tags. Modify with care!
## usethis namespace: start
#' @importFrom tibble tibble
## usethis namespace: end
NULL

#' Weimar Jazz Database Transformations
#'
#' Some basic transformations (also known as viewpoints) from the Weimar Jazz Database (WJD). See \url{https://jazzomat.hfm-weimar.de/melospy/melospy.html} for further information.
#' @name wjd_transforms
#' @usage wjd_transforms
#' @docType data
#' @format A tibble with 200,809 rows and 17 variables:
#' \describe{
#' \item{id}{Solo ID}
#' \item{melid}{Numerical Solo ID}
#' \item{event_id}{Numerical event ID}
#' \item{beat_id}{WJD-wide Unique beat ID (<melid>_<bar>_<beat>)}
#' \item{bar}{Bar number in solo}
#' \item{beat}{Beat under bar, 1-based}
#' \item{tatum}{Tatum position under beat, 1-based}
#' \item{division}{Max division of current beat}
#' \item{period}{Current beat period}
#' \item{cdpcx_raw}{Raw output of note-wise CDPCX values}
#' \item{cpc_raw}{Raw output (CPC values of all melody notes)}
#' \item{durclass_abs_raw}{Raw output of duration classes (absolute mode)}
#' \item{durclass_rel_raw}{Raw output of duration classes (relative mode)}
#' \item{fuzzyint_raw}{Raw output (Fuzzy interval values over the full melody)}
#' \item{articulation_raw}{Ratios of durations to interonset-intervals}
#' \item{phrase_id_raw}{Sequence of event-wise phrase IDs}
#' \item{chords}{Sequence of event-wise chord symbols (as annotated and normalized)}
#' \item{chords_raw}{Same as chords)}
#' \item{int_raw}{ist of semitone intervals}
#' \item{ioiclass_abs_raw}{Raw output of IOI classes of all melody notes (absolute mode)}
#' \item{ioiclass_rel_raw}{Raw output of IOI classes of all melody notes (relative mode)}
#' \item{mcm_48}{Position in metrical circle map with N=48 divisions}
#' \item{pc_raw}{Raw output (values for all melody notes)}
#' \item{pitch_raw}{Raw output (values of all melody notes)}
#' \item{g_phrase_id}{Global phrase id across WJD (<melid>_<phrase_id_raw>))}
#' \item{phrase_pos}{Enumeration of positions in a phrase}
#' \item{MLA_main_type}{Main type (line, lick, rhythm, melody, theme, quote, void, expressive, fragment) of containing mid-level unit}
#' \item{MLA_length}{Length in number of notes of containing mid-level unit}
#' \item{MLA_pos}{Enumeration of event position in containing mid-level unit}
#' }
"wjd_transforms"

#' Weimar Jazz Database tone-based sound features
#'
#' Loudness (resp. intensity) related values for single tone events have been extracted from jazz solos by means of
#' sophisticated MIR techniques and are stored in the WJD
#' database, where five different values are available: Maximum, median and standard deviation of loudness,
#' relative position of loudness peak and temporal centroid. Here, only a meaningful subset is included.
#' See \url{https://jazzomat.hfm-weimar.de/melospy/transformations.html} for further information.
#' @name wjd_tone
#' @docType data
#' @format A tibble with 200,809 rows and 13 variables:
#' \describe{
#' \item{id}{Solo ID}
#' \item{modulation}{Annonated modulation per tone}
#' \item{modulation_short}{Annonated modulation per tone (short label)}
#' \item{f0_mod_range_cents}{Extracted modulation range (cents)}
#' \item{f0_mod_freq}{Extracted modulation range (Hz)}
#' \item{f0_median_dev}{Extracted median deviation from nominal 12TET pitch (cents)}
#' \item{loudness_max}{Maximum loudness values per tone}
#' \item{loudness_med}{Median loudness values per tone}
#' \item{loudness_sd}{Standard deviation of loudness per tone}
#' \item{loudness_rel_peak_pos}{Relative position of maximum loudness value, duration of tone equals 1}
#' \item{loudness_temp_cent}{Normed temporal centroid of loudness curve per tone, duration of tone equals 1}
#' \item{loudness_s2b}{Ratio of solo loudness (median) to backing track loudness (median)}
#' \item{recordingyear}{Recording year of containing record}
#' }
"wjd_tone"

#' Weimar Jazz Database tonality based features
#'
#' This data frame contains the most important features and meta-data for tonal analysis. Specifically, it contains a local
#' scale degree annotation created with the corresponding functions from \code{parkR}-package.
#' This also means, it contain fewer solos (444) than the WJD (456 solos), as not all solo have annotated chords that allow such an harmonic
#' analysis
#' @name wjd_tpc
#' @docType data
#' @format A tibble with 184,015 rows and 30 variables:
#' \describe{
#' \item{id}{Solo ID}
#' \item{cdpcx}{Extended chordal diationic pitch classes}
#' \item{cpc}{Chordal diationic pitch classes}
#' \item{bar}{Measure number}
#' \item{beat}{Beat number in metrical annotations}
#' \item{division}{Beat division in tatums }
#' \item{mcm_48}{Metrical circle map position (0-47)}
#' \item{period}{Number of beats in current bar}
#' \item{tatum}{Tatum position under beat of current event}
#' \item{pc}{Pitch class (C4 = 0)}
#' \item{pitch}{MIDI-Pitch  (C4 = 60)}
#' \item{melid}{Numerical Solo ID}
#' \item{beat_id}{Beat ID, unique enumeration of all WJD beats, format <melid>_<bar_number>_<beatnumber>}
#' \item{form_name}{Form name of current form part}
#' \item{chord}{Current chord}
#' \item{local_key}{Local key according to harmonic analysis}
#' \item{local_scale_degree}{Roman step annotation of current chord according to harmonic analysis}
#' \item{tonic}{Tonic of current chord (note name or NA)}
#' \item{key_pc}{Pitch class of current local key (0 to 11 and NA)}
#' \item{key}{Overall annotated key of the composition}
#' \item{genre}{Genre of the composition. One of TRADITIONAL, BLUES, GREAT AMERICAN SONGBOOK, WORMS, ORIGINAL, RIFF or empty}
#' \item{performer}{Performer of the solo)}
#' \item{title}{Title}
#' \item{recordingyear}{Recording year of containing record}
#' \item{rhythmfeel}{Basic rhythmic feel/groove style. One of TWOBEAT, SWING, BALLAD, LATIN, FUNK or empty}
#' \item{style}{Style of piece. One of TRADITIONAL, SWING,  BEBOP, COOL, HARDBOP, POSTBOP, FREE, FUSION, OTHER, MIX  or empty}
#' \item{tempoclass}{Tempo class. One of SLOW, MEDIUM SLOW, MEDIUM, MEDIUM UP, UP or empty}
#' \item{tonality_type}{Tonality type of the composition. One of FUNCTIONAL, MODAL, COLOR, FREE, BLUES, JAZZ-BLUES or empty}
#' }
"wjd_tpc"

#' Weimar Jazz Database annotated beat tracks
#'
#' This data frame contains the beat tracks from the Weimar Jazz Database with extra local key annotations.
#' @name wjd_annotated_beat_tracks
#' @docType data
#' @format A tibble with 132,325 rows and 17 variables:
#' #' \describe{
#' \item{onset}{Onset of beat}
#' \item{duration}{Beat duration}
#' \item{period}{Beats in a bar}
#' \item{division}{Division of beat}
#' \item{bar}{Bar number}
#' \item{beat}{beat in bar}
#' \item{signature}{Time signature}
#' \item{chord}{Chord annotations}
#' \item{form}{Forma label}
#' \item{chorus_id}{Id of chorus in solos}
#' \item{bass}{Extimated bass pitch at this beat}
#' \item{id}{Solo ID}
#' \item{melid}{Numerical Solo ID}
#' \item{chord_change}{Flag whether chord changes here.}
#' \item{melid}{Integer version of solo ID (1 --456)}
#' \item{beat_id}{Unique beat identfier (melid_bar_beat)}
#' \item{local_scale_degree}{Local scale degree of this chord in local key (as per algorithm)}
#' \item{local_key}{Local key context for this chord (as per algorithm)}
#'}
"wjd_annotated_beat_tracks"

#' Weimar Jazz Database Scalar features
#'
#' Most of available scalar features from the Weimar Jazz Database (WJD), including the most relevant metadata.
#'  See \url{https://jazzomat.hfm-weimar.de/melospy/transformations.html} for further information.
#' @name wjd_features
#' @usage wjd_features
#' @docType data
#' @format A tibble with 45 rows and 169 variables:
#' \describe{
#' \item{id}{Solo ID}
#' \item{melid}{Numerical Solo ID}
#' \item{mean_length_arpeggio_ascending}{Mean length of ascending arpeggios}
#' \item{mean_length_arpeggio_descending}{Mean length of descending arpeggios}
#' \item{mean_length_arpeggio}{Mean length of arpeggios (mixed up/down thirds)}
#' \item{cdpcx_density_1}{Relative frequency CDPCX = '1'}
#' \item{cdpcx_density_2}{Relative frequency CDPCX = '2'}
#' \item{cdpcx_density_3}{Relative frequency CDPCX =  '3'}
#' \item{cdpcx_density_4}{Relative frequency CDPCX =  '4'}
#' \item{cdpcx_density_5}{Relative frequency CDPCX =  '5'}
#' \item{cdpcx_density_6}{Relative frequency CDPCX =  '6'}
#' \item{cdpcx_density_T}{Relative frequency CDPCX =  'T'}
#' \item{cdpcx_density_B}{Relative frequency CDPCX =  'B'}
#' \item{cdpcx_density_L}{Relative frequency CDPCX = 'L'}
#' \item{cdpcx_density_b2}{Relative frequency CDPCX =  '-' (b2)}
#' \item{cdpcx_density_b6}{Relative frequency CDPCX =  '\%' (b6)}
#' \item{recordingyear}{Recording year of containing record}
#' \item{mean_length_arpeggio_ascending}{Mean length of ascending arpeggios}
#' \item{mean_length_arpeggio_descending}{Mean length of descending arpeggios}
#' \item{mean_length_arpeggio}{Mean length of arpeggios (mixed up/down thirds)}
#' \item{cdpcx_density_1}{Relative frequency CDPCX = '1'}
#' \item{cdpcx_density_2}{Relative frequency CDPCX = '2'}
#' \item{cdpcx_density_3}{Relative frequency CDPCX =  '3'}
#' \item{cdpcx_density_4}{Relative frequency CDPCX =  '4'}
#' \item{cdpcx_density_5}{Relative frequency CDPCX =  '5'}
#' \item{cdpcx_density_6}{Relative frequency CDPCX =  '6'}
#' \item{cdpcx_density_T}{Relative frequency CDPCX =  'T'}
#' \item{cdpcx_density_B}{Relative frequency CDPCX =  'B'}
#' \item{cdpcx_density_L}{Relative frequency CDPCX = 'L'}
#' \item{cdpcx_density_b2}{Relative frequency CDPCX =  '-' (b2)}
#' \item{cdpcx_density_b6}{Relative frequency CDPCX =  '\%' (b13)}
#' \item{cdpcx_density_7}{Relative frequency CDPCX =  '7'}
#' \item{cdpcx_entropy}{Normalized entropy of CDPCX distribution}
#' \item{mean_length_chromatic_ascending}{Mean length of ascending chromatic passages}
#' \item{mean_length_chromatic_descending}{Mean length of descending chromatic passages}
#' \item{mean_length_chromatic_mixed}{Mean length of chromatic passages (up and down combined)}
#' \item{cpc_bigram_entropy}{Unnormalized Entropy of bigram distribution in bits}
#' \item{cpc_hist_density_00}{Relative frequency CPC = 0}
#' \item{cpc_hist_density_01}{Relative frequency CPC = 1}
#' \item{cpc_hist_density_02}{Relative frequency CPC = 2}
#' \item{cpc_hist_density_03}{Relative frequency CPC = 3}
#' \item{cpc_hist_density_04}{Relative frequency CPC = 4}
#' \item{cpc_hist_density_05}{Relative frequency CPC = 5}
#' \item{cpc_hist_density_06}{Relative frequency CPC = 6}
#' \item{cpc_hist_density_07}{Relative frequency CPC = 7}
#' \item{cpc_hist_density_08}{Relative frequency CPC = 8}
#' \item{cpc_hist_density_09}{Relative frequency CPC = 9}
#' \item{cpc_hist_density_10}{Relative frequency CPC = 10}
#' \item{cpc_hist_density_11}{Relative frequency CPC = 11}
#' \item{cpc_circ_mean_angle}{Angle of circular mean of CPC distribution}
#' \item{cpc_circ_var}{Circular variance of CPC distribution (=1-length of circular mean)}
#' \item{cpc_entropy}{Normalized entropy of CPC distribution}
#' \item{durclass_bigram_entropy}{Unnormalized Entropy of bigram distribution in bits}
#' \item{durclass_abs_hist_01_very_short}{Relative frequency very short}
#' \item{durclass_abs_hist_02_short}{Relative frequency short}
#' \item{durclass_abs_hist_03_medium}{Relative frequency medium}
#' \item{durclass_abs_hist_04_long}{Relative frequency long}
#' \item{durclass_abs_hist_05_very_long}{Relative frequency very long}
#' \item{durclass_rel_hist_01_very_short}{Relative frequency very short}
#' \item{durclass_rel_hist_02_short}{Relative frequency short}
#' \item{durclass_rel_hist_03_medium}{Relative frequency medium}
#' \item{durclass_rel_hist_04_long}{Relative frequency long}
#' \item{durclass_rel_hist_05_very_long}{Relative frequency very long}
#' \item{durclass_abs_entropy}{Entropy of absolute duration class distributions}
#' \item{durclass_rel_entropy}{Entropy of relative duration class distributions}
#' \item{durclass_mean_seg_len}{Mean run-length averaged over all classes}
#' \item{mean_seg_len_01_very_short}{Mean run-length for very short events}
#' \item{mean_seg_len_02_short}{Mean run-length for short events}
#' \item{mean_seg_len_03_medium}{Mean run-length for medium long events}
#' \item{mean_seg_len_04_long}{Mean run-length for long events}
#' \item{mean_seg_len_05_very_long}{Mean run-length for very long events}
#' \item{fuzzyint_bigram_entropy}{Unnormalized Entropy of bigram distribution in bits}
#' \item{fuzzyint_hist_09_big_jump_down}{Relative frequency big jump down (-4)}
#' \item{fuzzyint_hist_08_jump_down}{Relative frequency jump down (-3)}
#' \item{fuzzyint_hist_07_leap_down}{Relative frequency leap down ( -2)}
#' \item{fuzzyint_hist_06_step_down}{Relative frequency step down (-1)}
#' \item{fuzzyint_hist_05_repeat}{Relative frequency repetition (0)}
#' \item{fuzzyint_hist_04_step_up}{Relative frequency step up (+1)}
#' \item{fuzzyint_hist_03_leap_up}{Relative frequency leap up (+2)}
#' \item{fuzzyint_hist_02_jump_up}{Relative frequency jump up (+3)}
#' \item{fuzzyint_hist_01_big_jump_up}{Relative frequency big jump up (+4)}
#' \item{fuzzyint_entropy}{Normalized entropy of FUZZYINT distribution}
#' \item{art_median}{Median of articulation distribution}
#' \item{art_std}{Standard deviation of articulation distribution}
#' \item{art_range}{Range of of articulation distribution}
#' \item{event_density}{Event density (notes per seconds)}
#' \item{total_duration}{Total duration in seconds}
#' \item{metrical_event_density}{Event density (notes per bar). WARNING: Might not be working properly with meter changes}
#' \item{total_duration_bar}{Total duration in fractional bar units (e.g., 6 Quarter notes in 4/4 timing are 1.5 bars long)}
#' \item{number_notes}{Number of events}
#' \item{performer}{Performer}
#' \item{title}{Title}
#' \item{instrument}{Instrument of the soloist. One of ts, ts-c, as, bs, bsx, cbsx, ss, sss, cl, bcl, acl, tp, tpt, flgn, tb, fl, cor, ptp, frhn, ob, voc  or empty}
#' \item{style}{Style of piece. One of TRADITIONAL, SWING,  BEBOP, COOL, HARDBOP, POSTBOP, FREE, FUSION, OTHER, MIX  or empty}
#' \item{avgtempo}{Avg. Tempo (bpm)}
#' \item{rhythmfeel}{Basic rhythmic feel/groove style. One of TWOBEAT, SWING, BALLAD, LATIN, FUNK or empty}
#' \item{tonality_type}{Tonality type of the composition. One of FUNCTIONAL, MODAL, COLOR, FREE, BLUES, JAZZ-BLUES or empty}
#' \item{int_bigram_entropy}{Unnormalized Entropy of bigram distribution in bits}
#' \item{mean_length_chromatic_sequences}{Mean run-length of chromatic passages}
#' \item{ratio_chromatic_sequences}{Percentage of of chromatic passages}
#' \item{int_std}{Standard deviation of interval distribution}
#' \item{int_min}{Minimum of of interval distribution}
#' \item{int_range}{Range of of interval distribution}
#' \item{int_entropy}{Entropy of interval distribution (bits)}
#' \item{abs_int_mean}{Mean of absolute interval distribution}
#' \item{abs_int_range}{Range of absolute interval distribution}
#' \item{ioiclass_bigram_entropy}{Unnormalized Entropy of bigram distribution in bits}
#' \item{ioiclass_abs_hist_04_long}{Relative frequency long (absolute mode)}
#' \item{ioiclass_rel_hist_02_short}{Relative frequency short (relative  mode)}
#' \item{ioiclass_rel_hist_04_long}{Relative frequency long (relative mode)}
#' \item{ioiclass_rel_hist_05_very_long}{Relative frequency very long (relative mode)}
#' \item{ioiclass_abs_hist_01_very_short}{Relative frequency very short  (absolute mode)}
#' \item{ioiclass_abs_hist_02_short}{Relative frequency short  (absolute mode)}
#' \item{ioiclass_abs_hist_03_medium}{Relative frequency medium (absolute mode)}
#' \item{ioiclass_abs_hist_05_very_long}{Relative frequency very long (absolute mode)}
#' \item{ioiclass_rel_hist_01_very_short}{Relative frequency very short (relative  mode)}
#' \item{ioiclass_rel_hist_03_medium}{Relative frequency medium (relative mode)}
#' \item{ioiclass_abs_entropy}{Entropy of absolute inter-onset interval class distributions}
#' \item{ioiclass_rel_entropy}{Entropy of relative inter-onset interval class distributions}
#' \item{aic_mean_seg_len}{Mean run-length averaged over all classes (absolute mode)}
#' \item{aic_mean_seg_len_01_very_short}{Mean run-length for very short events (absolute mode)}
#' \item{aic_mean_seg_len_02_short}{Mean run-length for short events (absolute mode)}
#' \item{aic_mean_seg_len_03_medium}{Mean run-length for medium long events (absolute mode)}
#' \item{aic_mean_seg_len_04_long}{Mean run-length for long events (absolute mode)}
#' \item{aic_mean_seg_len_05_very_long}{Mean run-length for very long events (absolute mode)}
#' \item{ric_mean_seg_len}{Mean run-length averaged over all classes (relative mode)}
#' \item{ric_mean_seg_len_01_very_short}{Mean run-length for very short events (relative mode)}
#' \item{ric_mean_seg_len_02_short}{Mean run-length for short events (relative mode)}
#' \item{ric_mean_seg_len_03_medium}{Mean run-length for medium long events (relative mode)}
#' \item{ric_mean_seg_len_04_long}{Mean run-length for long events  (relative mode)}
#' \item{ric_mean_seg_len_05_very_long}{Mean run-length for very long events (relative mode)}
#' \item{mcm_mean_angle}{Angle of circular mean of MCM distribution}
#' \item{mcm_var}{Circular variance of MCM distribution (=1-length of circular mean)}
#' \item{mcm_entropy}{Normalized entropy of MCM distribution}
#' \item{syncopicity}{Ratio of syncopated events to non-syncopated events}
#' \item{metric_complexity}{Combined metric complexity after Frieler, in preparation}
#' \item{metric_complexity_division}{Division-based metric complexity after Frieler, in preparation}
#' \item{metric_complexity_compression}{Compression-based metric complexity after Frieler, in preparation}
#' \item{parsons_bigram_entropy}{Unnormalized Entropy of bigram distribution in bits}
#' \item{parsons_hist_descending}{Relative frequency for down (-1)}
#' \item{parsons_hist_constant}{Relative frequency for repeat (0)}
#' \item{parsons_hist_ascending}{Relative frequency for up (+1)}
#' \item{parsons_entropy}{Normalized entropy of Parson's Code distribution}
#' \item{mean_length_seq_ascending}{Mean length of ascending passages}
#' \item{mean_length_seq_descending}{Mean length of descending passages}
#' \item{mean_length_seq_repitition}{Mean length of repetitions}
#' \item{recordingyear}{Recording year of containing record}
#' \item{ratio_ascending_descending}{Ratio of ascending to descending intervals}
#' \item{mean_number_of_unique_pc}{Average number of different pitch classes per phrase}
#' \item{pc_circ_var}{Circular variance of PC distribution (=1-length of circular mean)}
#' \item{pc_entropy}{Normalized entropy of PC distribution}
#' \item{pitch_entropy}{Entropy of PITCH distribution (bits)}
#' \item{f0_mod_range_cents}{Extracted modulation range (cents)}
#' \item{f0_mod_freq}{Extracted modulation range (Hz)}
#' \item{f0_median_dev}{Extracted median deviation from nominal 12TET pitch (cents)}
#' \item{loudness_max}{Maximum loudness values per tone}
#' \item{loudness_med}{Median loudness values per tone}
#' \item{loudness_sd}{Standard deviation of loudness per tone}
#' \item{loudness_rel_peak_pos}{Relative position of maximum loudness value, duration of tone equals 1}
#' \item{loudness_temp_cent}{Normed temporal centroid of loudness curve per tone, duration of tone equals 1}
#' \item{loudness_s2b}{Ratio of solo loudness (median) to backing track loudness (median)}
#' \item{pitch_median}{Median of PITCH distribution}
#' \item{pitch_std}{Standard deviation of PITCH distribution}
#' \item{pitch_range}{Range of of PITCH distribution}
#' \item{extrema_ratio}{Percentage of extremal points}
#' \item{mean_length_step_ascending}{Mean length of ascending step passages}
#' \item{mean_length_step_descending}{Mean length of descending step passages}
#' \item{mean_length_step}{Mean length of step passages (up and down steps)}
#' \item{nPVI_dur}{Normalized pairwise variability index}
#' \item{nPVI_ioi}{Normalized pairwise variability index}
#' }
"wjd_features"

#' Weimar Jazz Database Core Scalar Features
#'
#' Subset of 24 features of \code{\link{wjd_features}} that have shown to be most indicative for historical stylistic change.
#' There are also some additional relative frequencies of assorted midlevel units, not originally in \code{\link{wjd_features}}.
#' Finally, there are five basic metadata fields.
#' See \url{https://jazzomat.hfm-weimar.de/melospy/transformations.html} for further information.
#' See also \url{https://jazzomat.hfm-weimar.de/feature_history_jazz/} for a interactive demonstration (Feature History of Jazz).
#' @name wjd_features_core
#' @usage wjd_features_core
#' @docType data
#' @format A tibble with 456 rows and 25 variables:
#' \describe{
#'  \item{id}{Solo ID}
#'  \item{melid}{Numerical Solo ID}
#'  \item{title}{Title of solo track}
#'  \item{full_title}{Full title of solo track (including solo number, alternate tracks etc.)}
#'  \item{performer}{Performer of the solo)}
#'  \item{style}{Style of the solo. One of TRADITIONAL, SWING,  BEBOP, COOL, HARDBOP, POSTBOP, FREE, FUSION, OTHER, MIX  or empty}
#'  \item{abs_int_range}{Size of largest interval}
#'  \item{art_range}{Range of articulation}
#'  \item{cdpcx_density_1}{Relative frequency of chordal roots}
#'  \item{cdpcx_density_B}{Relative frequency of chordal blue thirds}
#'  \item{cdpcx_density_3}{Relative frequency of chordal thirds}
#'  \item{cdpcx_density_5}{Relative frequency of chordal fifths}
#'  \item{cdpcx_density_6}{Relative frequency of chordal sixths}
#'  \item{cdpcx_density_b2}{Relative frequency of flat ninths}
#'  \item{cdpcx_density_T}{Relative frequency of sharp elevenths}
#'  \item{durclass_abs_entropy}{Entropy of absolute duration classes}
#'  \item{durclass_abs_very_short}{Relative frequency of very short tones (< 16th notes in 120 bpm)}
#'  \item{expressive}{Relative frequency of \strong{expressive} midlevel units}
#'  \item{f0_median_dev}{Median deviation from nominal 12-TET pitch}
#'  \item{fragment}{Relative frequency of \strong{fragment} midlevel units}
#'  \item{int_bigram_entropy}{Entropy of interval combinations}
#'  \item{lick}{Relative frequency of \strong{lick} midlevel units}
#'  \item{line}{Relative frequency of \strong{line} midlevel units}
#'  \item{loudness_sd}{Standard deviation of tone loudness}
#'  \item{pitch_entropy}{Entropy of pitch distribution}
#'  \item{pitch_range}{Pitch range}
#'  \item{pitch_std}{Mean distance from mean pitch}
#'  \item{rhythm}{Relative frequency of \strong{rhythm} midlevel units}
#'  \item{total_duration}{Total duration of solo (in sec)}
#'  \item{void}{Relative frequency of \strong{void} midlevel units}
#' }
"wjd_features_core"

#' Weimar Jazz Database Hardcore Scalar Features
#'
#' Subset of 16 features of \code{\link{wjd_features}} that have shown to be most indicative for historical stylistic change and further cleaned of  redundancies.
#' There are also some additional relative frequencies of assorted midlevel units, not originally in \code{\link{wjd_features}}.
#' Finally, there are five basic metadata fields.
#' See \url{https://jazzomat.hfm-weimar.de/melospy/transformations.html} for further information.
#' See also \url{https://jazzomat.hfm-weimar.de/feature_history_jazz/} for a interactive demonstration (Feature History of Jazz).
#' @name wjd_features_hardcore
#' @usage wjd_features_hardcore
#' @docType data
#' @format A tibble with 456 rows and 25 variables:
#' \describe{
#'  \item{id}{Solo ID}
#'  \item{melid}{Numerical Solo ID}
#'  \item{title}{Title of solo track}
#'  \item{full_title}{Full title of solo track (including solo number, alternate tracks etc.)}
#'  \item{performer}{Performer of the solo)}
#'  \item{style}{Style of the solo. One of TRADITIONAL, SWING,  BEBOP, COOL, HARDBOP, POSTBOP, FREE, FUSION, OTHER, MIX  or empty}
#'  \item{cdpcx_density_1}{Relative frequency of chordal roots}
#'  \item{cdpcx_density_B}{Relative frequency of chordal blue thirds}
#'  \item{cdpcx_density_3}{Relative frequency of chordal thirds}
#'  \item{cdpcx_density_5}{Relative frequency of chordal fifths}
#'  \item{cdpcx_density_6}{Relative frequency of chordal sixths}
#'  \item{cdpcx_density_b2}{Relative frequency of flat ninths}
#'  \item{cdpcx_density_T}{Relative frequency of sharp elevenths}
#'  \item{durclass_abs_entropy}{Entropy of absolute duration classes}
#'  \item{expressive}{Relative frequency of \strong{expressive} midlevel units}
#'  \item{fragment}{Relative frequency of \strong{fragment} midlevel units}
#'  \item{int_bigram_entropy}{Entropy of interval combinations}
#'  \item{lick}{Relative frequency of \strong{lick} midlevel units}
#'  \item{line}{Relative frequency of \strong{line} midlevel units}
#'  \item{pitch_entropy}{Entropy of pitch distribution}
#'  \item{rhythm}{Relative frequency of \strong{rhythm} midlevel units}
#'  \item{void}{Relative frequency of \strong{void} midlevel units}
#' }
"wjd_features_hardcore"

#' Weimar Jazz Database Metadata
#'
#' Metadata for the 456 solos of the Weimar Jazz Database (WJD).
#' See \url{https://jazzomat.hfm-weimar.de/dbformat/glossary.html} for further information.
#' @name wjd_meta
#' @usage wjd_meta
#' @docType data
#' @format A tibble with 456 rows and 33 variables:
#' \describe{
#'  \item{id}{Solo ID}
#' \item{melid}{Numerical Solo ID}
#' \item{signature}{Annotated signature (possible more than one, space separate,  or FREE)}
#' \item{number_notes}{Number of events}
#' \item{performer}{Performer}
#' \item{title}{Title}
#' \item{titleaddon}{Add-on for title}
#' \item{solopart}{Running number of a solo in a piece}
#' \item{full_title}{Full title (including solo part and title addon)}
#' \item{instrument}{Instrument of the soloist. One of ts, ts-c, as, bs, bsx, cbsx, ss, sss, cl, bcl, acl, tp, tpt, flgn, tb, fl, cor, ptp, frhn, ob, voc  or empty}
#' \item{style}{Style of piece. One of TRADITIONAL, SWING,  BEBOP, COOL, HARDBOP, POSTBOP, FREE, FUSION, OTHER, MIX  or empty}
#' \item{avgtempo}{Avg. Tempo (bpm)}
#' \item{tempoclass}{Tempo class. One of SLOW, MEDIUM SLOW, MEDIUM, MEDIUM UP, UP or empty}
#' \item{rhythmfeel}{Basic rhythmic feel/groove style. One of TWOBEAT, SWING, BALLAD, LATIN, FUNK or empty}
#' \item{key}{Key or tonal center of the piece}
#' \item{filename_sv}{Filename of originating SV project file}
#' \item{status}{Status of transcription. One of PREFINAL, FINAL, DRAFT, ASSIGNED or empty}
#' \item{composer}{Composer of the piece}
#' \item{tonality_type}{Tonality type of the composition. One of FUNCTIONAL, MODAL, COLOR, FREE, BLUES, JAZZ-BLUES or empty}
#' \item{genre}{Genre of the composition. One of TRADITIONAL, BLUES, GREAT AMERICAN SONGBOOK, WORMS, ORIGINAL, RIFF or empty}
#' \item{form}{Form of the composition}
#' \item{signature}{Signature(s) of solo}
#' \item{mbzid}{Music Brainz ID}
#' \item{recordingdate}{Recording date(s) of containing record}
#' \item{recordingyear}{Recording year of containing record}
#' \item{recordbib}{Bibliography of record}
#' \item{recordtitle}{Title of containing record}
#' \item{label}{Record label of containing record}
#' \item{solostart}{Start time of solo in full track}
#' \item{soloend}{End time of solo in full track}
#' \item{lineup}{Line-up of track}
#' \item{chord_changes}{Chord changes as compact string}
#' \item{chorus_count}{Number of full choruses in the solo}
#' \item{harmony_template}{Underlying harmony template of composition}
#' \item{solo_time}{Start/End of solo in surrounding track}
#' }
"wjd_meta"

#' Omnibook Transformations
#'
#' Some basic transformation (also known as viewpoints) from the 56 solos in the Charlie Parker Omnibook.
#' @name omnibook_transforms
#' @usage omnibook_transforms
#' @docType data
#' @format A tibble with 18,569 rows and 21 variables:
#' \describe{
#' \item{id}{Solo ID}
#' \item{beat1}{Raw vector of accents on the primary accent (first beat) of a bar}
#' \item{beat3}{Raw vector of accents on the secondary accent of a bar, if present, e.g. in on the 3rd beat in 4/4-measures (hence the name)}
#' \item{beatall}{Raw vector of accents on all beat positions in a bar}
#' \item{phrasbeg}{Raw vector of markers for phrase beginnings (if available)}
#' \item{phrasend}{Raw vector of markers for phrase endings (if available)}
#' \item{cdpcx_raw_all}{Raw output of note-wise CDPCX values including NC values}
#' \item{cpc_raw_all}{Raw output (CPC values of all melody notes, including undefined CPCs, set to -1)}
#' \item{durclass_abs_raw}{Raw output of duration classes (absolute mode)}
#' \item{durclass_rel_raw}{Raw output of duration classes (relative mode)}
#' \item{fuzzyint_raw}{Raw output (Fuzzy interval values over the full melody)}
#' \item{metrical_position}{Metrical positions of events (MP-dot-notation)}
#' \item{phrase_id_raw}{Sequence of event-wise phrase IDs}
#' \item{chords_raw}{Sequence of event-wise chord symbols (as annotated and normalized)}
#' \item{chord_types_raw}{Sequence of event-wise chord type labels (triad type + seventh)}
#' \item{int_raw}{ist of semitone intervals}
#' \item{ioiclass_abs_raw}{Raw output of IOI classes of all melody notes (absolute mode)}
#' \item{ioiclass_rel_raw}{Raw output of IOI classes of all melody notes (relative mode)}
#' \item{metrical_position}{Metrical positions (in  MPD-notation) of events}
#' \item{mcm_48}{Position in metrical circle map with N=48 divisions}
#' \item{pitch_raw}{Raw output (values of all melody notes)}
#' }
"omnibook_transforms"

#' Omnibook Metadata
#'
#' Metadata for the 56 solos in the  Charlie Parker Omnibook (CPO).
#' See \url{https://jazzomat.hfm-weimar.de/dbformat/glossary.html} for further information.
#' @name omnibook_meta
#' @usage omnibook_meta
#' @docType data
#' @format A tibble with 56 rows and 33 variables:
#' \describe{
#' \item{signature}{Annotated signature (possible more than one, space separated, or FREE)}
#' \item{performer}{Performer (= Charlie Parker)}
#' \item{title}{Title}
#' \item{titleaddon}{Add-on for title}
#' \item{solopart}{Running number of a solo in a piece}
#' \item{full_title}{Full title (including solo part and title addon)}
#' \item{instrument}{Instrument of the soloist ( = as)}
#' \item{style}{Style of piece (= BEBOP)}
#' \item{avgtempo}{Avg. Tempo (bpm)}
#' \item{tempoclass}{Tempo class. One of SLOW, MEDIUM SLOW, MEDIUM, MEDIUM UP, UP or empty}
#' \item{rhythmfeel}{Basic rhythmic feel/groove style. One of TWOBEAT, SWING, BALLAD, LATIN, FUNK or empty}
#' \item{key}{Key or tonal center of the piece}
#' \item{filename_sv}{Filename of originating SV project file}
#' \item{status}{Status of transcription. Always FINAL}
#' \item{composer}{Composer of the piece}
#' \item{tonality_type}{Tonality type of the composition (= FUNCTIONAL)}
#' \item{genre}{Genre of the composition (= ORIGINAL)}
#' \item{form}{Form of the composition}
#' \item{signature}{Signature(s) of solo}
#' \item{mbzid}{Music Brainz ID (= NA)}
#' \item{recordingdate}{Recording date(s) of containing record}
#' \item{recordingyear}{Recording year of containing record}
#' \item{recordbib}{Bibliography of record}
#' \item{recordtitle}{Title of containing record}
#' \item{label}{Record label of containing record}
#' \item{solostart}{Always -1}
#' \item{soloend}{Always -1}
#' \item{lineup}{Line-up of track}
#' \item{chord_changes}{Chord changes as compact string}
#' \item{chorus_count}{Number of full choruses in the solo}
#' \item{harmony_template}{Underlying harmony template of composition}
#' \item{solo_time}{Always NA}
#' }
"omnibook_meta"

#' Essen Folk Song Collection (Jazzomat version) Transformations
#'
#' Some basic transformations (also known as viewpoints) of the 7,825 tunes in the Essen Folk Song Database (EFSC or ESAC)
#' @name esac_transforms
#' @usage esac_transforms
#' @docType data
#' @format A tibble with 7289 rows and 14 variables:
#' \describe{
#' \item{id}{ESAC ID of the tune (not completely unique!)}
#' \item{durclass_abs_raw}{Raw output of duration classes (absolute mode)}
#' \item{durclass_rel_raw}{Raw output of duration classes (relative mode)}
#' \item{fuzzyint_raw}{Raw output (Fuzzy interval values over the full melody)}
#' \item{phrase_id_raw}{Sequence of event-wise phrase IDs}
#' \item{int_raw}{ist of semitone intervals}
#' \item{ioiclass_abs_raw}{Raw output of IOI classes of all melody notes (absolute mode)}
#' \item{ioiclass_rel_raw}{Raw output of IOI classes of all melody notes (relative mode)}
#' \item{mcm_48}{Position in metrical circle map with N=48 divisions}
#' \item{pc_raw}{Raw output (values for all melody notes)}
#' \item{pitch_raw}{Raw output (values of all melody notes)}
#' \item{tpc_raw}{Raw output of note-wise TPC values}
#' }
"esac_transforms"

#' Essen Folk Song Collection (Jazzomat version) Metadata
#'
#' Metadata for the  Essen Folk Song Collection (EFSC or ESAC) with 7.825 tunes (as provided by the Jazzomat project).
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


