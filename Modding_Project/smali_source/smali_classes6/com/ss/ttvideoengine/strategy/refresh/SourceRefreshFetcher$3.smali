.class Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$3;
.super Ljava/lang/Object;
.source "SourceRefreshFetcher.java"

# interfaces
.implements Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->startFetchUrlInfo(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback<",
        "Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;

.field final synthetic val$callback:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;

.field final synthetic val$urlRequest:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$3;->this$0:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$3;->val$urlRequest:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$3;->val$callback:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$3;->this$0:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$3;->val$callback:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$3;->val$urlRequest:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1, p2}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->access$600(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onSuccess(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;)V
    .locals 4
    .param p1    # Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->getUrlCache()Lcom/ss/ttvideoengine/strategy/refresh/UrlCache;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$3;->val$urlRequest:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;

    invoke-interface {v0, v1, p1}, Lcom/ss/ttvideoengine/strategy/refresh/UrlCache;->put(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;)V

    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$3;->this$0:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;

    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$3;->val$callback:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;

    new-instance v2, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;-><init>(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;Z)V

    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->access$500(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;

    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$3;->onSuccess(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;)V

    return-void
.end method
