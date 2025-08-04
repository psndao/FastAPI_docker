# Projet API FastAPI Docker

Ce projet est une API minimaliste réalisée avec [FastAPI](https://fastapi.tiangolo.com/) et déployée dans un conteneur Docker.  
Il permet de démarrer rapidement une API Python moderne, portable et facile à déployer.

## Fonctionnalités

- **Route racine `/`** : retourne un message JSON `{"Hello": "pape"}`
- **Conteneurisation** : tout fonctionne dans un conteneur Docker, sans configuration locale complexe

## Structure du projet

```
.
├── api/
│   └── main.py         # Code source de l'API FastAPI
├── requirements.txt    # Dépendances Python
└── Dockerfile          # Instructions pour construire l'image Docker
```

## Fichiers importants

- **api/main.py** : contient le code de l’API FastAPI.
- **requirements.txt** : liste les dépendances nécessaires (`fastapi`, `uvicorn`).
- **Dockerfile** : décrit comment construire l’image Docker pour exécuter l’API.

## Prérequis

- [Docker Desktop](https://www.docker.com/products/docker-desktop) installé sur votre machine

## Lancer le projet

1. **Construire l’image Docker**
   ```bash
   docker build -t fastapi-app .
   ```

2. **Démarrer le conteneur**
   ```bash
   docker run -p 80:80 fastapi-app
   ```

3. **Accéder à l’API**
   - Ouvrir [http://localhost:80](http://localhost:80) dans votre navigateur
   - Vous verrez la réponse :
     ```json
     {"Hello": "pape"}
     ```

## Explications

- **FastAPI** est un framework web moderne, rapide et simple pour créer des APIs en Python.
- **Uvicorn** est un serveur ASGI performant, recommandé pour exécuter des applications FastAPI.
- **Docker** permet d’exécuter l’application dans un environnement isolé, ce qui facilite le déploiement et la portabilité.

## Auteur

Pape Ndao 
