.class public final Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;
.super Ljava/lang/Object;
.source "MiniWindowEpisodeManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager$a;,
        Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager$b;,
        Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager$PlayFailedReason;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final k:Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Ljf/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:I

.field private h:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private i:Z

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
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
    new-instance v0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->k:Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljf/b;Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager$b;)V
    .locals 1
    .param p1    # Ljf/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "positionManager"

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->a:Ljf/b;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->b:Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager$b;

    .line 17
    .line 18
    sget-object p1, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->Companion:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;->getPLAY_SPEED_1()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->h:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->i:Z

    .line 28
    .line 29
    new-instance p1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->j:Ljava/util/List;

    .line 35
    .line 36
    return-void
.end method

.method private final b(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->b:Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager$b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->a:Ljf/b;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljf/b;->d()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-interface {v0, v1, p1}, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager$b;->a(ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->e:I

    .line 14
    .line 15
    iput p1, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->f:I

    .line 16
    .line 17
    iput p1, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->g:I

    .line 18
    .line 19
    return-void
.end method

.method private final c()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->j:Ljava/util/List;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->a:Ljf/b;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljf/b;->c()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 14
    .line 15
    return-object v0
.end method

.method private final e(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)I
    .locals 10

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Lud/b;->t0(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    sget-object v1, Lud/a;->a:Lud/a;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v1, v2}, Lud/a;->j(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoDuration()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    const-wide/16 v4, 0x0

    .line 28
    .line 29
    cmp-long v2, v2, v4

    .line 30
    .line 31
    if-lez v2, :cond_2

    .line 32
    .line 33
    int-to-long v2, v1

    .line 34
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoDuration()J

    .line 35
    .line 36
    .line 37
    move-result-wide v4

    .line 38
    const/16 v6, 0x3e8

    .line 39
    .line 40
    int-to-long v6, v6

    .line 41
    mul-long/2addr v4, v6

    .line 42
    cmp-long v4, v2, v4

    .line 43
    .line 44
    const-string v5, "MiniWindowEpisodeManager"

    .line 45
    .line 46
    if-ltz v4, :cond_1

    .line 47
    .line 48
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 49
    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v4, "playPosition("

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ") > episode.videoDuration("

    .line 64
    .line 65
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoDuration()J

    .line 69
    .line 70
    .line 71
    move-result-wide v8

    .line 72
    mul-long/2addr v8, v6

    .line 73
    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, "), reset playPosition to 0"

    .line 77
    .line 78
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v2, v5, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoDuration()J

    .line 90
    .line 91
    .line 92
    move-result-wide v8

    .line 93
    mul-long/2addr v8, v6

    .line 94
    sub-long/2addr v8, v2

    .line 95
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    .line 96
    .line 97
    .line 98
    move-result-wide v2

    .line 99
    const-wide/16 v6, 0x7d0

    .line 100
    .line 101
    cmp-long v2, v2, v6

    .line 102
    .line 103
    if-gtz v2, :cond_2

    .line 104
    .line 105
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 106
    .line 107
    const-string v2, "gap <=2000, reset playPosition to 0"

    .line 108
    .line 109
    invoke-virtual {v1, v5, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :goto_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    const/4 v1, 0x0

    .line 117
    invoke-virtual {v0, p1, v1}, Lud/b;->E3(II)V

    .line 118
    .line 119
    .line 120
    :cond_2
    return v1
.end method

.method private final f(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const-string/jumbo p1, "status"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v1, "success"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "scene"

    .line 17
    .line 18
    const-string v1, "pip_window"

    .line 19
    .line 20
    invoke-virtual {v2, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    const/4 v5, 0x4

    .line 26
    const/4 v6, 0x0

    .line 27
    const-string v1, "reel_request"

    .line 28
    .line 29
    const-wide/16 v3, 0x0

    .line 30
    .line 31
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private final g(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const-string v1, "scene"

    .line 8
    .line 9
    const-string v3, "pip_window"

    .line 10
    .line 11
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getPrice()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-lez v1, :cond_0

    .line 19
    .line 20
    const-string v1, "1"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v1, "0"

    .line 24
    .line 25
    :goto_0
    const-string v3, "is_free"

    .line 26
    .line 27
    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->h:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->getValue()F

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const-string/jumbo v3, "speed_level"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 40
    .line 41
    .line 42
    const-string/jumbo v1, "unlock_type"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getUnlockType()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v2, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 53
    .line 54
    const/4 v5, 0x4

    .line 55
    const/4 v6, 0x0

    .line 56
    const-string v1, "reel_play"

    .line 57
    .line 58
    const-wide/16 v3, 0x0

    .line 59
    .line 60
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method private final h(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 14

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isLocked()Z

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
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    iget v1, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->g:I

    .line 15
    .line 16
    const/4 v8, 0x1

    .line 17
    const/16 v9, 0x3e8

    .line 18
    .line 19
    if-ge v1, v9, :cond_1

    .line 20
    .line 21
    move v1, v8

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    div-int/2addr v1, v9

    .line 24
    :goto_0
    const-string v10, "seconds"

    .line 25
    .line 26
    invoke-virtual {v3, v10, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    const-string v11, "scene"

    .line 30
    .line 31
    const-string v12, "pip_window"

    .line 32
    .line 33
    invoke-virtual {v3, v11, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getUnlockType()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string/jumbo v13, "unlock_type"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v13, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 47
    .line 48
    const/4 v6, 0x4

    .line 49
    const/4 v7, 0x0

    .line 50
    const-string v2, "play_time_real"

    .line 51
    .line 52
    const-wide/16 v4, 0x0

    .line 53
    .line 54
    move-object v1, v0

    .line 55
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    iget v1, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->f:I

    .line 63
    .line 64
    if-ge v1, v9, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    div-int/lit16 v8, v1, 0x3e8

    .line 68
    .line 69
    :goto_1
    invoke-virtual {v3, v10, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v11, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getUnlockType()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v3, v13, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const/4 v6, 0x4

    .line 83
    const/4 v7, 0x0

    .line 84
    const-string v2, "play_time_schedule"

    .line 85
    .line 86
    const-wide/16 v4, 0x0

    .line 87
    .line 88
    move-object v1, v0

    .line 89
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    iget v1, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->e:I

    .line 97
    .line 98
    const-string/jumbo v2, "watch_progress_percent"

    .line 99
    .line 100
    .line 101
    if-eqz v1, :cond_3

    .line 102
    .line 103
    sget-object v4, Lfk/w;->a:Lfk/w;

    .line 104
    .line 105
    iget v5, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->f:I

    .line 106
    .line 107
    int-to-float v5, v5

    .line 108
    const/high16 v6, 0x3f800000    # 1.0f

    .line 109
    .line 110
    mul-float/2addr v5, v6

    .line 111
    int-to-float v1, v1

    .line 112
    div-float/2addr v5, v1

    .line 113
    const/16 v1, 0x64

    .line 114
    .line 115
    int-to-float v1, v1

    .line 116
    mul-float/2addr v5, v1

    .line 117
    const/4 v1, 0x2

    .line 118
    invoke-virtual {v4, v5, v1}, Lfk/w;->b(FI)F

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_3
    const/4 v1, 0x0

    .line 127
    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 128
    .line 129
    .line 130
    :goto_2
    invoke-virtual {v3, v11, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getPrice()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-lez v1, :cond_4

    .line 138
    .line 139
    const-string v1, "1"

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_4
    const-string v1, "0"

    .line 143
    .line 144
    :goto_3
    const-string v2, "is_free"

    .line 145
    .line 146
    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->h:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 150
    .line 151
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->getValue()F

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    const-string/jumbo v2, "speed_level"

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getUnlockType()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {v3, v13, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    const/4 v6, 0x4

    .line 169
    const/4 v7, 0x0

    .line 170
    const-string v2, "playback_progress_track"

    .line 171
    .line 172
    const-wide/16 v4, 0x0

    .line 173
    .line 174
    move-object v1, v0

    .line 175
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    return-void
.end method

.method private final i(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isLocked()Z

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
    const-string v0, "scene"

    .line 15
    .line 16
    const-string v2, "pip_window"

    .line 17
    .line 18
    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget v0, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->f:I

    .line 22
    .line 23
    const/16 v2, 0x3e8

    .line 24
    .line 25
    if-ge v0, v2, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    div-int/2addr v0, v2

    .line 30
    :goto_0
    const-string v2, "seconds"

    .line 31
    .line 32
    invoke-virtual {v3, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    const-string/jumbo v0, "unlock_type"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getUnlockType()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 46
    .line 47
    const/4 v6, 0x4

    .line 48
    const/4 v7, 0x0

    .line 49
    const-string v2, "reel_cut"

    .line 50
    .line 51
    const-wide/16 v4, 0x0

    .line 52
    .line 53
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private final m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->a:Ljf/b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->j:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Ljf/b;->m(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private final p(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

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
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isLocked()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget v0, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->f:I

    .line 16
    .line 17
    int-to-long v1, v0

    .line 18
    const-wide/16 v3, 0x1388

    .line 19
    .line 20
    cmp-long v1, v1, v3

    .line 21
    .line 22
    if-ltz v1, :cond_2

    .line 23
    .line 24
    sget-object v1, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;

    .line 25
    .line 26
    div-int/lit16 v0, v0, 0x3e8

    .line 27
    .line 28
    invoke-virtual {v1, p1, v0}, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->x(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;I)V

    .line 29
    .line 30
    .line 31
    :cond_2
    return-void
.end method

.method private final r(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isLocked()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->b:Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager$b;

    .line 8
    .line 9
    sget-object v1, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager$PlayFailedReason;->REASON_LOCKED:Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager$PlayFailedReason;

    .line 10
    .line 11
    invoke-interface {v0, p1, v1}, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager$b;->d(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager$PlayFailedReason;)V

    .line 12
    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->f(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoUrl()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isVideoExpired()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->b:Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager$b;

    .line 38
    .line 39
    sget-object v1, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager$PlayFailedReason;->REASON_URL_EXPIRED:Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager$PlayFailedReason;

    .line 40
    .line 41
    invoke-interface {v0, p1, v1}, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager$b;->d(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager$PlayFailedReason;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->g(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->b:Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager$b;

    .line 49
    .line 50
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->e(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-interface {v0, v1, p1}, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager$b;->e(ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->b:Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager$b;

    .line 59
    .line 60
    sget-object v1, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager$PlayFailedReason;->REASON_INVALID_URL:Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager$PlayFailedReason;

    .line 61
    .line 62
    invoke-interface {v0, p1, v1}, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager$b;->d(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager$PlayFailedReason;)V

    .line 63
    .line 64
    .line 65
    :goto_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->j:Ljava/util/List;

    .line 7
    .line 8
    check-cast p1, Ljava/util/Collection;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->m()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->j:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->c()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

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
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->d:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

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
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 39
    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v4, "notifyEpisodeChanged failed -> currentEpisodeId("

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v0, ") mCurrentEpisode("

    .line 66
    .line 67
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->d:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

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
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const/16 v0, 0x29

    .line 86
    .line 87
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const-string v1, "MiniWindowEpisodeManager"

    .line 95
    .line 96
    invoke-virtual {v2, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_4
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->d:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 101
    .line 102
    iput-object v1, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->c:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 103
    .line 104
    if-eqz v1, :cond_5

    .line 105
    .line 106
    invoke-direct {p0, v1}, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->p(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 107
    .line 108
    .line 109
    invoke-direct {p0, v1}, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->i(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 110
    .line 111
    .line 112
    invoke-direct {p0, v1}, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->h(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 113
    .line 114
    .line 115
    invoke-direct {p0, v1}, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->b(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

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
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->d:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 122
    .line 123
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->c:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 124
    .line 125
    const/4 v2, 0x1

    .line 126
    if-nez v1, :cond_7

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_7
    if-eqz v1, :cond_8

    .line 130
    .line 131
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-ne v1, v2, :cond_8

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_9

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_9
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->c:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 146
    .line 147
    if-eqz v1, :cond_a

    .line 148
    .line 149
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    if-ne v1, v3, :cond_a

    .line 158
    .line 159
    const/4 v2, 0x0

    .line 160
    :cond_a
    :goto_3
    if-eqz v2, :cond_b

    .line 161
    .line 162
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->b:Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager$b;

    .line 163
    .line 164
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->c:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 165
    .line 166
    iget-boolean v4, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->i:Z

    .line 167
    .line 168
    invoke-interface {v1, v3, v0, v4}, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager$b;->b(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Z)V

    .line 169
    .line 170
    .line 171
    :cond_b
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->b:Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager$b;

    .line 172
    .line 173
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->c:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 174
    .line 175
    invoke-interface {v1, v2, v3, v0}, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager$b;->c(ZLcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 176
    .line 177
    .line 178
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->r(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 179
    .line 180
    .line 181
    return-void
.end method

.method public final k()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->c()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->d:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ne v2, v1, :cond_1

    .line 20
    .line 21
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->d:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getUnlockJustNow()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoUrl()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 43
    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v3, "notifyEpisodeUnlocked -> episodeNum("

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v3, ") episodeId("

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const/16 v3, 0x29

    .line 74
    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    const-string v3, "MiniWindowEpisodeManager"

    .line 83
    .line 84
    invoke-virtual {v1, v3, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const/4 v1, 0x0

    .line 88
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->setUnlockJustNow(Z)V

    .line 89
    .line 90
    .line 91
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->g(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 92
    .line 93
    .line 94
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->b:Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager$b;

    .line 95
    .line 96
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->e(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    invoke-interface {v1, v2, v0}, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager$b;->e(ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 101
    .line 102
    .line 103
    :cond_1
    :goto_0
    return-void
.end method

.method public final l(II)V
    .locals 2

    .line 1
    iput p2, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->e:I

    .line 2
    .line 3
    iput p1, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->f:I

    .line 4
    .line 5
    iget v0, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->g:I

    .line 6
    .line 7
    add-int/lit16 v0, v0, 0xc8

    .line 8
    .line 9
    iput v0, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->g:I

    .line 10
    .line 11
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->d:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    sget-object v1, Lud/b;->a:Lud/b;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-ne p1, p2, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    :cond_0
    invoke-virtual {v1, v0, p1}, Lud/b;->E3(II)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final n()V
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    const-string v1, "MiniWindowEpisodeManager"

    .line 4
    .line 5
    const-string v2, "release"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->d:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->p(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->h(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->d:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->r(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final q(Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->h:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 7
    .line 8
    return-void
.end method

.method public final s(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->j:Ljava/util/List;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->m()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
