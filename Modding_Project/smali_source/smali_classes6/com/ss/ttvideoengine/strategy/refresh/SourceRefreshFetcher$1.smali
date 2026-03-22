.class Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1;
.super Ljava/lang/Object;
.source "SourceRefreshFetcher.java"

# interfaces
.implements Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->fetch(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback<",
        "Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;

.field final synthetic val$callback:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;

.field final synthetic val$playlistUrlRequest:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;

.field final synthetic val$urlRequest:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1;->this$0:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1;->val$playlistUrlRequest:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1;->val$urlRequest:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1;->val$callback:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1;->this$0:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->access$100(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;)Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->logger()Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1;->this$0:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->access$000(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;)Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1, p1, p2}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger;->recordFetchPlaylistUrlError(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1;->this$0:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1;->val$callback:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;

    .line 23
    .line 24
    invoke-static {v0, v1, p1, p2}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->access$200(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onSuccess(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;)V
    .locals 3
    .param p1    # Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1;->this$0:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;

    invoke-static {v0}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->access$100(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;)Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineSourceRefreshStrategy;->logger()Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1;->this$0:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;

    invoke-static {v1}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->access$000(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;)Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger;->recordFetchPlaylistUrlSuccess(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;)V

    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1;->this$0:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;

    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1;->val$playlistUrlRequest:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;

    new-instance v2, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1$1;

    invoke-direct {v2, p0, p1}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1$1;-><init>(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1;Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;)V

    invoke-static {v0, v1, p1, v2}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->access$400(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;

    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$1;->onSuccess(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;)V

    return-void
.end method
