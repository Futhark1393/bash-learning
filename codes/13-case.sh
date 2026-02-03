#!/bin/bash

echo "Select an option:"
echo "1) Start Service"
echo "2) Stop Service"
echo "3) Restart Service"
read -p "Enter choice [1-3]: " choice

case $choice in
    1)
        echo "Starting the service..."
        # systemctl start httpd (example command)
        ;;
    2)
        echo "Stopping the service..."
        ;;
    3)
        echo "Restarting the service..."
        ;;
    *)
        # This acts as the 'default' or 'else' block
        echo "Invalid option selected."
        ;;
esac