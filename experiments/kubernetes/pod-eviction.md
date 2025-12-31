# Pod Eviction Experiment

## Objective
Test application resilience to pod eviction in a Kubernetes cluster.

## Hypothesis
The service will remain available with <5% error rate during pod eviction.

## Steps
1. Identify target pod.
2. Evict pod using `kubectl delete pod <pod-name>`.
3. Monitor service metrics and logs.

## Expected Outcome
- Traffic routed to remaining pods
- Metrics should indicate minimal disruption
