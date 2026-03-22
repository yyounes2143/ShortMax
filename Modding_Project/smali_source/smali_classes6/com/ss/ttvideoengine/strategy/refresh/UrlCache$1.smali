.class final Lcom/ss/ttvideoengine/strategy/refresh/UrlCache$1;
.super Ljava/lang/Object;
.source "UrlCache.java"

# interfaces
.implements Lcom/ss/ttvideoengine/strategy/refresh/UrlCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/strategy/refresh/UrlCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final sCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/LruCache;

    .line 5
    .line 6
    const/16 v1, 0x64

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/UrlCache$1;->sCache:Landroid/util/LruCache;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/UrlCache$1;->sCache:Landroid/util/LruCache;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public generateKey(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, ""

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    iget-object p1, p1, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;->cacheKey:Ljava/lang/String;

    .line 7
    .line 8
    return-object p1
.end method

.method public get(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;)Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/UrlCache$1;->sCache:Landroid/util/LruCache;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/strategy/refresh/UrlCache$1;->generateKey(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;

    .line 16
    .line 17
    return-object p1
.end method

.method public isExpired(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;)Z
    .locals 4
    .param p1    # Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-wide v0, p1, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;->expireTimeInMS:J

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    cmp-long p1, v0, v2

    .line 10
    .line 11
    if-gtz p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 17
    :goto_1
    return p1
.end method

.method public put(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;)V
    .locals 1
    .param p2    # Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/UrlCache$1;->sCache:Landroid/util/LruCache;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/strategy/refresh/UrlCache$1;->generateKey(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    :cond_1
    :goto_0
    return-void
.end method

.method public remove(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/refresh/UrlCache$1;->sCache:Landroid/util/LruCache;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/strategy/refresh/UrlCache$1;->generateKey(Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void
.end method
