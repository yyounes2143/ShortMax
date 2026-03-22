.class public final Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;
.super Ljava/lang/Object;
.source "ShortsEpisodeManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$a;,
        Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$b;,
        Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$PlayFailedReason;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final k:Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private e:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:I

.field private j:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->k:Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$b;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "viewPagerManager"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "adapter"

    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "listener"

    .line 13
    .line 14
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->a:Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->b:Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;

    .line 23
    .line 24
    iput-object p3, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->c:Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$b;

    .line 25
    .line 26
    const-string/jumbo p1, "shorts"

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->d:Ljava/lang/String;

    .line 30
    .line 31
    sget-object p1, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->Companion:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;->getPLAY_SPEED_1()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->j:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 38
    .line 39
    return-void
.end method

.method private final a(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->c:Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->a:Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->m()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-interface {v0, v1, p1}, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$b;->d(ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->g:I

    .line 14
    .line 15
    iput p1, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->h:I

    .line 16
    .line 17
    iput p1, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->i:I

    .line 18
    .line 19
    return-void
.end method

.method private final b()Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->b:Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->a:Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->l()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 14
    .line 15
    return-object v0
.end method

.method private final d(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)I
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->fromRecommendPool()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lud/a;->a:Lud/a;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Lud/a;->j(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object v0, Lud/b;->a:Lud/b;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Lud/b;->t0(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    :goto_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoDuration()J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    const-wide/16 v3, 0x0

    .line 33
    .line 34
    cmp-long v1, v1, v3

    .line 35
    .line 36
    if-lez v1, :cond_2

    .line 37
    .line 38
    int-to-long v1, v0

    .line 39
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoDuration()J

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    const/16 v5, 0x3e8

    .line 44
    .line 45
    int-to-long v5, v5

    .line 46
    mul-long/2addr v3, v5

    .line 47
    cmp-long v3, v1, v3

    .line 48
    .line 49
    const-string v4, "ShortsEpisodeManager"

    .line 50
    .line 51
    if-ltz v3, :cond_1

    .line 52
    .line 53
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 54
    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v3, "playPosition("

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v0, ") > episode.videoDuration("

    .line 69
    .line 70
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoDuration()J

    .line 74
    .line 75
    .line 76
    move-result-wide v7

    .line 77
    mul-long/2addr v7, v5

    .line 78
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v0, "), reset playPosition to 0"

    .line 82
    .line 83
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v1, v4, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoDuration()J

    .line 95
    .line 96
    .line 97
    move-result-wide v7

    .line 98
    mul-long/2addr v7, v5

    .line 99
    sub-long/2addr v7, v1

    .line 100
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    .line 101
    .line 102
    .line 103
    move-result-wide v1

    .line 104
    const-wide/16 v5, 0x7d0

    .line 105
    .line 106
    cmp-long v1, v1, v5

    .line 107
    .line 108
    if-gtz v1, :cond_2

    .line 109
    .line 110
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 111
    .line 112
    const-string v1, "gap <=2000, reset playPosition to 0"

    .line 113
    .line 114
    invoke-virtual {v0, v4, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :goto_1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    const/4 v2, 0x0

    .line 124
    invoke-virtual {v0, v1, v2}, Lud/b;->E3(II)V

    .line 125
    .line 126
    .line 127
    sget-object v0, Lud/a;->a:Lud/a;

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    invoke-virtual {v0, p1, v2}, Lud/a;->k0(II)V

    .line 134
    .line 135
    .line 136
    move v0, v2

    .line 137
    :cond_2
    return v0
.end method

.method private final f(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->getExtraAdInfo()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static {v0, p1, v3, v1, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v5, 0x4

    .line 15
    const/4 v6, 0x0

    .line 16
    const-string/jumbo v1, "shorts_second_position_show"

    .line 17
    .line 18
    .line 19
    const-wide/16 v3, 0x0

    .line 20
    .line 21
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private final g(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isAd()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const-string/jumbo p1, "status"

    .line 15
    .line 16
    .line 17
    const-string/jumbo v0, "success"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string p1, "scene"

    .line 24
    .line 25
    const-string/jumbo v0, "shorts"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 32
    .line 33
    const/4 v6, 0x4

    .line 34
    const/4 v7, 0x0

    .line 35
    const-string v2, "reel_request"

    .line 36
    .line 37
    const-wide/16 v4, 0x0

    .line 38
    .line 39
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private final h(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isAd()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const-string p1, "scene"

    .line 15
    .line 16
    const-string/jumbo v0, "shorts"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string p1, "from"

    .line 23
    .line 24
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->d:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v3, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string p1, "is_free"

    .line 30
    .line 31
    const-string v0, "0"

    .line 32
    .line 33
    invoke-virtual {v3, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->j:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->getValue()F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    const-string/jumbo v0, "speed_level"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 46
    .line 47
    .line 48
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    const/4 v6, 0x4

    .line 51
    const/4 v7, 0x0

    .line 52
    const-string v2, "reel_play"

    .line 53
    .line 54
    const-wide/16 v4, 0x0

    .line 55
    .line 56
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method private final i(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isAd()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/repo/config/appConfig/TurboLinkRepo;->a:Lcom/startshorts/androidplayer/repo/config/appConfig/TurboLinkRepo;

    .line 9
    .line 10
    new-instance v1, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iget v2, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->i:I

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    const/16 v4, 0x3e8

    .line 19
    .line 20
    if-ge v2, v4, :cond_1

    .line 21
    .line 22
    move v2, v3

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    div-int/2addr v2, v4

    .line 25
    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string v5, "duration"

    .line 30
    .line 31
    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    const-string/jumbo v2, "tbo_play_time"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/repo/config/appConfig/TurboLinkRepo;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 40
    .line 41
    .line 42
    iget v1, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->g:I

    .line 43
    .line 44
    if-lez v1, :cond_2

    .line 45
    .line 46
    iget v2, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->h:I

    .line 47
    .line 48
    int-to-float v2, v2

    .line 49
    int-to-float v1, v1

    .line 50
    div-float/2addr v2, v1

    .line 51
    float-to-double v1, v2

    .line 52
    const-wide v5, 0x3feccccccccccccdL    # 0.9

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    cmpl-double v1, v1, v5

    .line 58
    .line 59
    if-lez v1, :cond_2

    .line 60
    .line 61
    new-instance v1, Ljava/util/HashMap;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v2, "episode"

    .line 67
    .line 68
    const-string v5, "1"

    .line 69
    .line 70
    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    const-string/jumbo v2, "tbo_play_series"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/repo/config/appConfig/TurboLinkRepo;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isLastEpisode()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_2

    .line 84
    .line 85
    new-instance v1, Ljava/util/HashMap;

    .line 86
    .line 87
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string/jumbo v2, "watch_count"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    const-string/jumbo v2, "tbo_reel_play"

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/repo/config/appConfig/TurboLinkRepo;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 103
    .line 104
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    iget v1, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->i:I

    .line 109
    .line 110
    if-ge v1, v4, :cond_3

    .line 111
    .line 112
    move v1, v3

    .line 113
    goto :goto_1

    .line 114
    :cond_3
    div-int/2addr v1, v4

    .line 115
    :goto_1
    const-string v2, "seconds"

    .line 116
    .line 117
    invoke-virtual {v7, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 118
    .line 119
    .line 120
    const-string v1, "scene"

    .line 121
    .line 122
    const-string/jumbo v12, "shorts"

    .line 123
    .line 124
    .line 125
    invoke-virtual {v7, v1, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    const/4 v10, 0x4

    .line 129
    const/4 v11, 0x0

    .line 130
    const-string v6, "play_time_real"

    .line 131
    .line 132
    const-wide/16 v8, 0x0

    .line 133
    .line 134
    move-object v5, v0

    .line 135
    invoke-static/range {v5 .. v11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    iget v5, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->h:I

    .line 143
    .line 144
    if-ge v5, v4, :cond_4

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_4
    div-int/lit16 v3, v5, 0x3e8

    .line 148
    .line 149
    :goto_2
    invoke-virtual {v7, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v7, v1, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const/4 v10, 0x4

    .line 156
    const/4 v11, 0x0

    .line 157
    const-string v6, "play_time_schedule"

    .line 158
    .line 159
    const-wide/16 v8, 0x0

    .line 160
    .line 161
    move-object v5, v0

    .line 162
    invoke-static/range {v5 .. v11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    iget p1, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->g:I

    .line 170
    .line 171
    const-string/jumbo v2, "watch_progress_percent"

    .line 172
    .line 173
    .line 174
    if-eqz p1, :cond_5

    .line 175
    .line 176
    sget-object v3, Lfk/w;->a:Lfk/w;

    .line 177
    .line 178
    iget v4, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->h:I

    .line 179
    .line 180
    int-to-float v4, v4

    .line 181
    const/high16 v5, 0x3f800000    # 1.0f

    .line 182
    .line 183
    mul-float/2addr v4, v5

    .line 184
    int-to-float p1, p1

    .line 185
    div-float/2addr v4, p1

    .line 186
    const/16 p1, 0x64

    .line 187
    .line 188
    int-to-float p1, p1

    .line 189
    mul-float/2addr v4, p1

    .line 190
    const/4 p1, 0x2

    .line 191
    invoke-virtual {v3, v4, p1}, Lfk/w;->b(FI)F

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    invoke-virtual {v7, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 196
    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_5
    const/4 p1, 0x0

    .line 200
    invoke-virtual {v7, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 201
    .line 202
    .line 203
    :goto_3
    invoke-virtual {v7, v1, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    const-string p1, "from"

    .line 207
    .line 208
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->d:Ljava/lang/String;

    .line 209
    .line 210
    invoke-virtual {v7, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->j:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 214
    .line 215
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->getValue()F

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    const-string/jumbo v1, "speed_level"

    .line 220
    .line 221
    .line 222
    invoke-virtual {v7, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 223
    .line 224
    .line 225
    const-string p1, "is_free"

    .line 226
    .line 227
    const-string v1, "0"

    .line 228
    .line 229
    invoke-virtual {v7, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    const/4 v10, 0x4

    .line 233
    const/4 v11, 0x0

    .line 234
    const-string v6, "playback_progress_track"

    .line 235
    .line 236
    const-wide/16 v8, 0x0

    .line 237
    .line 238
    move-object v5, v0

    .line 239
    invoke-static/range {v5 .. v11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    return-void
.end method

.method private final j(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isAd()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const-string p1, "scene"

    .line 15
    .line 16
    const-string/jumbo v0, "shorts"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget p1, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->h:I

    .line 23
    .line 24
    const/16 v0, 0x3e8

    .line 25
    .line 26
    if-ge p1, v0, :cond_1

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    div-int/2addr p1, v0

    .line 31
    :goto_0
    const-string v0, "seconds"

    .line 32
    .line 33
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 37
    .line 38
    const/4 v6, 0x4

    .line 39
    const/4 v7, 0x0

    .line 40
    const-string v2, "reel_cut"

    .line 41
    .line 42
    const-wide/16 v4, 0x0

    .line 43
    .line 44
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private final q(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isAd()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->fromRecommendPool()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v0, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->h:I

    .line 15
    .line 16
    int-to-long v1, v0

    .line 17
    const-wide/16 v3, 0x1388

    .line 18
    .line 19
    cmp-long v1, v1, v3

    .line 20
    .line 21
    if-ltz v1, :cond_1

    .line 22
    .line 23
    sget-object v1, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;

    .line 24
    .line 25
    div-int/lit16 v0, v0, 0x3e8

    .line 26
    .line 27
    invoke-virtual {v1, p1, v0}, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->x(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;I)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method private final t(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;ZZ)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isAd()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isBrandAd()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->f(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isBrandVideoAd()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    invoke-static {p1, v3, v2, v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parseVideoUrl$default(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;IILjava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object p2, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->c:Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$b;

    .line 39
    .line 40
    invoke-interface {p2, v3, p1}, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$b;->a(ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->c:Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$b;

    .line 45
    .line 46
    sget-object v1, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$PlayFailedReason;->REASON_INVALID_URL:Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$PlayFailedReason;

    .line 47
    .line 48
    invoke-interface {v0, p1, v1, p2, p3}, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$b;->c(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$PlayFailedReason;ZZ)V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_3
    iget-object p2, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->c:Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$b;

    .line 53
    .line 54
    const/4 p3, -0x1

    .line 55
    invoke-interface {p2, p3, p1}, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$b;->a(ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_4
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->g(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p1, v3, v2, v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parseVideoUrl$default(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;IILjava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-eqz v0, :cond_7

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_5

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_5
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isVideoExpired()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_6

    .line 80
    .line 81
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->c:Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$b;

    .line 82
    .line 83
    sget-object v1, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$PlayFailedReason;->REASON_URL_EXPIRED:Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$PlayFailedReason;

    .line 84
    .line 85
    invoke-interface {v0, p1, v1, p2, p3}, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$b;->c(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$PlayFailedReason;ZZ)V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_6
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->h(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 90
    .line 91
    .line 92
    iget-object p2, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->c:Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$b;

    .line 93
    .line 94
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->d(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)I

    .line 95
    .line 96
    .line 97
    move-result p3

    .line 98
    invoke-interface {p2, p3, p1}, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$b;->a(ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->c:Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$b;

    .line 103
    .line 104
    sget-object v1, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$PlayFailedReason;->REASON_INVALID_URL:Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$PlayFailedReason;

    .line 105
    .line 106
    invoke-interface {v0, p1, v1, p2, p3}, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$b;->c(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$PlayFailedReason;ZZ)V

    .line 107
    .line 108
    .line 109
    :goto_2
    return-void
.end method


# virtual methods
.method public final c()Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->f:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public final k(ZZ)V
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->b()Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v2, v1

    .line 18
    :goto_0
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->f:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move-object v3, v1

    .line 32
    :goto_1
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_4

    .line 37
    .line 38
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 39
    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v2, "notifyEpisodeChanged failed -> currentEpisodeId("

    .line 46
    .line 47
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    move-object v0, v1

    .line 62
    :goto_2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v0, ") mCurrentEpisode("

    .line 66
    .line 67
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->f:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 71
    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    :cond_3
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const/16 v0, 0x29

    .line 86
    .line 87
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    const-string v0, "ShortsEpisodeManager"

    .line 95
    .line 96
    invoke-virtual {p1, v0, p2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_4
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->f:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 101
    .line 102
    iput-object v1, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->e:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 103
    .line 104
    if-eqz v1, :cond_5

    .line 105
    .line 106
    invoke-direct {p0, v1}, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->q(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 107
    .line 108
    .line 109
    invoke-direct {p0, v1}, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->j(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 110
    .line 111
    .line 112
    invoke-direct {p0, v1}, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->i(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 113
    .line 114
    .line 115
    invoke-direct {p0, v1}, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->a(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 116
    .line 117
    .line 118
    :cond_5
    if-nez v0, :cond_6

    .line 119
    .line 120
    return-void

    .line 121
    :cond_6
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->f:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 122
    .line 123
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->c:Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$b;

    .line 124
    .line 125
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->e:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 126
    .line 127
    invoke-interface {v1, v2, v0}, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager$b;->b(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 128
    .line 129
    .line 130
    sget-object v3, Lag/a;->a:Lag/a;

    .line 131
    .line 132
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->d(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)I

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayCode()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoType()I

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getUpack()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 149
    .line 150
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    const-string/jumbo v4, "shorts"

    .line 155
    .line 156
    .line 157
    invoke-virtual/range {v3 .. v9}, Lag/a;->e(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 158
    .line 159
    .line 160
    invoke-direct {p0, v0, p1, p2}, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->t(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;ZZ)V

    .line 161
    .line 162
    .line 163
    return-void
.end method

.method public final l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->f:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->q(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->j(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->i(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final m(Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "playSpeed"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->j:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 7
    .line 8
    return-void
.end method

.method public final n(II)V
    .locals 4

    .line 1
    iput p2, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->g:I

    .line 2
    .line 3
    iput p1, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->h:I

    .line 4
    .line 5
    iget v0, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->i:I

    .line 6
    .line 7
    const/16 v1, 0xc8

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    iput v0, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->i:I

    .line 11
    .line 12
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->f:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isAd()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->fromRecommendPool()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    sget-object p2, Lud/a;->a:Lud/a;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {p2, v0, p1}, Lud/a;->k0(II)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    sget-object v2, Lud/b;->a:Lud/b;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-ne p1, p2, :cond_1

    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    :cond_1
    invoke-virtual {v2, v0, p1}, Lud/b;->E3(II)V

    .line 48
    .line 49
    .line 50
    :goto_0
    sget-object p1, Lbf/e;->a:Lbf/e;

    .line 51
    .line 52
    invoke-virtual {p1}, Lbf/e;->h()Lbf/e$a;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lbf/e$a;->i()V

    .line 57
    .line 58
    .line 59
    sget-object p1, Lvi/e;->a:Lvi/e;

    .line 60
    .line 61
    invoke-virtual {p1}, Lvi/e;->d()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->f:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 68
    .line 69
    if-eqz p1, :cond_2

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isFreeEpisode()Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-nez p1, :cond_2

    .line 76
    .line 77
    sget-object p1, Lud/b;->a:Lud/b;

    .line 78
    .line 79
    invoke-virtual {p1}, Lud/b;->X1()J

    .line 80
    .line 81
    .line 82
    move-result-wide v2

    .line 83
    int-to-long v0, v1

    .line 84
    add-long/2addr v2, v0

    .line 85
    invoke-virtual {p1, v2, v3}, Lud/b;->k5(J)V

    .line 86
    .line 87
    .line 88
    :cond_2
    return-void
.end method

.method public final o()V
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    const-string v1, "ShortsEpisodeManager"

    .line 4
    .line 5
    const-string v2, "release"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->f:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->q(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->i(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->f:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, v0, v1, v1}, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->t(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;ZZ)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final r(Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adapter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->b:Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->f:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->e:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 12
    .line 13
    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->d:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
