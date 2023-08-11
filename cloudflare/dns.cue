package record

#A: {
	type: "cloudflare:Record"
	properties: {
		zoneId: string
		name:   string
		type:   "A"
		value:  string
		ttl:    int | *3600
	}
}
