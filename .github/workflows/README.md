# GitHub Actions CI/CD workflows

## Deploy
Deploys the project to the correc GIVE environment within Cloud.gov. The
deploy workflow will only be triggered if the validate job within the flow has
completed successfully and will only run in the 18F repository. This will
prevent forks from needlessly running workflows that will always fail
(forks won't be able to authenticate into the dev environment).
