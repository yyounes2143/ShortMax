.class Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$1;
.super Ljava/lang/Object;
.source "VideoInfoFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->_fetchInfoInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$1;->this$0:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    const-string v0, "VideoInfoFetcher"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$1;->this$0:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->access$200(Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/ss/ttvideoengine/database/VideoModelDBManager;->query(Ljava/lang/String;)Lcom/ss/ttvideoengine/database/VideoModelDBManager$CacheInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v2, v1, Lcom/ss/ttvideoengine/database/VideoModelDBManager$CacheInfo;->videoModelStr:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 24
    .line 25
    iget-object v3, v1, Lcom/ss/ttvideoengine/database/VideoModelDBManager$CacheInfo;->videoModelStr:Ljava/lang/String;

    .line 26
    .line 27
    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string/jumbo v3, "using videomodel from DB"

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$1;->this$0:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 37
    .line 38
    invoke-static {v3, v2, v1}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->access$300(Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;Lorg/json/JSONObject;Lcom/ss/ttvideoengine/database/VideoModelDBManager$CacheInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catch_0
    move-exception v1

    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$1;->this$0:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->access$400(Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$1;->this$0:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 63
    .line 64
    new-instance v1, Lcom/ss/ttvideoengine/utils/Error;

    .line 65
    .line 66
    const/16 v2, -0x270f

    .line 67
    .line 68
    const-string v3, "apistring empty and no cache"

    .line 69
    .line 70
    const-string v4, "kTTVideoErrorDomainFetchingInfo"

    .line 71
    .line 72
    invoke-direct {v1, v4, v2, v3}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->access$500(Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$1;->this$0:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 80
    .line 81
    invoke-static {v0}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->access$400(Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    const/4 v2, 0x0

    .line 86
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->access$600(Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 87
    .line 88
    .line 89
    :goto_0
    return-void
.end method
