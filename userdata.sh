#!/bin/bash
apt update
apt install -y apache2

# Get the instance ID using the instance metadata
INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)

# Install the AWS CLI
apt install -y awscli

# Create a styled HTML page displaying instance ID and project info
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>My Cloud Portfolio</title>
  <style>
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background: #f0f4f8;
      color: #333;
      margin: 0;
      padding: 0;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      height: 100vh;
    }

    .container {
      text-align: center;
      padding: 40px;
      background: white;
      border-radius: 12px;
      box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
    }

    h1 {
      font-size: 2.5em;
      animation: colorChange 3s infinite;
    }

    h2 {
      color: #2c7a7b;
    }

    p {
      font-size: 1.2em;
      margin-top: 20px;
    }

    @keyframes colorChange {
      0% { color: #e53e3e; }
      50% { color: #38a169; }
      100% { color: #3182ce; }
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Terraform Project Server</h1>
    <h2>Instance ID: <span>$INSTANCE_ID</span></h2>
    <p>Welcome to <strong>CloudChamp's Channel</strong> 🚀</p>
  </div>
</body>
</html>
EOF


systemctl start apache2
systemctl enable apache2