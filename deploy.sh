# login azure (primeira execução)
az login

# criar chaves de acesso ao Azure para o terraform (primeira execução)
az ad sp create-for-rbac --skip-assignment

cd terraform

# iniciar terraform (primeira execução)
terraform init

# planejar alterações
terraform plan

# alterar ambiente
terraform apply

# obter credenciais do AKS
az aks get-credentials --resource-group rg-aulainfra --name teste-aks

# subir configuração da aplicação
kubectl apply -f aks/1-config

# subir configuração da aplicação
kubectl apply -f aks/2-db

# subir configuração da aplicação
kubectl apply -f aks/3-app

# Comando pra ver tudo o que tem no namespace e poder pegar o IP do service mysql
# kubectl get all -n aulainfra 

# Comando pra acessar o pod do nginx
#kubectl exec -it nginx -- sh

#Comandos para executar dentro do nginx
# apt-get update
# apt-get install inetutils-ping
# ping <IP DO SERVICE MYSQL>