%{
\override Staff.NoteHead.style = #'altdefault
\cadenzaOn
\repeat unfold 4 {
  <aes ees' aes c>\breve \bar "|"
}
\cadenzaOff
%}
s1*8
\repeat unfold 2 {
  aes'1 ~ |
  aes4 ges4 f2 |
  \stopStaff
  s1*2 |
  \startStaff
}
\ottava #1
aes'1 ~ |
2 des2 |
c1 ~ |
2 e2 |
ees1 ~ |
2 a2 |
\cadenzaOn
aes\breve
\cadenzaOff
\ottava #0
