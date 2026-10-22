# Infrastructure as Code Approach

## 1. Deployment model

The application is developed using OutSystems 11 and deployed to OutSystems Cloud. OutSystems Cloud is used as a managed platform service.

## 2. Infrastructure ownership

OutSystems manages the infrastructure required to host the OutSystems Cloud platform, including the underlying application servers and platform database. The project does not directly provision, modify, or manage those platform resources using its own AWS account or Terraform configuration.

## 3. Project-owned infrastructure

Terraform is used to define an optional AWS S3 bucket for storing non-sensitive test fixtures and API-response snapshots. The configuration includes default server-side encryption, bucket versioning, and public-access blocking.

This supporting resource is separate from the OutSystems Cloud platform. It does not provision or manage OutSystems servers, databases, networking, or platform deployments.

## 4. Application deployment

The application is developed and published using OutSystems Service Studio. Where multiple OutSystems environments and LifeTime are available, application versions can be promoted through the supported deployment process.

## 5. Validation and testing

Terraform configuration is formatted and validated before any infrastructure changes are applied. When AWS deployment is approved, a Terraform plan is reviewed before applying changes.

Application tests cover the data.gov.sg integration, application logic, data display, pagination, error handling, and relevant user interactions.

## 6. Limitations and trade-offs

Using OutSystems Cloud reduces infrastructure administration and allows development to focus on application functionality. The trade-off is that the project cannot independently provision or manage the underlying OutSystems platform infrastructure through its own Terraform configuration.

The Terraform configuration provided in this repository applies only to the explicitly identified project-owned AWS resource. It must not be represented as a complete IaC definition of OutSystems Cloud.

## 7. Assumptions

The application is hosted on OutSystems 11 Cloud. The exact environment entitlement, AWS resource requirements, and assessment acceptance criteria must be confirmed before provisioning additional resources.
