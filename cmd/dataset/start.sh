export ALLUXIO_INIT_IMAGE_ENV=registry.cn-hangzhou.aliyuncs.com/fluid/init-users:v0.4.0-a8ba7c9

go run main.go start \
	--metrics-addr=127.0.0.1:8082
