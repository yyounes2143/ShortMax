.class public final Llf/r;
.super Ljava/lang/Object;
.source "VideoPlayer2.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nVideoPlayer2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoPlayer2.kt\ncom/startshorts/androidplayer/manager/player/core/VideoPlayer2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,337:1\n1863#2,2:338\n1863#2,2:340\n*S KotlinDebug\n*F\n+ 1 VideoPlayer2.kt\ncom/startshorts/androidplayer/manager/player/core/VideoPlayer2\n*L\n244#1:338,2\n270#1:340,2\n*E\n"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:Llf/s;

.field private d:Llf/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private f:Lcom/ss/ttvideoengine/TTVideoEngine;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Z

.field private h:Lfk/p;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llf/r;->a:Landroid/content/Context;

    iput-object p2, p0, Llf/r;->b:Ljava/lang/String;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Llf/r;->e:Ljava/util/List;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Llf/r;->k:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 4
    const-string p2, "Player"

    :cond_0
    invoke-direct {p0, p1, p2}, Llf/r;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static final A(Llf/r;II)Lkotlin/Unit;
    .locals 0

    .line 1
    iput p1, p0, Llf/r;->i:I

    .line 2
    .line 3
    iput p2, p0, Llf/r;->j:I

    .line 4
    .line 5
    sget-object p1, Lfk/h0;->a:Lfk/h0;

    .line 6
    .line 7
    new-instance p2, Llf/f;

    .line 8
    .line 9
    invoke-direct {p2, p0}, Llf/f;-><init>(Llf/r;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method

.method private static final B(Llf/r;)V
    .locals 2

    .line 1
    iget-object v0, p0, Llf/r;->d:Llf/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Llf/r;->i:I

    .line 6
    .line 7
    iget p0, p0, Llf/r;->j:I

    .line 8
    .line 9
    invoke-interface {v0, v1, p0}, Llf/a;->g(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private static final F(Llf/r;IZ)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iput p1, p0, Llf/r;->j:I

    .line 4
    .line 5
    :cond_0
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Llf/r;->k:Z

    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method private final G(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 1

    .line 1
    new-instance v0, Llf/r$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Llf/r$a;-><init>(Llf/r;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->setVideoEngineCallback(Lcom/ss/ttvideoengine/VideoEngineCallback;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final H(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 1

    .line 1
    new-instance v0, Llf/c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Llf/c;-><init>(Llf/r;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->setVideoEngineInfoListener(Lcom/ss/ttvideoengine/VideoEngineInfoListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final I(Llf/r;Lcom/ss/ttvideoengine/VideoEngineInfos;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/VideoEngineInfos;->getKey()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "mdlhitcachesize"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/VideoEngineInfos;->getUsingMDLPlayTaskKey()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/VideoEngineInfos;->getUsingMDLHitCacheSize()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 25
    .line 26
    iget-object p0, p0, Llf/r;->b:Ljava/lang/String;

    .line 27
    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v4, "cache hit -> taskKey("

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v0, ") cacheSize("

    .line 42
    .line 43
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const/16 v0, 0x29

    .line 50
    .line 51
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p1, p0, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/VideoEngineInfos;->getKey()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const-string v0, "renderSeekComplete"

    .line 67
    .line 68
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 75
    .line 76
    iget-object p0, p0, Llf/r;->b:Ljava/lang/String;

    .line 77
    .line 78
    const-string v0, "seek render complete"

    .line 79
    .line 80
    invoke-virtual {p1, p0, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic a(Llf/r;IZ)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Llf/r;->F(Llf/r;IZ)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Llf/r;Lcom/ss/ttvideoengine/VideoEngineInfos;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Llf/r;->I(Llf/r;Lcom/ss/ttvideoengine/VideoEngineInfos;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Llf/r;)V
    .locals 0

    .line 1
    invoke-static {p0}, Llf/r;->B(Llf/r;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Llf/r;II)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Llf/r;->A(Llf/r;II)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e(Llf/r;)I
    .locals 0

    .line 1
    iget p0, p0, Llf/r;->j:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic f(Llf/r;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Llf/r;->g:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic g(Llf/r;)Llf/a;
    .locals 0

    .line 1
    iget-object p0, p0, Llf/r;->d:Llf/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Llf/r;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Llf/r;->k:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic i(Llf/r;)Lfk/p;
    .locals 0

    .line 1
    iget-object p0, p0, Llf/r;->h:Lfk/p;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic j(Llf/r;)I
    .locals 0

    .line 1
    iget p0, p0, Llf/r;->i:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic k(Llf/r;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Llf/r;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic l(Llf/r;I)V
    .locals 0

    .line 1
    iput p1, p0, Llf/r;->j:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic m(Llf/r;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Llf/r;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic n(Llf/r;Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llf/r;->f:Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic o(Llf/r;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Llf/r;->k:Z

    .line 2
    .line 3
    return-void
.end method

.method private final p(Llf/s;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Llf/r;->l:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Llf/r;->c:Llf/s;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Llf/r;->l:Z

    .line 13
    .line 14
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 15
    .line 16
    iget-object v2, p0, Llf/r;->b:Ljava/lang/String;

    .line 17
    .line 18
    const-string v3, "clearLastPlayInfo"

    .line 19
    .line 20
    invoke-virtual {v1, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lfk/p;

    .line 24
    .line 25
    invoke-direct {v1}, Lfk/p;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lfk/p;->d()Lfk/p;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "mParams"

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    iget-object v4, p0, Llf/r;->c:Llf/s;

    .line 38
    .line 39
    if-nez v4, :cond_2

    .line 40
    .line 41
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    move-object v4, v3

    .line 45
    :cond_2
    invoke-virtual {v4}, Llf/s;->g()Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {p1}, Llf/s;->g()Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_8

    .line 58
    .line 59
    :cond_3
    iget-object p1, p0, Llf/r;->c:Llf/s;

    .line 60
    .line 61
    if-nez p1, :cond_4

    .line 62
    .line 63
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    move-object p1, v3

    .line 67
    :cond_4
    invoke-virtual {p1}, Llf/s;->g()Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    instance-of v4, p1, Landroid/view/TextureView;

    .line 72
    .line 73
    if-eqz v4, :cond_5

    .line 74
    .line 75
    check-cast p1, Landroid/view/TextureView;

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_5
    move-object p1, v3

    .line 79
    :goto_0
    if-eqz p1, :cond_6

    .line 80
    .line 81
    invoke-virtual {p1, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 82
    .line 83
    .line 84
    :cond_6
    iget-object p1, p0, Llf/r;->c:Llf/s;

    .line 85
    .line 86
    if-nez p1, :cond_7

    .line 87
    .line 88
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    move-object p1, v3

    .line 92
    :cond_7
    invoke-virtual {p1, v3}, Llf/s;->u(Landroid/view/View;)V

    .line 93
    .line 94
    .line 95
    :cond_8
    iput-object v3, p0, Llf/r;->d:Llf/a;

    .line 96
    .line 97
    const/4 p1, 0x0

    .line 98
    iput-boolean p1, p0, Llf/r;->g:Z

    .line 99
    .line 100
    iput-object v3, p0, Llf/r;->h:Lfk/p;

    .line 101
    .line 102
    iput p1, p0, Llf/r;->i:I

    .line 103
    .line 104
    iput p1, p0, Llf/r;->j:I

    .line 105
    .line 106
    iput-boolean v0, p0, Llf/r;->k:Z

    .line 107
    .line 108
    iget-object p1, p0, Llf/r;->e:Ljava/util/List;

    .line 109
    .line 110
    check-cast p1, Ljava/lang/Iterable;

    .line 111
    .line 112
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_9

    .line 121
    .line 122
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature;

    .line 127
    .line 128
    invoke-interface {v0}, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature;->release()V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_9
    iget-object p1, p0, Llf/r;->e:Ljava/util/List;

    .line 133
    .line 134
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Llf/r;->f:Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 138
    .line 139
    if-eqz p1, :cond_a

    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngine;->releaseAsync()V

    .line 142
    .line 143
    .line 144
    :cond_a
    iput-object v3, p0, Llf/r;->f:Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 145
    .line 146
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 147
    .line 148
    iget-object v0, p0, Llf/r;->b:Ljava/lang/String;

    .line 149
    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    const-string v3, "clearLastPlayInfo cost "

    .line 156
    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Lfk/p;->b()J

    .line 161
    .line 162
    .line 163
    move-result-wide v3

    .line 164
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v1, "ms"

    .line 168
    .line 169
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    return-void
.end method

.method static synthetic q(Llf/r;Llf/s;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Llf/r;->p(Llf/s;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final r()Lcom/startshorts/androidplayer/manager/player/feature/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;->BASE:Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Llf/r;->s(Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;)Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Lcom/startshorts/androidplayer/manager/player/feature/c;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Lcom/startshorts/androidplayer/manager/player/feature/c;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return-object v0
.end method

.method private final s(Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;)Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature;
    .locals 4

    .line 1
    iget-object v0, p0, Llf/r;->e:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Llf/r;->e:Ljava/util/List;

    .line 5
    .line 6
    check-cast v1, Ljava/lang/Iterable;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    move-object v3, v2

    .line 23
    check-cast v3, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature;

    .line 24
    .line 25
    invoke-interface {v3}, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature;->type()Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-ne v3, p1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 v2, 0x0

    .line 35
    :goto_0
    check-cast v2, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    monitor-exit v0

    .line 38
    return-object v2

    .line 39
    :goto_1
    monitor-exit v0

    .line 40
    throw p1
.end method

.method private final u()Lcom/startshorts/androidplayer/manager/player/feature/e;
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;->SEAMLESS_SWITCH:Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Llf/r;->s(Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;)Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Lcom/startshorts/androidplayer/manager/player/feature/e;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Lcom/startshorts/androidplayer/manager/player/feature/e;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return-object v0
.end method

.method private final v(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 10

    .line 1
    iget-object v0, p0, Llf/r;->c:Llf/s;

    .line 2
    .line 3
    const-string v1, "mParams"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v2

    .line 12
    :cond_0
    invoke-virtual {v0}, Llf/s;->b()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v3, p0, Llf/r;->e:Ljava/util/List;

    .line 19
    .line 20
    check-cast v0, Ljava/util/Collection;

    .line 21
    .line 22
    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Llf/r;->e:Ljava/util/List;

    .line 26
    .line 27
    new-instance v3, Lcom/startshorts/androidplayer/manager/player/feature/c;

    .line 28
    .line 29
    invoke-direct {v3}, Lcom/startshorts/androidplayer/manager/player/feature/c;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Llf/r;->e:Ljava/util/List;

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
    move-object v3, v2

    .line 44
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_4

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature;

    .line 55
    .line 56
    :try_start_0
    instance-of v5, v4, Lcom/startshorts/androidplayer/manager/player/feature/f;

    .line 57
    .line 58
    if-eqz v5, :cond_2

    .line 59
    .line 60
    move-object v3, v4

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    iget-object v5, p0, Llf/r;->c:Llf/s;

    .line 63
    .line 64
    if-nez v5, :cond_3

    .line 65
    .line 66
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    move-object v5, v2

    .line 70
    goto :goto_1

    .line 71
    :catch_0
    move-exception v5

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    :goto_1
    invoke-interface {v4, p1, v5}, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature;->a(Lcom/ss/ttvideoengine/TTVideoEngine;Llf/s;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :goto_2
    sget-object v6, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 78
    .line 79
    iget-object v7, p0, Llf/r;->b:Ljava/lang/String;

    .line 80
    .line 81
    new-instance v8, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v9, "init feature("

    .line 87
    .line 88
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-interface {v4}, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature;->type()Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v4, ") failed -> "

    .line 99
    .line 100
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-virtual {v6, v7, v4}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_4
    check-cast v3, Lcom/startshorts/androidplayer/manager/player/feature/f;

    .line 119
    .line 120
    if-eqz v3, :cond_6

    .line 121
    .line 122
    iget-object v0, p0, Llf/r;->c:Llf/s;

    .line 123
    .line 124
    if-nez v0, :cond_5

    .line 125
    .line 126
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_5
    move-object v2, v0

    .line 131
    :goto_3
    invoke-virtual {v3, p1, v2}, Lcom/startshorts/androidplayer/manager/player/feature/f;->a(Lcom/ss/ttvideoengine/TTVideoEngine;Llf/s;)V

    .line 132
    .line 133
    .line 134
    :cond_6
    return-void
.end method

.method private final y()V
    .locals 4

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    iget-object v1, p0, Llf/r;->b:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "playInternal -> "

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v3, p0, Llf/r;->c:Llf/s;

    .line 16
    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    const-string v3, "mParams"

    .line 20
    .line 21
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 36
    .line 37
    iget-object v1, p0, Llf/r;->a:Landroid/content/Context;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-direct {v0, v1, v2}, Lcom/ss/ttvideoengine/TTVideoEngine;-><init>(Landroid/content/Context;I)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v0}, Llf/r;->G(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, v0}, Llf/r;->H(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, v0}, Llf/r;->v(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Llf/r;->f:Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->play()V

    .line 55
    .line 56
    .line 57
    new-instance v0, Lfk/p;

    .line 58
    .line 59
    invoke-direct {v0}, Lfk/p;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lfk/p;->d()Lfk/p;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Llf/r;->h:Lfk/p;

    .line 67
    .line 68
    return-void
.end method


# virtual methods
.method public final C()V
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    iget-object v1, p0, Llf/r;->b:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "releaseInternal"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lfk/p;

    .line 11
    .line 12
    invoke-direct {v1}, Lfk/p;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lfk/p;->d()Lfk/p;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-static {p0, v2, v3, v2}, Llf/r;->q(Llf/r;Llf/s;ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Llf/r;->b:Ljava/lang/String;

    .line 25
    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v4, "release took "

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lfk/p;->b()J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, "ms"

    .line 44
    .line 45
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public D()V
    .locals 1

    .line 1
    invoke-direct {p0}, Llf/r;->r()Lcom/startshorts/androidplayer/manager/player/feature/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/player/feature/c;->i()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public E(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Llf/r;->r()Lcom/startshorts/androidplayer/manager/player/feature/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Llf/d;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Llf/d;-><init>(Llf/r;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1, v1}, Lcom/startshorts/androidplayer/manager/player/feature/c;->j(ILkotlin/jvm/functions/Function1;)V

    .line 13
    .line 14
    .line 15
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Llf/r;->k:Z

    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public J(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Llf/r;->r()Lcom/startshorts/androidplayer/manager/player/feature/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/player/feature/c;->l(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public K()V
    .locals 1

    .line 1
    invoke-direct {p0}, Llf/r;->r()Lcom/startshorts/androidplayer/manager/player/feature/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/player/feature/c;->n()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final L(Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "resolution"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Llf/r;->u()Lcom/startshorts/androidplayer/manager/player/feature/e;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/player/feature/e;->c(Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public M(F)V
    .locals 1

    .line 1
    invoke-direct {p0}, Llf/r;->r()Lcom/startshorts/androidplayer/manager/player/feature/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/player/feature/c;->o(F)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final t()Lcom/ss/ttvideoengine/TTVideoEngine;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Llf/r;->f:Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 2
    .line 3
    return-object v0
.end method

.method public w()V
    .locals 1

    .line 1
    invoke-direct {p0}, Llf/r;->r()Lcom/startshorts/androidplayer/manager/player/feature/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/player/feature/c;->g()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public x(Llf/s;Llf/a;)V
    .locals 1
    .param p1    # Llf/s;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Llf/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "params"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "listener"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Llf/r;->p(Llf/s;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Llf/r;->l:Z

    .line 16
    .line 17
    iput-object p1, p0, Llf/r;->c:Llf/s;

    .line 18
    .line 19
    iput-object p2, p0, Llf/r;->d:Llf/a;

    .line 20
    .line 21
    invoke-direct {p0}, Llf/r;->y()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final z()V
    .locals 2

    .line 1
    invoke-direct {p0}, Llf/r;->r()Lcom/startshorts/androidplayer/manager/player/feature/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Llf/e;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Llf/e;-><init>(Llf/r;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/player/feature/c;->h(Lkotlin/jvm/functions/Function2;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
