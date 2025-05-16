#!/bin/bash
# Update packages and install Apache
yum update -y
yum install -y httpd

# Enable and start Apache
systemctl enable httpd
systemctl start httpd

# Create a simple HTML page
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
    <title>Welcome to My Website</title>
    <style>
        body {
            background-color: #f0f8ff;
            font-family: Arial, sans-serif;
            text-align: center;
            padding-top: 100px;
        }
        h1 {
            color: #2e8b57;
            font-size: 48px;
        }
        p {
            color: #555;
            font-size: 24px;
        }
    </style>
</head>
<body>
    <h1>Hello from Terraform + EC2!</h1>
    <p>This is a custom webpage deployed with user data.</p>
</body>
</html>
EOF
