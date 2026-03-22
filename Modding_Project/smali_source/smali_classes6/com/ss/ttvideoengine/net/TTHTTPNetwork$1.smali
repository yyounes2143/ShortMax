.class Lcom/ss/ttvideoengine/net/TTHTTPNetwork$1;
.super Ljava/lang/Object;
.source "TTHTTPNetwork.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->startTask(Ljava/lang/String;Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;)V
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
    iput-object p1, p0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork$1;->this$0:Lcom/ss/ttvideoengine/net/TTHTTPNetwork;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork$1;->val$listener:Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;

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
    iget-object p1, p0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork$1;->this$0:Lcom/ss/ttvideoengine/net/TTHTTPNetwork;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;->access$002(Lcom/ss/ttvideoengine/net/TTHTTPNetwork;I)I

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork$1;->val$listener:Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;

    .line 8
    .line 9
    new-instance v0, Lcom/ss/ttvideoengine/utils/Error;

    .line 10
    .line 11
    const/16 v1, -0x270a

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const-string v2, ""

    .line 18
    .line 19
    invoke-direct {v0, v2, v1, p2}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p2, 0x0

    .line 23
    invoke-interface {p1, p2, v0}, Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;->onCompletion(Lorg/json/JSONObject;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 5

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
    new-instance v1, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    const/4 v2, -0x1

    .line 16
    move v3, v2

    .line 17
    move-object v2, v1

    .line 18
    move-object v1, p1

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_2

    .line 22
    :catch_0
    move-exception v1

    .line 23
    :try_start_2
    invoke-static {v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    const/16 v2, -0x26fb

    .line 27
    .line 28
    move v3, v2

    .line 29
    move-object v2, p1

    .line 30
    :goto_0
    if-nez v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_0

    .line 37
    .line 38
    new-instance v1, Ljava/lang/Exception;

    .line 39
    .line 40
    const-string v3, "http fail"

    .line 41
    .line 42
    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Lokhttp3/Response;->o()I

    .line 46
    .line 47
    .line 48
    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    :cond_0
    if-eqz v0, :cond_1

    .line 50
    .line 51
    :try_start_3
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 52
    .line 53
    .line 54
    :catch_1
    :cond_1
    if-nez v1, :cond_2

    .line 55
    .line 56
    iget-object p2, p0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork$1;->val$listener:Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;

    .line 57
    .line 58
    invoke-interface {p2, v2, p1}, Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;->onCompletion(Lorg/json/JSONObject;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    iget-object p1, p0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork$1;->val$listener:Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;

    .line 63
    .line 64
    new-instance p2, Lcom/ss/ttvideoengine/utils/Error;

    .line 65
    .line 66
    const-string v0, ""

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-direct {p2, v0, v3, v1}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {p1, v2, p2}, Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;->onCompletion(Lorg/json/JSONObject;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 76
    .line 77
    .line 78
    :goto_1
    return-void

    .line 79
    :catchall_1
    move-exception p2

    .line 80
    move-object v0, p1

    .line 81
    move-object p1, p2

    .line 82
    :goto_2
    if-eqz v0, :cond_3

    .line 83
    .line 84
    :try_start_4
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 85
    .line 86
    .line 87
    :catch_2
    :cond_3
    throw p1
.end method
