.class public final Lcom/startshorts/androidplayer/manager/player/feature/c;
.super Lcom/startshorts/androidplayer/manager/player/feature/b;
.source "CommonFeature.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/player/feature/c$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final d:Lcom/startshorts/androidplayer/manager/player/feature/c$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/player/feature/c$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/player/feature/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/player/feature/c;->d:Lcom/startshorts/androidplayer/manager/player/feature/c$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/player/feature/b;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(ILkotlin/jvm/functions/Function1;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/player/feature/c;->k(ILkotlin/jvm/functions/Function1;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lcom/startshorts/androidplayer/bean/configure/FeatureController;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/player/feature/c;->e(Lcom/startshorts/androidplayer/bean/configure/FeatureController;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final e(Lcom/startshorts/androidplayer/bean/configure/FeatureController;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string/jumbo v0, "value"

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->getPlayerNetworkTimeoutCountryCodes()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private final f(Landroid/view/TextureView;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/player/feature/c$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/manager/player/feature/c$b;-><init>(Lcom/startshorts/androidplayer/manager/player/feature/c;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 16
    .line 17
    const-string v1, "CommonFeature"

    .line 18
    .line 19
    const-string v2, "exist surfaceTexture"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/player/feature/c;->m(Landroid/graphics/SurfaceTexture;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method private static final k(ILkotlin/jvm/functions/Function1;Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "seekTo millis("

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p0, ") result("

    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const/16 p0, 0x29

    .line 25
    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string v1, "CommonFeature"

    .line 34
    .line 35
    invoke-virtual {v0, v1, p0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/ss/ttvideoengine/TTVideoEngine;Llf/s;)V
    .locals 3
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
    invoke-virtual {p2}, Llf/s;->k()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->setTag(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Llf/s;->i()Lcom/ss/ttvideoengine/strategy/source/StrategySource;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->setStrategySource(Lcom/ss/ttvideoengine/strategy/source/StrategySource;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Llf/s;->g()Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    instance-of v0, v0, Landroid/view/SurfaceView;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    invoke-virtual {p2}, Llf/s;->g()Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "null cannot be cast to non-null type android.view.SurfaceView"

    .line 41
    .line 42
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    check-cast v0, Landroid/view/SurfaceView;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p2}, Llf/s;->g()Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    instance-of v0, v0, Landroid/view/TextureView;

    .line 60
    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    invoke-virtual {p2}, Llf/s;->g()Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v1, "null cannot be cast to non-null type android.view.TextureView"

    .line 68
    .line 69
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    check-cast v0, Landroid/view/TextureView;

    .line 73
    .line 74
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/player/feature/c;->f(Landroid/view/TextureView;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    :goto_0
    invoke-virtual {p2}, Llf/s;->g()Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p2}, Llf/s;->a()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-virtual {p1, v0, v1}, Lcom/ss/ttvideoengine/TTVideoEngine;->setDisplayMode(Landroid/view/View;I)V

    .line 86
    .line 87
    .line 88
    const/16 v0, 0x57d

    .line 89
    .line 90
    const/4 v1, 0x1

    .line 91
    invoke-virtual {p1, v0, v1}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntOption(II)V

    .line 92
    .line 93
    .line 94
    const/16 v0, 0x25a

    .line 95
    .line 96
    invoke-virtual {p2}, Llf/s;->f()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    invoke-virtual {p1, v0, v2}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntOption(II)V

    .line 101
    .line 102
    .line 103
    const/16 v0, 0x1388

    .line 104
    .line 105
    invoke-virtual {p1, v0, v1}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntOption(II)V

    .line 106
    .line 107
    .line 108
    const/16 v0, 0x142

    .line 109
    .line 110
    const/4 v2, 0x0

    .line 111
    invoke-virtual {p1, v0, v2}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntOption(II)V

    .line 112
    .line 113
    .line 114
    const v0, 0xa469

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v0, v1}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntOption(II)V

    .line 118
    .line 119
    .line 120
    const/16 v0, 0x192

    .line 121
    .line 122
    invoke-virtual {p1, v0, v1}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntOption(II)V

    .line 123
    .line 124
    .line 125
    sget-object v0, Lqe/a;->a:Lqe/a;

    .line 126
    .line 127
    new-instance v1, Lnf/a;

    .line 128
    .line 129
    invoke-direct {v1}, Lnf/a;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v1}, Lqe/a;->f(Lkotlin/jvm/functions/Function1;)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_2

    .line 137
    .line 138
    invoke-virtual {v0}, Lqe/a;->h()Lcom/startshorts/androidplayer/bean/configure/FeatureController;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->getPlayerNetworkTimeout()I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    const/16 v1, 0xc

    .line 147
    .line 148
    invoke-virtual {p1, v1, v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntOption(II)V

    .line 149
    .line 150
    .line 151
    :cond_2
    new-instance v0, Lcom/ss/ttm/player/PlaybackParams;

    .line 152
    .line 153
    invoke-direct {v0}, Lcom/ss/ttm/player/PlaybackParams;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2}, Llf/s;->e()F

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    invoke-virtual {v0, v1}, Lcom/ss/ttm/player/PlaybackParams;->setSpeed(F)Lcom/ss/ttm/player/PlaybackParams;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->setPlaybackParams(Lcom/ss/ttm/player/PlaybackParams;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2}, Llf/s;->h()I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->setStartTime(I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2}, Llf/s;->m()Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIsMute(Z)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p2}, Llf/s;->c()Z

    .line 181
    .line 182
    .line 183
    move-result p2

    .line 184
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngine;->setLooping(Z)V

    .line 185
    .line 186
    .line 187
    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/player/feature/b;->b()Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->pause()V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 13
    .line 14
    const-string v1, "CommonFeature"

    .line 15
    .line 16
    const-string v2, "pause"

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final h(Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "onResult"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/player/feature/b;->b()Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->getDuration()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->getCurrentPlaybackTime()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {p1, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final i()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/player/feature/b;->b()Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->play()V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 13
    .line 14
    const-string v1, "CommonFeature"

    .line 15
    .line 16
    const-string v2, "resume"

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final j(ILkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/player/feature/b;->b()Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lnf/b;

    .line 8
    .line 9
    invoke-direct {v1, p1, p2}, Lnf/b;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1, v1}, Lcom/ss/ttvideoengine/TTVideoEngine;->seekTo(ILcom/ss/ttvideoengine/SeekCompletionListener;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final l(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/player/feature/b;->b()Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIsMute(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final m(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "surfaceTexture"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/player/feature/b;->b()Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v1, Landroid/view/Surface;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/TTVideoEngine;->setSurface(Landroid/view/Surface;)V

    .line 19
    .line 20
    .line 21
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 24
    .line 25
    const-string v0, "CommonFeature"

    .line 26
    .line 27
    const-string/jumbo v1, "setSurfaceTexture"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final n()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/player/feature/b;->b()Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->stop()V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 13
    .line 14
    const-string v1, "CommonFeature"

    .line 15
    .line 16
    const-string/jumbo v2, "stop"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final o(F)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/player/feature/b;->b()Lcom/ss/ttvideoengine/TTVideoEngine;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/ss/ttm/player/PlaybackParams;

    .line 8
    .line 9
    invoke-direct {v1}, Lcom/ss/ttm/player/PlaybackParams;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Lcom/ss/ttm/player/PlaybackParams;->setSpeed(F)Lcom/ss/ttm/player/PlaybackParams;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/TTVideoEngine;->setPlaybackParams(Lcom/ss/ttm/player/PlaybackParams;)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string/jumbo v2, "updatePlaySpeed -> speed("

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const/16 p1, 0x29

    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v1, "CommonFeature"

    .line 46
    .line 47
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public type()Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;->BASE:Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;

    .line 2
    .line 3
    return-object v0
.end method
