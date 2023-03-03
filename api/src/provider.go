package main

import (
	"fmt"
	"time"
)

// LocationProviderとして全ユーザーの位置情報を定期的に返却する
func ProviderJob() {

	// WebSocketに良い感じに流すジョブ
	go func() {
		for range time.Tick(5 * time.Second) {
			fmt.Println("Socket Job is called")

			// userList, err := redis.SMEMBERS(CONNECTION_PATH)
			// if err != nil {
			// 	log.Println(err)
			// 	continue
			// }
			// fmt.Println("Current target num:", len(userList))

			m := message{SampleResponse, "example-user-id"}
			h.broadcast <- m
		}
	}()

}
