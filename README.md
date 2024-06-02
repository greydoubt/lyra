# lyra
generic LLM call


This is an as-is Python AWS Lambda OpenAI call. It relies on API Gateway for auth. It can be configured with a zero-trust or full-retention modality, depending on data needs. All calls are assumed to be a REST "ticket" that with binary encoded messages.

It can also interface with anything using generic REST calls such as:

curl -v -X POST \
'https://LAMBDA_ENDPOINT.us-east-2.amazonaws.com/v1/HOOK' \
-H 'content-type: application/json' \
-H 'Authorization: <token>' \
-d '{"body": "{"id": 152948599,"version_id": 1856687097,"text": "bWFya2V0IGVudHJ5IGZvciBFdXJvcGVhbiBkYWlyeSBwcm9kdWNlciBpbiBVQUU=","timestamp": "1702307960","sender": "user","metadata": {"conversationTopic": "TmV3IENoYXQ=","tool": ["Y2hhdGJvdA==","aW5zdHJ1Y3Rpb24=","dG9uZQ==","bGVuZ3Ro"],"reference": ["Z3B0My41LXR1cmJv","cHJvZmVzc2lvbmFs","cHJvZmVzc2lvbmFs","c2hvcnQ="],"token_cost": 2138,"rating": 1}}"}'
