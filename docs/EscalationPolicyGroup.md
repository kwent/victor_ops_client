# VictorOpsClient::EscalationPolicyGroup

## Properties

| Name        | Type                                                               | Description                                                                                                                                                                     | Notes |
| ----------- | ------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----- |
| **timeout** | **Integer**                                                        | The duration in minutes to wait until executing this step since the last step was executed. This value may be 0. This implies that this policy step should immediately execute. |
| **entries** | [**Array&lt;EscalationPolicyEntry&gt;**](EscalationPolicyEntry.md) | A list of entries that this escalation policy group encapsulates. These entries will all be executed once the escalation policy reaches this step.                              |
