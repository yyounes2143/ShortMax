.class public final Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature;
.super Lcom/startshorts/androidplayer/manager/player/feature/b;
.source "RequestHeadersFeature.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private d:Lcom/ss/ttvideoengine/DataLoaderListener2;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final e:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private f:Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/player/feature/b;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lnf/c;

    .line 5
    .line 6
    invoke-direct {v0}, Lnf/c;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature;->e:Lms/i;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic c()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature;->j()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic d(Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature;IJJLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature;->g(Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature;IJJLjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic e(Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature;->i()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final f()Lcom/ss/ttvideoengine/DataLoaderListener2;
    .locals 1

    .line 1
    new-instance v0, Lnf/d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lnf/d;-><init>(Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final g(Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature;IJJLjava/lang/String;)V
    .locals 0

    .line 1
    const/16 p2, 0x21

    .line 2
    .line 3
    if-eq p1, p2, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object p1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 7
    .line 8
    new-instance p2, Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature$createListener$1$1;

    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    invoke-direct {p2, p6, p0, p3}, Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature$createListener$1$1;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature;Lrs/c;)V

    .line 12
    .line 13
    .line 14
    const-string p0, "PlayerHeaderInfo"

    .line 15
    .line 16
    const/4 p3, 0x1

    .line 17
    invoke-virtual {p1, p0, p3, p2}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->j(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/r;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private final i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature;->e:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final j()Ljava/util/List;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature;->f()Lcom/ss/ttvideoengine/DataLoaderListener2;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p2, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->addListener(Lcom/ss/ttvideoengine/DataLoaderListener2;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature;->d:Lcom/ss/ttvideoengine/DataLoaderListener2;

    .line 26
    .line 27
    return-void
.end method

.method public final h()Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature;->f:Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k(Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature$a;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature;->f:Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature$a;

    .line 2
    .line 3
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/manager/player/feature/b;->release()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature;->d:Lcom/ss/ttvideoengine/DataLoaderListener2;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->removeListener(Lcom/ss/ttvideoengine/DataLoaderListener2;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature;->d:Lcom/ss/ttvideoengine/DataLoaderListener2;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature;->f:Lcom/startshorts/androidplayer/manager/player/feature/RequestHeadersFeature$a;

    .line 19
    .line 20
    return-void
.end method

.method public type()Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;->REQUEST_HEADERS:Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;

    .line 2
    .line 3
    return-object v0
.end method
