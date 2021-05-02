# VictorOpsClient::GetAlertResponse

## Properties

| Name                    | Type       | Description                                                                        | Notes      |
| ----------------------- | ---------- | ---------------------------------------------------------------------------------- | ---------- |
| **message_type**        | **String** | The type of alert; INFO, WARNING, ACKNOWLEDGEMENT, CRITICAL, RECOVERY              | [optional] |
| **entity_id**           | **String** | Identifies the entity (host, service, etc.) this alert was about.                  | [optional] |
| **timestamp**           | **Float**  | Timestamp of the alert in seconds since epoch.                                     | [optional] |
| **state_start_time**    | **Float**  | The time this entity entered its current state (seconds since epoch).              | [optional] |
| **state_message**       | **String** | Any additional status information from the alert item.                             | [optional] |
| **monitoring_tool**     | **String** | The name of the monitoring system software (eg. nagios, icinga, sensu, etc.)       | [optional] |
| **entity_display_name** | **String** | Used within VictorOps to display a human-readable name for the entity.             | [optional] |
| **ack_msg**             | **String** | A user entered comment for the acknowledgment.                                     | [optional] |
| **ack_author**          | **String** | The user that acknowledged the incident.                                           | [optional] |
| **raw**                 | **String** | The full, raw alert details JSON string (i.e. parse the string into a JSON object) | [optional] |
