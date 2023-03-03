package main

import "encoding/json"

func handler(s []byte) []byte {
	var requestObject Request
	if err := json.Unmarshal(s, &requestObject); err != nil {
		return ErrorSocketResponse
	}

	// 各アクションケースに応じて処理を行う
	switch {
	case requestObject.Action == "UPDATE_CHARACTER_POS":
		// TODO replace here
		// r, err := messageHandler(requestObject.Message, requestObject.RoomId, requestObject.UserId)
		// if err != nil {
		// 	return errorSocketResponse
		// }
		r := []byte(`{"action":"SYSTEM_MESSAGE","status":"OK","error": false}`)
		return r
	}

	return SampleResponse
}
