use context essentials2021

red = rectangle(352, 256, "solid" , "red")
blue1 = rectangle(352, 32, "solid" , "darkblue")
blue2 = rectangle(32, 256, "solid" , "darkblue")
white1 = rectangle(352, 64, "solid" , "white")
white2 = rectangle(64, 256, "solid" , "white")

red1 = rectangle(352, 256, "solid" , "white")
blue3 = rectangle(352, 32, "solid" , "darkblue")
blue4 = rectangle(32, 256, "solid" , "darkblue")
white3 = rectangle(352, 64, "solid" , "darkblue")
white4 = rectangle(64, 256, "solid" , "darkblue")

red2 = rectangle(352, 256, "solid" , "blue")
blue5 = rectangle(352, 32, "solid" , "red")
blue6 = rectangle(32, 256, "solid" , "red")
white5 = rectangle(352, 64, "solid" , "white")
white6 = rectangle(64, 256, "solid" , "white")

red3 = rectangle(352, 256, "solid" , "white")
blue7 = rectangle(352, 32, "solid" , "red")
blue8 = rectangle(32, 256, "solid" , "red")
white7 = rectangle(352, 64, "solid" , "blue")
white8 = rectangle(64, 256, "solid" , "blue")

red4 = rectangle(352, 256, "solid" , "red")
blue9 = rectangle(352, 32, "solid" , "white")
blue10 = rectangle(32, 256, "solid" , "white")
white9 = rectangle(352, 64, "solid" , "red")
white10 = rectangle(64, 256, "solid" , "red")

red5 = rectangle(352, 256, "solid" , "royal-blue")
blue11 = rectangle(352, 32, "solid" , "gold")
blue12 = rectangle(32, 256, "solid" , "gold")
white11 = rectangle(352, 64, "solid" , "royal-blue")
white12 = rectangle(64, 256, "solid" , "royal-blue")


fun DrawNordicFlag(flagName):
  
  if flagName == "Danmark":
       
    put-image(blue9, 176, 128,
      put-image(blue10, 128, 128,
        put-image(white9, 176, 128,
          put-image(white10, 128, 128,
            red4))))
    
  else if flagName == "Svergie":
        
    put-image(blue11, 176, 128,
      put-image(blue12, 128, 128,
        put-image(white11, 176, 128,
          put-image(white12, 128, 128,
            red5))))
    
  else if flagName == "Norge":
    put-image(blue1, 176, 128,
      put-image(blue2, 128, 128,
        put-image(white1, 176, 128,
          put-image(white2, 128, 128,
            red))))
    
  else if flagName == "Farøyene":
    
    put-image(blue7, 176, 128,
      put-image(blue8, 128, 128,
        put-image(white7, 176, 128,
          put-image(white8, 128, 128,
            red3))))
    
  else if flagName == "Island":
    
    put-image(blue5, 176, 128,
      put-image(blue6, 128, 128,
        put-image(white5, 176, 128,
          put-image(white6, 128, 128,
            red2))))
    
  else if flagName == "Finland":
    put-image(blue3, 176, 128,
      put-image(blue4, 128, 128,
        put-image(white3, 176, 128,
          put-image(white4, 128, 128,
            red1))))
    
  end
end



