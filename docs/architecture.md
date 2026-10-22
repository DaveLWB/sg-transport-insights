UI Layer: SGTransportInsights
-> Has dependency on SGTransportInsights_CS for retrieving data to display
-> Main UI is Admindashboard which shows tables and buttons to display fetched data
-> Reusable action which is referenced from SGTransportInsights_CS is used to fetch data via API
-> Process data on frontend to cater for pagination, sorting and search field

Data layer: SGTransportInsights_CS
-> Consume rest API (https://api.data.gov.sg/v1/transport/carpark-availability?date_time={date_time})
-> Implement reusable action that calls the API
-> Expose reusable action so that UI layer can call the action for data retrieval

