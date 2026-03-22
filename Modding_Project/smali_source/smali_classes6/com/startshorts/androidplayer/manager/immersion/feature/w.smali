.class public final Lcom/startshorts/androidplayer/manager/immersion/feature/w;
.super Ljava/lang/Object;
.source "UnlockEpisodeFeature.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/immersion/feature/w$a;,
        Lcom/startshorts/androidplayer/manager/immersion/feature/w$b;,
        Lcom/startshorts/androidplayer/manager/immersion/feature/w$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nUnlockEpisodeFeature.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnlockEpisodeFeature.kt\ncom/startshorts/androidplayer/manager/immersion/feature/UnlockEpisodeFeature\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,181:1\n1#2:182\n*E\n"
    }
.end annotation


# static fields
.field public static final e:Lcom/startshorts/androidplayer/manager/immersion/feature/w$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:Lcom/startshorts/androidplayer/manager/immersion/feature/w$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/immersion/feature/w$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/immersion/feature/w$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/immersion/feature/w;->e:Lcom/startshorts/androidplayer/manager/immersion/feature/w$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Lcom/startshorts/androidplayer/manager/immersion/feature/w;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/immersion/feature/w;->g(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Lcom/startshorts/androidplayer/manager/immersion/feature/w;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lcom/startshorts/androidplayer/manager/immersion/feature/w;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/manager/immersion/feature/w;->f(Lcom/startshorts/androidplayer/manager/immersion/feature/w;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lcom/startshorts/androidplayer/manager/immersion/feature/w;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/w;->h(Lcom/startshorts/androidplayer/manager/immersion/feature/w;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final f(Lcom/startshorts/androidplayer/manager/immersion/feature/w;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "scene"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "config"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/w;->b:Lcom/startshorts/androidplayer/manager/immersion/feature/w$b;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/manager/immersion/feature/w$b;->d(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;)V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return-object p0
.end method

.method private static final g(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Lcom/startshorts/androidplayer/manager/immersion/feature/w;)Lkotlin/Unit;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isIaaUserEpisode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string/jumbo v0, "unlock_select_iaa"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object p0, p2, Lcom/startshorts/androidplayer/manager/immersion/feature/w;->b:Lcom/startshorts/androidplayer/manager/immersion/feature/w$b;

    .line 18
    .line 19
    if-eqz p0, :cond_2

    .line 20
    .line 21
    invoke-interface {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/w$b;->f()V

    .line 22
    .line 23
    .line 24
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/manager/immersion/feature/w;->e:Lcom/startshorts/androidplayer/manager/immersion/feature/w$a;

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isUnlockByOnlyCoins()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/manager/immersion/feature/w$a;->a(ZZ)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget-object p2, p2, Lcom/startshorts/androidplayer/manager/immersion/feature/w;->b:Lcom/startshorts/androidplayer/manager/immersion/feature/w$b;

    .line 41
    .line 42
    if-eqz p2, :cond_2

    .line 43
    .line 44
    invoke-interface {p2, p1, p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/w$b;->i(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 45
    .line 46
    .line 47
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object p2, p2, Lcom/startshorts/androidplayer/manager/immersion/feature/w;->b:Lcom/startshorts/androidplayer/manager/immersion/feature/w$b;

    .line 51
    .line 52
    if-eqz p2, :cond_2

    .line 53
    .line 54
    invoke-interface {p2, p1, p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/w$b;->c(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 55
    .line 56
    .line 57
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 58
    .line 59
    :cond_2
    :goto_0
    return-object v1
.end method

.method private static final h(Lcom/startshorts/androidplayer/manager/immersion/feature/w;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/w;->c:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isLocked()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/w;->b:Lcom/startshorts/androidplayer/manager/immersion/feature/w$b;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/w$b;->b()V

    .line 16
    .line 17
    .line 18
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method


# virtual methods
.method public a(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/manager/immersion/feature/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->b()Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/startshorts/androidplayer/manager/immersion/feature/w$c;->$EnumSwitchMapping$0:[I

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    aget v0, v1, v0

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    if-eq v0, v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/w;->i(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/w;->c:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0, p0}, Lau/c;->p(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/w;->j(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/w;->a:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;

    .line 44
    .line 45
    :goto_0
    return-void
.end method

.method public final e(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;)V
    .locals 21
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "action"

    .line 8
    .line 9
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "episode"

    .line 13
    .line 14
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object v3, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->a:Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;

    .line 18
    .line 19
    new-instance v4, Lhf/g0;

    .line 20
    .line 21
    invoke-direct {v4, v0, v1, v2}, Lhf/g0;-><init>(Lcom/startshorts/androidplayer/manager/immersion/feature/w;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 22
    .line 23
    .line 24
    new-instance v5, Lhf/h0;

    .line 25
    .line 26
    invoke-direct {v5, v2, v1, v0}, Lhf/h0;-><init>(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Lcom/startshorts/androidplayer/manager/immersion/feature/w;)V

    .line 27
    .line 28
    .line 29
    move-object/from16 v1, p3

    .line 30
    .line 31
    invoke-virtual {v3, v1, v4, v5}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->e(Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V

    .line 32
    .line 33
    .line 34
    sget-object v6, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 35
    .line 36
    invoke-virtual {v6, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    const-string/jumbo v1, "status"

    .line 41
    .line 42
    .line 43
    const-string v2, "fail"

    .line 44
    .line 45
    invoke-virtual {v8, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v1, "scene"

    .line 49
    .line 50
    const-string v2, "immersion"

    .line 51
    .line 52
    invoke-virtual {v8, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string/jumbo v1, "type"

    .line 56
    .line 57
    .line 58
    const-string v2, "insufficient_coins"

    .line 59
    .line 60
    invoke-virtual {v8, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 64
    .line 65
    const/4 v11, 0x4

    .line 66
    const/4 v12, 0x0

    .line 67
    const-string v7, "reel_request"

    .line 68
    .line 69
    const-wide/16 v9, 0x0

    .line 70
    .line 71
    invoke-static/range {v6 .. v12}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    iget-object v13, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/w;->a:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;

    .line 75
    .line 76
    if-eqz v13, :cond_0

    .line 77
    .line 78
    sget-object v14, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;->CHECK_UNLOCK_EPISODE_DIALOG_HIDE:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 79
    .line 80
    new-instance v1, Lhf/i0;

    .line 81
    .line 82
    invoke-direct {v1, v0}, Lhf/i0;-><init>(Lcom/startshorts/androidplayer/manager/immersion/feature/w;)V

    .line 83
    .line 84
    .line 85
    const/16 v19, 0x4

    .line 86
    .line 87
    const/16 v20, 0x0

    .line 88
    .line 89
    const-wide/16 v15, 0xc8

    .line 90
    .line 91
    const/16 v17, 0x0

    .line 92
    .line 93
    move-object/from16 v18, v1

    .line 94
    .line 95
    invoke-static/range {v13 .. v20}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;->e(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    :cond_0
    return-void
.end method

.method public i(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
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

.method public j(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;
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

.method public final k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/w;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final l(Lcom/startshorts/androidplayer/manager/immersion/feature/w$b;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/manager/immersion/feature/w$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/w;->b:Lcom/startshorts/androidplayer/manager/immersion/feature/w$b;

    .line 2
    .line 3
    return-void
.end method

.method public final receiveEpisodeListUnlockedEvent(Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;)V
    .locals 4
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "receive EpisodeListUnlockedEvent -> unlockType("

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->getUnlockType()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, ") userRecharged("

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->getUserRecharged()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const/16 v2, 0x29

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-string v2, "UnlockEpisodeFeature"

    .line 47
    .line 48
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/w;->c:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 52
    .line 53
    if-nez v0, :cond_0

    .line 54
    .line 55
    return-void

    .line 56
    :cond_0
    iget v1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/w;->d:I

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->getList()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const/4 v2, 0x0

    .line 70
    :goto_0
    add-int/2addr v1, v2

    .line 71
    iput v1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/w;->d:I

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->getUnlockType()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    const/4 v2, 0x3

    .line 78
    if-ne v1, v2, :cond_2

    .line 79
    .line 80
    sget-object v1, Lcom/startshorts/androidplayer/manager/configure/ad/c;->a:Lcom/startshorts/androidplayer/manager/configure/ad/c;

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->f()V

    .line 83
    .line 84
    .line 85
    :cond_2
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->getList()Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    if-eqz v1, :cond_3

    .line 90
    .line 91
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/w;->b:Lcom/startshorts/androidplayer/manager/immersion/feature/w$b;

    .line 92
    .line 93
    if-eqz v3, :cond_3

    .line 94
    .line 95
    invoke-interface {v3, v1}, Lcom/startshorts/androidplayer/manager/immersion/feature/w$b;->j(Ljava/util/List;)V

    .line 96
    .line 97
    .line 98
    :cond_3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->getUnlockType()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-ne v1, v2, :cond_4

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->getNextDrama()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    if-eqz v1, :cond_4

    .line 109
    .line 110
    sget-object v1, Lcom/startshorts/androidplayer/manager/immersion/feature/w;->e:Lcom/startshorts/androidplayer/manager/immersion/feature/w$a;

    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->getCanWatchAd()Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->getNextDrama()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isUnlockByOnlyCoins()Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    invoke-virtual {v1, v2, v3}, Lcom/startshorts/androidplayer/manager/immersion/feature/w$a;->a(ZZ)Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_4

    .line 129
    .line 130
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/w;->b:Lcom/startshorts/androidplayer/manager/immersion/feature/w$b;

    .line 131
    .line 132
    if-eqz v1, :cond_5

    .line 133
    .line 134
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    invoke-interface {v1, v0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/w$b;->a(ILcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;)V

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_4
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/w;->b:Lcom/startshorts/androidplayer/manager/immersion/feature/w$b;

    .line 143
    .line 144
    if-eqz v0, :cond_5

    .line 145
    .line 146
    invoke-interface {v0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/w$b;->k(Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;)V

    .line 147
    .line 148
    .line 149
    :cond_5
    :goto_1
    return-void
.end method

.method public final receiveShowUnlockEpisodeMethodsEvent(Lcom/startshorts/androidplayer/bean/eventbus/ShowUnlockEpisodeMethodsEvent;)V
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/ShowUnlockEpisodeMethodsEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "receive ShowUnlockEpisodeMethodsEvent -> episodeId("

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/ShowUnlockEpisodeMethodsEvent;->getEpisode()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, ") episodeNum("

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/ShowUnlockEpisodeMethodsEvent;->getEpisode()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v2, ") action("

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/ShowUnlockEpisodeMethodsEvent;->getAction()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const/16 v2, 0x29

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string v2, "UnlockEpisodeFeature"

    .line 67
    .line 68
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/w;->c:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 72
    .line 73
    if-nez v0, :cond_0

    .line 74
    .line 75
    return-void

    .line 76
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/ShowUnlockEpisodeMethodsEvent;->getEpisode()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eq v1, v2, :cond_1

    .line 89
    .line 90
    return-void

    .line 91
    :cond_1
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isLocked()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_2

    .line 96
    .line 97
    return-void

    .line 98
    :cond_2
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/ShowUnlockEpisodeMethodsEvent;->getAction()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-nez v0, :cond_3

    .line 107
    .line 108
    const-string p1, "other"

    .line 109
    .line 110
    :cond_3
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/c;->a:Lcom/startshorts/androidplayer/manager/configure/ad/c;

    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->j()Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_5

    .line 117
    .line 118
    sget-object v0, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 119
    .line 120
    const-string/jumbo v1, "watch_continuous"

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->K(Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_5

    .line 128
    .line 129
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;->l()Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure$a;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    sget-object v1, Lcom/startshorts/androidplayer/bean/ad/AdScene;->NATIVE:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure$a;->b(Lcom/startshorts/androidplayer/bean/ad/AdScene;)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_4

    .line 142
    .line 143
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/a;->a:Lcom/startshorts/androidplayer/manager/configure/ad/a;

    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/a;->h()Lcom/startshorts/androidplayer/manager/configure/ad/a$a;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    const-string v1, "immersion_full_screen_native"

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->p(Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_4

    .line 156
    .line 157
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/w;->b:Lcom/startshorts/androidplayer/manager/immersion/feature/w$b;

    .line 158
    .line 159
    if-eqz v0, :cond_6

    .line 160
    .line 161
    invoke-interface {v0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/w$b;->g(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_4
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/w;->b:Lcom/startshorts/androidplayer/manager/immersion/feature/w$b;

    .line 166
    .line 167
    if-eqz v0, :cond_6

    .line 168
    .line 169
    invoke-interface {v0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/w$b;->e(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_5
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/w;->b:Lcom/startshorts/androidplayer/manager/immersion/feature/w$b;

    .line 174
    .line 175
    if-eqz v0, :cond_6

    .line 176
    .line 177
    invoke-interface {v0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/w$b;->h(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    :cond_6
    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lau/c;->r(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public type()Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;->UNLOCK_EPISODE:Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;

    .line 2
    .line 3
    return-object v0
.end method
