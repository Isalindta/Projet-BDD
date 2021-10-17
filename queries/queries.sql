-- Ajouter un patient à la base

INSERT INTO patient (ID, NOM, PRENOM, AGE, SEXE) VALUES (1, "Tic", "Tac", 24, 0);
-- Rajouter des 'insert' selon les différents cas possibles (par exemple si des valeurs 
-- son facultatives)


-- Modifier le profil d'expression transcriptomique d'un patient

UPDATE prelevement 
SET gene1 = 123, gene2 = 234, gene3 = 213, gene4 = 50
-- WHERE ID = 1;


-- Extraire le profil boolean d'un patient à partir de son profil et des seuils
