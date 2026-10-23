# Singapore Transport Insights

- Outsystems 11 Reactive dashboard that displays data pulled from carpark availability API.
- URL: https://personal-zqhxbmd9.outsystemscloud.com/SGTransportInsights/Admindashboard?_ts=639283679558137135
- Initial page load  might take slightly longer, but subsequent refresh/reload of the page will not have delays
<img width="1684" height="844" alt="image" src="https://github.com/user-attachments/assets/f5c97372-cb54-45a7-b247-65d610c54c65" />

## Technology stack

- OutSystems 11
- data.gov.sg REST API
- Terraform
- AWS
- Git

## Project objectives

- Consume a public REST API.
- Display data in an interactive dashboard.
- Implement reusable backend logic.
- Add automated testing.
- Define required AWS infrastructure as code.

## Project structure

- docs/: architecture and technical documentation
- infrastructure/terraform/: AWS infrastructure code

## Architecture

UI Layer: SGTransportInsights
- Contains dashboard with basic functionalities (search, sort, navigation) to display data
- Has dependency on SGTransportInsights_CS which exposes reusable logic to retrieve data via API

Data layer: SGTransportInsights_CS
- Consume rest API to retrieve carpark availability data (https://api.data.gov.sg/v1/transport/carpark-availability?date_time={date_time})
- Contains reusable logic that calls the API intended to be consumed by others modules to fetch the data

# Infrastructure as Code Approach

- Refer to docs/: iac-approach.md
- Terraform configuration and validation output:
<img width="2000" height="1000" alt="Screenshot 2026-10-22 223341" src="https://github.com/user-attachments/assets/03bb0dad-ccef-47b9-bb3f-cf2a9bc67160" />

## Automated Testing
- Automated testing was done using postman by executing JavaScript assertions after receiving a response.
- These checks verify the HTTP status, JSON format, top-level response structure, and nested carpark data
<img width="1422" height="1212" alt="Screenshot 2026-10-23 162935" src="https://github.com/user-attachments/assets/4199a864-788c-46b0-9d5a-f577d44bd77c" />
<img width="2054" height="796" alt="image" src="https://github.com/user-attachments/assets/ea9e4e6a-bc53-4c65-b8b8-82636161e784" />


