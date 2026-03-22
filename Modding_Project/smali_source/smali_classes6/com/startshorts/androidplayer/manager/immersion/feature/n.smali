.class public final Lcom/startshorts/androidplayer/manager/immersion/feature/n;
.super Ljava/lang/Object;
.source "PlayResolutionFeature.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/immersion/feature/n$a;,
        Lcom/startshorts/androidplayer/manager/immersion/feature/n$b;,
        Lcom/startshorts/androidplayer/manager/immersion/feature/n$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPlayResolutionFeature.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlayResolutionFeature.kt\ncom/startshorts/androidplayer/manager/immersion/feature/PlayResolutionFeature\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,482:1\n1755#2,3:483\n*S KotlinDebug\n*F\n+ 1 PlayResolutionFeature.kt\ncom/startshorts/androidplayer/manager/immersion/feature/PlayResolutionFeature\n*L\n113#1:483,3\n*E\n"
    }
.end annotation


# static fields
.field public static final l:Lcom/startshorts/androidplayer/manager/immersion/feature/n$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static m:Z

.field private static n:Z


# instance fields
.field private a:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Z

.field private f:Z

.field private g:J

.field private h:Lcom/startshorts/androidplayer/manager/immersion/feature/n$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:Z

.field private j:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private k:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/immersion/feature/n$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/immersion/feature/n$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->l:Lcom/startshorts/androidplayer/manager/immersion/feature/n$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->Companion:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;->getPLAY_RESOLUTION_AUTO()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->a:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->f:Z

    .line 14
    .line 15
    const-wide/16 v1, -0x1

    .line 16
    .line 17
    iput-wide v1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->g:J

    .line 18
    .line 19
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->z0()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;->getPLAY_RESOLUTION_1080P()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;->getPLAY_RESOLUTION_AUTO()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :goto_0
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->a:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 37
    .line 38
    return-void
.end method

.method public static synthetic b(ILcom/startshorts/androidplayer/manager/immersion/feature/n;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->u(ILcom/startshorts/androidplayer/manager/immersion/feature/n;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/startshorts/androidplayer/manager/immersion/feature/n;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->i(Lcom/startshorts/androidplayer/manager/immersion/feature/n;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lcom/startshorts/androidplayer/manager/immersion/feature/n;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->h(Lcom/startshorts/androidplayer/manager/immersion/feature/n;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lcom/startshorts/androidplayer/manager/immersion/feature/n;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->s(Lcom/startshorts/androidplayer/manager/immersion/feature/n;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic f()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method private final g(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/manager/immersion/feature/k;)V
    .locals 12

    .line 1
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->o(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lpf/k;->a:Lpf/k;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Lpf/k;->i(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v2, 0x2d0

    .line 19
    .line 20
    :goto_0
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v4, 0x0

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    const-string v5, "player_resolution"

    .line 28
    .line 29
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move-object v3, v4

    .line 35
    :goto_1
    instance-of v5, v3, Ljava/lang/Integer;

    .line 36
    .line 37
    if-eqz v5, :cond_2

    .line 38
    .line 39
    check-cast v3, Ljava/lang/Integer;

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    move-object v3, v4

    .line 43
    :goto_2
    if-eqz v3, :cond_3

    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    :cond_3
    invoke-virtual {v1, p1, v2}, Lpf/k;->k(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;I)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_4

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    goto :goto_3

    .line 60
    :cond_4
    const/4 v1, 0x0

    .line 61
    :goto_3
    const-string v3, "PlayResolutionFeature"

    .line 62
    .line 63
    if-lt v1, v2, :cond_5

    .line 64
    .line 65
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 66
    .line 67
    const-string p2, "handleCatonWhenBufferStart ignore -> downgradeResolution=null"

    .line 68
    .line 69
    invoke-virtual {p1, v3, p2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_5
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 74
    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v5, "handleCatonWhenBufferStart -> downgradeResolutionDelay,downgradeResolution="

    .line 81
    .line 82
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    if-eqz p1, :cond_6

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    :cond_6
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v1, v3, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object v4, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->k:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;

    .line 106
    .line 107
    if-eqz v4, :cond_7

    .line 108
    .line 109
    sget-object v5, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;->DOWNGRADE_RESOLUTION_WHEN_CATON:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 110
    .line 111
    new-instance v9, Lhf/y;

    .line 112
    .line 113
    invoke-direct {v9, p0, v0, p1, p2}, Lhf/y;-><init>(Lcom/startshorts/androidplayer/manager/immersion/feature/n;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Lcom/startshorts/androidplayer/manager/immersion/feature/k;)V

    .line 114
    .line 115
    .line 116
    const/4 v10, 0x4

    .line 117
    const/4 v11, 0x0

    .line 118
    const-wide/16 v6, 0x1194

    .line 119
    .line 120
    const/4 v8, 0x0

    .line 121
    invoke-static/range {v4 .. v11}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;->e(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    :cond_7
    return-void
.end method

.method private static final h(Lcom/startshorts/androidplayer/manager/immersion/feature/n;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lkotlin/Unit;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->k:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;->CATON_TOASTER:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;->b(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    if-eqz p1, :cond_3

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->isAuto()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v0, 0x1

    .line 17
    if-ne p1, v0, :cond_3

    .line 18
    .line 19
    sget-object p1, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->Companion:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;->getPLAY_RESOLUTION_AUTO()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    const/4 v0, 0x4

    .line 30
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->w(ILcom/startshorts/androidplayer/bean/shorts/PlayResolution;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Ljava/util/HashMap;)V

    .line 31
    .line 32
    .line 33
    sget-object p0, Laa/a;->a:Laa/a;

    .line 34
    .line 35
    invoke-virtual {p0}, Laa/a;->d()Ljava/lang/ref/WeakReference;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const/4 p1, 0x0

    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lcom/hades/aar/activity/IDActivity;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move-object p0, p1

    .line 50
    :goto_0
    instance-of p2, p0, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 51
    .line 52
    if-eqz p2, :cond_2

    .line 53
    .line 54
    move-object p1, p0

    .line 55
    check-cast p1, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 56
    .line 57
    :cond_2
    if-eqz p1, :cond_4

    .line 58
    .line 59
    sget p0, Lcom/startshorts/androidplayer/R$string;->immersion_activity_downgrade_resolution_due_to_net_caton_auto:I

    .line 60
    .line 61
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->x(I)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->h:Lcom/startshorts/androidplayer/manager/immersion/feature/n$b;

    .line 66
    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    new-instance v0, Lhf/z;

    .line 70
    .line 71
    invoke-direct {v0, p0, p2, p3}, Lhf/z;-><init>(Lcom/startshorts/androidplayer/manager/immersion/feature/n;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Lcom/startshorts/androidplayer/manager/immersion/feature/k;)V

    .line 72
    .line 73
    .line 74
    invoke-interface {p1, v0}, Lcom/startshorts/androidplayer/manager/immersion/feature/n$b;->e(Lkotlin/jvm/functions/Function0;)V

    .line 75
    .line 76
    .line 77
    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 78
    .line 79
    return-object p0
.end method

.method private static final i(Lcom/startshorts/androidplayer/manager/immersion/feature/n;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    move-result-object p2

    .line 6
    invoke-direct {p0, v0, p1, p1, p2}, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->w(ILcom/startshorts/androidplayer/bean/shorts/PlayResolution;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Ljava/util/HashMap;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private final q(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const/4 v1, 0x5

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    filled-new-array {v0, v1}, [Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1
.end method

.method private final r(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/Integer;)V
    .locals 13

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->g:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    const-wide/16 v4, 0x1

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    move-wide v0, v4

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iget-wide v6, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->g:J

    .line 20
    .line 21
    sub-long/2addr v0, v6

    .line 22
    const-wide/16 v6, 0x3e8

    .line 23
    .line 24
    div-long/2addr v0, v6

    .line 25
    :goto_0
    cmp-long v6, v0, v4

    .line 26
    .line 27
    if-gez v6, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move-wide v4, v0

    .line 31
    :goto_1
    iput-wide v2, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->g:J

    .line 32
    .line 33
    sget-object v6, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 34
    .line 35
    invoke-virtual {v6, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    const-string/jumbo p1, "status"

    .line 40
    .line 41
    .line 42
    const-string/jumbo v0, "success"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v8, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const/16 p2, 0x70

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const-string p2, "clarity_level"

    .line 66
    .line 67
    invoke-virtual {v8, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string p1, "duration"

    .line 71
    .line 72
    invoke-virtual {v8, p1, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 73
    .line 74
    .line 75
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 76
    .line 77
    const/4 v11, 0x4

    .line 78
    const/4 v12, 0x0

    .line 79
    const-string v7, "clarity_switch"

    .line 80
    .line 81
    const-wide/16 v9, 0x0

    .line 82
    .line 83
    invoke-static/range {v6 .. v12}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method private static final s(Lcom/startshorts/androidplayer/manager/immersion/feature/n;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->h:Lcom/startshorts/androidplayer/manager/immersion/feature/n$b;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/n$b;->f(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private final t(ILjava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lfk/h0;->a:Lfk/h0;

    .line 2
    .line 3
    new-instance v1, Lhf/x;

    .line 4
    .line 5
    invoke-direct {v1, p1, p0, p2}, Lhf/x;-><init>(ILcom/startshorts/androidplayer/manager/immersion/feature/n;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static final u(ILcom/startshorts/androidplayer/manager/immersion/feature/n;Ljava/lang/String;)V
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
    const-string v2, "onResolutionChanged -> from("

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
    const-string p0, ") selectedResolution("

    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object p0, p1, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->a:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 22
    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p0, ") resolutionStr("

    .line 27
    .line 28
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const/16 p0, 0x29

    .line 35
    .line 36
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string v1, "PlayResolutionFeature"

    .line 44
    .line 45
    invoke-virtual {v0, v1, p0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p0, p1, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->h:Lcom/startshorts/androidplayer/manager/immersion/feature/n$b;

    .line 49
    .line 50
    if-eqz p0, :cond_0

    .line 51
    .line 52
    iget-object p1, p1, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->a:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 53
    .line 54
    invoke-interface {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/immersion/feature/n$b;->g(Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void
.end method

.method private final w(ILcom/startshorts/androidplayer/bean/shorts/PlayResolution;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Ljava/util/HashMap;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;",
            "Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    if-eqz v4, :cond_1

    .line 15
    .line 16
    const-string v6, "episode"

    .line 17
    .line 18
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v4, 0x0

    .line 24
    :goto_0
    instance-of v6, v4, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 25
    .line 26
    if-eqz v6, :cond_2

    .line 27
    .line 28
    check-cast v4, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    const/4 v4, 0x0

    .line 32
    :goto_1
    iget-object v6, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->a:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 33
    .line 34
    iput-object v6, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->c:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 35
    .line 36
    iput-object v2, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->a:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 37
    .line 38
    invoke-direct/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->q(I)Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    xor-int/lit8 v7, v6, 0x1

    .line 43
    .line 44
    iput-boolean v7, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->f:Z

    .line 45
    .line 46
    if-eqz v6, :cond_3

    .line 47
    .line 48
    sget-object v7, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 49
    .line 50
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 51
    .line 52
    .line 53
    move-result-wide v7

    .line 54
    iput-wide v7, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->g:J

    .line 55
    .line 56
    :cond_3
    if-nez v3, :cond_5

    .line 57
    .line 58
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->isAuto()Z

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    if-eqz v7, :cond_4

    .line 63
    .line 64
    sget-object v7, Lpf/k;->a:Lpf/k;

    .line 65
    .line 66
    invoke-virtual {v7, v4}, Lpf/k;->i(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    if-nez v7, :cond_6

    .line 71
    .line 72
    :cond_4
    move-object v7, v2

    .line 73
    goto :goto_2

    .line 74
    :cond_5
    move-object v7, v3

    .line 75
    :cond_6
    :goto_2
    sget-object v8, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 76
    .line 77
    new-instance v9, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string/jumbo v10, "switchResolution -> from("

    .line 83
    .line 84
    .line 85
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v10, ") mLastSelectedResolution("

    .line 92
    .line 93
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object v10, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->c:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 97
    .line 98
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v10, ") mCurrentSelectedResolution("

    .line 102
    .line 103
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget-object v10, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->a:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 107
    .line 108
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v10, ") playableResolution("

    .line 112
    .line 113
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v11, ") mPlayingResolutionValue("

    .line 120
    .line 121
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    iget-object v11, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->d:Ljava/lang/Integer;

    .line 125
    .line 126
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const/16 v11, 0x29

    .line 130
    .line 131
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    const-string v12, "PlayResolutionFeature"

    .line 139
    .line 140
    invoke-virtual {v8, v12, v9}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    sget-object v13, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 144
    .line 145
    invoke-virtual {v13, v4}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 146
    .line 147
    .line 148
    move-result-object v15

    .line 149
    invoke-direct/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->q(I)Z

    .line 150
    .line 151
    .line 152
    move-result v9

    .line 153
    const-string v14, "auto"

    .line 154
    .line 155
    if-eqz v9, :cond_7

    .line 156
    .line 157
    const-string/jumbo v9, "setting"

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_7
    move-object v9, v14

    .line 162
    :goto_3
    const-string/jumbo v5, "status"

    .line 163
    .line 164
    .line 165
    invoke-virtual {v15, v5, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->isAuto()Z

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    if-eqz v5, :cond_8

    .line 173
    .line 174
    const-string v5, "1"

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_8
    const-string v5, "0"

    .line 178
    .line 179
    :goto_4
    const-string v9, "is_auto"

    .line 180
    .line 181
    invoke-virtual {v15, v9, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->isAuto()Z

    .line 185
    .line 186
    .line 187
    move-result v5

    .line 188
    const/16 v9, 0x70

    .line 189
    .line 190
    if-eqz v5, :cond_9

    .line 191
    .line 192
    goto :goto_5

    .line 193
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    .line 199
    .line 200
    .line 201
    move-result v14

    .line 202
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v14

    .line 212
    :goto_5
    const-string v5, "clarity_level"

    .line 213
    .line 214
    invoke-virtual {v15, v5, v14}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    const/4 v5, 0x3

    .line 218
    const/4 v14, 0x2

    .line 219
    if-eq v1, v14, :cond_d

    .line 220
    .line 221
    if-eq v1, v5, :cond_c

    .line 222
    .line 223
    const/4 v14, 0x4

    .line 224
    if-eq v1, v14, :cond_b

    .line 225
    .line 226
    const/4 v14, 0x5

    .line 227
    if-eq v1, v14, :cond_a

    .line 228
    .line 229
    const-string/jumbo v14, "user"

    .line 230
    .line 231
    .line 232
    goto :goto_6

    .line 233
    :cond_a
    const-string v14, "carton_click"

    .line 234
    .line 235
    goto :goto_6

    .line 236
    :cond_b
    const-string v14, "carton_auto"

    .line 237
    .line 238
    goto :goto_6

    .line 239
    :cond_c
    const-string/jumbo v14, "timeout"

    .line 240
    .line 241
    .line 242
    goto :goto_6

    .line 243
    :cond_d
    const-string v14, "error"

    .line 244
    .line 245
    :goto_6
    const-string v9, "from"

    .line 246
    .line 247
    invoke-virtual {v15, v9, v14}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    sget-object v9, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 251
    .line 252
    const/16 v18, 0x4

    .line 253
    .line 254
    const/16 v19, 0x0

    .line 255
    .line 256
    const-string v14, "clarity"

    .line 257
    .line 258
    const-wide/16 v16, 0x0

    .line 259
    .line 260
    const/4 v9, 0x2

    .line 261
    invoke-static/range {v13 .. v19}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    new-instance v13, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .line 268
    .line 269
    const-string v14, "onSwitchResolution -> isManually("

    .line 270
    .line 271
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    const-string v14, ") selectedResolution("

    .line 278
    .line 279
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    invoke-virtual {v8, v12, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    iget-object v3, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->h:Lcom/startshorts/androidplayer/manager/immersion/feature/n$b;

    .line 302
    .line 303
    if-eqz v3, :cond_e

    .line 304
    .line 305
    iget-object v8, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->j:Ljava/lang/Integer;

    .line 306
    .line 307
    invoke-interface {v3, v1, v2, v7, v8}, Lcom/startshorts/androidplayer/manager/immersion/feature/n$b;->a(ILcom/startshorts/androidplayer/bean/shorts/PlayResolution;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Ljava/lang/Integer;)V

    .line 308
    .line 309
    .line 310
    :cond_e
    sget-object v3, Laa/a;->a:Laa/a;

    .line 311
    .line 312
    invoke-virtual {v3}, Laa/a;->d()Ljava/lang/ref/WeakReference;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    if-eqz v3, :cond_f

    .line 317
    .line 318
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    check-cast v3, Lcom/hades/aar/activity/IDActivity;

    .line 323
    .line 324
    goto :goto_7

    .line 325
    :cond_f
    const/4 v3, 0x0

    .line 326
    :goto_7
    instance-of v8, v3, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 327
    .line 328
    if-eqz v8, :cond_10

    .line 329
    .line 330
    check-cast v3, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 331
    .line 332
    goto :goto_8

    .line 333
    :cond_10
    const/4 v3, 0x0

    .line 334
    :goto_8
    if-eqz v3, :cond_11

    .line 335
    .line 336
    invoke-virtual {v7, v3}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v8

    .line 340
    invoke-direct {v0, v5, v8}, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->t(ILjava/lang/String;)V

    .line 341
    .line 342
    .line 343
    :cond_11
    if-eqz v6, :cond_15

    .line 344
    .line 345
    iget-object v1, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->d:Ljava/lang/Integer;

    .line 346
    .line 347
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolution()Lcom/ss/ttvideoengine/Resolution;

    .line 348
    .line 349
    .line 350
    move-result-object v5

    .line 351
    invoke-static {v5}, Ljk/p;->a(Lcom/ss/ttvideoengine/Resolution;)I

    .line 352
    .line 353
    .line 354
    move-result v5

    .line 355
    if-nez v1, :cond_12

    .line 356
    .line 357
    goto :goto_a

    .line 358
    :cond_12
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    if-ne v1, v5, :cond_16

    .line 363
    .line 364
    if-eqz v3, :cond_14

    .line 365
    .line 366
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->isAuto()Z

    .line 367
    .line 368
    .line 369
    move-result v1

    .line 370
    if-eqz v1, :cond_13

    .line 371
    .line 372
    sget v1, Lcom/startshorts/androidplayer/R$string;->immersion_activity_switch_resolution_auto_tip:I

    .line 373
    .line 374
    invoke-virtual {v3, v1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->x(I)V

    .line 375
    .line 376
    .line 377
    goto :goto_9

    .line 378
    :cond_13
    sget v1, Lcom/startshorts/androidplayer/R$string;->immersion_activity_switch_resolution_tip:I

    .line 379
    .line 380
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    .line 381
    .line 382
    .line 383
    move-result v2

    .line 384
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    invoke-virtual {v3, v1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->y(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    :cond_14
    :goto_9
    iget-object v1, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->d:Ljava/lang/Integer;

    .line 400
    .line 401
    invoke-direct {v0, v4, v1}, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->r(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/Integer;)V

    .line 402
    .line 403
    .line 404
    iget-object v1, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->h:Lcom/startshorts/androidplayer/manager/immersion/feature/n$b;

    .line 405
    .line 406
    if-eqz v1, :cond_16

    .line 407
    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    .line 409
    .line 410
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    .line 412
    .line 413
    iget-object v3, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->d:Ljava/lang/Integer;

    .line 414
    .line 415
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    const/16 v3, 0x70

    .line 419
    .line 420
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    invoke-interface {v1, v2}, Lcom/startshorts/androidplayer/manager/immersion/feature/n$b;->c(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    goto :goto_a

    .line 431
    :cond_15
    if-ne v1, v9, :cond_16

    .line 432
    .line 433
    if-eqz v3, :cond_16

    .line 434
    .line 435
    sget v1, Lcom/startshorts/androidplayer/R$string;->immersion_activity_resolution_auto_select_tip:I

    .line 436
    .line 437
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    .line 438
    .line 439
    .line 440
    move-result v2

    .line 441
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v2

    .line 445
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    invoke-virtual {v3, v1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->y(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    :cond_16
    :goto_a
    return-void
.end method

.method static synthetic x(Lcom/startshorts/androidplayer/manager/immersion/feature/n;ILcom/startshorts/androidplayer/bean/shorts/PlayResolution;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Ljava/util/HashMap;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x4

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->w(ILcom/startshorts/androidplayer/bean/shorts/PlayResolution;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Ljava/util/HashMap;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public a(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)V
    .locals 29
    .param p1    # Lcom/startshorts/androidplayer/manager/immersion/feature/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    const-string v1, "message"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->b()Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;

    move-result-object v1

    sget-object v2, Lcom/startshorts/androidplayer/manager/immersion/feature/n$c;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const-string v2, "play"

    const-string v3, "0"

    const-string v4, "1"

    const-string v5, "immersion"

    const-string v6, "scene"

    const/16 v8, 0x438

    const-string v10, "from"

    const-string v11, "is_auto"

    const-string v12, "auto"

    const-string/jumbo v13, "status"

    const-string v14, "clarity_level"

    const-string v9, "PlayResolutionFeature"

    const/4 v15, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1a

    .line 2
    :pswitch_0
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->j(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoUrl()Ljava/lang/String;

    move-result-object v15

    :cond_0
    if-eqz v15, :cond_2

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    sget-object v2, Lpf/k;->a:Lpf/k;

    invoke-virtual {v2, v1}, Lpf/k;->i(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    move-result v1

    if-ne v1, v8, :cond_2

    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->Companion:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;

    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;->getPLAY_RESOLUTION_1080P()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    move-result-object v4

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->x(Lcom/startshorts/androidplayer/manager/immersion/feature/n;ILcom/startshorts/androidplayer/bean/shorts/PlayResolution;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Ljava/util/HashMap;ILjava/lang/Object;)V

    goto/16 :goto_1a

    :cond_2
    :goto_0
    return-void

    :pswitch_1
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->i:Z

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "err_code"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v15

    :goto_1
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_4

    check-cast v1, Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object v1, v15

    .line 9
    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->j(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    move-result-object v2

    .line 10
    const-string v3, "-9999"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "-1"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    if-eqz v2, :cond_6

    .line 11
    sget-object v3, Lud/b;->a:Lud/b;

    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    move-result v4

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v8}, Lud/b;->E3(II)V

    .line 12
    sget-object v3, Lud/a;->a:Lud/a;

    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v8}, Lud/a;->k0(II)V

    .line 13
    :cond_6
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->p(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/ss/ttvideoengine/Resolution;

    move-result-object v3

    if-nez v3, :cond_9

    .line 14
    iget-object v3, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->a:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->isAuto()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 15
    sget-object v3, Lpf/k;->a:Lpf/k;

    invoke-virtual {v3, v2}, Lpf/k;->i(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    move-result v3

    :goto_3
    const/4 v4, -0x1

    goto :goto_4

    :cond_7
    const/4 v3, -0x1

    goto :goto_3

    .line 16
    :cond_8
    iget-object v3, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->a:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    move-result v3

    goto :goto_3

    .line 17
    :cond_9
    invoke-static {v3}, Ljk/p;->a(Lcom/ss/ttvideoengine/Resolution;)I

    move-result v3

    goto :goto_3

    :goto_4
    if-ne v3, v4, :cond_a

    .line 18
    const-string v4, ""

    goto :goto_5

    :cond_a
    if-eqz v2, :cond_b

    .line 19
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parseVideoUrl(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_b
    move-object v4, v15

    .line 20
    :goto_5
    sget-object v8, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onError -> playErrorUrl("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ") playErrorResolutionValue("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "p)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    sget-object v8, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    invoke-virtual {v8, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    move-result-object v9

    .line 22
    invoke-virtual {v9, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v5, "err_msg"

    invoke-virtual {v9, v5, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string/jumbo v1, "video_url"

    invoke-virtual {v9, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x70

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v14, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->A()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "userNetworkType"

    invoke-virtual {v9, v5, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    const/16 v25, 0x4

    const/16 v26, 0x0

    .line 28
    const-string v21, "reel_play_fail"

    const-wide/16 v23, 0x0

    move-object/from16 v20, v8

    move-object/from16 v22, v9

    invoke-static/range {v20 .. v26}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 29
    iget-object v1, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->j:Ljava/lang/Integer;

    if-nez v1, :cond_c

    .line 30
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->j:Ljava/lang/Integer;

    :cond_c
    if-eqz v2, :cond_f

    const/4 v1, -0x1

    if-eq v3, v1, :cond_f

    .line 31
    sget-object v1, Lpf/k;->a:Lpf/k;

    invoke-virtual {v1, v2, v3}, Lpf/k;->k(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;I)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 32
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_6

    :cond_d
    move-object v2, v15

    :goto_6
    iget-object v3, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->j:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_7

    :cond_e
    move-object v15, v1

    :cond_f
    :goto_7
    if-eqz v15, :cond_10

    .line 33
    sget-object v1, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->Companion:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;

    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;->getPLAY_RESOLUTION_AUTO()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    move-result-object v1

    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    move-result-object v0

    const/4 v2, 0x2

    .line 35
    invoke-direct {v7, v2, v1, v15, v0}, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->w(ILcom/startshorts/androidplayer/bean/shorts/PlayResolution;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Ljava/util/HashMap;)V

    goto/16 :goto_1a

    .line 36
    :cond_10
    sget-object v0, Lfk/h0;->a:Lfk/h0;

    new-instance v1, Lhf/w;

    invoke-direct {v1, v7, v4}, Lhf/w;-><init>(Lcom/startshorts/androidplayer/manager/immersion/feature/n;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    goto/16 :goto_1a

    :pswitch_2
    const/4 v1, -0x1

    .line 37
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->k(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;

    move-result-object v2

    iput-object v2, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->k:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;

    .line 38
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->j(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    move-result-object v2

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "code"

    if-eqz v3, :cond_11

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_8

    :cond_11
    move-object v3, v15

    :goto_8
    instance-of v8, v3, Ljava/lang/Integer;

    if-eqz v8, :cond_12

    check-cast v3, Ljava/lang/Integer;

    goto :goto_9

    :cond_12
    move-object v3, v15

    .line 40
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    move-result-object v8

    const-string v10, "after_first_frame"

    if-eqz v8, :cond_13

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_a

    :cond_13
    move-object v8, v15

    :goto_a
    instance-of v11, v8, Ljava/lang/Integer;

    if-eqz v11, :cond_14

    check-cast v8, Ljava/lang/Integer;

    goto :goto_b

    :cond_14
    move-object v8, v15

    .line 41
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    move-result-object v11

    const-string v12, "action"

    if-eqz v11, :cond_15

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    goto :goto_c

    :cond_15
    move-object v11, v15

    :goto_c
    instance-of v13, v11, Ljava/lang/Integer;

    if-eqz v13, :cond_16

    move-object v15, v11

    check-cast v15, Ljava/lang/Integer;

    .line 42
    :cond_16
    sget-object v11, Lpf/k;->a:Lpf/k;

    invoke-virtual {v11, v2}, Lpf/k;->i(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    move-result-object v11

    if-eqz v11, :cond_17

    invoke-virtual {v11}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    move-result v11

    goto :goto_d

    :cond_17
    const/16 v11, 0x2d0

    :goto_d
    if-eqz v2, :cond_20

    if-eqz v3, :cond_20

    if-nez v15, :cond_18

    goto/16 :goto_10

    .line 43
    :cond_18
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v13, 0x2

    if-ne v9, v13, :cond_1a

    .line 44
    iget-object v9, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->a:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->isAuto()Z

    move-result v9

    if-eqz v9, :cond_19

    goto :goto_e

    .line 45
    :cond_19
    iget-object v9, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->a:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    move-result v11

    goto :goto_e

    .line 46
    :cond_1a
    iget-object v9, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->a:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->isAuto()Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 47
    iget-object v9, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->d:Ljava/lang/Integer;

    if-eqz v9, :cond_1d

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_e

    .line 48
    :cond_1b
    iget-object v9, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->d:Ljava/lang/Integer;

    if-eqz v9, :cond_1c

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_e

    :cond_1c
    iget-object v9, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->a:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    move-result v11

    .line 49
    :cond_1d
    :goto_e
    sget-object v9, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    invoke-virtual {v9, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    move-result-object v13

    .line 50
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v13, v4, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    if-eqz v8, :cond_1e

    .line 51
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_f

    :cond_1e
    const/4 v1, -0x1

    :goto_f
    invoke-virtual {v13, v10, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 52
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v13, v12, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x70

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v14, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v13, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    const/16 v24, 0x4

    const/16 v25, 0x0

    .line 56
    const-string v20, "reel_play_buffering"

    const-wide/16 v22, 0x0

    move-object/from16 v19, v9

    move-object/from16 v21, v13

    invoke-static/range {v19 .. v25}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 57
    sget-boolean v1, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->n:Z

    if-nez v1, :cond_1f

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_3a

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_3a

    .line 58
    :cond_1f
    invoke-direct {v7, v2, v0}, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->g(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/manager/immersion/feature/k;)V

    goto/16 :goto_1a

    .line 59
    :cond_20
    :goto_10
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    const-string v1, "notify -> episode or code or afterFirstFrame or action is null"

    invoke-virtual {v0, v9, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 60
    :pswitch_3
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->p(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/ss/ttvideoengine/Resolution;

    move-result-object v1

    if-nez v1, :cond_21

    return-void

    .line 61
    :cond_21
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->j(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    move-result-object v0

    .line 62
    iget-boolean v5, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->e:Z

    if-nez v5, :cond_23

    const/4 v5, 0x1

    .line 63
    iput-boolean v5, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->e:Z

    .line 64
    sget-object v5, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    invoke-virtual {v5, v0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    move-result-object v6

    .line 65
    invoke-virtual {v6, v13, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v8, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->a:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->isAuto()Z

    move-result v8

    if-eqz v8, :cond_22

    move-object v3, v4

    :cond_22
    invoke-virtual {v6, v11, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v14, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v6, v10, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    const/16 v27, 0x4

    const/16 v28, 0x0

    .line 70
    const-string v23, "clarity"

    const-wide/16 v25, 0x0

    move-object/from16 v22, v5

    move-object/from16 v24, v6

    invoke-static/range {v22 .. v28}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 71
    :cond_23
    invoke-static {v1}, Ljk/p;->a(Lcom/ss/ttvideoengine/Resolution;)I

    move-result v2

    .line 72
    sget-object v3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playerResolutionChanged -> mPlayingResolutionValue("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->d:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ") newResolutionValue("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-boolean v3, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->f:Z

    if-nez v3, :cond_2a

    const/4 v3, 0x1

    .line 74
    iput-boolean v3, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->f:Z

    .line 75
    iget-object v3, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->d:Ljava/lang/Integer;

    if-nez v3, :cond_24

    goto :goto_11

    :cond_24
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_29

    .line 76
    :goto_11
    sget-object v3, Laa/a;->a:Laa/a;

    invoke-virtual {v3}, Laa/a;->d()Ljava/lang/ref/WeakReference;

    move-result-object v3

    if-eqz v3, :cond_25

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hades/aar/activity/IDActivity;

    goto :goto_12

    :cond_25
    move-object v3, v15

    :goto_12
    instance-of v4, v3, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    if-eqz v4, :cond_26

    move-object v15, v3

    check-cast v15, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    :cond_26
    if-eqz v15, :cond_28

    .line 77
    iget-object v3, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->a:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->isAuto()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 78
    sget v1, Lcom/startshorts/androidplayer/R$string;->immersion_activity_switch_resolution_auto_tip:I

    invoke-virtual {v15, v1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->x(I)V

    goto :goto_13

    .line 79
    :cond_27
    sget v3, Lcom/startshorts/androidplayer/R$string;->immersion_activity_switch_resolution_tip:I

    invoke-static {v1}, Ljk/p;->b(Lcom/ss/ttvideoengine/Resolution;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v15, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->y(Ljava/lang/String;)V

    .line 80
    :cond_28
    :goto_13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->r(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/Integer;)V

    .line 81
    :cond_29
    iget-object v0, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->h:Lcom/startshorts/androidplayer/manager/immersion/feature/n$b;

    if-eqz v0, :cond_2a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x70

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/startshorts/androidplayer/manager/immersion/feature/n$b;->c(Ljava/lang/String;)V

    goto :goto_14

    :cond_2a
    const/16 v3, 0x70

    .line 82
    :goto_14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->d:Ljava/lang/Integer;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {v7, v1, v0}, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->t(ILjava/lang/String;)V

    goto/16 :goto_1a

    .line 84
    :pswitch_4
    iget-object v2, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->c:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    move-result-object v4

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v1, 0x3

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->x(Lcom/startshorts/androidplayer/manager/immersion/feature/n;ILcom/startshorts/androidplayer/bean/shorts/PlayResolution;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Ljava/util/HashMap;ILjava/lang/Object;)V

    goto/16 :goto_1a

    .line 85
    :pswitch_5
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->o(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    move-result-object v2

    if-nez v2, :cond_2b

    return-void

    .line 86
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    move-result-object v4

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->x(Lcom/startshorts/androidplayer/manager/immersion/feature/n;ILcom/startshorts/androidplayer/bean/shorts/PlayResolution;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Ljava/util/HashMap;ILjava/lang/Object;)V

    goto/16 :goto_1a

    .line 87
    :pswitch_6
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->o(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    move-result-object v2

    if-nez v2, :cond_2c

    return-void

    .line 88
    :cond_2c
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    move-result v1

    if-ne v1, v8, :cond_2e

    .line 89
    sget-object v1, Lpf/k;->a:Lpf/k;

    invoke-virtual {v1}, Lpf/k;->s()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 90
    iget-object v0, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->h:Lcom/startshorts/androidplayer/manager/immersion/feature/n$b;

    if-eqz v0, :cond_2d

    invoke-interface {v0}, Lcom/startshorts/androidplayer/manager/immersion/feature/n$b;->d()V

    :cond_2d
    return-void

    .line 91
    :cond_2e
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    move-result-object v4

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->x(Lcom/startshorts/androidplayer/manager/immersion/feature/n;ILcom/startshorts/androidplayer/bean/shorts/PlayResolution;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Ljava/util/HashMap;ILjava/lang/Object;)V

    goto/16 :goto_1a

    .line 92
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_2f

    const-string v2, "player_resolution_before_downgrade"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 93
    :cond_2f
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->p(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/ss/ttvideoengine/Resolution;

    move-result-object v1

    .line 94
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->j(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    move-result-object v0

    .line 95
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playerPrepared -> resolutionBeforeDowngrade("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ") currentResolution("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ") userSelectedResolution("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object v5, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->a:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 98
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-virtual {v2, v9, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-boolean v2, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->e:Z

    if-nez v2, :cond_3a

    iget-object v2, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->a:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->isAuto()Z

    move-result v2

    if-eqz v2, :cond_3a

    if-eqz v15, :cond_3a

    if-eqz v1, :cond_3a

    if-eq v15, v1, :cond_3a

    const/4 v2, 0x1

    .line 101
    iput-boolean v2, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->e:Z

    .line 102
    sget-object v15, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    invoke-virtual {v15, v0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    move-result-object v0

    .line 103
    invoke-virtual {v0, v13, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, v11, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v14, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v1, "abr"

    invoke-virtual {v0, v10, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    const/16 v20, 0x4

    const/16 v21, 0x0

    .line 108
    const-string v16, "clarity"

    const-wide/16 v18, 0x0

    move-object/from16 v17, v0

    invoke-static/range {v15 .. v21}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    goto/16 :goto_1a

    :pswitch_8
    const/4 v1, 0x0

    .line 109
    iput-boolean v1, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->e:Z

    const/4 v1, 0x1

    .line 110
    iput-boolean v1, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->f:Z

    const-wide/16 v4, -0x1

    .line 111
    iput-wide v4, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->g:J

    .line 112
    iput-object v15, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->c:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 113
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->j(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    move-result-object v1

    .line 114
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_30

    const-string v4, "expect_resolution_if_auto"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_15

    :cond_30
    move-object v0, v15

    :goto_15
    instance-of v4, v0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    if-eqz v4, :cond_31

    check-cast v0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    goto :goto_16

    :cond_31
    move-object v0, v15

    :goto_16
    iput-object v0, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->b:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 115
    sget-object v0, Lpf/k;->a:Lpf/k;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, v4, v15}, Lpf/k;->m(Lpf/k;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_32

    .line 117
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    goto :goto_18

    .line 118
    :cond_32
    iget-object v4, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->a:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->isAuto()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 119
    iget-object v4, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->a:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    goto :goto_18

    .line 120
    :cond_33
    move-object v4, v0

    check-cast v4, Ljava/lang/Iterable;

    .line 121
    instance-of v5, v4, Ljava/util/Collection;

    if-eqz v5, :cond_34

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_34

    goto :goto_17

    .line 122
    :cond_34
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_35
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 123
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    move-result v5

    iget-object v6, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->a:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    move-result v6

    if-ne v5, v6, :cond_35

    .line 124
    iget-object v4, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->a:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    goto :goto_18

    .line 125
    :cond_36
    :goto_17
    sget-object v4, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->Companion:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;

    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;->getPLAY_RESOLUTION_AUTO()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    move-result-object v4

    .line 126
    :goto_18
    sget-object v5, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "playEpisode -> currentSelectedResolution("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->a:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ") playableResolution("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v8, 0x29

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iput-object v4, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->a:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 128
    sget-object v5, Laa/a;->a:Laa/a;

    invoke-virtual {v5}, Laa/a;->d()Ljava/lang/ref/WeakReference;

    move-result-object v5

    if-eqz v5, :cond_39

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hades/aar/activity/IDActivity;

    if-eqz v5, :cond_39

    .line 129
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->isAuto()Z

    move-result v6

    if-eqz v6, :cond_37

    .line 130
    sget-object v6, Lpf/k;->a:Lpf/k;

    invoke-virtual {v6, v0}, Lpf/k;->j(Ljava/util/List;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    move-result-object v0

    if-nez v0, :cond_38

    :cond_37
    move-object v0, v4

    .line 131
    :cond_38
    invoke-virtual {v0, v5}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    invoke-direct {v7, v5, v0}, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->t(ILjava/lang/String;)V

    goto :goto_19

    :cond_39
    const/4 v5, 0x1

    .line 132
    :goto_19
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->isAuto()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 133
    iput-boolean v5, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->e:Z

    .line 134
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    move-result-object v1

    .line 135
    invoke-virtual {v1, v13, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v1, v11, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x70

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v14, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1, v10, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    const/16 v24, 0x4

    const/16 v25, 0x0

    .line 140
    const-string v20, "clarity"

    const-wide/16 v22, 0x0

    move-object/from16 v19, v0

    move-object/from16 v21, v1

    invoke-static/range {v19 .. v25}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    goto :goto_1a

    :pswitch_9
    const/4 v1, 0x0

    .line 141
    iput-boolean v1, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->i:Z

    .line 142
    iput-object v15, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->j:Ljava/lang/Integer;

    .line 143
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->b()Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;

    move-result-object v0

    sget-object v1, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;->SWITCH_EPISODE:Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;

    if-ne v0, v1, :cond_3a

    .line 144
    iget-object v0, v7, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->h:Lcom/startshorts/androidplayer/manager/immersion/feature/n$b;

    if-eqz v0, :cond_3a

    invoke-interface {v0}, Lcom/startshorts/androidplayer/manager/immersion/feature/n$b;->b()V

    :cond_3a
    :goto_1a
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public j(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/manager/immersion/feature/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$a;->b(Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature;Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public k(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/manager/immersion/feature/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$a;->c(Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature;Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final l()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->a:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->b:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->d:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public o(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/manager/immersion/feature/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$a;->d(Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature;Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public p(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/ss/ttvideoengine/Resolution;
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/manager/immersion/feature/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$a;->e(Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature;Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/ss/ttvideoengine/Resolution;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public type()Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;->PLAY_RESOLUTION:Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final v(Lcom/startshorts/androidplayer/manager/immersion/feature/n$b;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/manager/immersion/feature/n$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->h:Lcom/startshorts/androidplayer/manager/immersion/feature/n$b;

    .line 2
    .line 3
    return-void
.end method
