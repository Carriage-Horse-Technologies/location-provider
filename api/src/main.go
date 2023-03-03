package main

import (
	"time"

	"github.com/gin-contrib/cors"
	"github.com/gin-gonic/gin"
)

func main() {

	router := gin.Default()
	// Set a lower memory limit for multipart forms (default is 32 MiB)
	router.MaxMultipartMemory = 8 << 20 // 8 MiB
	router.Use(cors.New(cors.Config{
		// 許可したいHTTPメソッドの一覧
		AllowMethods: []string{
			"POST",
			"GET",
			"OPTIONS",
			"PUT",
			"DELETE",
		},
		// 許可したいHTTPリクエストヘッダの一覧
		AllowHeaders: []string{
			"Access-Control-Allow-Headers",
			"Content-Type",
			"Content-Length",
			"Accept-Encoding",
			"X-CSRF-Token",
			"Authorization",
		},
		// 許可したいアクセス元の一覧
		AllowOrigins: []string{
			"*",
		},
		MaxAge: 24 * time.Hour,
	}))

	router.GET("/ws/:userId", func(c *gin.Context) {
		userId := c.Param("userId")
		serveWs(c.Writer, c.Request, userId)
	})

	go h.run()
	ProviderJob()
	router.Run(":80")
}
