package main

import (
	"fmt"
	"os/exec"
	"runtime"
)

func main() {}

func openBrowser(url string) error {
	switch runtime.GOOS {
	case "linux":
		return exec.Command("xdg-open", url).Start()
	case "darwin":
		return exec.Command("open", url).Start()
	case "windows":
		return exec.Command("rundll32", "url.dll,FileProtocolHandler", url).Start()
	default:
		return fmt.Errorf("bad OS value: %s", runtime.GOOS)
	}
}
