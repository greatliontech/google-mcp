package main

import "github.com/greatliontech/google-mcp/cmd"

var version = "dev"

func main() {
	cmd.SetVersion(version)
	cmd.Execute()
}
