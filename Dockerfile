# Créer un Dockerfile
echo -e "FROM debian:latest\nLABEL maintainer=\"your_email@example.com\"\nRUN apt-get update && apt-get install -y curl vim\nWORKDIR /app\nCMD [\"bash\"]" > Dockerfile

# Construire l'image Docker
docker build -t your_dockerhub_username/debian-custom:latest .

# Se connecter à Docker Hub
docker login

# Pousser l'image sur Docker Hub
docker push your_dockerhub_username/debian-custom:latest
