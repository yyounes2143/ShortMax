.class Lcom/ss/ttvideoengine/net/TTHTTPNetwork$3;
.super Ljava/lang/Object;
.source "TTHTTPNetwork.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->startTask(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;ILcom/ss/ttvideoengine/net/TTVNetClient$RawCompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/net/TTHTTPNetwork;

.field final synthetic val$listener:Lcom/ss/ttvideoengine/net/TTVNetClient$RawCompletionListener;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/net/TTHTTPNetwork;Lcom/ss/ttvideoengine/net/TTVNetClient$RawCompletionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork$3;->this$0:Lcom/ss/ttvideoengine/net/TTHTTPNetwork;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork$3;->val$listener:Lcom/ss/ttvideoengine/net/TTVNetClient$RawCompletionListener;

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
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "startTask onFailure: "

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "TTHTTPNetwork"

    .line 24
    .line 25
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork$3;->val$listener:Lcom/ss/ttvideoengine/net/TTVNetClient$RawCompletionListener;

    .line 29
    .line 30
    new-instance v0, Lcom/ss/ttvideoengine/utils/Error;

    .line 31
    .line 32
    const/16 v1, -0x270a

    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    const-string v2, ""

    .line 39
    .line 40
    invoke-direct {v0, v2, v1, p2}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 p2, 0x0

    .line 44
    invoke-interface {p1, p2, v0}, Lcom/ss/ttvideoengine/net/TTVNetClient$RawCompletionListener;->onCompletion(Ljava/lang/String;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    .line 3
    .line 4
    .line 5
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "TTHTTPNetwork"

    .line 11
    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string/jumbo v4, "startTask onResponse body:"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v2, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_0

    .line 38
    .line 39
    invoke-virtual {p2}, Lokhttp3/Response;->w()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {p2}, Lokhttp3/Response;->o()I

    .line 44
    .line 45
    .line 46
    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    goto :goto_2

    .line 50
    :cond_0
    const/4 p2, -0x1

    .line 51
    move-object v2, p1

    .line 52
    :goto_0
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 53
    .line 54
    .line 55
    if-nez v2, :cond_1

    .line 56
    .line 57
    iget-object p2, p0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork$3;->val$listener:Lcom/ss/ttvideoengine/net/TTVNetClient$RawCompletionListener;

    .line 58
    .line 59
    invoke-interface {p2, v1, p1}, Lcom/ss/ttvideoengine/net/TTVNetClient$RawCompletionListener;->onCompletion(Ljava/lang/String;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    const-string v0, ""

    .line 64
    .line 65
    const/16 v3, -0x26fb

    .line 66
    .line 67
    if-ne p2, v3, :cond_2

    .line 68
    .line 69
    iget-object v1, p0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork$3;->val$listener:Lcom/ss/ttvideoengine/net/TTVNetClient$RawCompletionListener;

    .line 70
    .line 71
    new-instance v4, Lcom/ss/ttvideoengine/utils/Error;

    .line 72
    .line 73
    invoke-direct {v4, v0, v3, p2, v2}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {v1, p1, v4}, Lcom/ss/ttvideoengine/net/TTVNetClient$RawCompletionListener;->onCompletion(Ljava/lang/String;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    iget-object p1, p0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork$3;->val$listener:Lcom/ss/ttvideoengine/net/TTVNetClient$RawCompletionListener;

    .line 81
    .line 82
    new-instance v3, Lcom/ss/ttvideoengine/utils/Error;

    .line 83
    .line 84
    const/16 v4, -0x270a

    .line 85
    .line 86
    invoke-direct {v3, v0, v4, p2, v2}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-interface {p1, v1, v3}, Lcom/ss/ttvideoengine/net/TTVNetClient$RawCompletionListener;->onCompletion(Ljava/lang/String;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 90
    .line 91
    .line 92
    :goto_1
    return-void

    .line 93
    :catchall_1
    move-exception p2

    .line 94
    move-object v0, p1

    .line 95
    move-object p1, p2

    .line 96
    :goto_2
    if-eqz v0, :cond_3

    .line 97
    .line 98
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 99
    .line 100
    .line 101
    :cond_3
    throw p1
.end method
