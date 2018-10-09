# Masscan for Docker

This is a simple and lightweight image containing masscan for docker.

## Usage

Pull image:
`docker pull btx3/masscan`

Scan:
`docker run --rm btx3/masscan -p80 0.0.0.0/0`

Masscan help:
`docker run --rm btx3/masscan -h`

## Build

`docker build -t btx3/masscan:latest https://github.com/btx3/masscan-docker.git`
