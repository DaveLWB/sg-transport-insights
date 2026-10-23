# sg-transport-insights
Outsystems 11 public data dashboard with AWS IaC and automated testing

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
<img width="2342" height="1212" alt="Screenshot 2026-10-22 223341" src="https://github.com/user-attachments/assets/03bb0dad-ccef-47b9-bb3f-cf2a9bc67160" />

