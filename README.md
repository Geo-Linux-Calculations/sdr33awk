# SDR33AWK
Small utility scripts to handle sdr33 files

* sdr2csv.awk - convert SDR33 to CSV
* sdr2gkf.awk - convert SDR33 to GKF (GNU Gama 3D)

## How to use these scripts?

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

## For Windows users

If you use Windows you have to install GNU AWK. You can find binary release here: http://gnuwin32.sourceforge.net/packages/gawk.htm. Download the binary zip and unzip it (gawk.exe is enough).

---

2021  
https://github.com/Geo-Linux-Calculations/sdr33awk  
