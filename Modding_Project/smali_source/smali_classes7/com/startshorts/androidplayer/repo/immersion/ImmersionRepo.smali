.class public final Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;
.super Ljava/lang/Object;
.source "ImmersionRepo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nImmersionRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionRepo.kt\ncom/startshorts/androidplayer/repo/immersion/ImmersionRepo\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,278:1\n1863#2,2:279\n1863#2,2:281\n1010#2,2:283\n1010#2,2:285\n*S KotlinDebug\n*F\n+ 1 ImmersionRepo.kt\ncom/startshorts/androidplayer/repo/immersion/ImmersionRepo\n*L\n121#1:279,2\n124#1:281,2\n132#1:283,2\n135#1:285,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;

    .line 7
    .line 8
    new-instance v0, Lxg/k;

    .line 9
    .line 10
    invoke-direct {v0}, Lxg/k;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->b:Lms/i;

    .line 18
    .line 19
    new-instance v0, Lxg/l;

    .line 20
    .line 21
    invoke-direct {v0}, Lxg/l;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->c:Lms/i;

    .line 29
    .line 30
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a()Lcom/startshorts/androidplayer/repo/immersion/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->n()Lcom/startshorts/androidplayer/repo/immersion/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b()Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->o()Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic c(Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;)Lcom/startshorts/androidplayer/repo/immersion/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->k()Lcom/startshorts/androidplayer/repo/immersion/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;)Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->l()Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final g()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->N0()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->getAbTestKey()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private final k()Lcom/startshorts/androidplayer/repo/immersion/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->c:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/repo/immersion/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final l()Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final n()Lcom/startshorts/androidplayer/repo/immersion/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/repo/immersion/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/repo/immersion/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final o()Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final A(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->k()Lcom/startshorts/androidplayer/repo/immersion/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/repo/immersion/a;->l(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->k()Lcom/startshorts/androidplayer/repo/immersion/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/immersion/a;->c()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final f()V
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$fetchImmersionBackShortsTitle$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, v1}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$fetchImmersionBackShortsTitle$1;-><init>(Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "queryImmersionBackShortsTitle"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final h()Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->k()Lcom/startshorts/androidplayer/repo/immersion/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/immersion/a;->d()Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackConfig;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->k()Lcom/startshorts/androidplayer/repo/immersion/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/immersion/a;->e()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->k()Lcom/startshorts/androidplayer/repo/immersion/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/immersion/a;->f()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final m(I)Lcom/startshorts/androidplayer/bean/shorts/ShortsDetail;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->k()Lcom/startshorts/androidplayer/repo/immersion/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/repo/immersion/a;->h(I)Lcom/startshorts/androidplayer/bean/shorts/ShortsDetail;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final p()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->k()Lcom/startshorts/androidplayer/repo/immersion/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/immersion/a;->g()Lcom/startshorts/androidplayer/repo/immersion/a$b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/immersion/a$b;->b()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/immersion/a$b;->f()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/immersion/a$b;->a()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/immersion/a$b;->c()V

    .line 26
    .line 27
    .line 28
    sget-object v2, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 29
    .line 30
    new-instance v5, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$onPlayInImmersionPage$1$1;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-direct {v5, v0, v1}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$onPlayInImmersionPage$1$1;-><init>(Lcom/startshorts/androidplayer/repo/immersion/a$b;Lrs/c;)V

    .line 34
    .line 35
    .line 36
    const/4 v6, 0x2

    .line 37
    const/4 v7, 0x0

    .line 38
    const-string v3, "notifyThirdPartyPayEnable(1)"

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public final q(IILrs/c;)Ljava/lang/Object;
    .locals 6
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p3, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryEpisodeIdByEpisodeNum$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryEpisodeIdByEpisodeNum$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryEpisodeIdByEpisodeNum$1;->l:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryEpisodeIdByEpisodeNum$1;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryEpisodeIdByEpisodeNum$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryEpisodeIdByEpisodeNum$1;-><init>(Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryEpisodeIdByEpisodeNum$1;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryEpisodeIdByEpisodeNum$1;->l:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget p2, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryEpisodeIdByEpisodeNum$1;->h:I

    .line 39
    .line 40
    iget-object p1, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryEpisodeIdByEpisodeNum$1;->i:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    check-cast p3, Lkotlin/Result;

    .line 48
    .line 49
    invoke-virtual {p3}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_2
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    new-instance p3, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const/16 v2, 0x5f

    .line 74
    .line 75
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    sget-object v2, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;

    .line 86
    .line 87
    invoke-virtual {v2, p3}, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->k(Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    const/4 v4, -0x1

    .line 92
    if-eq v2, v4, :cond_3

    .line 93
    .line 94
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 95
    .line 96
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    return-object p1

    .line 105
    :cond_3
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->l()Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    filled-new-array {v4}, [Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-static {v4}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    iput-object p3, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryEpisodeIdByEpisodeNum$1;->i:Ljava/lang/Object;

    .line 122
    .line 123
    iput p2, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryEpisodeIdByEpisodeNum$1;->h:I

    .line 124
    .line 125
    iput v3, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryEpisodeIdByEpisodeNum$1;->l:I

    .line 126
    .line 127
    invoke-virtual {v2, p1, v4, v0}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;->a(ILjava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    if-ne p1, v1, :cond_4

    .line 132
    .line 133
    return-object v1

    .line 134
    :cond_4
    move-object v5, p3

    .line 135
    move-object p3, p1

    .line 136
    move-object p1, v5

    .line 137
    :goto_1
    invoke-static {p3}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_9

    .line 142
    .line 143
    check-cast p3, Ljava/util/List;

    .line 144
    .line 145
    const/4 v0, 0x0

    .line 146
    if-eqz p3, :cond_7

    .line 147
    .line 148
    check-cast p3, Ljava/lang/Iterable;

    .line 149
    .line 150
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 151
    .line 152
    .line 153
    move-result-object p3

    .line 154
    :cond_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-eqz v1, :cond_6

    .line 159
    .line 160
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    move-object v2, v1

    .line 165
    check-cast v2, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodeIdResult;

    .line 166
    .line 167
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodeIdResult;->getEpisodeNum()I

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    if-ne v2, p2, :cond_5

    .line 172
    .line 173
    move-object v0, v1

    .line 174
    :cond_6
    check-cast v0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodeIdResult;

    .line 175
    .line 176
    :cond_7
    if-eqz v0, :cond_8

    .line 177
    .line 178
    sget-object p2, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;

    .line 179
    .line 180
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodeIdResult;->getDramId()I

    .line 181
    .line 182
    .line 183
    move-result p3

    .line 184
    invoke-virtual {p2, p1, p3}, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->y(Ljava/lang/String;I)V

    .line 185
    .line 186
    .line 187
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 188
    .line 189
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodeIdResult;->getDramId()I

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    goto :goto_2

    .line 202
    :cond_8
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 203
    .line 204
    new-instance p1, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 205
    .line 206
    sget-object p2, Lfk/u;->a:Lfk/u;

    .line 207
    .line 208
    sget p3, Lcom/startshorts/androidplayer/R$string;->common_drama_not_available:I

    .line 209
    .line 210
    invoke-virtual {p2, p3}, Lfk/u;->d(I)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    const/16 p3, 0x4e2c

    .line 215
    .line 216
    invoke-direct {p1, p3, p2}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;-><init>(ILjava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    :goto_2
    return-object p1

    .line 228
    :cond_9
    invoke-static {p3}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    if-eqz p1, :cond_a

    .line 233
    .line 234
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    return-object p1

    .line 243
    :cond_a
    new-instance p1, Ljava/lang/Throwable;

    .line 244
    .line 245
    sget-object p2, Lfk/u;->a:Lfk/u;

    .line 246
    .line 247
    sget p3, Lcom/startshorts/androidplayer/R$string;->common_unknown_exception:I

    .line 248
    .line 249
    invoke-virtual {p2, p3}, Lfk/u;->d(I)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p2

    .line 253
    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    return-object p1
.end method

.method public final r(ILrs/c;)Ljava/lang/Object;
    .locals 4
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodeIdResult2;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryEpisodeIdByShortsId$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryEpisodeIdByShortsId$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryEpisodeIdByShortsId$1;->j:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryEpisodeIdByShortsId$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryEpisodeIdByShortsId$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryEpisodeIdByShortsId$1;-><init>(Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryEpisodeIdByShortsId$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryEpisodeIdByShortsId$1;->j:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast p2, Lkotlin/Result;

    .line 42
    .line 43
    invoke-virtual {p2}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->l()Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    iput v3, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryEpisodeIdByShortsId$1;->j:I

    .line 64
    .line 65
    invoke-virtual {p2, p1, v0}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;->b(ILrs/c;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-ne p1, v1, :cond_3

    .line 70
    .line 71
    return-object v1

    .line 72
    :cond_3
    :goto_1
    return-object p1
.end method

.method public final s(Landroid/content/Context;Ljava/lang/String;IIIIZLrs/c;)Ljava/lang/Object;
    .locals 13
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "IIIIZ",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p8

    .line 2
    .line 3
    instance-of v1, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryEpisodes$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryEpisodes$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryEpisodes$1;->j:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryEpisodes$1;->j:I

    .line 20
    .line 21
    move-object v2, p0

    .line 22
    :goto_0
    move-object v11, v1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    new-instance v1, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryEpisodes$1;

    .line 25
    .line 26
    move-object v2, p0

    .line 27
    invoke-direct {v1, p0, v0}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryEpisodes$1;-><init>(Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;Lrs/c;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :goto_1
    iget-object v0, v11, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryEpisodes$1;->h:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget v3, v11, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryEpisodes$1;->j:I

    .line 38
    .line 39
    const/4 v12, 0x1

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    if-ne v3, v12, :cond_1

    .line 43
    .line 44
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    check-cast v0, Lkotlin/Result;

    .line 48
    .line 49
    invoke-virtual {v0}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    goto :goto_2

    .line 54
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v0

    .line 62
    :cond_2
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->l()Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    iput v12, v11, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryEpisodes$1;->j:I

    .line 70
    .line 71
    move-object v4, p1

    .line 72
    move-object v5, p2

    .line 73
    move/from16 v6, p3

    .line 74
    .line 75
    move/from16 v7, p4

    .line 76
    .line 77
    move/from16 v8, p5

    .line 78
    .line 79
    move/from16 v9, p6

    .line 80
    .line 81
    move/from16 v10, p7

    .line 82
    .line 83
    invoke-virtual/range {v3 .. v11}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;->c(Landroid/content/Context;Ljava/lang/String;IIIIZLrs/c;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-ne v0, v1, :cond_3

    .line 88
    .line 89
    return-object v1

    .line 90
    :cond_3
    :goto_2
    invoke-static {v0}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_a

    .line 95
    .line 96
    move-object v1, v0

    .line 97
    check-cast v1, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;

    .line 98
    .line 99
    if-eqz v1, :cond_4

    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->getShortPlayContentRatingResponse()Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    goto :goto_3

    .line 106
    :cond_4
    const/4 v3, 0x0

    .line 107
    :goto_3
    if-eqz v3, :cond_7

    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->getCurrentEpisodesReponse()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    if-eqz v3, :cond_5

    .line 114
    .line 115
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->getShortPlayContentRatingResponse()Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->setShortPlayContentRatingResponse(Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;)V

    .line 120
    .line 121
    .line 122
    :cond_5
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->getPreviousEpisodesReponse()Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    if-eqz v3, :cond_6

    .line 127
    .line 128
    check-cast v3, Ljava/lang/Iterable;

    .line 129
    .line 130
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    if-eqz v4, :cond_6

    .line 139
    .line 140
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    check-cast v4, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 145
    .line 146
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->getShortPlayContentRatingResponse()Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->setShortPlayContentRatingResponse(Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;)V

    .line 151
    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_6
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->getNextEpisodesReponse()Ljava/util/List;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    if-eqz v3, :cond_7

    .line 159
    .line 160
    check-cast v3, Ljava/lang/Iterable;

    .line 161
    .line 162
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    if-eqz v4, :cond_7

    .line 171
    .line 172
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    check-cast v4, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 177
    .line 178
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->getShortPlayContentRatingResponse()Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->setShortPlayContentRatingResponse(Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;)V

    .line 183
    .line 184
    .line 185
    goto :goto_5

    .line 186
    :cond_7
    if-eqz v1, :cond_8

    .line 187
    .line 188
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->getCurrentEpisodesReponse()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    if-eqz v3, :cond_8

    .line 193
    .line 194
    sget-object v4, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;

    .line 195
    .line 196
    invoke-virtual {v4, v3}, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->f(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 197
    .line 198
    .line 199
    :cond_8
    if-eqz v1, :cond_9

    .line 200
    .line 201
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->getPreviousEpisodesReponse()Ljava/util/List;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    if-eqz v3, :cond_9

    .line 206
    .line 207
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 208
    .line 209
    .line 210
    move-result v4

    .line 211
    if-le v4, v12, :cond_9

    .line 212
    .line 213
    new-instance v4, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$a;

    .line 214
    .line 215
    invoke-direct {v4}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$a;-><init>()V

    .line 216
    .line 217
    .line 218
    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->D(Ljava/util/List;Ljava/util/Comparator;)V

    .line 219
    .line 220
    .line 221
    :cond_9
    if-eqz v1, :cond_a

    .line 222
    .line 223
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->getNextEpisodesReponse()Ljava/util/List;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    if-eqz v1, :cond_a

    .line 228
    .line 229
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    if-le v3, v12, :cond_a

    .line 234
    .line 235
    new-instance v3, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$b;

    .line 236
    .line 237
    invoke-direct {v3}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$b;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->D(Ljava/util/List;Ljava/util/Comparator;)V

    .line 241
    .line 242
    .line 243
    :cond_a
    return-object v0
.end method

.method public final t(Landroid/content/Context;Ljava/lang/String;ZLrs/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/shorts/QueryFirstEpisodesResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p4, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryFirstEpisode$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryFirstEpisode$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryFirstEpisode$1;->j:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryFirstEpisode$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryFirstEpisode$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryFirstEpisode$1;-><init>(Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryFirstEpisode$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryFirstEpisode$1;->j:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast p4, Lkotlin/Result;

    .line 42
    .line 43
    invoke-virtual {p4}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->l()Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;

    .line 60
    .line 61
    .line 62
    move-result-object p4

    .line 63
    iput v3, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryFirstEpisode$1;->j:I

    .line 64
    .line 65
    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;->d(Landroid/content/Context;Ljava/lang/String;ZLrs/c;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-ne p1, v1, :cond_3

    .line 70
    .line 71
    return-object v1

    .line 72
    :cond_3
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-eqz p2, :cond_6

    .line 77
    .line 78
    move-object p2, p1

    .line 79
    check-cast p2, Lcom/startshorts/androidplayer/bean/shorts/QueryFirstEpisodesResult;

    .line 80
    .line 81
    if-eqz p2, :cond_4

    .line 82
    .line 83
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/QueryFirstEpisodesResult;->getShortPlayContentRatingResponse()Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    goto :goto_2

    .line 88
    :cond_4
    const/4 p3, 0x0

    .line 89
    :goto_2
    if-eqz p3, :cond_5

    .line 90
    .line 91
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/QueryFirstEpisodesResult;->getCurrentEpisodesResponse()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    if-eqz p3, :cond_5

    .line 96
    .line 97
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/QueryFirstEpisodesResult;->getShortPlayContentRatingResponse()Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;

    .line 98
    .line 99
    .line 100
    move-result-object p4

    .line 101
    invoke-virtual {p3, p4}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->setShortPlayContentRatingResponse(Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;)V

    .line 102
    .line 103
    .line 104
    :cond_5
    if-eqz p2, :cond_6

    .line 105
    .line 106
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/QueryFirstEpisodesResult;->getCurrentEpisodesResponse()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    if-eqz p2, :cond_6

    .line 111
    .line 112
    sget-object p3, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;

    .line 113
    .line 114
    invoke-virtual {p3, p2}, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->f(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 115
    .line 116
    .line 117
    :cond_6
    return-object p1
.end method

.method public final u(ILrs/c;)Ljava/lang/Object;
    .locals 4
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryImmersionBackShorts$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryImmersionBackShorts$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryImmersionBackShorts$1;->j:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryImmersionBackShorts$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryImmersionBackShorts$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryImmersionBackShorts$1;-><init>(Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryImmersionBackShorts$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryImmersionBackShorts$1;->j:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast p2, Lkotlin/Result;

    .line 42
    .line 43
    invoke-virtual {p2}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->l()Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    iput v3, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryImmersionBackShorts$1;->j:I

    .line 64
    .line 65
    invoke-virtual {p2, p1, v0}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;->f(ILrs/c;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-ne p1, v1, :cond_3

    .line 70
    .line 71
    return-object v1

    .line 72
    :cond_3
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-eqz p2, :cond_4

    .line 77
    .line 78
    move-object p2, p1

    .line 79
    check-cast p2, Ljava/util/List;

    .line 80
    .line 81
    sget-object v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;

    .line 82
    .line 83
    invoke-virtual {v0, p2}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->A(Ljava/util/List;)V

    .line 84
    .line 85
    .line 86
    :cond_4
    return-object p1
.end method

.method public final v(ILrs/c;)Ljava/lang/Object;
    .locals 10
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryNextEpisode$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryNextEpisode$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryNextEpisode$1;->l:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryNextEpisode$1;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryNextEpisode$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryNextEpisode$1;-><init>(Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryNextEpisode$1;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryNextEpisode$1;->l:I

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v2, :cond_4

    .line 37
    .line 38
    if-eq v2, v5, :cond_3

    .line 39
    .line 40
    if-eq v2, v4, :cond_2

    .line 41
    .line 42
    if-ne v2, v3, :cond_1

    .line 43
    .line 44
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    check-cast p2, Lkotlin/Result;

    .line 48
    .line 49
    invoke-virtual {p2}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    goto/16 :goto_4

    .line 54
    .line 55
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    check-cast p2, Lkotlin/Result;

    .line 67
    .line 68
    invoke-virtual {p2}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    goto/16 :goto_3

    .line 73
    .line 74
    :cond_3
    iget p1, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryNextEpisode$1;->i:I

    .line 75
    .line 76
    iget-object v2, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryNextEpisode$1;->h:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v2, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;

    .line 79
    .line 80
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    check-cast p2, Lkotlin/Result;

    .line 84
    .line 85
    invoke-virtual {p2}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    goto :goto_1

    .line 90
    :cond_4
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->l()Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    iput-object p0, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryNextEpisode$1;->h:Ljava/lang/Object;

    .line 98
    .line 99
    iput p1, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryNextEpisode$1;->i:I

    .line 100
    .line 101
    iput v5, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryNextEpisode$1;->l:I

    .line 102
    .line 103
    invoke-virtual {p2, p1, v0}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;->g(ILrs/c;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    if-ne p2, v1, :cond_5

    .line 108
    .line 109
    return-object v1

    .line 110
    :cond_5
    move-object v2, p0

    .line 111
    :goto_1
    invoke-static {p2}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    const/4 v6, 0x0

    .line 116
    if-eqz v5, :cond_6

    .line 117
    .line 118
    move-object v5, v6

    .line 119
    goto :goto_2

    .line 120
    :cond_6
    move-object v5, p2

    .line 121
    :goto_2
    check-cast v5, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 122
    .line 123
    if-nez v5, :cond_7

    .line 124
    .line 125
    return-object p2

    .line 126
    :cond_7
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    const/16 v8, 0x29

    .line 131
    .line 132
    const-string v9, "ImmersionRepo"

    .line 133
    .line 134
    if-eqz v7, :cond_a

    .line 135
    .line 136
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getFirstDramId()I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    const/4 v7, -0x1

    .line 141
    if-eq v3, v7, :cond_8

    .line 142
    .line 143
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getBindShortPlayId()I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-lez v3, :cond_8

    .line 148
    .line 149
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getBindShortPlayId()I

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    if-eq v3, p1, :cond_8

    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_8
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 157
    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    const-string v7, "queryNextEpisode duplicated -> isTrailer(true) shortsId("

    .line 164
    .line 165
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 169
    .line 170
    .line 171
    move-result v7

    .line 172
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v7, ") bindShortsId("

    .line 176
    .line 177
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getBindShortPlayId()I

    .line 181
    .line 182
    .line 183
    move-result v5

    .line 184
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-virtual {p2, v9, v3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-direct {v2}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->l()Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    iput-object v6, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryNextEpisode$1;->h:Ljava/lang/Object;

    .line 202
    .line 203
    iput v4, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryNextEpisode$1;->l:I

    .line 204
    .line 205
    invoke-virtual {p2, p1, v0}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;->g(ILrs/c;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    if-ne p1, v1, :cond_9

    .line 210
    .line 211
    return-object v1

    .line 212
    :cond_9
    :goto_3
    return-object p1

    .line 213
    :cond_a
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    if-ne v4, p1, :cond_c

    .line 218
    .line 219
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 220
    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .line 225
    .line 226
    const-string v5, "queryNextEpisode duplicated -> isTrailer(false) shortsId("

    .line 227
    .line 228
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    invoke-virtual {p2, v9, v4}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-direct {v2}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->l()Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;

    .line 245
    .line 246
    .line 247
    move-result-object p2

    .line 248
    iput-object v6, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryNextEpisode$1;->h:Ljava/lang/Object;

    .line 249
    .line 250
    iput v3, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryNextEpisode$1;->l:I

    .line 251
    .line 252
    invoke-virtual {p2, p1, v0}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;->g(ILrs/c;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    if-ne p1, v1, :cond_b

    .line 257
    .line 258
    return-object v1

    .line 259
    :cond_b
    :goto_4
    return-object p1

    .line 260
    :cond_c
    :goto_5
    return-object p2
.end method

.method public final w(ILrs/c;)Ljava/lang/Object;
    .locals 4
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodeIdResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryNextEpisodeId$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryNextEpisodeId$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryNextEpisodeId$1;->k:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryNextEpisodeId$1;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryNextEpisodeId$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryNextEpisodeId$1;-><init>(Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryNextEpisodeId$1;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryNextEpisodeId$1;->k:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget p1, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryNextEpisodeId$1;->h:I

    .line 39
    .line 40
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    check-cast p2, Lkotlin/Result;

    .line 44
    .line 45
    invoke-virtual {p2}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    sget-object p2, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;

    .line 62
    .line 63
    invoke-virtual {p2, p1}, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->n(I)I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    const/4 v2, -0x1

    .line 68
    if-eq p2, v2, :cond_3

    .line 69
    .line 70
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 71
    .line 72
    new-instance p1, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodeIdResult;

    .line 73
    .line 74
    invoke-direct {p1, v2, p2}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodeIdResult;-><init>(II)V

    .line 75
    .line 76
    .line 77
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    return-object p1

    .line 82
    :cond_3
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->l()Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    iput p1, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryNextEpisodeId$1;->h:I

    .line 87
    .line 88
    iput v3, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryNextEpisodeId$1;->k:I

    .line 89
    .line 90
    invoke-virtual {p2, p1, v0}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;->h(ILrs/c;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    if-ne p2, v1, :cond_4

    .line 95
    .line 96
    return-object v1

    .line 97
    :cond_4
    :goto_1
    invoke-static {p2}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_5

    .line 102
    .line 103
    move-object v0, p2

    .line 104
    check-cast v0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodeIdResult;

    .line 105
    .line 106
    if-eqz v0, :cond_5

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodeIdResult;->getDramId()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-lez v1, :cond_5

    .line 113
    .line 114
    sget-object v1, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodeIdResult;->getDramId()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    invoke-virtual {v1, p1, v0}, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->z(II)V

    .line 121
    .line 122
    .line 123
    :cond_5
    return-object p2
.end method

.method public final x(ILrs/c;)Ljava/lang/Object;
    .locals 5
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSkuResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryShortDiscount$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryShortDiscount$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryShortDiscount$1;->j:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryShortDiscount$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryShortDiscount$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryShortDiscount$1;-><init>(Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryShortDiscount$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryShortDiscount$1;->j:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast p2, Lkotlin/Result;

    .line 42
    .line 43
    invoke-virtual {p2}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->l()Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->g()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    sget-object v4, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->a:Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;

    .line 68
    .line 69
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->s()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    iput v3, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryShortDiscount$1;->j:I

    .line 74
    .line 75
    invoke-virtual {p2, p1, v2, v4, v0}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;->i(ILjava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-ne p1, v1, :cond_3

    .line 80
    .line 81
    return-object v1

    .line 82
    :cond_3
    :goto_1
    return-object p1
.end method

.method public final y(Ljava/lang/String;ILrs/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/shorts/ShortsDetail;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p3, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryShortsDetail$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryShortsDetail$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryShortsDetail$1;->k:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryShortsDetail$1;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryShortsDetail$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryShortsDetail$1;-><init>(Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryShortsDetail$1;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryShortsDetail$1;->k:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget p2, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryShortsDetail$1;->h:I

    .line 39
    .line 40
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    check-cast p3, Lkotlin/Result;

    .line 44
    .line 45
    invoke-virtual {p3}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_2
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->m(I)Lcom/startshorts/androidplayer/bean/shorts/ShortsDetail;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    if-eqz p3, :cond_3

    .line 66
    .line 67
    invoke-static {p3}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    return-object p1

    .line 72
    :cond_3
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->l()Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    iput p2, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryShortsDetail$1;->h:I

    .line 77
    .line 78
    iput v3, v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo$queryShortsDetail$1;->k:I

    .line 79
    .line 80
    invoke-virtual {p3, p1, p2, v0}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRemoteDS;->j(Ljava/lang/String;ILrs/c;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-ne p1, v1, :cond_4

    .line 85
    .line 86
    return-object v1

    .line 87
    :cond_4
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p3

    .line 91
    if-eqz p3, :cond_5

    .line 92
    .line 93
    move-object p3, p1

    .line 94
    check-cast p3, Lcom/startshorts/androidplayer/bean/shorts/ShortsDetail;

    .line 95
    .line 96
    if-eqz p3, :cond_5

    .line 97
    .line 98
    sget-object v0, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;

    .line 99
    .line 100
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, p2, v1}, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->A(ILjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    sget-object p2, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;

    .line 108
    .line 109
    invoke-direct {p2}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->k()Lcom/startshorts/androidplayer/repo/immersion/a;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-virtual {p2, p3}, Lcom/startshorts/androidplayer/repo/immersion/a;->b(Lcom/startshorts/androidplayer/bean/shorts/ShortsDetail;)V

    .line 114
    .line 115
    .line 116
    :cond_5
    return-object p1
.end method

.method public final z(Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackConfig;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->k()Lcom/startshorts/androidplayer/repo/immersion/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/repo/immersion/a;->k(Lcom/startshorts/androidplayer/bean/immersion/ImmersionBackConfig;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
