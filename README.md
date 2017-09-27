# Monitor QSAN storage devices via SNMP. 

This template was developed for the P300Q-D316 (FW: 2.2.9).  

It monitors these items:

- Backup Battery Module (BBM) temperature on both controllers
- Dual Controller Status
- Fan Status
- RAID Status
- Power Supply Status
- Temperature Status
- Voltage Status
- UPS Status

Appropriate triggers for each item are also provided.

## Installation

### Prerequisites: 
1. Zabbix 3.0 or newer
2. net-snmp and snmp-mibs-downloader packages installed

### Installation steps:
1. Copy qsan_temp.sh to /usr/lib/zabbix/externalscripts/
2. Make it executable: chmod +x /usr/lib/zabbix/externalscripts/qsan_temp.sh
3. Copy attached mib-file to /usr/share/mibs/netsnmp 
4. Import template to Zabbix server
5. Create host, setup SNMP interface and and attach template to it
6. Set value for read access in {$SNMP_COMMUNITY}
