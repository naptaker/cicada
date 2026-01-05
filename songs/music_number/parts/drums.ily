\gridPutMusic "drums up" 1 \drummode {
  \repeat unfold 4 {
    << { s8 \repeat unfold 7 { cymr8 } } \\ { cymc1 } >> |
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
        bd8 bd8 sn8 sn8 s8 bd8 sn8 \once \slurUp \flam sn8 |
      }
           \volta 2 {
        bd8 bd8 sn8 <bd sn>8 s8 bd8 sn8 \once \slurUp \flam sn8 |
      }
      \volta 4 {
        bd8 bd8 sn8 bd16 \once \slurUp \flam sn16 bd16 sn16 sn16 sn16 bd8. bd16 |
      }
    }
  }
  \bar "||"
  \repeat unfold 2 {
    \repeat unfold 3 {
      bd4 sn4 bd4 sn4 |
    }
    bd4 sn4 bd4 sn8 \once \slurUp \flam sn8 |
  }
  \bar "||"
}

\gridPutMusic "drums up" 2 \drummode {
  cymc1 |
  s1*3
}

%% FIXME: differs on the segno repeat

\gridPutMusic "drums down" 2 \drummode {
  bd4 <sn ss>8 ss8 <bd ss>8 ss8 <sn ss>8 ss8 |
  \repeat unfold 2 {
      \repeat unfold 2 { <bd ss>8 ss8 <sn ss>8 ss8 } |
  }
  <bd ss>8 ss8 <sn ss>8 <bd ss>8 <bd sn>8 q q q |
  \bar "||"
}

\gridPutMusic "drums up" 3 \drummode {
  \repeat unfold 2 {
    << { s4 \repeat unfold 6 { cymr8 } } \\ { cymc1 } >> |
    \repeat unfold 8 { cymr8 } |
  }
  << { s4 \repeat unfold 6 { tomfl8 } } \\ { cymc1 } >> |
  tomfl8 tomfl8 tomfl8 tomfl8 tomfl8 tomfl8 tomfl8 tomfl16 tomfl16 |
  \repeat unfold 2 {
    \repeat unfold 8 { tomfl8 } |
  }
  << { s4 \repeat unfold 6 { tomfl8 } } \\ { cymc1 } >> |
  tomfl8 tomfl8 tomfl8 tomfl8 tomfl8 tomfl8 tomfl8 tomfl16 tomfl16 |
  \repeat unfold 2 {
    \repeat unfold 8 {tomfl8 } |
  }
}

\gridPutMusic "drums down" 3 \drummode {
  \repeat unfold 2 {
    bd4 sn4 s8 bd8 sn8 bd8 ~ |
    bd8 bd8 sn8 sn8 s8 bd8 sn8 \once \slurUp \flam sn8 |
   }
  \repeat unfold 2 {
    \repeat unfold 3 {
      bd4 sn4 bd4 sn4 |
    }
    bd4 sn4 bd4 sn8 \once \slurUp \flam sn8 |
  }
}

\gridPutMusic "drums up" 4 \drummode {
  \gridGetCellMusic "drums up" 2
}

\gridPutMusic "drums down" 4 \drummode {
  <bd ss>8 ss8 <sn ss>8 ss8 <bd ss>8 ss8 <sn ss>8 ss8 |
  <bd ss>8 ss8 <sn ss>8 ss8 <bd ss>8 ss8 <sn ss>8 ss8 |
  <bd ss>8 ss8 <sn ss>8 ss8 <bd ss>8 ss8 <sn ss>8 <bd ss>8 |
  <bd sn>8 <bd sn>8 <bd sn>8 <bd sn>8 <bd sn>8 <bd sn>8 <bd sn>8 sn8 |
  \bar "||"
}

\gridPutMusic "drums up" 5 \drummode {
  << { s4 hhho8 hhho8 hhho8 hhho8 hhho8 hhho8 } \\ { cymc1 } >> |
  hhho8 hhho8 hhho8 hhho8 hhc16 s16 s8 s4 |
  << { s4 hhho8 hhho8 hhho8 hhho8 hhho8 hhho8 } \\ { cymc1 } >> |
  hhho8 hhho8 hhho8 hhho8 s2 |
  << { s4 hhho8 hhho8 hhho8 hhho8 hhho8 hhho8 } \\ { cymc1 } >> |
  \repeat unfold 8 { hhho8 } |
  << { s8 \repeat unfold 7 { tomfl8 } } \\ { cymc1 } >> |
  \repeat unfold 8 { tomfl8 } |
}

\gridPutMusic "drums down" 5 \drummode {
  bd4 sn4 s8 bd8 sn8 bd8 ~ |
  bd8 bd8 sn8 bd8 bd16 sn16 sn16 sn16 <bd sn>16 sn16 sn16 sn16 |
  bd4 sn4 s8 bd8 sn8 bd8 ~ |
  bd8 bd8 sn8 bd8 <bd sn>8 bd8 <bd sn>8 bd8 |
  bd4 sn4 s8 bd8 sn8 bd8 ~ |
  bd8 bd8 sn8 bd8 bd8 bd8 <bd sn>8 bd8 |
  <bd sn>8-> bd8 bd8 <bd sn>8-> bd8 bd8 <bd sn>8-> bd8 |
  <bd sn>8-> bd8 bd8 <bd sn>8-> bd8 bd8 <bd sn>8-> \once \slurUp \flam <bd sn>8 |
  \bar "||"
}

\gridPutMusic "drums up" 6 \drummode {
  << { s4 \repeat unfold 6 { cymr8 } } \\ { cymc1 } >> |
  \repeat unfold 8 { cymr8 } |
  << { s4 \repeat unfold 6 { cymr8 } } \\ { cymc1 } >> |
  cymr8 cymr8 cymr8 cymr8 cymr4 tomh16 tomh16 tomfl16 tomfl16 |
  << { s4 \repeat unfold 6 { tomfl8 } } \\ { cymc1 } >> |
  \repeat unfold 3 {
    \repeat unfold 8 { tomfl8 } |
  }
  << { s4 \repeat unfold 6 { tomfl8 } } \\ { cymr1 } >> |
  \repeat unfold 7 { tomfl8 } tomfl16 tomfl16 |
  \repeat unfold 2 {
    \repeat unfold 8 { tomfl8 } |
  }
}

\gridPutMusic "drums down" 6 \drummode {
  \repeat unfold 2  {
    bd4 sn4 s4 sn8 bd8 ~ |
    \alternative {
      \volta 1 {
        bd8 bd8 sn8 sn8 s8 bd8 sn8 \once \slurUp \flam sn8 |
      }
      \volta 2 {
        bd8 bd8 sn8 bd16 \once \slurUp \flam sn16 bd16 sn16 sn16 sn16 s4 |
      }
    }
  }
  \repeat unfold 4 {
    bd4 sn4 bd4 sn4 |
    \alternative {
      \volta 1,2,4 {
        bd4 sn4 bd4 sn8 \once \slurUp \flam sn8 |
      }
      \volta 3 {
        bd4 sn4 bd4 sn4 |
      }
    }
  }
}

\gridPutMusic "drums up" 7 \drummode {
  << { s4 \repeat unfold 6 { hh8 } } \\ { cymc1 } >> |
  hh8 hh8 hhho8 hhho8 hhc16 s16 s8 s4 |
  << { s4 hhho8 hhho8 hhho8 hhho8 hhho8 hhho8 } \\ { cymc1 } >> |
  hhho8 hhho8 hhho8 hhho8 s2 |
  << { s4 hhho8 hhho8 hhho8 hhho8 hhho8 hhho8 } \\ { cymc1 } >> |
  \repeat unfold 8 { hhho8 } |
  << { s8 \repeat unfold 7 { tomfl8 } } \\ { cymc1 } >> |
  \repeat unfold 8 { tomfl8 } |
}

\gridPutMusic "drums down" 7 \drummode {
  bd4 sn4 s8 bd8 sn8 bd8 ~ |
  bd8 bd8 sn8 bd8 bd16 sn16 sn16 sn16 <bd sn>16 sn16 sn16 sn16 |
  bd4 sn4 s8 bd8 sn8 bd8 ~ |
  bd8 bd8 sn8 bd8 <bd sn>8 bd8 <bd sn>8 bd8 |
  bd4 sn4 s8 bd8 sn8 bd8 ~ |
  bd8 bd8 sn8 bd8 bd8 bd8 <bd sn>8 bd8 |
  <bd sn>8-> bd8 bd8 <bd sn>8-> bd8 bd8 <bd sn>8-> bd8 |
  <bd sn>8-> bd8 bd8 <bd sn>8-> bd8 bd8 <bd sn>8-> \once \slurUp \flam <bd sn>8 |
  \bar "||"
}

\gridPutMusic "drums up" 8 \drummode {
  \repeat unfold 2 {
    << { s8 \repeat unfold 7 { cymr8 } } \\ { cymc1 } >> |
  }
  << { s8 \repeat unfold 7 { cymr8 } } \\ { cyms1 } >> |
  <<
    {
      s8 \repeat unfold 3 { cymr8 }
      \tuplet 3/2 {
        sn16 16 16
        tomh16 16 16
        tomfl16 16 16
        8 16
      }
    } \\ {
      cymc1
    }
  >> |
  << { s8 \repeat unfold 7 { hhho8 } } \\ { cyms1 } >> |
  << { s8 \repeat unfold 5 { hhho8 } } \\ { cymc2. } >> cyms8 cymc8 |
  << { s8 \repeat unfold 7 { hhho8 } } \\ { cyms1 } >> |
  <<
    {
      s8 \repeat unfold 3 { hhho8 }
      \tuplet 3/2 {
        sn16 16 16
        tomh16 16 16
        tomfl16 16 16
        16 16 16
      }
    } \\ {
      cymc1
    }
  >> |
  << { s8 \repeat unfold 5 { hhho8 } } \\ { cyms2. } >> cymr8 cymc8 |
  << { s8 \repeat unfold 5 { hhho8 } } \\ { cyms2. } >> cymr8 cymc8 |
  << { s8 \repeat unfold 5 { hhho8 } } \\ { cyms2. } >> cymc8 cyms8 |
  <<
    {
      s8 \repeat unfold 3 { hhho8 }
      sn8 tomh8 tomfl16 tomfl16 sn16 tomfl16
    } \\ {
      cymc1
    }
  >> |
}

\gridPutMusic "drums down" 8 \drummode {
  \repeat unfold 3 {
    bd4 sn8. \flam sn16 bd8 bd8 sn8. \flam sn16 |
  }
  bd4 sn8. sn16 bd8 bd8 bd8 bd8 |
  bd4 sn8. \flam sn16 bd8 bd8 sn8. \flam sn16 |
  bd4 sn8. \flam sn16 bd8 bd8 <bd sn>8 bd8 |
  bd4 sn8. \flam sn16 bd8 bd8 sn8. \flam sn16 |
  bd8 bd8 sn8. sn16 bd8 bd8 bd8 bd8 |
  bd4 sn8. \flam sn16 bd8 bd8 sn8 bd8 |
  \repeat unfold 2 {
    bd4 sn8. \flam sn16 bd8 bd8 <bd sn>8 bd8 |
  }
  bd4 sn8. \flam sn16 <bd sn>8 bd8 s4 |
}

\gridPutMusic "drums up" 9 \drummode {
  << { s8 \repeat unfold 6 { hh8 } hhho8 } \\ { cyms1 } >> |
  << { s8 \repeat unfold 6 { hh8 } hhho8 } \\ { cymr1 } >> |
  << { s8 \repeat unfold 6 { hh8 } hhho8 } \\ { cymc1 } >> |
  << { s8 \repeat unfold 6 { hh8 } hhho8 } \\ { cyms1 } >> |
  << { s8 hh8 8 8 s hh8 8 hhho8 } \\ { cymc2 cymr2 } >> |
  <cymc cyms> 1
}

\gridPutMusic "drums down" 9 \drummode {
  bd4 sn4 s16 \once \slurUp \flam sn16 bd8 sn8. \once \slurUp \flam sn16 |
  bd4 sn8. bd16 ~ bd16 sn16 bd16 bd16 sn8. \once \slurUp \flam sn16 |
  bd4 sn4 s16 \once \slurUp \flam sn16 bd8 sn8. \once \slurUp \flam sn16 |
  bd4 sn4 s16 sn16 bd16 bd16 sn8. \once \slurUp \flam sn16 |
  \repeat unfold 2 { bd4 sn8. \once \slurUp \flam sn16 } |
  bd1\fermata
  \bar "|."
}
