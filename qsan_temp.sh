#!/bin/bash
if [[ -z "$1" || -z "$2" ]]; then
  echo "Parameters are missing! Usage:" $0 " [IP] [ControllerID]"
  exit 1
fi

QSAN_IP="$1"
CTR_NUM="$2"

if [ "${CTR_NUM}" = "2" ]; then
  OID="33"
else
  OID="19"
fi

snmpget -c public -v 2c "${QSAN_IP}" SNMPv2-SMI::enterprises.22274.1.3.2.1.4."${OID}" | awk ' { print substr($4,2,4) }'

