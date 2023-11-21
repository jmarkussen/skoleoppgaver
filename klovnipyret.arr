
#Mine komponenter for å lage et smilefjes
#bakgrunn
bakgrunn = rectangle(400, 400, "Solid", "lightblue")
#hode
smileyFjes = circle(100, "Solid", "white")
smileyFjesOutline = circle(100, "Outline", "black")
#øyne
oye1 = circle(20, "solid", "blue")
oye2 = circle(20, "solid", "blue")
oyeOutline = circle(20, "outline", "black")
#munn
munn = ellipse(100, 30, "solid", "red")
munnOutline = ellipse(100, 30, "outline", "black")
#nese til klovnen
nese = circle(25, "solid", "red")
neseOutline = circle(25, "outline", "darkred")





#her tegner jeg inn de tidligere definerte elementene.

        put-image( munnOutline, 200, 150,
          put-image( neseOutline, 200, 200,
            put-image( nese, 200, 200,
              put-image( oyeOutline, 250, 240,
                put-image( oyeOutline, 150, 240,
                  put-image( oye2, 250, 240,
                    put-image( oye1, 150, 240,
                      put-image( munn, 200, 150, 
                        put-image( smileyFjesOutline, 200, 200,
                          put-image( smileyFjes, 200,200,bakgrunn))))))))))