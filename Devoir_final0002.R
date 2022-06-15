### Importation du fichier ###

library(readxl)
Valeur_Secteur_Secondaire <- read_excel("~/Fichiers/AREN/Session2022J/Cours/Informatique.Sces.Socs/devoir.final2/Valeur ajoutée du Secteur Secondaire.xlsx", 
                                        col_types = c("date", "text", "numeric"))
View(Valeur_Secteur_Secondaire)



########################################


library(tidyverse)
library(ggplot2)


### Graphique en ligne ###

Valeur_Secteur_Secondaire%>%
  ggplot(aes(x=Dates,y=revenues,color=`Valeur ajoutée du Secteur Secondaire`))+
  geom_line(size=1.5,alpha=0.8)+labs(title="Valeur ajoutée des composantes du secteur secondaire",
                                     subtitle = "(en millions de gourdes de 2017-21)",
                                     x="Dates",y="revenues",color="valeur ajoutée du secteur secondaire")



########################################


### Graphique en baton ###

Valeur_Secteur_Secondaire%>%
  ggplot(aes(x=Dates,y=revenues,fill=revenues,color=`Valeur ajoutée du Secteur Secondaire`))+
  geom_bar(stat="summary",fun=mean,position=position_dodge())+
  labs(title = "Valeur ajoutée des composantes du seteur secondaire",
       subtitle = "(en millions de gourdes de 2017-21)",
       x="Dates",y="revenues",color="Valeur ajoutée du secteur secondaire")



#######################################



### Graphique en nuage de point ###

Valeur_Secteur_Secondaire%>%
  ggplot(aes(x=Dates,y=revenues,fill=revenues,color=`Valeur ajoutée du Secteur Secondaire`))+
  geom_point()+labs(title="Valeur ajoutée des composantes du secteur secondaire",
                    subtitle = "(en millions de gourdes)",
                    x="Dates",y="revenues",color="Valeur ajoutée du secteur secondaire")
