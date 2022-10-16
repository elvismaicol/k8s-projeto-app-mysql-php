echo "Criando as imagens!!!"

docker build -t elvismc/projeto-backend:1.0 backend/.
docker build -t elvismc/projeto-database:1.0 database/.

echo "Efetuando o push das imagens backend e database!!!"

docker push elvismc/projeto-backend:1.0
docker push elvismc/projeto-database:1.0

echo "Criando os Servições no Cluster!!!"

kubectl apply -f ./services.yml

echo "Criando os Deployments!!!"

kubectl apply -f ./deployment.yml