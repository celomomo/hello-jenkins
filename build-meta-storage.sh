#!/bin/bash

		rm -rf /beegfs/beegfs-meta/*
		rm -rf /beegfs/beegfs-storage/*
		apptainer build beegfs-meta.sif beegfs-meta.def
		apptainer build beegfs-storage.sif beegfs-storage.def
		apptainer instance start  --bind /beegfs/beegfs-meta/:/beegfs-meta --writable-tmpfs beegfs-meta.sif beegfs-meta 2 127.0.0.1
		apptainer instance start  --bind /beegfs/beegfs-storage/:/beegfs-storage --writable-tmpfs beegfs-storage.sif beegfs-storage 6 601 127.0.0.1
		rm -rf beegfs-meta.sif
		rm -rf beegfs-storage.sif
