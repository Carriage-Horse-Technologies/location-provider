package main

import (
	"encoding/json"
	"log"

	"github.com/pkg/errors"
)

func savePathBuilder(userId string) (path string) {
	return BASE_POS_PATH + userId
}
func convertJsonToStr(jsonObj interface{}) (jsonStr string, err error) {
	serializedObj, err := json.Marshal(jsonObj)
	if err != nil {
		log.Println(errors.WithStack(err))
		jsonStr = ""
		return

	}
	jsonStr = string(serializedObj)
	return
}

func convertStrToJson(jsonStr string, jsonObj *(interface{})) (err error) {
	err = json.Unmarshal([]byte(jsonStr), jsonObj)
	if err != nil {
		err = errors.WithStack(err)
		return
	}
	return
}
