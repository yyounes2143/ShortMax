.class Lcom/ss/mediakit/net/AVMDLHTTPNetwork$2;
.super Ljava/lang/Object;
.source "AVMDLHTTPNetwork.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/mediakit/net/AVMDLHTTPNetwork;->startTask(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;ILcom/ss/mediakit/net/AVMDLNetClient$CompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/mediakit/net/AVMDLHTTPNetwork;

.field final synthetic val$listener:Lcom/ss/mediakit/net/AVMDLNetClient$CompletionListener;


# direct methods
.method constructor <init>(Lcom/ss/mediakit/net/AVMDLHTTPNetwork;Lcom/ss/mediakit/net/AVMDLNetClient$CompletionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/mediakit/net/AVMDLHTTPNetwork$2;->this$0:Lcom/ss/mediakit/net/AVMDLHTTPNetwork;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/ss/mediakit/net/AVMDLHTTPNetwork$2;->val$listener:Lcom/ss/mediakit/net/AVMDLNetClient$CompletionListener;

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
    iget-object p1, p0, Lcom/ss/mediakit/net/AVMDLHTTPNetwork$2;->val$listener:Lcom/ss/mediakit/net/AVMDLNetClient$CompletionListener;

    .line 2
    .line 3
    new-instance v0, Lcom/ss/mediakit/net/Error;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v0, v1, v2, v2, p2}, Lcom/ss/mediakit/net/Error;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, v2, v0}, Lcom/ss/mediakit/net/AVMDLNetClient$CompletionListener;->onCompletion(Lorg/json/JSONObject;Lcom/ss/mediakit/net/Error;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 4
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
    new-instance v2, Lorg/json/JSONObject;

    .line 11
    .line 12
    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    move-object v1, v2

    .line 16
    move-object v2, p1

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_2

    .line 20
    :catch_0
    move-exception v1

    .line 21
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    .line 27
    .line 28
    move-object v1, p1

    .line 29
    :goto_0
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    invoke-virtual {p2}, Lokhttp3/Response;->w()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {p2}, Lokhttp3/Response;->o()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    .line 41
    .line 42
    :cond_0
    if-eqz v0, :cond_1

    .line 43
    .line 44
    :try_start_3
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 45
    .line 46
    .line 47
    :catch_1
    :cond_1
    if-nez v2, :cond_2

    .line 48
    .line 49
    iget-object p2, p0, Lcom/ss/mediakit/net/AVMDLHTTPNetwork$2;->val$listener:Lcom/ss/mediakit/net/AVMDLNetClient$CompletionListener;

    .line 50
    .line 51
    invoke-interface {p2, v1, p1}, Lcom/ss/mediakit/net/AVMDLNetClient$CompletionListener;->onCompletion(Lorg/json/JSONObject;Lcom/ss/mediakit/net/Error;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    iget-object p2, p0, Lcom/ss/mediakit/net/AVMDLHTTPNetwork$2;->val$listener:Lcom/ss/mediakit/net/AVMDLNetClient$CompletionListener;

    .line 56
    .line 57
    new-instance v0, Lcom/ss/mediakit/net/Error;

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-direct {v0, v3, p1, p1, v2}, Lcom/ss/mediakit/net/Error;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {p2, v1, v0}, Lcom/ss/mediakit/net/AVMDLNetClient$CompletionListener;->onCompletion(Lorg/json/JSONObject;Lcom/ss/mediakit/net/Error;)V

    .line 68
    .line 69
    .line 70
    :goto_1
    return-void

    .line 71
    :catchall_1
    move-exception p2

    .line 72
    move-object v0, p1

    .line 73
    move-object p1, p2

    .line 74
    :goto_2
    if-eqz v0, :cond_3

    .line 75
    .line 76
    :try_start_4
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 77
    .line 78
    .line 79
    :catch_2
    :cond_3
    throw p1
.end method
