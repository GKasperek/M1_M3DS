Gautier Kasperek

Q3 -
Le sol paraît moins éclairé puisque l'éclairement n'est calculé que pour les sommets dans un premier temps. Alors qu'il est ensuite calculé pour les pixels.
Il y a plus de pixel que de sommets, c'est pourquoi le sol parait plus éclairé.



Partie 3 : Ombre par Depth Map
Q1 -
L'image n'apparait que en haut à droite car les textures de coordonnées sont comprises entre [0,1] et que le centre (0,0,0) du repère est au centre.
De plus, la projection de l'image suit les mouvements de la caméra.

##  pourquoi ne voit on pas la texture sur le fond de la scène ?
La texture est projetté sur les objets qui peuvent recevoir une texture. Le fond n'a pas de texture car il n'y a pas de surfac epour l'appliquer.

Q4 -
Parce que les coordonnées ont été mise dans l'intervalle [-1,1]

Q5 -
C'est le repère monde qui est utilisé et les repères locaux ne sont pas pris en compte.
