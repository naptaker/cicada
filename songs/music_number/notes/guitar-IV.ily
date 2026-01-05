%{
\override Staff.NoteHead.style = #'altdefault
\cadenzaOn
\repeat unfold 4 {
  <aes ees' aes c>\breve \bar "|"
}
\cadenzaOff
%}
s1*4
\repeat unfold 2 {
  aes'2 ~ aes8 ges8 f4 |
  \stopStaff
  s1 |
  \startStaff
}
\ottava #1
aes'2. des4 |
c2. f4 |
ees1 |
\acciaccatura ges8 aes1 |
\ottava #0
