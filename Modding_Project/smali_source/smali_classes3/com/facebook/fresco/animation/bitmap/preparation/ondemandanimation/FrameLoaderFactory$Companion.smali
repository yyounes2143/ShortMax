.class public final Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory$Companion;
.super Ljava/lang/Object;
.source "AnimationLoaderFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimationLoaderFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimationLoaderFactory.kt\ncom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory$Companion\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,65:1\n535#2:66\n520#2,6:67\n216#3,2:73\n*S KotlinDebug\n*F\n+ 1 AnimationLoaderFactory.kt\ncom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory$Companion\n*L\n53#1:66\n53#1:67,6\n55#1:73,2\n*E\n"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearUnusedUntil(Ljava/util/Date;)V
    .locals 5
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "until"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;->access$getUNUSED_FRAME_LOADERS$cp()Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    invoke-static {}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;->access$getUNUSED_FRAME_LOADERS$cp()Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Ljava/util/Map$Entry;

    .line 39
    .line 40
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/UnusedFrameLoader;

    .line 45
    .line 46
    invoke-virtual {v4}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/UnusedFrameLoader;->getInsertedTime()Ljava/util/Date;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v4, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-gez v4, :cond_0

    .line 55
    .line 56
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    goto :goto_2

    .line 70
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_2

    .line 83
    .line 84
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Ljava/util/Map$Entry;

    .line 89
    .line 90
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/UnusedFrameLoader;

    .line 95
    .line 96
    invoke-virtual {v2}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/UnusedFrameLoader;->getFrameLoader()Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-interface {v2}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;->clear()V

    .line 101
    .line 102
    .line 103
    invoke-static {}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;->access$getUNUSED_FRAME_LOADERS$cp()Ljava/util/concurrent/ConcurrentHashMap;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .line 117
    monitor-exit v0

    .line 118
    return-void

    .line 119
    :goto_2
    monitor-exit v0

    .line 120
    throw p1
.end method

.method public final saveUnusedFrame(Ljava/lang/String;Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "cacheKey"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "frameLoader"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;->access$getUNUSED_FRAME_LOADERS$cp()Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/UnusedFrameLoader;

    .line 16
    .line 17
    new-instance v2, Ljava/util/Date;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, p2, v2}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/UnusedFrameLoader;-><init>(Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;Ljava/util/Date;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    return-void
.end method
