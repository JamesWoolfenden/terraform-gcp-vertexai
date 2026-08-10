# terraform-gcp-vertexai

Terraform module for Vertex AI. Exercises holden's `policies/gcp/vertex-ai` policy set.

<!-- BEGINNING OF PRE-COMMIT-PIKE DOCS HOOK -->
The Terraform resource required is:

```golang
# apply role
resource "google_project_iam_custom_role" "terraform_pike" {
  project     = "pike-477416"
  role_id     = "terraform_pike"
  title       = "terraform_pike"
  description = "A user with least privileges"
  permissions = [
    "aiplatform.datasets.create",
    "aiplatform.datasets.delete",
    "aiplatform.datasets.get",
    "aiplatform.datasets.update",
    "aiplatform.endpoints.create",
    "aiplatform.endpoints.delete",
    "aiplatform.endpoints.get",
    "aiplatform.endpoints.update",
    "aiplatform.featurestores.create",
    "aiplatform.featurestores.delete",
    "aiplatform.featurestores.get",
    "aiplatform.featurestores.update",
    "aiplatform.indexEndpoints.create",
    "aiplatform.metadataStores.create",
    "aiplatform.metadataStores.delete",
    "aiplatform.metadataStores.get",
    "aiplatform.tensorboards.create",
    "aiplatform.tensorboards.delete",
    "aiplatform.tensorboards.get",
    "aiplatform.tensorboards.update",
    "storage.objects.list"
  ]
}

# plan role
resource "google_project_iam_custom_role" "terraform_pike_plan" {
  project     = "pike-477416"
  role_id     = "terraform_pike_plan"
  title       = "terraform_pike_plan"
  description = "A user with least privileges"
  permissions = [
    "aiplatform.datasets.get",
    "aiplatform.endpoints.get",
    "aiplatform.featurestores.get",
    "aiplatform.metadataStores.get",
    "aiplatform.tensorboards.get",
    "storage.objects.list"
  ]
}


```
<!-- END OF PRE-COMMIT-PIKE DOCS HOOK -->