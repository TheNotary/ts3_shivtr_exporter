# TS3 Shivtr Exporter
[![Build Status](https://api.travis-ci.org/lovoo/jenkins_exporter.svg?branch=travis_setup)](https://travis-ci.org/lovoo/jenkins_exporter)

This is an exporter modeled after [the Jenkins exporter](https://github.com/lovoo/jenkins_exporter) that scrapes shivt forsome ts3 data, and then exports it for consumption by Prometheus and Grafana.


## Usage

    ts3_shivtr_exporter.py [-h] [-u url]
                         [-p port]

    optional arguments:
      -h, --help            show this help message and exit
      -u url, --url rul
                            server url exposing TS3 data
      -p port, --port port  Listen to this port


## Installation

    git clone https://github.com/TheNotary/ts3_shivtr_exporter
    cd jenkins_exporter
    pip install -r requirements.txt















# Old Readme...

Jenkins exporter for prometheus.io, written in python.

This exporter is based on Robust Perception's python exporter example:
For more information see (http://www.robustperception.io/writing-a-jenkins-exporter-in-python)

## Usage

    jenkins_exporter.py [-h] [-j jenkins] [--user user] [-k]
                        [--password password] [-p port]

    optional arguments:
      -h, --help            show this help message and exit
      -j jenkins, --jenkins jenkins
                            server url from the jenkins api
      --user user           jenkins api user
      --password password   jenkins api password
      -p port, --port port  Listen to this port
      -k, --insecure        Allow connection to insecure Jenkins API

#### Example

    docker run -d -p 9118:9118 lovoo/jenkins_exporter:latest -j http://jenkins:8080 -p 9118


## Installation

    git clone git@github.com:lovoo/jenkins_exporter.git
    cd jenkins_exporter
    pip install -r requirements.txt

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request
