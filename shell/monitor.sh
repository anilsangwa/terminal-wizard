#!/bin/bash
# Resource Monitor Wrapper
# Usage: ./monitor.sh [option]
# Options: cpu | mem | disk | top

case $1 in
	cpu)
		echo "=== Top 5 CPU consuming processes ==="
		ps -eo pid,ppid,cmd,%cpu,%mem --sort=-%cpu | head -n 6
		;;
	mem)
		echo "=== Top 5 Memory consuming processes ==="
		ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6
		;;
	disk)
		echo "=== Disk Usage ==="
		df -hT | grep -v tmfs
		;;
	top)
		echo "=== Live Procecss Monitor ==="
		top -b -n 1 | head -n 20
		;;
	*)
		echo "Usage: $0 {cpu|mem|disk|top}"
		exit 1
		;;
esac
