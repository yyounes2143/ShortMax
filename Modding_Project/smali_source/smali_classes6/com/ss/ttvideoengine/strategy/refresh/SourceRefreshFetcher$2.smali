.class Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$2;
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


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$2;->this$0:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$2;->val$callback:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$2;->this$0:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$2;->val$callback:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;

    .line 4
    .line 5
    invoke-static {v0, v1, p1, p2}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->access$200(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onSuccess(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;)V
    .locals 2
    .param p1    # Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$2;->this$0:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;

    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$2;->val$callback:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;

    invoke-static {v0, v1, p1}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;->access$300(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;)V

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

    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$2;->onSuccess(Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;)V

    return-void
.end method
