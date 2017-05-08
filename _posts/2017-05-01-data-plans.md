---
layout: post
title: Data Plans
subtitle: Data storage, back-up, and sharing
tags: [bioinfo, CS, tools, data]
category: [computing]
comment: false
---


Here we are talking about long-term storage for large amount of data. Below we list some solutions from private companies. But universities normally provide a more cost effective storage system/plan.

| STORAGE | AMAZON S3 | GOOGLE CLOUD | GOOGLE DRIVE | DROPBOX | BOX.COM |
| :------ |:--------- | :----------- |:------------ | :------ |:--- |
| 1TB/year | $368.64	| $122.88	| $119.88	| $99.00	| NA |

### Using `Attic` on `HCC` for UNL users

At UNL, we use attic system and pay $60 for 1TB/year. Attic is a reliable [near-line](https://en.wikipedia.org/wiki/Nearline_storage) data archive storage system. The files in Attic can be accessed and shared from anywhere using Globus Connect, with a fast 10Gb/s link.


### CyVerse (or iPlant)

[CyVerse](http://www.cyverse.org/) is a NSF funded project that provides powerful computational infrastructure to hangle large datasets and complex analyses.

#### use [irods](https://docs.irods.org/master/) for data I/O

Recursively synchronize data from the `local` directory foo1 to the `CyVerse` foo2:

```
### upload a folder
irsync -rKV foo1 i:foo2
```

Recursively synchronize data from the `CyVerse` foo1 to the `local` directory foo2:

```
### download a folder
irsync -rKV i:foo1 foo2
```

### NCBI SRA

At the end, we have to submit the data to NCBI anyway. It would hurt to submit as soon as you get your data. And NCBI SRA allows you to publish your data at a later time.

```
### use ascp to upload and download
ascp -i ~/bin/aspera.openssh -TQ -l100m -k1 -d /my/fastq/files subasp@upload.ncbi.nlm.nih.gov:uploads/upfolder/
```

### XSEDE

The Extreme Science and Engineering Discovery Environment ([XSEDE](https://www.xsede.org/)) is  digital resources and services in the world. It is a single virtual system that scientists can use to interactively share computing resources, data, and expertise.
