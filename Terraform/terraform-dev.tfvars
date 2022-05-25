asp_name = "gh-learning-asp-dev"
app_name = "gh-learning-app-dev"
asp_kind = "Linux"
asp_reserved = true
asp_sku = {
   tier = "Free",
   size = "F1",
   capacity = 1
  }
location = "westeurope"
resourceGroup = "gh-learning-allinone-rg"
tags = {
  "env" = "dev",
  "createdby" = "tf-pipeline"
  "DeployedBy" = "GitHub-Actions"
  "Repo" = "GH-Learning-AllInOne"
}

image_registry_url = "ghcr.io"
ghcr_username = ${{ github.actor }}
ghcr_password = ${{ secrets.GITHUB_TOKEN }}
repo_name = ${{ github.repository }}
image_name = ${{env.DOCKER_IMAGE_NAME}}

# ${{env.IMAGE_REGISTRY_URL}}/${{ github.repository }}/${{env.DOCKER_IMAGE_NAME}}:${{ github.sha }}