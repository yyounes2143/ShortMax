.class public final Llf/s;
.super Ljava/lang/Object;
.source "VideoPlayerParams2.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Lcom/ss/ttvideoengine/strategy/source/StrategySource;

.field private c:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:F

.field private j:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private k:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private m:Lcom/startshorts/androidplayer/bean/shorts/SubtitleConfig;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Llf/s;->d:I

    .line 6
    .line 7
    const/16 v0, 0x1f4

    .line 8
    .line 9
    iput v0, p0, Llf/s;->f:I

    .line 10
    .line 11
    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    .line 13
    iput v0, p0, Llf/s;->i:F

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Llf/s;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Llf/s;->l:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Llf/s;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public final d()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Llf/s;->j:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()F
    .locals 1

    .line 1
    iget v0, p0, Llf/s;->i:F

    .line 2
    .line 3
    return v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Llf/s;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public final g()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Llf/s;->c:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()I
    .locals 1

    .line 1
    iget v0, p0, Llf/s;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public final i()Lcom/ss/ttvideoengine/strategy/source/StrategySource;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Llf/s;->b:Lcom/ss/ttvideoengine/strategy/source/StrategySource;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string/jumbo v0, "strategySource"

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public final j()Lcom/startshorts/androidplayer/bean/shorts/SubtitleConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Llf/s;->m:Lcom/startshorts/androidplayer/bean/shorts/SubtitleConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Llf/s;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Llf/s;->k:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Llf/s;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public final n(I)V
    .locals 0

    .line 1
    iput p1, p0, Llf/s;->d:I

    .line 2
    .line 3
    return-void
.end method

.method public final o(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Llf/s;->l:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final p(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Llf/s;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method public final q(Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Llf/s;->j:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 2
    .line 3
    return-void
.end method

.method public final r(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Llf/s;->h:Z

    .line 2
    .line 3
    return-void
.end method

.method public final s(F)V
    .locals 0

    .line 1
    iput p1, p0, Llf/s;->i:F

    .line 2
    .line 3
    return-void
.end method

.method public final t(I)V
    .locals 0

    .line 1
    iput p1, p0, Llf/s;->f:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "VideoPlayerParams2(tag="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Llf/s;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", strategySource="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Llf/s;->i()Lcom/ss/ttvideoengine/strategy/source/StrategySource;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ", renderView="

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Llf/s;->c:Landroid/view/View;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, ", displayMode="

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget v1, p0, Llf/s;->d:I

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, ", startPosition="

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget v1, p0, Llf/s;->e:I

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v1, ", positionUpdateInterval="

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget v1, p0, Llf/s;->f:I

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v1, ", loopPlay="

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-boolean v1, p0, Llf/s;->g:Z

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, ", isMute="

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-boolean v1, p0, Llf/s;->h:Z

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v1, ", playSpeed="

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget v1, p0, Llf/s;->i:F

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v1, ", subtitleConfig="

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Llf/s;->m:Lcom/startshorts/androidplayer/bean/shorts/SubtitleConfig;

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v1, ", maxPlayResolution="

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Llf/s;->j:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v1, ", userExpectedPlayResolution="

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-object v1, p0, Llf/s;->k:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v1, ", features="

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    iget-object v1, p0, Llf/s;->l:Ljava/util/List;

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const/16 v1, 0x29

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    return-object v0
.end method

.method public final u(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Llf/s;->c:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method

.method public final v(I)V
    .locals 0

    .line 1
    iput p1, p0, Llf/s;->e:I

    .line 2
    .line 3
    return-void
.end method

.method public final w(Lcom/ss/ttvideoengine/strategy/source/StrategySource;)V
    .locals 1
    .param p1    # Lcom/ss/ttvideoengine/strategy/source/StrategySource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Llf/s;->b:Lcom/ss/ttvideoengine/strategy/source/StrategySource;

    .line 7
    .line 8
    return-void
.end method

.method public final x(Lcom/startshorts/androidplayer/bean/shorts/SubtitleConfig;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/SubtitleConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Llf/s;->m:Lcom/startshorts/androidplayer/bean/shorts/SubtitleConfig;

    .line 2
    .line 3
    return-void
.end method

.method public final y(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Llf/s;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final z(Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Llf/s;->k:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 2
    .line 3
    return-void
.end method
