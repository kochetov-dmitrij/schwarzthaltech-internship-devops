package main

import (
	"fmt"
	"time"
)

const ServiceName = "alpha"

func main() {
	fmt.Printf("Service %s initializing...\n", ServiceName)
	for {
		err := readSecret()
		if err == nil {
			break
		}
		fmt.Printf("%s ERROR: %s\n", time.Now().Format("15:04:05"), err)
		time.Sleep(5 * time.Second)
	}

	fmt.Printf("Service %s started...\n", ServiceName)
	select {} // sleep forever
}
