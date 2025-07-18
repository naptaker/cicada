\gridPutMusic "drums down" 1 \drummode {
  \override MultiMeasureRest.staff-position = #2
  \override Rest.staff-position = #0
  R1 |
  r4 sn4 bd4 sn4 |
}

\gridPutMusic "drums down" 2 \drummode {
  \repeat volta 2 {
    \repeat unfold 8 {
      bd4 sn4 bd4 sn4 |
    }
  }
}

\gridPutMusic "drums down" 3 \drummode {
  \repeat unfold 8 {
    bd4 sn4 bd4 sn4 |
  }
}

\gridPutMusic "drums down" 4 \drummode {
  \repeat unfold 8 {
    bd4 sn4 bd4 sn4 |
  }
}

\gridPutMusic "drums down" 5 \drummode {
  \repeat volta 4 {
    \repeat unfold 3 {
      bd4 sn4 bd4 sn4 |
    }
  }
  \alternative {
    \volta 1,2,3 {
      bd4 sn4 bd4 sn4 |
    }
    \volta 4 {
      bd4 sn4 bd4 sn4 |
    }
  }
}
