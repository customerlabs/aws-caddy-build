# AWS Caddy Build

A custom AWS instance image to deploy Caddy, manually built from source for compatibility with AWS.

## Table of Contents
- [Introduction](#introduction)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Introduction
This project provides an AWS instance image with Caddy server built from source to ensure compatibility with AWS environments. Caddy is a powerful, extensible, and easy-to-configure web server, ideal for modern web development needs.

## Features
- Custom-built Caddy server for AWS
- Easy deployment on AWS instances
- Pre-configured settings for optimal performance
- Secure by default with automatic HTTPS

## Installation
### Prerequisites
- An AWS account
- AWS CLI installed and configured
- Git installed

### Steps
1. Clone the repository:
    ```bash
    git clone https://github.com/customerlabs/aws-caddy-build.git
    cd aws-caddy-build
    ```

2. Build the Caddy image:
    ```bash
    ./build.sh
    ```

3. Deploy to AWS:
    ```bash
    ./deploy.sh
    ```

## Usage
Once deployed, you can access the Caddy server via the AWS instance's public IP address. To customize the configuration, edit the `Caddyfile` included in the repository.

## Contributing
Contributions are welcome! Please open an issue or submit a pull request. Make sure to follow the [contribution guidelines](CONTRIBUTING.md).

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contact
For questions, feedback, or suggestions, please contact [jeeva.durai@customerlabs.co](mailto:jeeva.durai@customerlabs.co).

