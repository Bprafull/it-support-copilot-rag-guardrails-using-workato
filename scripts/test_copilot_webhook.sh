#!/usr/bin/env bash
# Automated test script for IT Support Copilot Webhook with PII payload

WEBHOOK_URL="YOUR_PROJECT_3_WORKATO_WEBHOOK_URL"

echo "Dispatching inquiry event containing test PII and credentials to Workato..."

curl -s -X POST "$WEBHOOK_URL" \
  -H "Content-Type: application/json" \
  -d '{
    "request_id": "REQ-AI-1002",
    "source_channel": "SLACK",
    "origin_reference_id": "C01234567/p1690029384",
    "employee_name": "Alex Mercer",
    "employee_email": "alex.mercer@company.com",
    "raw_question": "My password is Pass9988! and phone is 9972731971. How do I configure GlobalProtect VPN on my laptop?",
    "urgency": "Normal"
  }'

echo -e "\nPayload dispatched successfully."
