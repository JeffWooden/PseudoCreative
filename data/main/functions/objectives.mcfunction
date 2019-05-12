#Score pour la détection d'items lors d'un test
scoreboard objectives add slotsNotEmpty dummy

#Score pour désactiver ou activer le message d'avertissement pour l'inventaire
scoreboard objectives add seeMsg trigger
scoreboard players enable @a seeMsg

#Score pour différencier les catégories
scoreboard objectives add PanelCategory dummy

#Score pour différencier les pages des catégories
scoreboard objectives add PanelPage dummy

#Score pour désactiver ou activer les messages d'ouvertures/fermetures
scoreboard objectives add PanelMsg dummy

#Score pour déterminer les slots du fly (9 = pas de slot)
scoreboard objectives add PanelFly dummy