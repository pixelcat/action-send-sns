#!/usr/bin/bash

# INPUTS

# INPUT_AWS_ACCESS_KEY_ID
AWS_ACCESS_KEY_ID=${INPUT_AWS_ACCESS_KEY_ID}
# INPUT_AWS_SECRET_ACCESS_KEY
AWS_SECRET_ACCESS_KEY=${INPUT_AWS_SECRET_ACCESS_KEY}
# INPUT_AWS_REGION
AWS_REGION=${INPUT_AWS_REGION}
# INPUT_MESSAGE
# INPUT_SNS_TOPIC_ARN
echo "Sending SNS message to topic ${INPUT_SNS_TOPIC_ARN}..."

OUTPUT=$(aws sns publish --topic-arn ${INPUT_SNS_TOPIC_ARN} --message "${INPUT_MESSAGE}")
RESULT_CODE=${?}

echo "Done."

echo ${OUTPUT}

echo "::set-output name=send-result::${OUTPUT}"
echo "::set-output name=result-code::${RESULT_CODE}"
