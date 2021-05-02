# VictorOpsClient::IncidentTransition

## Properties

| Name          | Type        | Description                                                           | Notes      |
| ------------- | ----------- | --------------------------------------------------------------------- | ---------- |
| **name**      | **String**  | The transition name                                                   | [optional] |
| **at**        | **String**  | The time of the transition                                            | [optional] |
| **by**        | **String**  | The user that caused the transition (if any)                          | [optional] |
| **message**   | **String**  | The message entered by that user (if any)                             | [optional] |
| **manually**  | **BOOLEAN** | If the incident transition was caused by a person                     | [optional] |
| **alert_id**  | **String**  | The unique alert ID that caused the transition                        | [optional] |
| **alert_url** | **String**  | A URL to retrieve the details of the alert that caused the transition | [optional] |
