# VictorOpsClient::ReportingIncidentList

## Properties

| Name          | Type                                                               | Description                                                                       | Notes      |
| ------------- | ------------------------------------------------------------------ | --------------------------------------------------------------------------------- | ---------- |
| **offset**    | **Integer**                                                        | The pagination offset                                                             | [optional] |
| **limit**     | **Integer**                                                        | The maximum number of incidents to fetch                                          | [optional] |
| **total**     | **Integer**                                                        | The total incidents matching the supplied parameters                              | [optional] |
| **incidents** | [**Array&lt;ReportingIncidentInfo&gt;**](ReportingIncidentInfo.md) | The list of incidents matching the supplied parameters, up to the provided limit. | [optional] |
