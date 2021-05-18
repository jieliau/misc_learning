import getopt

opts, args = getopt.getopt(sys.argv[1:], "ho:", ["help","output="])
for k, v in opts:
    if k == '-h':
        print("Help Message")
    if k == '-o':
        outout_file = v
    if k == 'help':
        print("Help Message")
    if k == 'output':
        out_file = out

# -h -o file --help --output=out file1 file2
# opts = [("-h", ""), ("-o", "file"), ("help", ""), ("output". "out")]
# args = ['file1', 'file2']
