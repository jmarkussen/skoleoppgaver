#funksjon for å skrive ut flag med ulike parametere.

fun make-flag(width,height,m1,m2,c1,c2,c3,p1,p2):
  rectangle1 = rectangle(width, height, "solid", c1)
  rectangle2 = rectangle(width, m1, "solid", c2)
  rectangle3 = rectangle(m1, height, "solid", c2)
  rectangle4 = rectangle(width, m2, "solid", c3)
  rectangle5 = rectangle(m2, height, "solid", c3)
  
  put-image(rectangle3, p1, p1,
    put-image(rectangle2, p2, p1,
      put-image(rectangle5, p1, p1,
        put-image(rectangle4, p2, p1,
          rectangle1))))
end
  
#Dette er komponentene i de ulike nordiske flaggene
norway = make-flag(220, 160, 20, 40, "red", "darkblue", "white", 80, 110)

sweden = make-flag(160, 100, 20, 20, "blue", "yellow", "blue", 50, 80)

feroy = make-flag(220, 160, 20, 40, "white", "red", "darkblue", 80, 110)

finnland = make-flag(180, 110, 30, 30, "white", "darkblue", "darkblue", 55, 90)

denmark = make-flag(370, 280, 40, 40, "red", "white", "white", 140, 185)


#her skriver man ute de 4 flaggene. 
finnland
  
norway

sweden

feroy

denmark