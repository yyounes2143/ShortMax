.class public final Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;
.super Ljava/lang/Object;
.source "ImmersionEpisodeManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$a;,
        Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$b;,
        Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$PlayFailedReason;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final q:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private e:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private m:Z

.field private n:I

.field private final o:Lqt/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->q:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$b;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$b;
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
    const-string/jumbo v0, "viewPagerManager"

    .line 7
    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "adapter"

    .line 13
    .line 14
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "listener"

    .line 18
    .line 19
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->a:Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->b:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;

    .line 28
    .line 29
    iput-object p3, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->c:Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;

    .line 30
    .line 31
    iput-object p4, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->d:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$b;

    .line 32
    .line 33
    const/4 p1, -0x1

    .line 34
    iput p1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->k:I

    .line 35
    .line 36
    sget-object p2, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->Companion:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;->getPLAY_SPEED_1()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->l:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 43
    .line 44
    const/4 p2, 0x1

    .line 45
    iput-boolean p2, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->m:Z

    .line 46
    .line 47
    iput p1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->n:I

    .line 48
    .line 49
    const/4 p3, 0x0

    .line 50
    const/4 p4, 0x0

    .line 51
    invoke-static {p3, p2, p4}, Lqt/d;->b(ZILjava/lang/Object;)Lqt/a;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->o:Lqt/a;

    .line 56
    .line 57
    iput p1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->p:I

    .line 58
    .line 59
    return-void
.end method

.method public static final synthetic a(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;)Lqt/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->o:Lqt/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic b(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ILrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->k(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ILrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final d(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->d:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->b:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->p()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-interface {v0, v1, p1}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$b;->a(ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->h:I

    .line 14
    .line 15
    iput p1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->i:I

    .line 16
    .line 17
    iput p1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->j:I

    .line 18
    .line 19
    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->k:I

    .line 21
    .line 22
    return-void
.end method

.method private final e()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->c:Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->b:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->o()I

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
    check-cast v0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 14
    .line 15
    return-object v0
.end method

.method private final g(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->a:Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getModuleInfo()Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getShortPlayCode()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    :goto_0
    move-object v0, v2

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getShortPlayCode()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayCode()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    :goto_1
    return-object v0
.end method

.method private final h(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)I
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
    const-string v5, "ImmersionEpisodeManager"

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

.method private final j(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
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
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->a:Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getFrom()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v1, "from"

    .line 14
    .line 15
    invoke-virtual {v2, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string/jumbo p1, "status"

    .line 19
    .line 20
    .line 21
    const-string/jumbo v1, "success"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string p1, "scene"

    .line 28
    .line 29
    const-string v1, "immersion"

    .line 30
    .line 31
    invoke-virtual {v2, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    const/4 v5, 0x4

    .line 37
    const/4 v6, 0x0

    .line 38
    const-string v1, "reel_request"

    .line 39
    .line 40
    const-wide/16 v3, 0x0

    .line 41
    .line 42
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private final k(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ILrs/c;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "I",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance p3, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string/jumbo v1, "video_title"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string/jumbo v0, "video_percent"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p3, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    const-string/jumbo p2, "video_tags"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getGgVideoTags()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p3, p2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string/jumbo p2, "video_drama_genre"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getGgVideoDramaGenre()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p3, p2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string p2, "is_vip"

    .line 43
    .line 44
    const-string v0, "99"

    .line 45
    .line 46
    invoke-virtual {p3, p2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getParsedVideo()Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_0

    .line 54
    .line 55
    const/4 p2, 0x0

    .line 56
    const/4 v0, 0x1

    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-static {p1, p2, v0, v1}, Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;->targetUrl$default(Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;IILjava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz p1, :cond_0

    .line 63
    .line 64
    const-string p2, "?"

    .line 65
    .line 66
    const/4 v0, 0x2

    .line 67
    invoke-static {p1, p2, v1, v0, v1}, Lkotlin/text/StringsKt;->p1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const/16 p2, 0x64

    .line 72
    .line 73
    invoke-static {p1, p2}, Lkotlin/text/StringsKt;->I1(Ljava/lang/String;I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const-string/jumbo p2, "video_url"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_0
    sget-object p1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 84
    .line 85
    const-string/jumbo p2, "video_watch"

    .line 86
    .line 87
    .line 88
    const-wide/16 v0, -0x1

    .line 89
    .line 90
    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->q0(Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 91
    .line 92
    .line 93
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 94
    .line 95
    return-object p1
.end method

.method private final l(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->a:Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getActResource()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->w(Lcom/startshorts/androidplayer/bean/act/ActResource;Z)Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v1, v2}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->g(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->H(Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;)Landroid/os/Bundle;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v1, v2}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v1, "scene"

    .line 35
    .line 36
    const-string v3, "immersion"

    .line 37
    .line 38
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->a:Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getFrom()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v3, "from"

    .line 48
    .line 49
    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getPrice()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-lez v1, :cond_0

    .line 57
    .line 58
    const-string v1, "1"

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const-string v1, "0"

    .line 62
    .line 63
    :goto_0
    const-string v3, "is_free"

    .line 64
    .line 65
    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->l:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->getValue()F

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    const-string/jumbo v3, "speed_level"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 78
    .line 79
    .line 80
    iget v1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->n:I

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    const-string v4, "merge"

    .line 87
    .line 88
    const-string v5, "nature"

    .line 89
    .line 90
    const-string v6, "logic"

    .line 91
    .line 92
    if-eq v1, v3, :cond_4

    .line 93
    .line 94
    iget v1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->n:I

    .line 95
    .line 96
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayCode()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_1

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_2

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getBindShortPlayId()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    iget v3, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->n:I

    .line 122
    .line 123
    if-ne v1, v3, :cond_2

    .line 124
    .line 125
    invoke-virtual {v2, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_2
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isMergeShortPlay()Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_3

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_3
    const-string v4, "random"

    .line 137
    .line 138
    :goto_1
    invoke-virtual {v2, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isMergeShortPlay()Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_5

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_5
    move-object v4, v5

    .line 150
    :goto_3
    invoke-virtual {v2, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :goto_4
    const-string/jumbo v1, "unlock_type"

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getUnlockType()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {v2, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 164
    .line 165
    const/4 v5, 0x4

    .line 166
    const/4 v6, 0x0

    .line 167
    const-string v1, "reel_play"

    .line 168
    .line 169
    const-wide/16 v3, 0x0

    .line 170
    .line 171
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    return-void
.end method

.method private final m(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isLocked()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    sget-object v2, Lcom/startshorts/androidplayer/repo/config/appConfig/TurboLinkRepo;->a:Lcom/startshorts/androidplayer/repo/config/appConfig/TurboLinkRepo;

    .line 13
    .line 14
    new-instance v3, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iget v4, v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->j:I

    .line 20
    .line 21
    const/16 v6, 0x3e8

    .line 22
    .line 23
    if-ge v4, v6, :cond_1

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    div-int/2addr v4, v6

    .line 28
    :goto_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    const-string v7, "duration"

    .line 33
    .line 34
    invoke-virtual {v3, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 38
    .line 39
    const-string/jumbo v4, "tbo_play_time"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v4, v3}, Lcom/startshorts/androidplayer/repo/config/appConfig/TurboLinkRepo;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 43
    .line 44
    .line 45
    iget v3, v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->h:I

    .line 46
    .line 47
    const-string v4, "1"

    .line 48
    .line 49
    if-lez v3, :cond_2

    .line 50
    .line 51
    iget v7, v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->i:I

    .line 52
    .line 53
    int-to-float v7, v7

    .line 54
    int-to-float v3, v3

    .line 55
    div-float/2addr v7, v3

    .line 56
    float-to-double v7, v7

    .line 57
    const-wide v9, 0x3feccccccccccccdL    # 0.9

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    cmpl-double v3, v7, v9

    .line 63
    .line 64
    if-lez v3, :cond_2

    .line 65
    .line 66
    new-instance v3, Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v7, "episode"

    .line 72
    .line 73
    invoke-virtual {v3, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    const-string/jumbo v7, "tbo_play_series"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v7, v3}, Lcom/startshorts/androidplayer/repo/config/appConfig/TurboLinkRepo;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isLastEpisode()Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_2

    .line 87
    .line 88
    new-instance v3, Ljava/util/HashMap;

    .line 89
    .line 90
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string/jumbo v7, "watch_count"

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    const-string/jumbo v7, "tbo_reel_play"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v7, v3}, Lcom/startshorts/androidplayer/repo/config/appConfig/TurboLinkRepo;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 103
    .line 104
    .line 105
    :cond_2
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 106
    .line 107
    invoke-virtual {v2, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    iget v3, v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->j:I

    .line 112
    .line 113
    if-ge v3, v6, :cond_3

    .line 114
    .line 115
    const/4 v3, 0x1

    .line 116
    goto :goto_1

    .line 117
    :cond_3
    div-int/2addr v3, v6

    .line 118
    :goto_1
    const-string v7, "seconds"

    .line 119
    .line 120
    invoke-virtual {v10, v7, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    const-string v3, "scene"

    .line 124
    .line 125
    const-string v15, "immersion"

    .line 126
    .line 127
    invoke-virtual {v10, v3, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getUnlockType()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    const-string/jumbo v14, "unlock_type"

    .line 135
    .line 136
    .line 137
    invoke-virtual {v10, v14, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const/4 v13, 0x4

    .line 141
    const/16 v16, 0x0

    .line 142
    .line 143
    const-string v9, "play_time_real"

    .line 144
    .line 145
    const-wide/16 v11, 0x0

    .line 146
    .line 147
    move-object v8, v2

    .line 148
    move-object v5, v14

    .line 149
    move-object/from16 v14, v16

    .line 150
    .line 151
    invoke-static/range {v8 .. v14}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 155
    .line 156
    .line 157
    move-result-object v10

    .line 158
    iget v8, v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->i:I

    .line 159
    .line 160
    if-ge v8, v6, :cond_4

    .line 161
    .line 162
    const/4 v6, 0x1

    .line 163
    goto :goto_2

    .line 164
    :cond_4
    div-int/lit16 v6, v8, 0x3e8

    .line 165
    .line 166
    :goto_2
    invoke-virtual {v10, v7, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v10, v3, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getUnlockType()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    invoke-virtual {v10, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    const/4 v13, 0x4

    .line 180
    const/4 v14, 0x0

    .line 181
    const-string v9, "play_time_schedule"

    .line 182
    .line 183
    const-wide/16 v11, 0x0

    .line 184
    .line 185
    move-object v8, v2

    .line 186
    invoke-static/range {v8 .. v14}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    invoke-direct/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->g(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    invoke-virtual {v2, v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->H(Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;)Landroid/os/Bundle;

    .line 198
    .line 199
    .line 200
    move-result-object v7

    .line 201
    invoke-static {v6, v7}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    iget-object v7, v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->a:Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 206
    .line 207
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getActResource()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    const/4 v8, 0x0

    .line 212
    invoke-virtual {v2, v7, v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->w(Lcom/startshorts/androidplayer/bean/act/ActResource;Z)Landroid/os/Bundle;

    .line 213
    .line 214
    .line 215
    move-result-object v7

    .line 216
    invoke-static {v6, v7}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 217
    .line 218
    .line 219
    move-result-object v10

    .line 220
    iget v6, v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->h:I

    .line 221
    .line 222
    const-string/jumbo v7, "watch_progress_percent"

    .line 223
    .line 224
    .line 225
    if-eqz v6, :cond_5

    .line 226
    .line 227
    sget-object v8, Lfk/w;->a:Lfk/w;

    .line 228
    .line 229
    iget v9, v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->i:I

    .line 230
    .line 231
    int-to-float v9, v9

    .line 232
    const/high16 v11, 0x3f800000    # 1.0f

    .line 233
    .line 234
    mul-float/2addr v9, v11

    .line 235
    int-to-float v6, v6

    .line 236
    div-float/2addr v9, v6

    .line 237
    const/16 v6, 0x64

    .line 238
    .line 239
    int-to-float v6, v6

    .line 240
    mul-float/2addr v9, v6

    .line 241
    const/4 v6, 0x2

    .line 242
    invoke-virtual {v8, v9, v6}, Lfk/w;->b(FI)F

    .line 243
    .line 244
    .line 245
    move-result v6

    .line 246
    invoke-virtual {v10, v7, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 247
    .line 248
    .line 249
    goto :goto_3

    .line 250
    :cond_5
    const/4 v6, 0x0

    .line 251
    invoke-virtual {v10, v7, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 252
    .line 253
    .line 254
    :goto_3
    invoke-virtual {v10, v3, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    iget-object v3, v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->a:Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 258
    .line 259
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getFrom()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    const-string v6, "from"

    .line 264
    .line 265
    invoke-virtual {v10, v6, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getPrice()I

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    if-lez v3, :cond_6

    .line 273
    .line 274
    goto :goto_4

    .line 275
    :cond_6
    const-string v4, "0"

    .line 276
    .line 277
    :goto_4
    const-string v3, "is_free"

    .line 278
    .line 279
    invoke-virtual {v10, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    iget-object v3, v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->l:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 283
    .line 284
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->getValue()F

    .line 285
    .line 286
    .line 287
    move-result v3

    .line 288
    const-string/jumbo v4, "speed_level"

    .line 289
    .line 290
    .line 291
    invoke-virtual {v10, v4, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 292
    .line 293
    .line 294
    iget v3, v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->n:I

    .line 295
    .line 296
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 297
    .line 298
    .line 299
    move-result v4

    .line 300
    const-string v6, "merge"

    .line 301
    .line 302
    const-string v7, "nature"

    .line 303
    .line 304
    const-string v8, "logic"

    .line 305
    .line 306
    if-eq v3, v4, :cond_a

    .line 307
    .line 308
    iget v3, v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->n:I

    .line 309
    .line 310
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayCode()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result v3

    .line 322
    if-eqz v3, :cond_7

    .line 323
    .line 324
    goto :goto_6

    .line 325
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 326
    .line 327
    .line 328
    move-result v3

    .line 329
    if-eqz v3, :cond_8

    .line 330
    .line 331
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getBindShortPlayId()I

    .line 332
    .line 333
    .line 334
    move-result v3

    .line 335
    iget v4, v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->n:I

    .line 336
    .line 337
    if-ne v3, v4, :cond_8

    .line 338
    .line 339
    invoke-virtual {v10, v8, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    goto :goto_8

    .line 343
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isMergeShortPlay()Z

    .line 344
    .line 345
    .line 346
    move-result v3

    .line 347
    if-eqz v3, :cond_9

    .line 348
    .line 349
    goto :goto_5

    .line 350
    :cond_9
    const-string v6, "random"

    .line 351
    .line 352
    :goto_5
    invoke-virtual {v10, v8, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    goto :goto_8

    .line 356
    :cond_a
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isMergeShortPlay()Z

    .line 357
    .line 358
    .line 359
    move-result v3

    .line 360
    if-eqz v3, :cond_b

    .line 361
    .line 362
    goto :goto_7

    .line 363
    :cond_b
    move-object v6, v7

    .line 364
    :goto_7
    invoke-virtual {v10, v8, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getUnlockType()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    invoke-virtual {v10, v5, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    const/4 v13, 0x4

    .line 375
    const/4 v14, 0x0

    .line 376
    const-string v9, "playback_progress_track"

    .line 377
    .line 378
    const-wide/16 v11, 0x0

    .line 379
    .line 380
    move-object v8, v2

    .line 381
    invoke-static/range {v8 .. v14}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    return-void
.end method

.method public static synthetic v(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;ILjava/lang/Object;)V
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
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->u(Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final w(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
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
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->a:Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getFrom()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "deeplink"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const-wide/16 v1, 0x1388

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayCode()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sget-object v3, Lud/b;->a:Lud/b;

    .line 36
    .line 37
    invoke-virtual {v3}, Lud/b;->b0()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->i:I

    .line 49
    .line 50
    int-to-long v3, v0

    .line 51
    cmp-long v0, v3, v1

    .line 52
    .line 53
    if-ltz v0, :cond_5

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    iget v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->i:I

    .line 57
    .line 58
    int-to-long v3, v0

    .line 59
    cmp-long v0, v3, v1

    .line 60
    .line 61
    if-ltz v0, :cond_5

    .line 62
    .line 63
    :goto_0
    sget-object v0, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;

    .line 64
    .line 65
    iget v1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->i:I

    .line 66
    .line 67
    div-int/lit16 v1, v1, 0x3e8

    .line 68
    .line 69
    invoke-virtual {v0, p1, v1}, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->x(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;I)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->a:Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getPushId()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    sget-object v0, Lcom/startshorts/androidplayer/repo/push/PushRepo;->a:Lcom/startshorts/androidplayer/repo/push/PushRepo;

    .line 81
    .line 82
    const/4 v1, 0x2

    .line 83
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->D(ILjava/lang/String;)Lkotlinx/coroutines/r;

    .line 84
    .line 85
    .line 86
    :cond_4
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->a:Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 87
    .line 88
    const/4 v0, 0x0

    .line 89
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setPushId(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_5
    return-void
.end method

.method private final y(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZZLcom/startshorts/androidplayer/bean/shorts/PlayResolution;)V
    .locals 7

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
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->l(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 8
    .line 9
    .line 10
    iget-object p4, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->d:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$b;

    .line 11
    .line 12
    sget-object v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$PlayFailedReason;->REASON_LOCKED:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$PlayFailedReason;

    .line 13
    .line 14
    invoke-interface {p4, p1, v0, p2, p3}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$b;->d(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$PlayFailedReason;ZZ)V

    .line 15
    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->j(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoUrl()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->l(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isVideoExpired()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    iget-object p4, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->d:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$b;

    .line 44
    .line 45
    sget-object v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$PlayFailedReason;->REASON_URL_EXPIRED:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$PlayFailedReason;

    .line 46
    .line 47
    invoke-interface {p4, p1, v0, p2, p3}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$b;->d(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$PlayFailedReason;ZZ)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    iget-object p2, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->d:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$b;

    .line 52
    .line 53
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->h(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)I

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    invoke-interface {p2, p3, p1, p4}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$b;->e(ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    :goto_0
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    iget-object p4, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->a:Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 68
    .line 69
    invoke-virtual {p4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getFrom()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p4

    .line 73
    const-string v1, "from"

    .line 74
    .line 75
    invoke-virtual {v2, v1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string/jumbo p4, "status"

    .line 79
    .line 80
    .line 81
    const-string/jumbo v1, "url null or empty"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, p4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string p4, "scene"

    .line 88
    .line 89
    const-string v1, "immersion"

    .line 90
    .line 91
    invoke-virtual {v2, p4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    sget-object p4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 95
    .line 96
    const/4 v5, 0x4

    .line 97
    const/4 v6, 0x0

    .line 98
    const-string v1, "reel_play_error"

    .line 99
    .line 100
    const-wide/16 v3, 0x0

    .line 101
    .line 102
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    iget-object p4, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->d:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$b;

    .line 106
    .line 107
    sget-object v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$PlayFailedReason;->REASON_INVALID_URL:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$PlayFailedReason;

    .line 108
    .line 109
    invoke-interface {p4, p1, v0, p2, p3}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$b;->d(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$PlayFailedReason;ZZ)V

    .line 110
    .line 111
    .line 112
    :goto_1
    return-void
.end method

.method static synthetic z(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZZLcom/startshorts/androidplayer/bean/shorts/PlayResolution;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x8

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p4, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->y(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZZLcom/startshorts/androidplayer/bean/shorts/PlayResolution;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final c(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 12
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "episode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayCode()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    if-eqz v3, :cond_2

    .line 11
    .line 12
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getTotalEpisodes()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-lez v4, :cond_2

    .line 28
    .line 29
    if-gez v5, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 33
    .line 34
    new-instance v9, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$checkFirebaseWatchVideo$1;

    .line 35
    .line 36
    const/4 v7, 0x0

    .line 37
    move-object v1, v9

    .line 38
    move-object v2, p0

    .line 39
    move-object v6, p1

    .line 40
    invoke-direct/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$checkFirebaseWatchVideo$1;-><init>(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;Ljava/lang/String;IILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lrs/c;)V

    .line 41
    .line 42
    .line 43
    const/4 v10, 0x2

    .line 44
    const/4 v11, 0x0

    .line 45
    const-string v7, "checkFirebaseWatchVideo"

    .line 46
    .line 47
    const/4 v8, 0x0

    .line 48
    move-object v6, v0

    .line 49
    invoke-static/range {v6 .. v11}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_0
    return-void
.end method

.method public final f()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->g:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public final n(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 10
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "episode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isLocked()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->g(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->H(Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;)Landroid/os/Bundle;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v0, v2}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->a:Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getActResource()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-virtual {v1, v2, v3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->w(Lcom/startshorts/androidplayer/bean/act/ActResource;Z)Landroid/os/Bundle;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {v0, v2}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v2, "scene"

    .line 47
    .line 48
    const-string v4, "immersion"

    .line 49
    .line 50
    invoke-virtual {v0, v2, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->a:Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getFrom()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const-string v4, "from"

    .line 60
    .line 61
    invoke-virtual {v0, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget v2, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->i:I

    .line 65
    .line 66
    const/4 v4, 0x1

    .line 67
    const/16 v5, 0x3e8

    .line 68
    .line 69
    if-ge v2, v5, :cond_1

    .line 70
    .line 71
    move v2, v4

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    div-int/2addr v2, v5

    .line 74
    :goto_0
    const-string v6, "seconds"

    .line 75
    .line 76
    invoke-virtual {v0, v6, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    const-string/jumbo v2, "unlock_type"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getUnlockType()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget p1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->j:I

    .line 90
    .line 91
    if-ge p1, v5, :cond_2

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    div-int/lit16 v4, p1, 0x3e8

    .line 95
    .line 96
    :goto_1
    const-string p1, "real_seconds"

    .line 97
    .line 98
    invoke-virtual {v0, p1, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->f:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 102
    .line 103
    const/4 v2, -0x1

    .line 104
    if-eqz p1, :cond_3

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    goto :goto_2

    .line 111
    :cond_3
    move p1, v2

    .line 112
    :goto_2
    iget-object v4, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->f:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 113
    .line 114
    if-eqz v4, :cond_4

    .line 115
    .line 116
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayCode()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    if-nez v4, :cond_5

    .line 121
    .line 122
    :cond_4
    const-string v4, ""

    .line 123
    .line 124
    :cond_5
    iget-object v5, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->f:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 125
    .line 126
    if-eqz v5, :cond_6

    .line 127
    .line 128
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isMergeShortPlay()Z

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    goto :goto_3

    .line 133
    :cond_6
    move v5, v3

    .line 134
    :goto_3
    iget-object v6, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->f:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 135
    .line 136
    if-eqz v6, :cond_7

    .line 137
    .line 138
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getBindShortPlayId()I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    :cond_7
    iget-object v6, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->f:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 143
    .line 144
    if-eqz v6, :cond_8

    .line 145
    .line 146
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    :cond_8
    const-string v6, "next_reel_id"

    .line 151
    .line 152
    invoke-virtual {v0, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget v6, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->n:I

    .line 156
    .line 157
    const-string v7, "merge"

    .line 158
    .line 159
    const-string v8, "nature"

    .line 160
    .line 161
    const-string v9, "logic"

    .line 162
    .line 163
    if-eq v6, p1, :cond_c

    .line 164
    .line 165
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-eqz p1, :cond_9

    .line 174
    .line 175
    goto :goto_5

    .line 176
    :cond_9
    if-eqz v3, :cond_a

    .line 177
    .line 178
    iget p1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->n:I

    .line 179
    .line 180
    if-ne v2, p1, :cond_a

    .line 181
    .line 182
    invoke-virtual {v0, v9, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    goto :goto_7

    .line 186
    :cond_a
    if-eqz v5, :cond_b

    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_b
    const-string v7, "random"

    .line 190
    .line 191
    :goto_4
    invoke-virtual {v0, v9, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    goto :goto_7

    .line 195
    :cond_c
    :goto_5
    if-eqz v5, :cond_d

    .line 196
    .line 197
    goto :goto_6

    .line 198
    :cond_d
    move-object v7, v8

    .line 199
    :goto_6
    invoke-virtual {v0, v9, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    :goto_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 203
    .line 204
    const/4 v6, 0x4

    .line 205
    const/4 v7, 0x0

    .line 206
    const-string v2, "reel_cut"

    .line 207
    .line 208
    const-wide/16 v4, 0x0

    .line 209
    .line 210
    move-object v3, v0

    .line 211
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    return-void
.end method

.method public final o(ZZ)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->e()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

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
    move-object v2, v0

    .line 18
    :goto_0
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->g:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

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
    move-object v3, v0

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
    if-eqz v1, :cond_2

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    move-object v1, v0

    .line 62
    :goto_2
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v1, ") mCurrentEpisode("

    .line 66
    .line 67
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->g:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 71
    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    :cond_3
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    const-string v0, "ImmersionEpisodeManager"

    .line 95
    .line 96
    invoke-virtual {p1, v0, p2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_4
    iput-object v1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->f:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 101
    .line 102
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->g:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 103
    .line 104
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->e:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 105
    .line 106
    if-eqz v0, :cond_5

    .line 107
    .line 108
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->w(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->n(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 112
    .line 113
    .line 114
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->m(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 115
    .line 116
    .line 117
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->d(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 118
    .line 119
    .line 120
    :cond_5
    if-nez v1, :cond_6

    .line 121
    .line 122
    return-void

    .line 123
    :cond_6
    iput-object v1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->g:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 124
    .line 125
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->e:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 126
    .line 127
    const/4 v2, 0x0

    .line 128
    const/4 v3, 0x1

    .line 129
    if-nez v0, :cond_8

    .line 130
    .line 131
    :cond_7
    :goto_3
    move v0, v3

    .line 132
    goto :goto_5

    .line 133
    :cond_8
    if-eqz v0, :cond_9

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-ne v0, v3, :cond_9

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_9
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_a

    .line 147
    .line 148
    :goto_4
    goto :goto_3

    .line 149
    :cond_a
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->e:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 150
    .line 151
    if-eqz v0, :cond_7

    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-ne v0, v4, :cond_7

    .line 162
    .line 163
    move v0, v2

    .line 164
    :goto_5
    if-eqz v0, :cond_c

    .line 165
    .line 166
    iget-object v4, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->d:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$b;

    .line 167
    .line 168
    iget-object v5, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->e:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 169
    .line 170
    iget-boolean v6, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->m:Z

    .line 171
    .line 172
    invoke-interface {v4, v5, v1, v6}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$b;->b(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Z)V

    .line 173
    .line 174
    .line 175
    iput-boolean v2, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->m:Z

    .line 176
    .line 177
    iget v2, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->n:I

    .line 178
    .line 179
    const/4 v4, -0x1

    .line 180
    if-ne v2, v4, :cond_c

    .line 181
    .line 182
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    iget-object v4, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->a:Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 187
    .line 188
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getShortsInfo()Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->getShortsId()I

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    if-eq v2, v4, :cond_b

    .line 197
    .line 198
    goto :goto_6

    .line 199
    :cond_b
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    :goto_6
    iput v3, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->n:I

    .line 204
    .line 205
    :cond_c
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->d:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$b;

    .line 206
    .line 207
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->e:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 208
    .line 209
    invoke-interface {v2, v0, v3, v1}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$b;->c(ZLcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 210
    .line 211
    .line 212
    const/16 v5, 0x8

    .line 213
    .line 214
    const/4 v6, 0x0

    .line 215
    const/4 v4, 0x0

    .line 216
    move-object v0, p0

    .line 217
    move v2, p1

    .line 218
    move v3, p2

    .line 219
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->z(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZZLcom/startshorts/androidplayer/bean/shorts/PlayResolution;ILjava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    return-void
.end method

.method public final p()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->e()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    if-eqz v2, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->g:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ne v1, v0, :cond_1

    .line 20
    .line 21
    iput-object v2, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->g:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getUnlockJustNow()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoUrl()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v3, "notifyEpisodeUnlocked -> episodeNum("

    .line 50
    .line 51
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v3, ") episodeId("

    .line 62
    .line 63
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const/16 v3, 0x29

    .line 74
    .line 75
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const-string v3, "ImmersionEpisodeManager"

    .line 83
    .line 84
    invoke-virtual {v0, v3, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const/4 v0, 0x0

    .line 88
    invoke-virtual {v2, v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->setUnlockJustNow(Z)V

    .line 89
    .line 90
    .line 91
    invoke-direct {p0, v2}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->l(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->d:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$b;

    .line 95
    .line 96
    invoke-direct {p0, v2}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->h(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    const/4 v4, 0x4

    .line 101
    const/4 v5, 0x0

    .line 102
    const/4 v3, 0x0

    .line 103
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$b$a;->a(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$b;ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;ILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    :cond_1
    :goto_0
    return-void
.end method

.method public final q(Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;)V
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->l:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 7
    .line 8
    return-void
.end method

.method public final r(II)V
    .locals 6

    .line 1
    iput p2, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->h:I

    .line 2
    .line 3
    iput p1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->i:I

    .line 4
    .line 5
    iget v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->j:I

    .line 6
    .line 7
    const/16 v1, 0xc8

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    iput v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->j:I

    .line 11
    .line 12
    const/16 v2, 0x3e8

    .line 13
    .line 14
    if-ge v0, v2, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    div-int/2addr v0, v2

    .line 19
    :goto_0
    rem-int/lit8 v2, v0, 0x5

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    iget v2, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->p:I

    .line 24
    .line 25
    if-eq v0, v2, :cond_1

    .line 26
    .line 27
    iput v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->p:I

    .line 28
    .line 29
    sget-object v0, Lud/b;->a:Lud/b;

    .line 30
    .line 31
    invoke-virtual {v0}, Lud/b;->Z1()J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    const/4 v4, 0x5

    .line 36
    int-to-long v4, v4

    .line 37
    add-long/2addr v2, v4

    .line 38
    invoke-virtual {v0, v2, v3}, Lud/b;->m5(J)V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->g:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    sget-object v2, Lud/b;->a:Lud/b;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-ne p1, p2, :cond_2

    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    :cond_2
    invoke-virtual {v2, v0, p1}, Lud/b;->E3(II)V

    .line 55
    .line 56
    .line 57
    :cond_3
    sget-object p1, Lbf/e;->a:Lbf/e;

    .line 58
    .line 59
    invoke-virtual {p1}, Lbf/e;->h()Lbf/e$a;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lbf/e$a;->i()V

    .line 64
    .line 65
    .line 66
    sget-object p1, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->p()V

    .line 69
    .line 70
    .line 71
    sget-object p1, Lvi/e;->a:Lvi/e;

    .line 72
    .line 73
    invoke-virtual {p1}, Lvi/e;->d()Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_4

    .line 78
    .line 79
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->g:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 80
    .line 81
    if-eqz p1, :cond_4

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isFreeEpisode()Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_4

    .line 88
    .line 89
    sget-object p1, Lud/b;->a:Lud/b;

    .line 90
    .line 91
    invoke-virtual {p1}, Lud/b;->X1()J

    .line 92
    .line 93
    .line 94
    move-result-wide v2

    .line 95
    int-to-long v0, v1

    .line 96
    add-long/2addr v2, v0

    .line 97
    invoke-virtual {p1, v2, v3}, Lud/b;->k5(J)V

    .line 98
    .line 99
    .line 100
    :cond_4
    return-void
.end method

.method public final s(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->k:I

    .line 2
    .line 3
    return-void
.end method

.method public final t()V
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    const-string v1, "ImmersionEpisodeManager"

    .line 4
    .line 5
    const-string v2, "release"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->g:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->w(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->m(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final u(Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->g:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, v0, v1, v1, p1}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->y(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZZLcom/startshorts/androidplayer/bean/shorts/PlayResolution;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final x(Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;
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
    const-string v0, "reason"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->c:Lcom/startshorts/androidplayer/adapter/immersion/ImmersionAdapter;

    .line 12
    .line 13
    sget-object p1, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;->ACCOUNT_CHANGED:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;

    .line 14
    .line 15
    if-eq p2, p1, :cond_0

    .line 16
    .line 17
    sget-object p1, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;->URL_EXPIRED:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;

    .line 18
    .line 19
    if-ne p2, p1, :cond_1

    .line 20
    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->g:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->e:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 25
    .line 26
    :cond_1
    return-void
.end method
