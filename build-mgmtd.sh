#!/bin/bash


		rm -rf /beegfs/beegfs-mgmtd/*
		apptainer build beegfs-mgmtd.sif beegfs-mgmtd.def
		apptainer instance start  --writable-tmpfs beegfs-mgmtd.sif beegfs-mgmtd
		rm -rf beegfs-mgmtd.sif
		echo "Check port service: netstat -luntp | grep 8008"
		echo "Stop service: apptainer instance stop beegfs-mgmtd"
