.class public final Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$connect$1;
.super Ljava/lang/Object;
.source "RealWebSocket.kt"

# interfaces
.implements Lcom/applovin/shadow/okhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;->connect(Lcom/applovin/shadow/okhttp3/OkHttpClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $request:Lcom/applovin/shadow/okhttp3/Request;

.field final synthetic this$0:Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;


# direct methods
.method constructor <init>(Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;Lcom/applovin/shadow/okhttp3/Request;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$connect$1;->$request:Lcom/applovin/shadow/okhttp3/Request;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFailure(Lcom/applovin/shadow/okhttp3/Call;Ljava/io/IOException;)V
    .locals 1
    .param p1    # Lcom/applovin/shadow/okhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "e"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, p2, v0}, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lcom/applovin/shadow/okhttp3/Response;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onResponse(Lcom/applovin/shadow/okhttp3/Call;Lcom/applovin/shadow/okhttp3/Response;)V
    .locals 3
    .param p1    # Lcom/applovin/shadow/okhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/applovin/shadow/okhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "response"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/applovin/shadow/okhttp3/Response;->exchange()Lcom/applovin/shadow/okhttp3/internal/connection/Exchange;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;

    .line 16
    .line 17
    invoke-virtual {v0, p2, p1}, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;->checkUpgradeSuccess$okhttp(Lcom/applovin/shadow/okhttp3/Response;Lcom/applovin/shadow/okhttp3/internal/connection/Exchange;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/internal/connection/Exchange;->newWebSocketStreams()Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$Streams;

    .line 24
    .line 25
    .line 26
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 27
    sget-object v0, Lcom/applovin/shadow/okhttp3/internal/ws/WebSocketExtensions;->Companion:Lcom/applovin/shadow/okhttp3/internal/ws/WebSocketExtensions$Companion;

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/applovin/shadow/okhttp3/Response;->headers()Lcom/applovin/shadow/okhttp3/Headers;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/applovin/shadow/okhttp3/internal/ws/WebSocketExtensions$Companion;->parse(Lcom/applovin/shadow/okhttp3/Headers;)Lcom/applovin/shadow/okhttp3/internal/ws/WebSocketExtensions;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;

    .line 38
    .line 39
    invoke-static {v1, v0}, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;->access$setExtensions$p(Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;Lcom/applovin/shadow/okhttp3/internal/ws/WebSocketExtensions;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;

    .line 43
    .line 44
    invoke-static {v1, v0}, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;->access$isValid(Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;Lcom/applovin/shadow/okhttp3/internal/ws/WebSocketExtensions;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_0

    .line 49
    .line 50
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;

    .line 51
    .line 52
    monitor-enter v0

    .line 53
    :try_start_1
    invoke-static {v0}, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;->access$getMessageAndCloseQueue$p(Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;)Ljava/util/ArrayDeque;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 58
    .line 59
    .line 60
    const-string/jumbo v1, "unexpected Sec-WebSocket-Extensions in response header"

    .line 61
    .line 62
    .line 63
    const/16 v2, 0x3f2

    .line 64
    .line 65
    invoke-virtual {v0, v2, v1}, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;->close(ILjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .line 67
    .line 68
    monitor-exit v0

    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    monitor-exit v0

    .line 72
    throw p1

    .line 73
    :cond_0
    :goto_0
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    sget-object v1, Lcom/applovin/shadow/okhttp3/internal/Util;->okHttpName:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, " WebSocket "

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$connect$1;->$request:Lcom/applovin/shadow/okhttp3/Request;

    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/applovin/shadow/okhttp3/Request;->url()Lcom/applovin/shadow/okhttp3/HttpUrl;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1}, Lcom/applovin/shadow/okhttp3/HttpUrl;->redact()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;

    .line 106
    .line 107
    invoke-virtual {v1, v0, p1}, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;->initReaderAndWriter(Ljava/lang/String;Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$Streams;)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;

    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;->getListener$okhttp()Lcom/applovin/shadow/okhttp3/WebSocketListener;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;

    .line 117
    .line 118
    invoke-virtual {p1, v0, p2}, Lcom/applovin/shadow/okhttp3/WebSocketListener;->onOpen(Lcom/applovin/shadow/okhttp3/WebSocket;Lcom/applovin/shadow/okhttp3/Response;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;->loopReader()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :catch_0
    move-exception p1

    .line 128
    iget-object p2, p0, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;

    .line 129
    .line 130
    const/4 v0, 0x0

    .line 131
    invoke-virtual {p2, p1, v0}, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lcom/applovin/shadow/okhttp3/Response;)V

    .line 132
    .line 133
    .line 134
    :goto_1
    return-void

    .line 135
    :catch_1
    move-exception v0

    .line 136
    iget-object v1, p0, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;

    .line 137
    .line 138
    invoke-virtual {v1, v0, p2}, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lcom/applovin/shadow/okhttp3/Response;)V

    .line 139
    .line 140
    .line 141
    invoke-static {p2}, Lcom/applovin/shadow/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 142
    .line 143
    .line 144
    if-eqz p1, :cond_1

    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/internal/connection/Exchange;->webSocketUpgradeFailed()V

    .line 147
    .line 148
    .line 149
    :cond_1
    return-void
.end method
