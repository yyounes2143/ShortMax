.class Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher$1;
.super Ljava/lang/Object;
.source "MDLURLFetcher.java"

# interfaces
.implements Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;->_start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;)I
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
.field final synthetic this$0:Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;

.field final synthetic val$listener:Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;

.field final synthetic val$urlRequest:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher$1;->this$0:Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher$1;->val$listener:Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher$1;->val$urlRequest:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;

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
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher$1;->this$0:Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher$1;->val$listener:Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher$1;->val$urlRequest:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1, p2}, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;->access$100(Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onSuccess(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;)V
    .locals 3
    .param p1    # Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher$1;->this$0:Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;

    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher$1;->val$listener:Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;

    iget-object v2, p0, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher$1;->val$urlRequest:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;

    invoke-static {v0, v1, v2, p1}, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;->access$000(Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher;Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;)V

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

    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/strategy/refresh/MDLURLFetcher$1;->onSuccess(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;)V

    return-void
.end method
