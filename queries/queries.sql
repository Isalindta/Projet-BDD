-- Ajouter un patient à la base

INSERT INTO patient (ID, NOM, PRENOM, AGE, SEXE) VALUES (1, "Tic", "Tac", 24, 0);
-- Rajouter des 'insert' selon les différents cas possibles (par exemple si des valeurs 
-- son facultatives)


-- Modifier le profil d'expression transcriptomique d'un patient

UPDATE prelevement 
SET gene1 = 123, gene2 = 234, gene3 = 213, gene4 = 50
-- WHERE ID = 1;


-- Extraire le profil boolean d'un patient à partir de son profil et des seuils

CREATE VIEW as view_patient_profil_boolean as
SELECT ID_patient, expression, seuil, id_lieu
CASE 
    WHEN expression > seuil THEN 1
    WHEN expression < seuil THEN 0
END AS profil_boolean_expression
FROM patient JOIN patient_prelevement JOIN prelevement JOIN gene_prelevement JOIN gene JOIN gene_lieu
WHERE patient.id_patient = 1 AND prelevement.id_prelevement = 1 AND id_gene = 1;


-- Inventorier les maladies potentielles du patient

SELECT ID_patient, id_maladie, nom_m
FROM view_patient_profil_boolean JOIN gene_maladie JOIN maladie
WHERE view_patient_profil_boolean.profil_boolean_expression == gene_maladie.exprime
AND view_patient_profil_boolean.id_lieu == gene_maladie.id_lieu


-- Même question avec une erreur possible dans le profil du patient


