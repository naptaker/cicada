\gridPutMusic "drums up" 1 \drummode {
  \repeat unfold 2 {
    \repeat unfold 4 {
      s1*2
    }
  }
}

\gridPutMusic "drums down" 1 \drummode {
  \repeat unfold 2 {
    \repeat unfold 4 {
      s1*2
    }
  }
}

\gridPutMusic "drums up" 2 \drummode {
  \once \numericTimeSignature
  \time 4/4
  \repeat unfold 4 {
    \repeat unfold 4 {
      hhho8 hhc8
    }
  }
}

\gridPutMusic "drums down" 2 \drummode {
  \repeat unfold 4 {
    bd4 sn4 bd4 sn4 |
  }
  \bar "||"
}
