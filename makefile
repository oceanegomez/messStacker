#Définition des constantes
LIB_DIR = ../messStacker/src

#Exercice 14
SRC = src
BUILD = build
TEST = test

#Exercice 8 : on crée une règle de type alias (voir cours)
defaut : $(BUILD)/test_lib

#Exercice 10 : 
help : 
	@echo '=== Cible disponible ==='
	@echo '  === -test_lib : génère le programme final (défaut)' 
	@echo '  === lib : compile la librairie messStacker'
	@echo '  === clean : supprime tous les fichiers .o'
	@echo "  === help : affichage de l'aide"
	@echo '  === init : Création des dossiers src et build ==='

#alias pour simplifier l'accès à la cible
lib : $(LIB_DIR)/messStacker.o

#Exercice 3 : compilation de la librairie util string
$(LIB_DIR)/messStacker.o : $(LIB_DIR)/messStacker.c 
	@echo '=== Compilation de .o de messStacker ==='
	gcc -c -Wall $(LIB_DIR)/messStacker.c -o $(LIB_DIR)/messStacker.o

# Exercice 5 : compilation intermédiaire du test_lib
$(BUILD)/test_lib.o : $(TEST)/test_lib.c 
	@echo '=== Compilation de .o de test_lib ==='
	gcc -I $(LIB_DIR) -c -Wall $(TEST)/test_lib.c -o $(BUILD)/test_lib.o

#Exercice 7 : la règle apr défaut est la première du fichier makefile

#Exercice 6 : génération de l'exécutable test_lib
$(BUILD)/test_lib : $(BUILD)/test_lib.o $(LIB_DIR)/messStacker.o 
	@echo '=== compilation finale test_lib ==='
	gcc -Wall $(BUILD)/test_lib.o $(LIB_DIR)/messStacker.o -o $(BUILD)/test_lib

#Exercice 9 : nettoyage de projet
clean : 
	@echo '=== Suppression de tous les .o ==='
	rm -rf $(BUILD)/*.o $(LIB_DIR)/*.o $(BUILD)/test_lib

# Règle demandée à l'exercice 14
init :
	@echo '=== Création des dossiers src et build ==='
	mkdir -p $(SRC) $(BUILD)

#Exercice 15 
run : $(BUILD)/test_lib
	@$(BUILD)/test_lib

