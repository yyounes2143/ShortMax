.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/h;


# annotations
.annotation build Landroidx/annotation/MainThread;
.end annotation

.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSimplifiedExoPlayer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SimplifiedExoPlayer.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/SimplifiedExoPlayer\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,350:1\n351#2,11:351\n*S KotlinDebug\n*F\n+ 1 SimplifiedExoPlayer.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/SimplifiedExoPlayer\n*L\n334#1:351,11\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Z

.field public final c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lgt/g0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lkt/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/e<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lkt/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/i<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lkt/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/e<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lkt/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/i<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lkt/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/e<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/l;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lkt/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/i<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/l;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lcom/google/android/exoplayer2/ui/StyledPlayerView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public n:Z

.field public final o:Landroid/os/Looper;

.field public p:Lcom/google/android/exoplayer2/k;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public q:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public r:Z

.field public final s:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c$d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final t:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:J

.field public v:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n;Landroidx/lifecycle/Lifecycle;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/lifecycle/Lifecycle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "mediaCacheRepository"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "lifecycle"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->a:Landroid/content/Context;

    .line 20
    .line 21
    iput-boolean p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->b:Z

    .line 22
    .line 23
    iput-object p3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n;

    .line 24
    .line 25
    const-string p2, "SimplifiedExoPlayer"

    .line 26
    .line 27
    iput-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->d:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {}, Lcom/moloco/sdk/internal/scheduling/c;->a()Lcom/moloco/sdk/internal/scheduling/a;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-interface {p2}, Lcom/moloco/sdk/internal/scheduling/a;->getMain()Lkotlin/coroutines/CoroutineContext;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-static {p2}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    iput-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->e:Lgt/g0;

    .line 42
    .line 43
    sget-object p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i$b;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i$b;

    .line 44
    .line 45
    invoke-static {p2}, Lkotlinx/coroutines/flow/o;->a(Ljava/lang/Object;)Lkt/e;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    iput-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->f:Lkt/e;

    .line 50
    .line 51
    iput-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->g:Lkt/i;

    .line 52
    .line 53
    new-instance p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/a;

    .line 54
    .line 55
    const/4 v4, 0x6

    .line 56
    const/4 v5, 0x0

    .line 57
    const/4 v1, 0x0

    .line 58
    const/4 v2, 0x0

    .line 59
    const/4 v3, 0x0

    .line 60
    move-object v0, p2

    .line 61
    invoke-direct/range {v0 .. v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/a;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 62
    .line 63
    .line 64
    invoke-static {p2}, Lkotlinx/coroutines/flow/o;->a(Ljava/lang/Object;)Lkt/e;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    iput-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->h:Lkt/e;

    .line 69
    .line 70
    iput-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->i:Lkt/i;

    .line 71
    .line 72
    const/4 p2, 0x0

    .line 73
    invoke-static {p2}, Lkotlinx/coroutines/flow/o;->a(Ljava/lang/Object;)Lkt/e;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    iput-object p3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->j:Lkt/e;

    .line 78
    .line 79
    iput-object p3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->k:Lkt/i;

    .line 80
    .line 81
    :try_start_0
    new-instance p3, Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    .line 82
    .line 83
    invoke-direct {p3, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;-><init>(Landroid/content/Context;)V

    .line 84
    .line 85
    .line 86
    const/4 p1, 0x0

    .line 87
    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setUseController(Z)V
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catch_0
    move-exception p1

    .line 92
    move-object v3, p1

    .line 93
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 94
    .line 95
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->d:Ljava/lang/String;

    .line 96
    .line 97
    const/16 v5, 0x8

    .line 98
    .line 99
    const/4 v6, 0x0

    .line 100
    const-string v2, "ExoPlayerView could not be instantiated."

    .line 101
    .line 102
    const/4 v4, 0x0

    .line 103
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->j:Lkt/e;

    .line 107
    .line 108
    sget-object p3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/l;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/l;

    .line 109
    .line 110
    invoke-interface {p1, p3}, Lkt/e;->setValue(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    move-object p3, p2

    .line 114
    :goto_0
    iput-object p3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->l:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    .line 115
    .line 116
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->o:Landroid/os/Looper;

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->isPlaying()Lkt/i;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    new-instance p3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c$a;

    .line 127
    .line 128
    invoke-direct {p3, p0, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c$a;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;Lrs/c;)V

    .line 129
    .line 130
    .line 131
    invoke-static {p1, p3}, Lkotlinx/coroutines/flow/c;->O(Lkt/b;Lkotlin/jvm/functions/Function2;)Lkt/b;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iget-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->e:Lgt/g0;

    .line 136
    .line 137
    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/c;->J(Lkt/b;Lgt/g0;)Lkotlinx/coroutines/r;

    .line 138
    .line 139
    .line 140
    new-instance p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c$d;

    .line 141
    .line 142
    invoke-direct {p1, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c$d;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;)V

    .line 143
    .line 144
    .line 145
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->s:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c$d;

    .line 146
    .line 147
    new-instance p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/g;

    .line 148
    .line 149
    new-instance p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c$e;

    .line 150
    .line 151
    invoke-direct {p2, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c$e;-><init>(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    new-instance p3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c$f;

    .line 155
    .line 156
    invoke-direct {p3, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c$f;-><init>(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    invoke-direct {p1, p4, p2, p3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/g;-><init>(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 160
    .line 161
    .line 162
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->t:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/g;

    .line 163
    .line 164
    return-void
.end method

.method public static final synthetic C(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->a0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic D(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->L(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic G(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;)Lkotlinx/coroutines/r;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->v:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic M(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->q:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic T(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic U(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;)Lkt/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->h:Lkt/e;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic V(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;)Lkt/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->j:Lkt/e;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic W(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;)Lkt/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->f:Lkt/e;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic X(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->k()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic Y(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->b:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic Z(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->m()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic b0(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->p()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final q(Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;)La7/h;
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;-><init>(Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->q:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;

    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public final K(Lcom/google/android/exoplayer2/k;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->o()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->x(Lcom/google/android/exoplayer2/k;Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->d0()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->w(Lcom/google/android/exoplayer2/k;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-wide v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->u:J

    .line 16
    .line 17
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/l1;->seekTo(J)V

    .line 18
    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->r:Z

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-interface {p1}, Lcom/google/android/exoplayer2/l1;->play()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/l1;->pause()V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method public final L(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->f:Lkt/e;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lkt/e;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final S(Lcom/google/android/exoplayer2/k;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/l1;->getCurrentPosition()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->u:J

    .line 6
    .line 7
    return-void
.end method

.method public a(Lrs/c;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->p:Lcom/google/android/exoplayer2/k;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 5
    invoke-virtual {p0, v0, v1, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->r(Lcom/google/android/exoplayer2/k;ILrs/c;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    .line 6
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->m:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->p:Lcom/google/android/exoplayer2/k;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->w(Lcom/google/android/exoplayer2/k;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->m()V

    return-void
.end method

.method public final a0()V
    .locals 8

    .line 1
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->d:Ljava/lang/String;

    .line 4
    .line 5
    const/16 v5, 0xc

    .line 6
    .line 7
    const/4 v6, 0x0

    .line 8
    const-string v2, "Disposing exo player"

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->e0()Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->B()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setPlayer(Lcom/google/android/exoplayer2/l1;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->p:Lcom/google/android/exoplayer2/k;

    .line 29
    .line 30
    const-wide/16 v2, 0x0

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-interface {v0}, Lcom/google/android/exoplayer2/l1;->getDuration()J

    .line 35
    .line 36
    .line 37
    move-result-wide v4

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move-wide v4, v2

    .line 40
    :goto_0
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->p:Lcom/google/android/exoplayer2/k;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-interface {v0}, Lcom/google/android/exoplayer2/l1;->getCurrentPosition()J

    .line 45
    .line 46
    .line 47
    move-result-wide v6

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    move-wide v6, v2

    .line 50
    :goto_1
    sub-long/2addr v4, v6

    .line 51
    cmp-long v0, v4, v2

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    if-lez v0, :cond_3

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    goto :goto_2

    .line 58
    :cond_3
    move v0, v2

    .line 59
    :goto_2
    iget-object v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->p:Lcom/google/android/exoplayer2/k;

    .line 60
    .line 61
    if-eqz v3, :cond_4

    .line 62
    .line 63
    invoke-virtual {p0, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->S(Lcom/google/android/exoplayer2/k;)V

    .line 64
    .line 65
    .line 66
    iget-object v4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->s:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c$d;

    .line 67
    .line 68
    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/l1;->C(Lcom/google/android/exoplayer2/l1$d;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v3}, Lcom/google/android/exoplayer2/l1;->release()V

    .line 72
    .line 73
    .line 74
    :cond_4
    iput-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->p:Lcom/google/android/exoplayer2/k;

    .line 75
    .line 76
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->h:Lkt/e;

    .line 77
    .line 78
    new-instance v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/a;

    .line 79
    .line 80
    invoke-direct {v3, v2, v2, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/a;-><init>(ZZZ)V

    .line 81
    .line 82
    .line 83
    invoke-interface {v1, v3}, Lkt/e;->setValue(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->n:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->p:Lcom/google/android/exoplayer2/k;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->x(Lcom/google/android/exoplayer2/k;Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final c0()Lcom/google/android/exoplayer2/k;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->p:Lcom/google/android/exoplayer2/k;

    .line 2
    .line 3
    return-object v0
.end method

.method public d0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public destroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->e:Lgt/g0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/i;->e(Lgt/g0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->t:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/g;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/g;->destroy()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->a0()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public e0()Lcom/google/android/exoplayer2/ui/StyledPlayerView;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->l:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Lkt/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkt/i<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/l;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->k:Lkt/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public isPlaying()Lkt/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkt/i<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->i:Lkt/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()V
    .locals 7

    .line 1
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->d:Ljava/lang/String;

    .line 4
    .line 5
    const/16 v5, 0xc

    .line 6
    .line 7
    const/4 v6, 0x0

    .line 8
    const-string v2, "Init exo player"

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->e0()Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->p:Lcom/google/android/exoplayer2/k;

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    new-instance v1, Lcom/google/android/exoplayer2/k$b;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->a:Landroid/content/Context;

    .line 29
    .line 30
    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/k$b;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->o:Landroid/os/Looper;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k$b;->j(Landroid/os/Looper;)Lcom/google/android/exoplayer2/k$b;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const/4 v2, 0x1

    .line 40
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k$b;->k(Z)Lcom/google/android/exoplayer2/k$b;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/k$b;->e()Lcom/google/android/exoplayer2/k;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "build(...)"

    .line 49
    .line 50
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setPlayer(Lcom/google/android/exoplayer2/l1;)V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->p:Lcom/google/android/exoplayer2/k;

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/l1;->setPlayWhenReady(Z)V

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->s:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c$d;

    .line 63
    .line 64
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/l1;->F(Lcom/google/android/exoplayer2/l1$d;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->K(Lcom/google/android/exoplayer2/k;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->t()Lkt/i;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-interface {v2}, Lkt/i;->getValue()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    sget-object v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i$b;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i$b;

    .line 79
    .line 80
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_1

    .line 85
    .line 86
    new-instance v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i$d;

    .line 87
    .line 88
    invoke-interface {v1}, Lcom/google/android/exoplayer2/l1;->getDuration()J

    .line 89
    .line 90
    .line 91
    move-result-wide v3

    .line 92
    invoke-direct {v2, v3, v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i$d;-><init>(J)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->L(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i;)V

    .line 96
    .line 97
    .line 98
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->C()V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final m()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->r:Z

    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->u:J

    .line 7
    .line 8
    return-void
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public final p()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->v:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->e:Lgt/g0;

    .line 11
    .line 12
    new-instance v6, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c$g;

    .line 13
    .line 14
    invoke-direct {v6, p0, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c$g;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;Lrs/c;)V

    .line 15
    .line 16
    .line 17
    const/4 v7, 0x3

    .line 18
    const/4 v8, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    invoke-static/range {v3 .. v8}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->v:Lkotlinx/coroutines/r;

    .line 26
    .line 27
    return-void
.end method

.method public pause()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->r:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->p:Lcom/google/android/exoplayer2/k;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/google/android/exoplayer2/l1;->pause()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->r:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->p:Lcom/google/android/exoplayer2/k;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/google/android/exoplayer2/l1;->play()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final r(Lcom/google/android/exoplayer2/k;ILrs/c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/k;",
            "I",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/e;

    .line 2
    .line 3
    invoke-static {p3}, Lkotlin/coroutines/intrinsics/a;->c(Lrs/c;)Lrs/c;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/e;-><init>(Lrs/c;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lkotlinx/coroutines/e;->H()V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c$c;

    .line 15
    .line 16
    invoke-direct {v1, p2, p1, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c$c;-><init>(ILcom/google/android/exoplayer2/k;Lgt/i;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/l1;->F(Lcom/google/android/exoplayer2/l1$d;)V

    .line 20
    .line 21
    .line 22
    new-instance p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c$b;

    .line 23
    .line 24
    invoke-direct {p2, p1, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c$b;-><init>(Lcom/google/android/exoplayer2/k;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c$c;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, p2}, Lgt/i;->u(Lkotlin/jvm/functions/Function1;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lkotlinx/coroutines/e;->B()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    if-ne p1, p2, :cond_0

    .line 39
    .line 40
    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/f;->c(Lrs/c;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    if-ne p1, p2, :cond_1

    .line 48
    .line 49
    return-object p1

    .line 50
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 51
    .line 52
    return-object p1
.end method

.method public seekTo(J)V
    .locals 1

    .line 1
    iput-wide p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->u:J

    .line 2
    .line 3
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->p:Lcom/google/android/exoplayer2/k;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/l1;->seekTo(J)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public t()Lkt/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkt/i<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->g:Lkt/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic u()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->e0()Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final w(Lcom/google/android/exoplayer2/k;Ljava/lang/String;)V
    .locals 8

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->d:Ljava/lang/String;

    .line 6
    .line 7
    const/16 v5, 0xc

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    const-string v2, "URI Source is empty"

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->b:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->d:Ljava/lang/String;

    .line 25
    .line 26
    const-string v3, "Streaming is enabled"

    .line 27
    .line 28
    const/16 v6, 0xc

    .line 29
    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v5, 0x0

    .line 33
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lcom/google/android/exoplayer2/source/i;

    .line 37
    .line 38
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/d;

    .line 39
    .line 40
    invoke-direct {v1, p2, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/d;-><init>(Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/i;-><init>(La7/h$a;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p2}, Lcom/google/android/exoplayer2/y0;->d(Ljava/lang/String;)Lcom/google/android/exoplayer2/y0;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    const-string v1, "fromUri(...)"

    .line 51
    .line 52
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/source/i;->c(Lcom/google/android/exoplayer2/y0;)Lcom/google/android/exoplayer2/source/o;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/k;->B(Lcom/google/android/exoplayer2/source/o;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception p1

    .line 64
    move-object v3, p1

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->d:Ljava/lang/String;

    .line 69
    .line 70
    const-string v2, "Streaming is disabled"

    .line 71
    .line 72
    const/16 v5, 0xc

    .line 73
    .line 74
    const/4 v6, 0x0

    .line 75
    const/4 v3, 0x0

    .line 76
    const/4 v4, 0x0

    .line 77
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-static {p2}, Lcom/google/android/exoplayer2/y0;->d(Ljava/lang/String;)Lcom/google/android/exoplayer2/y0;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/l1;->E(Lcom/google/android/exoplayer2/y0;)V

    .line 85
    .line 86
    .line 87
    :goto_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/l1;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :goto_1
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 92
    .line 93
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->d:Ljava/lang/String;

    .line 94
    .line 95
    const/16 v5, 0x8

    .line 96
    .line 97
    const/4 v6, 0x0

    .line 98
    const-string v2, "ExoPlayer setMediaItem exception"

    .line 99
    .line 100
    const/4 v4, 0x0

    .line 101
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/c;->j:Lkt/e;

    .line 105
    .line 106
    sget-object p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/l;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/l;

    .line 107
    .line 108
    invoke-interface {p1, p2}, Lkt/e;->setValue(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :goto_2
    return-void
.end method

.method public final x(Lcom/google/android/exoplayer2/k;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    .line 6
    .line 7
    :goto_0
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/l1;->setVolume(F)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
