#!/bin/bash

# Email settings
FROM="alveera.khan@verizon.com"
TO="pradeep.pandiraj@verizon.com"
BCC="alveera.khan@verizon.com"
SUBJECT="Scheduled Email"
IP_ADDRESS=$(hostname -I | awk '{print $1}')
MEMORY_TOTAL=$(free -m | awk '/Mem:/{print $2 " MB"}')
MEMORY_USED=$(free -m | awk '/Mem:/{print $3 " MB"}')
MEMORY_PERCENT=$(free -m  | awk  '/Mem:/ {printf "%.2f", $3/$2 *100}')
CPU_PERCENT=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8 "%"}')
CPU_USED=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4 "%"}')

BODY="This is my $IP_ADDRESS with total $MEMORY_TOTAL with current memory $MEMORY_USED with $MEMORY_PERCENT percent at CPU usage $CPU_PERCENT and CPU used $CPU_USED"

# Command to send email using `mailx`
echo "$BODY" | mailx -r "$FROM" -s "$SUBJECT" -b "$BCC" "$TO"

# Check if the email was sent successfully
if [ $? -eq 0 ]; then
  echo "Email sent successfully!"
else
  echo "Failed to send email."
fi

