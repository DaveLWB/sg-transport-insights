# sg-transport-insights
Outsystems 11 public data dashboard with AWS IaC and automated testing - Simple dashboard that displays data pulled from carpark availability API.
URL: https://personal-zqhxbmd9.outsystemscloud.com/SGTransportInsights/Admindashboard?_ts=639283679558137135
**During the initial load of the page, it might take slightly longer to load, but subsequent refresh of the page will not have delays
<img width="1684" height="844" alt="image" src="https://github.com/user-attachments/assets/f5c97372-cb54-45a7-b247-65d610c54c65" />

# Singapore Transport Insights

A full-stack OutSystems 11 web application
using public data from data.gov.sg.

## Project objectives

- Consume a public REST API.
- Display data in an interactive dashboard.
- Implement reusable backend logic.
- Add automated testing.
- Define required AWS infrastructure as code.

## Technology stack

- OutSystems 11
- data.gov.sg REST API
- Terraform
- AWS
- Git

## Project structure

- docs/: architecture and technical documentation
- infrastructure/terraform/: AWS infrastructure code
- tests/: automated test assets

## Architecture

UI Layer: SGTransportInsights
- contains dashboard to display data from API
- has a depndency on SGTransportInsights_CS which exposes reusable logic to retrieve data via API

Data layer: SGTransportInsights_CS
- Consume rest API to retrieve carpark availability data (https://api.data.gov.sg/v1/transport/carpark-availability?date_time={date_time})
- Implement reusable action that calls the API

## Successful Terraform configuration and validation output
<img width="2000" height="1000" alt="Screenshot 2026-10-22 223341" src="https://github.com/user-attachments/assets/03bb0dad-ccef-47b9-bb3f-cf2a9bc67160" />

## Automated Testing
- Automated testing was done using postman by executing JavaScript assertions after receiving a response.
- These checks verify the HTTP status, JSON format, top-level response structure, and nested carpark data
<img width="800" height="500" alt="image" src="https://github.com/user-attachments/assets/ddcd6512-24c9-499f-b725-6f349ce5fe88" />
<img width="2054" height="796" alt="image" src="https://github.com/user-attachments/assets/ea9e4e6a-bc53-4c65-b8b8-82636161e784" />


