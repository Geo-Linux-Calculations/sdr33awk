#!/usr/bin/gawk -f

# SRD (total station data format) to GKG (GNU Gama 3D)
# (not completed) 

# remove leading and trailing white spaces from string
function trim(s)
{
    sub(/^[ \t]+/, "", s);
    sub(/[ \t\r\n]+$/, "", s);
    return s;
}
# convert d.ddddddd to ddd-mm-ss
function dddtodms(ddd)
{
    d = int(ddd);
    m = int((ddd-d)*60);
    s = int(((ddd-d)*60-m)*60+0.5);
    dms = sprintf("%d-%.2d-%.2d", d, m, s);
    return  dms;
}

/^02/ { printf ("</obs>\n\n<obs from=\"%s\">\n",
            trim(substr($0,5,16)), trim(substr($0,21,16)),
            trim(substr($0,37,16)), trim(substr($0,53,16))) > (FILENAME ".gkf") }
/^08/ { printf ("<point id=\"%s\" x=\"%s\" y=\"%s\" z=\"%s\" fix=\"xyz\" />\n",
            trim(substr($0,5,16)), trim(substr($0,21,16)),
            trim(substr($0,37,16)), trim(substr($0,53,16))) > (FILENAME ".gkf") }
/^09/ { printf (" <s-distance to=\"%s\" val=\"%s\" />\n <z-angle to=\"%s\" val=\"%s\" />\n <direction to=\"%s\" val=\"%s\" />\n\n",
            trim(substr($0,21,16)), trim(substr($0,37,16)),
            trim(substr($0,21,16)), dddtodms(trim(substr($0,53,16))),
            trim(substr($0,21,16)), dddtodms(trim(substr($0,69,16)))) > (FILENAME ".gkf") }
