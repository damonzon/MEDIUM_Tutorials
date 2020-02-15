# Let's make music
# https://towardsdatascience.com/compose-and-play-music-in-r-with-the-rmusic-package-b2afa90761ea

library(Rmusic)


mali_pitch <- paste(
  "F F G",
  "F D F",
  "A A Bb",
  "A F A",
  "C5 C5 C5",
  "D5 A C5",
  "A A G",
  "D A F",
  "C5 C5 C5",
  "D5 A C5",
  "A A G",
  "D A F",
  "F F F G",
  "F D F",
  "A A Bb",
  "A F A"
)

mali_duration <- c(
  2, 3, 1.3, 
  2, 2, 5,
  2, 3, 1.3, 
  2, 2, 4,
  2, 3, 1.3, 
  2, 2, 4,
  2, 3, 1.3, 
  2, 2, 4,
  2, 3, 1.3, 
  2, 2, 4,
  2, 3, 1.3, 
  2, 2, 4,
  1,1,1.2,.9,
  2.2,2,3,
  2, 3, 1.3, 
  2, 2, 4
  )
  
  

mali_pitch <- strsplit(mali_pitch, " ")[[1]]

Rmusic::play_music(mali_pitch, 
    mali_duration, tempo = 200)

Rmusic::save_music(mali_pitch, mali_duration,
        tempo = 200, output_file = "/Users/patrickkelly/Desktop/MEDIUM/mali2.wav")
