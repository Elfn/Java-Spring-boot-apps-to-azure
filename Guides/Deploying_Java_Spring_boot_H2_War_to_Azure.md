## 1- Générer le fichier WAR (Nécéssaire au déploiement)  
> mvn install clean install

## 2- Executer le plugin dans Intellij pour générer la configuration nécéssaire au déploiement  

> mvn azure-webapp:config  

## 3- Se loguer à Azure CLI (Il faut l'installer)

>  az login   

## 3- Déployer l'application dans le cloud Azure  
> mvn azure-webapp:deploy  

## 4- Pour redéployer l'application après une modification  
> mvn clean install -DskipTests  
> mvn azure-webapp:deploy  

## 5 - Visualiser les logs de l'application déployée 
> sudo python -m pip install decorator (Ubuntu)   
> az webapp log tail --name hello-world-rest-api-elsior --resource-group hello-world-rest-api-rg
