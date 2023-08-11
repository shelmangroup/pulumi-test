package main

import "shelman.io/dns/cloudflare:record"

resources: {
	pulumitest: record.#A & {
		properties: {
			zoneId: "${shelman_io.id}"
			name:   "pulumitest.shelman.io"
			value:  "127.0.0.42"
		}
	}
}

variables: {
	shelman_io: {
		"fn::invoke": {
			function: "cloudflare:getZone"
			arguments: {
				name: "shelman.io"
			}
		}
	}
}
