\gridPutMusic "drums up" 1 \drummode {
  \repeat unfold 4 {
    << { s8 cymr8 cymr8 cymr8 cymr8 cymr8 cymr8 cymr8 } \\ { cymc1 } >> |
    \alternative {
      \volta 1,2,3 {
        cymr8 cymr8 cymr8 cymr8 cymr8 cymr8 cymr8 cymr8 |
      }
      \volta 4 {
        cymr8 cymr8 cymr8 cymr8 << { s4 tomh16 tomh16 tomfl16 tomfl16 } \\ { cymc2 } >> |
      }
    }
  }
  \bar "||"
  << { s8 tomfl8 tomfl8 tomfl8 tomfl8 tomfl8 tomfl8 tomfl8 } \\ { cymc1 } >> |
  tomfl8 tomfl8 tomfl8 tomfl8 tomfl8 tomfl8 tomfl8 tomfl16 tomfl16 |
  \repeat unfold 2 {
    tomfl8 tomfl8 tomfl8 tomfl8 tomfl8 tomfl8 tomfl8 tomfl8 |
  }
  cymr4 tomfl8 tomfl8 tomfl8 tomfl8 tomfl8 tomfl8 |
  tomfl8 tomfl8 tomfl8 tomfl8 tomfl8 tomfl8 tomfl8 tomfl16 tomfl16 |
  \repeat unfold 2 {
    tomfl8 tomfl8 tomfl8 tomfl8 tomfl8 tomfl8 tomfl8 tomfl8 |
  }
  \bar "||"
}

\gridPutMusic "drums down" 1 \drummode {
  \repeat unfold 4 {
    bd4 sn4 s4 sn8 bd8 ~ |
    \alternative {
      \volta 1,3 {
        bd8 bd8 sn8 sn8 s8 bd8 sn8 \flam sn8 |
      }
      \volta 2 {
        bd8 bd8 sn8 <bd sn>8 s8 bd8 sn8 \flam sn8 |
      }
      \volta 4 {
        bd8 bd8 sn8 bd16 \flam sn16 bd16 sn16 sn16 sn16 bd8. bd16 |
      }
    }
  }
  \bar "||"
  \repeat unfold 2 {
    \repeat unfold 3 {
      bd4 sn4 bd4 sn4 |
    }
    bd4 sn4 bd4 sn8 \flam sn8 |
  }
  \bar "||"
}
