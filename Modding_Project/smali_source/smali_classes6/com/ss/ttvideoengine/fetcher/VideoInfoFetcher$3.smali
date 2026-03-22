.class Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$3;
.super Ljava/lang/Object;
.source "VideoInfoFetcher.java"

# interfaces
.implements Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->_beginToFetch(Ljava/lang/String;Lorg/json/JSONObject;)V
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
    iput-object p1, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$3;->this$0:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCompletion(Lorg/json/JSONObject;Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 1

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$3;->this$0:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 7
    .line 8
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->access$800(Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 9
    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$3;->this$0:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-static {p2, p1, v0}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->access$300(Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;Lorg/json/JSONObject;Lcom/ss/ttvideoengine/database/VideoModelDBManager$CacheInfo;)V

    .line 16
    .line 17
    .line 18
    :goto_1
    return-void
.end method
