.class public final Lcom/startshorts/androidplayer/manager/player/feature/d;
.super Lcom/startshorts/androidplayer/manager/player/feature/b;
.source "DecryptFeature.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/player/feature/d$a;,
        Lcom/startshorts/androidplayer/manager/player/feature/d$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDecryptFeature.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DecryptFeature.kt\ncom/startshorts/androidplayer/manager/player/feature/DecryptFeature\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,164:1\n1863#2,2:165\n*S KotlinDebug\n*F\n+ 1 DecryptFeature.kt\ncom/startshorts/androidplayer/manager/player/feature/DecryptFeature\n*L\n147#1:165,2\n*E\n"
    }
.end annotation


# static fields
.field public static final f:Lcom/startshorts/androidplayer/manager/player/feature/d$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private d:Z

.field private final e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/manager/player/feature/d$b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/player/feature/d$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/player/feature/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/player/feature/d;->f:Lcom/startshorts/androidplayer/manager/player/feature/d$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/player/feature/b;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/player/feature/d;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    return-void
.end method

.method public static final synthetic c(Lcom/startshorts/androidplayer/manager/player/feature/d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/startshorts/androidplayer/manager/player/feature/d;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic d(Lcom/startshorts/androidplayer/manager/player/feature/d;Ljava/lang/String;)Lcom/startshorts/androidplayer/manager/player/feature/d$b;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/player/feature/d;->h(Ljava/lang/String;)Lcom/startshorts/androidplayer/manager/player/feature/d$b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e(Lcom/startshorts/androidplayer/manager/player/feature/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/player/feature/d;->i(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic f(Lcom/startshorts/androidplayer/manager/player/feature/d;Ljava/lang/String;)Lcom/startshorts/androidplayer/manager/player/feature/d$b;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/player/feature/d;->j(Ljava/lang/String;)Lcom/startshorts/androidplayer/manager/player/feature/d$b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g(Lcom/startshorts/androidplayer/manager/player/feature/d;Ljava/lang/String;Lcom/startshorts/androidplayer/manager/player/feature/d$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/player/feature/d;->k(Ljava/lang/String;Lcom/startshorts/androidplayer/manager/player/feature/d$b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final h(Ljava/lang/String;)Lcom/startshorts/androidplayer/manager/player/feature/d$b;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/player/feature/d;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/startshorts/androidplayer/manager/player/feature/d$b;

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 20
    :goto_1
    return-object p1
.end method

.method private final i(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final j(Ljava/lang/String;)Lcom/startshorts/androidplayer/manager/player/feature/d$b;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/player/feature/d;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/startshorts/androidplayer/manager/player/feature/d$b;

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 20
    :goto_1
    return-object p1
.end method

.method private final k(Ljava/lang/String;Lcom/startshorts/androidplayer/manager/player/feature/d$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/player/feature/d;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/ss/ttvideoengine/TTVideoEngine;Llf/s;)V
    .locals 1
    .param p1    # Lcom/ss/ttvideoengine/TTVideoEngine;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Llf/s;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "player"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "params"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/player/feature/b;->a(Lcom/ss/ttvideoengine/TTVideoEngine;Llf/s;)V

    .line 12
    .line 13
    .line 14
    const p2, 0xb5a4

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p1, p2, v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntOption(II)V

    .line 19
    .line 20
    .line 21
    const/16 p2, 0x58d

    .line 22
    .line 23
    const-string v0, "jiuzhou"

    .line 24
    .line 25
    invoke-virtual {p1, p2, v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->setStringOption(ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/16 p2, 0x58e

    .line 29
    .line 30
    const-string v0, "21"

    .line 31
    .line 32
    invoke-virtual {p1, p2, v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->setStringOption(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance p2, Lcom/startshorts/androidplayer/manager/player/feature/d$c;

    .line 36
    .line 37
    invoke-direct {p2, p0}, Lcom/startshorts/androidplayer/manager/player/feature/d$c;-><init>(Lcom/startshorts/androidplayer/manager/player/feature/d;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngine;->setBufferProcessCallback(Lcom/ss/ttm/player/BufferProcessCallback;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public release()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/manager/player/feature/b;->release()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 5
    .line 6
    const-string v1, "DecryptFeature"

    .line 7
    .line 8
    const-string v2, "release"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/manager/player/feature/d;->d:Z

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/player/feature/b;->b()Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/TTVideoEngine;->setBufferProcessCallback(Lcom/ss/ttm/player/BufferProcessCallback;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/player/feature/d;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "<get-values>(...)"

    .line 33
    .line 34
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    check-cast v0, Ljava/lang/Iterable;

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lcom/startshorts/androidplayer/manager/player/feature/d$b;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/player/feature/d$b;->a()Lof/c;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lof/c;->h()V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/player/feature/d;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public type()Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;->DECRYPT:Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;

    .line 2
    .line 3
    return-object v0
.end method
