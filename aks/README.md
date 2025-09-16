# AKS Lab Environment
Infraestrutura como código para criar um cluster AKS completo no Azure usando Terraform.

## 🏗️ **O que será criado:**

- **Resource Group** (`lab-rg`)
- **AKS Cluster** com 2 nodes Standard_B2s distribuídos em 3 zonas
- **Virtual Network** (172.16.0.0/16) com subnet dedicada para AKS
- **Container Registry** (Basic) com integração automática ao AKS
- **Network Policies** habilitadas (Azure CNI)

## 📋 **Pré-requisitos:**

- Azure CLI instalado
- Terraform instalado
- Subscription ID do Azure

## 🚀 **Como usar:**

### 1. **Login no Azure:**
```bash
az login --use-device-code
```

### 2. **Configurar variáveis:**
Crie um arquivo `terraform.tfvars`:
```hcl
subscription_id = "sua-subscription-id-aqui"
```

### 3. **Deploy da infraestrutura:**
```bash
terraform init
terraform plan
terraform apply
```

### 4. **Configurar kubectl:**
```bash
az aks get-credentials --resource-group lab-rg --name lab-aks
```

### 5. **Login no Container Registry:**
```bash
az acr login --name labcr[suffix-gerado]
```

## 📁 **Estrutura do projeto:**

```
├── provider.tf      # Configuração dos providers
├── variables.tf     # Definição das variáveis
├── main.tf         # Recursos principais (AKS, ACR)
├── network.tf      # Virtual Network e Subnet
└── output.tf       # Outputs do cluster
```

## 🧹 **Limpeza:**
```bash
terraform destroy
```

> **Nota:** Esta é uma configuração de laboratório otimizada para custos e testes.