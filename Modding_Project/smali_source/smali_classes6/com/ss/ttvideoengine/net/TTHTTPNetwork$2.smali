.class Lcom/ss/ttvideoengine/net/TTHTTPNetwork$2;
.super Ljava/lang/Object;
.source "TTHTTPNetwork.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->_startTask(Lokhttp3/Request;Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/net/TTHTTPNetwork;

.field final synthetic val$listener:Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/net/TTHTTPNetwork;Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork$2;->this$0:Lcom/ss/ttvideoengine/net/TTHTTPNetwork;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork$2;->val$listener:Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3

    .line 1
    const-string v0, "TTHTTPNetwork"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onFailure:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-class v0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;

    .line 28
    .line 29
    monitor-enter v0

    .line 30
    :try_start_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork$2;->this$0:Lcom/ss/ttvideoengine/net/TTHTTPNetwork;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->access$000(Lcom/ss/ttvideoengine/net/TTHTTPNetwork;)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v2, 0x3

    .line 37
    if-ne v1, v2, :cond_0

    .line 38
    .line 39
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork$2;->this$0:Lcom/ss/ttvideoengine/net/TTHTTPNetwork;

    .line 44
    .line 45
    const/4 v2, 0x2

    .line 46
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->access$002(Lcom/ss/ttvideoengine/net/TTHTTPNetwork;I)I

    .line 47
    .line 48
    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    iget-object v0, p0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork$2;->this$0:Lcom/ss/ttvideoengine/net/TTHTTPNetwork;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork$2;->val$listener:Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;

    .line 53
    .line 54
    invoke-static {v0, p1, p2, v1}, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->access$100(Lcom/ss/ttvideoengine/net/TTHTTPNetwork;Lokhttp3/Call;Ljava/io/IOException;Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    throw p1
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-class p1, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork$2;->this$0:Lcom/ss/ttvideoengine/net/TTHTTPNetwork;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->access$000(Lcom/ss/ttvideoengine/net/TTHTTPNetwork;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x3

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    monitor-exit p1

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p2

    .line 16
    goto/16 :goto_4

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork$2;->this$0:Lcom/ss/ttvideoengine/net/TTHTTPNetwork;

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->access$002(Lcom/ss/ttvideoengine/net/TTHTTPNetwork;I)I

    .line 22
    .line 23
    .line 24
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    const/4 p1, 0x0

    .line 26
    :try_start_1
    invoke-virtual {p2}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    .line 27
    .line 28
    .line 29
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 30
    const/16 v1, -0x270a

    .line 31
    .line 32
    :try_start_2
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    new-instance v3, Lorg/json/JSONObject;

    .line 37
    .line 38
    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 39
    .line 40
    .line 41
    :try_start_3
    const-string v4, "TTHTTPNetwork"

    .line 42
    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string/jumbo v6, "startTask onResponse body:"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {v4, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 62
    .line 63
    .line 64
    const/4 v2, -0x1

    .line 65
    move-object v4, p1

    .line 66
    goto :goto_1

    .line 67
    :catchall_1
    move-exception p1

    .line 68
    goto :goto_3

    .line 69
    :catch_0
    move-exception v2

    .line 70
    goto :goto_0

    .line 71
    :catch_1
    move-exception v2

    .line 72
    move-object v3, p1

    .line 73
    :goto_0
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    .line 79
    .line 80
    move v2, v1

    .line 81
    :goto_1
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-nez v5, :cond_1

    .line 86
    .line 87
    invoke-virtual {p2}, Lokhttp3/Response;->w()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {p2}, Lokhttp3/Response;->o()I

    .line 92
    .line 93
    .line 94
    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 95
    :cond_1
    if-eqz v0, :cond_2

    .line 96
    .line 97
    :try_start_5
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 98
    .line 99
    .line 100
    :catch_2
    :cond_2
    if-nez v4, :cond_3

    .line 101
    .line 102
    iget-object p2, p0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork$2;->val$listener:Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;

    .line 103
    .line 104
    invoke-interface {p2, v3, p1}, Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;->onCompletion(Lorg/json/JSONObject;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_3
    iget-object p1, p0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork$2;->val$listener:Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;

    .line 109
    .line 110
    new-instance p2, Lcom/ss/ttvideoengine/utils/Error;

    .line 111
    .line 112
    const-string v0, ""

    .line 113
    .line 114
    invoke-direct {p2, v0, v1, v2, v4}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-interface {p1, v3, p2}, Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;->onCompletion(Lorg/json/JSONObject;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 118
    .line 119
    .line 120
    :goto_2
    return-void

    .line 121
    :catchall_2
    move-exception p2

    .line 122
    move-object v0, p1

    .line 123
    move-object p1, p2

    .line 124
    :goto_3
    if-eqz v0, :cond_4

    .line 125
    .line 126
    :try_start_6
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 127
    .line 128
    .line 129
    :catch_3
    :cond_4
    throw p1

    .line 130
    :goto_4
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 131
    throw p2
.end method
