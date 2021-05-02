# VictorOpsClient::ActiveMaintenanceMode

## Properties

| Name            | Type                                                               | Description                                                                     | Notes      |
| --------------- | ------------------------------------------------------------------ | ------------------------------------------------------------------------------- | ---------- |
| **instance_id** | **String**                                                         | external friendly unique id for maintenance mode                                | [optional] |
| **started_by**  | **String**                                                         | username of the user that started maintenance mode                              | [optional] |
| **started_at**  | **Float**                                                          | millis from epoch marking the start time                                        | [optional] |
| **targets**     | [**Array&lt;MaintenanceModeTarget&gt;**](MaintenanceModeTarget.md) |                                                                                 | [optional] |
| **is_global**   | **BOOLEAN**                                                        | whether this instance is a global maintenance mode or for specific routing keys | [optional] |
