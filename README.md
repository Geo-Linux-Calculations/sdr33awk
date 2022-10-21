`ORG.GLC:`
![GitHub release (latest by date)](https://img.shields.io/github/v/release/Geo-Linux-Calculations/sdr33awk)
![GitHub Release Date](https://img.shields.io/github/release-date/Geo-Linux-Calculations/sdr33awk)
![GitHub repo size](https://img.shields.io/github/repo-size/Geo-Linux-Calculations/sdr33awk)
![GitHub all releases](https://img.shields.io/github/downloads/Geo-Linux-Calculations/sdr33awk/total)
![GitHub](https://img.shields.io/github/license/Geo-Linux-Calculations/sdr33awk)  

# SDR33AWK
Small utility scripts to handle sdr33 and dxf files

## SDR

* sdr2csv.awk - convert SDR33 to CSV
* sdr2gkf.awk - convert SDR33 to GKF (GNU Gama 3D)

### How to use these scripts?

You have to install gawk on your machine. There are binary releases for Linux and Windows.

Open a command line window and type the following command to list the statistics of the *sample.sdr*:

```
gawk -f sdr2csv.awk sample.sdr
```
The results are written:
* sample.sdr.svb.csv - angular measure file
* sample.sdr.xyh0.csv - file with stations
* sample.sdr.xyh.csv - file with coordinates of points
```
gawk -f sdr2gkf.awk sample.sdr
```
The results are written:
* sample.sdr.gkf - file for GNU Gama (no complete)

## DXF
(origin: https://github.com/zsiki/dxf_utils)

* 3dface2csv.awk - convert 3DFACE DXF entities to a csv file with WKT geometry useful to load into QGIS as Delemited text layer
* blk_list.awk - statistics about block inserts in a DXF file
* coo2dxf.awk - create dxf file from space separated coordinate list
* dxf2pg.awk - DXF entites to PostGIS database, supported entites: TEXT, MTEXT, LINE, POLYLINE
* dxf_attr2csv.awk - create csv file from block attributes in dxf file
* dxf_blk2csv.awk - create csv file from block inserts in dxf file
* dxf_txt2csv.awk - create csv file from texts in DXF file
* dxfinfo.awk - statistics about entities and layers in a DXF file

### How to use these scripts?

You have to install gawk on your machine. There are binary releases for Linux and Windows.

Open a command line window and type the following command to list the statistics of the *sample.dxf*:

```
gawk -f dxfinfo.awk sample.dxf
```

The results are written to the standard output, if you would like to save them 
into a file use redirection standard output to file e.g.:

```
gawk -f dxfinfo.awk sample.dxf > sample_info.txt
```

or use pipe to send the output to another program.

## For Windows users

If you use Windows you have to install GNU AWK. You can find binary release here: http://gnuwin32.sourceforge.net/packages/gawk.htm. Download the binary zip and unzip it (gawk.exe is enough).

---

2022  
https://github.com/Geo-Linux-Calculations/sdr33awk  
