\version "2.12.3"

\include "english.ly"

melodyWithChordSymbols =
		<<
			\time 4/4

			% chords
			\new ChordNames {
				\chordmode {
		        \huge

						% section A
						\repeat volta 2 {
							g1 | s1 | c1 | s1 |
							g1 | d1:7 | g1 | d1:7 |
						}

						% section B
						g1 | s1 | s1 | s1 |
						g2 d2 | c2 g2 | d1 | s |

						% section C
						d1 | s | g1 | gs |
						a1:7 | s | g1 | d1:7 |

						% coda
						g2 d2:7 | g1 |

          }
      }

			% notes
			{
				\set Score.markFormatter = #format-mark-box-letters

				\key g \major
				\time 4/4

				%*************************************
				%* section A
				%*************************************
				\mark \default
				\repeat volta 2 {

					g''8^\markup { \italic approximate } g''8 g''8 g''8 g''8 g''8 g''8 g''8 |
					b''8 b''8 b''8 b''8 b''8 b''8 b''8 b''8 |
					g''8 g''8 g''8 g''8 g''8 g''8 g''8 g''8 |
					a''8 a''8 a''8 a''8 a''8 a''8 a''8 a''8 | \break

					g''8 g''8 g''8 g''8 g''8 g''8 g''8 g''8 |
					a''8 a''8 a''8 a''8 a''8 a''8 a''8 a''8 |
					b''8 b''8 b''8 b''8 b''8 b''8 b''8 b''8 |
					a''8 a''8 a''8 a''8 a''8 a''8 a''8 a''8 | \break

				}

				%*************************************
				%* section B
				%*************************************
				\mark \default

				g''8 fs''8 g''8 fs''8 g''8 fs''8 g''8 fs''8 |
				g''4 d''4 b'4 d''4 |

				g''8 fs''8 g''8 fs''8 g''8 fs''8 g''8 fs''8 |
				g''4 d''4 b'4 d''4 | \break

				g''8 g''8 g''8 g''8 fs''8 fs''8 fs''8 fs''8 |
				e''8 e''8 e''8 e''8 d''8 d''8 d''8 d''8 |
				fs''8 fs''8 fs''8 fs''8 fs''8 fs''8 fs''8 fs''8 |
				fs''8 fs''8 fs''8 fs''8 fs''8 fs''8 fs''8 fs''8 | \break

				%*************************************
				%* section C
				%*************************************

				\mark \default
				a''4 fs''4 e''4 d''4 |
				a''4 fs''4 e''4 d''4 |
				<b' g''>4 <b' g''>2. |
				<c'' gs''>4 <c'' gs''>2. | \break
				<cs'' a''>4 <cs'' a''>2. |
				<cs'' e''>4 <cs'' e''>2. |
				g''4 fs''4 e''4 d''4 |
				e''2  \mark "TO TOP!! DC!" fs''2 \bar "|." \break

				%*************************************
				%* Coda
				%*************************************

				\mark \markup { \musicglyph #"scripts.coda" "CODA"}
				g''4 e''4 d''4 b'4 |
				g'4-.r4 g4-^ r4 |

			}


			% no lyrics in this song
			% \include "src/lyrics.ly"

		>>

% -----------------------------------------------
% Typeset using Lilypond
% Copyright c. 2011 by Lucas Gonze <lucas@gonze.com>
% Hereby donated to the public domain.
% -----------------------------------------------
