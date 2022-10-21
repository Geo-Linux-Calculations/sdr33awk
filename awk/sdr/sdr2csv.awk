#!/usr/bin/gawk -f

# SRD (total station data format) to csv
# three output files are created:
#   file.xyh0.css station records
#   file.xyh.csv coordinates of observed points
#   file.svb.csv observations

# remove leading and trailing white spaces from string
function trim(s) {
    sub(/^[ \t]+/, "", s);
    sub(/[ \t\r\n]+$/, "", s);
    return s;
}

/^02/ { printf ("%s,%s,%s,%s,%s,%s,%s\n",
            trim(substr($0,5,16)), trim(substr($0,21,16)),
            trim(substr($0,37,16)), trim(substr($0,53,16)),
            trim(substr($0,69,16)), trim(substr($0,85,16)),
            trim(substr($0,101,16))) > (FILENAME ".xyh0.csv") }
/^08/ { printf ("%s,%s,%s,%s,%s,%s\n",
            trim(substr($0,5,16)), trim(substr($0,21,16)),
            trim(substr($0,37,16)), trim(substr($0,53,16)),
            trim(substr($0,69,16)), trim(substr($0,85,16))) > (FILENAME ".xyh.csv") }
/^09/ { printf ("%s,%s,%s,%s,%s,%s,%s\n",
            trim(substr($0,5,16)), trim(substr($0,21,16)),
            trim(substr($0,37,16)), trim(substr($0,53,16)),
            trim(substr($0,69,16)), trim(substr($0,85,16)),
            trim(substr($0,101,16))) > (FILENAME ".svb.csv") }
