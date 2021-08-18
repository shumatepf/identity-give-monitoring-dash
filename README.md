# IDVA Monitoring Dashboard Service
Monitoring visualization for IDVA microservices in cloud.gov

## Why this project
The IDVA project is composed of many different microservices, each needing to
be monitored for performance, stability, and uptime. The monitoring dash
microservice has the following goals:
* Provide monitoring visualization capabilities for IDVA microservices
* Alert IDVA operators/admins on specified metric thresholds

## CI/CD Workflows with GitHub Actions
The most up-to-date information about the CI/CD flows for this repo can be found in the
[GitHub workflows directory](https://github.com/18F/identity-idva-monitoring-dash/tree/main/.github/workflows)

## Implementation
IDVA monitoring dash is a Grafana server deployed to Cloud.gov and configured to use
consume the IDVA Prometheus deployment as it's data source.

## Public domain

This project is in the worldwide [public domain](LICENSE.md). As stated in
[CONTRIBUTING](CONTRIBUTING.md):

> This project is in the public domain within the United States, and copyright
and related rights in the work worldwide are waived through the
[CC0 1.0 Universal public domain dedication](https://creativecommons.org/publicdomain/zero/1.0/).
>
> All contributions to this project will be released under the CC0 dedication.
By submitting a pull request, you are agreeing to comply with this waiver of
copyright interest.
