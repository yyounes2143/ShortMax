.class public Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$SmartUrlCache;
.super Ljava/lang/Object;
.source "SmartUrlFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmartUrlCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$SmartUrlCache$CacheHolder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CodecStrategy_SmartUrlCache"

.field private static final sCacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$SmartUrlCache$CacheHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$SmartUrlCache;->sCacheMap:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static clear()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "CodecStrategy_SmartUrlCache"

    .line 8
    .line 9
    const-string v1, "clear"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    sget-object v0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$SmartUrlCache;->sCacheMap:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private static find(Ljava/lang/String;)Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$SmartUrlCache;->sCacheMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$SmartUrlCache$CacheHolder;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    invoke-static {p0}, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$SmartUrlCache$CacheHolder;->access$400(Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$SmartUrlCache$CacheHolder;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    const-wide/16 v3, -0x1

    .line 18
    .line 19
    cmp-long v1, v1, v3

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    invoke-static {p0}, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$SmartUrlCache$CacheHolder;->access$500(Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$SmartUrlCache$CacheHolder;)Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_1
    invoke-static {p0}, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$SmartUrlCache$CacheHolder;->access$400(Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$SmartUrlCache$CacheHolder;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    cmp-long v1, v1, v3

    .line 37
    .line 38
    if-gez v1, :cond_2

    .line 39
    .line 40
    invoke-static {p0}, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$SmartUrlCache$CacheHolder;->access$500(Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$SmartUrlCache$CacheHolder;)Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_2
    return-object v0
.end method

.method public static get(Ljava/lang/String;)Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$SmartUrlCache;->find(Ljava/lang/String;)Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "get "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p0, " "

    .line 19
    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string v1, "CodecStrategy_SmartUrlCache"

    .line 31
    .line 32
    invoke-static {v1, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

.method public static key(Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;->cacheKey:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;->cacheKey:Ljava/lang/String;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;->playUrl:Ljava/lang/String;

    .line 13
    .line 14
    return-object p0
.end method

.method public static put(Ljava/lang/String;Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;)V
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "put "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, " "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "CodecStrategy_SmartUrlCache"

    .line 33
    .line 34
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    sget-object v0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$SmartUrlCache;->sCacheMap:Ljava/util/Map;

    .line 38
    .line 39
    new-instance v1, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$SmartUrlCache$CacheHolder;

    .line 40
    .line 41
    const-wide/16 v2, -0x1

    .line 42
    .line 43
    invoke-direct {v1, p1, v2, v3}, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$SmartUrlCache$CacheHolder;-><init>(Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Result;J)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "remove "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "CodecStrategy_SmartUrlCache"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    sget-object v0, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$SmartUrlCache;->sCacheMap:Ljava/util/Map;

    .line 30
    .line 31
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    return-void
.end method
