# VictorOpsClient::TeamScheduleResource

## Properties

| Name               | Type                                                                     | Description                                             | Notes      |
| ------------------ | ------------------------------------------------------------------------ | ------------------------------------------------------- | ---------- |
| **oncall**         | **String**                                                               | The user scheduled on call (if any)                     | [optional] |
| **overrideoncall** | **String**                                                               | The user overriding the scheduled on call user (if any) | [optional] |
| **policy_type**    | **String**                                                               |                                                         |
| **rotation_name**  | **String**                                                               |                                                         | [optional] |
| **shift_name**     | **String**                                                               |                                                         | [optional] |
| **shift_roll**     | **Float**                                                                |                                                         | [optional] |
| **rolls**          | [**Array&lt;TeamScheduleRollResource&gt;**](TeamScheduleRollResource.md) |                                                         |
