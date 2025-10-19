#!/bin/bash
set -euo pipefail

./create-yaml.sh
esphome run esp32c3_pwm.yaml