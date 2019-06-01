# 基本にするイメージはgolang:alpineなんよ
# golangだけでも動くけどalpineにすると最低限の構成になるので、サイズがとても軽くなるんよ
FROM golang:alpine

# コンテナ上のWorking Directoryはここなんよ
WORKDIR /go/src/webgo/

# ローカル上の./配下を/go/src/golang_webapp_sample/にコピーするんよ
COPY ./ /go/src/webgo/

# ポートを開けるんよ
EXPOSE 8080

# webgoを go run する
CMD ["go", "run", "./src/main/webgo.go"]