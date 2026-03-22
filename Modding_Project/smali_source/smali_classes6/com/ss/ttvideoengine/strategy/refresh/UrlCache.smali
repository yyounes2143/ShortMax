.class public interface abstract Lcom/ss/ttvideoengine/strategy/refresh/UrlCache;
.super Ljava/lang/Object;
.source "UrlCache.java"


# static fields
.field public static final DEFAULT:Lcom/ss/ttvideoengine/strategy/refresh/UrlCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/strategy/refresh/UrlCache$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/ss/ttvideoengine/strategy/refresh/UrlCache$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/ss/ttvideoengine/strategy/refresh/UrlCache;->DEFAULT:Lcom/ss/ttvideoengine/strategy/refresh/UrlCache;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public abstract get(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;)Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract isExpired(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;)Z
    .param p1    # Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract put(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;)V
    .param p2    # Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract remove(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;)V
.end method
