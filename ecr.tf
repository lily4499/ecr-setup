provider "aws" {
  region = "us-east-1"  # Change to your desired region
}

# Create the ECR repository
resource "aws_ecr_repository" "lil_ecr_repo" {
  name = "netflix-app"
  # Additional repository configurations can be added here if needed
}

# Output ECR repository URL
output "ecr_repository_url" {
  value = "${aws_ecr_repository.lil_ecr_repo.repository_url}"
}
