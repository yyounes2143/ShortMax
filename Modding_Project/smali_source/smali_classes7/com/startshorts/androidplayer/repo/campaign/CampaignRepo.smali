.class public final Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;
.super Ljava/lang/Object;
.source "CampaignRepo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;
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

.field private static d:Z

.field private static e:Z

.field private static final f:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 7
    .line 8
    new-instance v0, Lkg/c;

    .line 9
    .line 10
    invoke-direct {v0}, Lkg/c;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->b:Lms/i;

    .line 18
    .line 19
    new-instance v0, Lkg/d;

    .line 20
    .line 21
    invoke-direct {v0}, Lkg/d;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->c:Lms/i;

    .line 29
    .line 30
    new-instance v0, Lkg/e;

    .line 31
    .line 32
    invoke-direct {v0}, Lkg/e;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->f:Lms/i;

    .line 40
    .line 41
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

.method private static final A()Ljava/util/List;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final D(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->e:Z

    .line 3
    .line 4
    invoke-static {p1}, Ljk/v;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method

.method private static final F(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    sput-boolean p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->d:Z

    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private final K(ZLcom/startshorts/androidplayer/bean/campaign/AttributionSdkResponse;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->t()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/campaign/AttributionSdkResponse;->getId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->t()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/campaign/AttributionSdkResponse;->getId()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    sget-object v2, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v1, "reportAttributionSdkResponse("

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/campaign/AttributionSdkResponse;->getId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const/16 v1, 0x29

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    new-instance v6, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAttributionSdkResponse$1;

    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    invoke-direct {v6, p1, p2, v0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAttributionSdkResponse$1;-><init>(ZLcom/startshorts/androidplayer/bean/campaign/AttributionSdkResponse;Lrs/c;)V

    .line 59
    .line 60
    .line 61
    new-instance v7, Lkg/f;

    .line 62
    .line 63
    invoke-direct {v7, p2}, Lkg/f;-><init>(Lcom/startshorts/androidplayer/bean/campaign/AttributionSdkResponse;)V

    .line 64
    .line 65
    .line 66
    const/4 v8, 0x5

    .line 67
    const/4 v9, 0x0

    .line 68
    const/4 v3, 0x0

    .line 69
    const/4 v5, 0x0

    .line 70
    invoke-static/range {v2 .. v9}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->k(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Lgt/g0;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method private static final L(Lcom/startshorts/androidplayer/bean/campaign/AttributionSdkResponse;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    sget-object p1, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->t()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/campaign/AttributionSdkResponse;->getId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method private static final Q(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    sput-boolean p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->g:Z

    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static synthetic a()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->A()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->D(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c()Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->z()Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic d()Lkg/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->y()Lkg/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic e(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->F(Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lcom/startshorts/androidplayer/bean/campaign/AttributionSdkResponse;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->L(Lcom/startshorts/androidplayer/bean/campaign/AttributionSdkResponse;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->Q(Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic h(Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;)Lkg/b;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->r()Lkg/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic i(Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;)Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->s()Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic j(Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->t()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic k(Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;ZLcom/startshorts/androidplayer/bean/campaign/AttributionSdkResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->K(ZLcom/startshorts/androidplayer/bean/campaign/AttributionSdkResponse;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic l(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->e:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic m(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic n(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method private final r()Lkg/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lkg/b;

    .line 8
    .line 9
    return-object v0
.end method

.method private final s()Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->c:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS;

    .line 8
    .line 9
    return-object v0
.end method

.method private final t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->f:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final y()Lkg/b;
    .locals 1

    .line 1
    new-instance v0, Lkg/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lkg/b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final z()Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS;
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final B(Lrs/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/shorts/DailyWatchPopResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryDailyWatchTaskPopResult$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryDailyWatchTaskPopResult$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryDailyWatchTaskPopResult$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryDailyWatchTaskPopResult$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryDailyWatchTaskPopResult$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryDailyWatchTaskPopResult$1;-><init>(Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryDailyWatchTaskPopResult$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryDailyWatchTaskPopResult$1;->j:I

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
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast p1, Lkotlin/Result;

    .line 42
    .line 43
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

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
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->s()Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput v3, v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryDailyWatchTaskPopResult$1;->j:I

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS;->c(Lrs/c;)Ljava/lang/Object;

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

.method public final C(Lkotlin/jvm/functions/Function1;)V
    .locals 9
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/shorts/PopularShorts;",
            ">;",
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
    sget-boolean v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->e:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sget-object v0, Lud/b;->a:Lud/b;

    .line 12
    .line 13
    invoke-virtual {v0}, Lud/b;->Z()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->r()Lkg/b;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lkg/b;->d()Lcom/startshorts/androidplayer/bean/shorts/PopularShorts;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->r()Lkg/b;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lkg/b;->d()Lcom/startshorts/androidplayer/bean/shorts/PopularShorts;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    const/4 v0, 0x1

    .line 53
    sput-boolean v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->e:Z

    .line 54
    .line 55
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 56
    .line 57
    new-instance v5, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryPopularShorts$1;

    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    invoke-direct {v5, p1, v0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryPopularShorts$1;-><init>(Lkotlin/jvm/functions/Function1;Lrs/c;)V

    .line 61
    .line 62
    .line 63
    new-instance v6, Lkg/i;

    .line 64
    .line 65
    invoke-direct {v6, p1}, Lkg/i;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 66
    .line 67
    .line 68
    const/4 v7, 0x5

    .line 69
    const/4 v8, 0x0

    .line 70
    const/4 v2, 0x0

    .line 71
    const-string v3, "queryPopularShorts"

    .line 72
    .line 73
    const/4 v4, 0x0

    .line 74
    invoke-static/range {v1 .. v8}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->k(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Lgt/g0;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public final E()V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lud/b;->a:Lud/b;

    .line 7
    .line 8
    invoke-virtual {v0}, Lud/b;->a0()Z

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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->v()Lcom/startshorts/androidplayer/bean/shorts/QueryCampaignRecommendShortsResult;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lcom/startshorts/androidplayer/bean/eventbus/HandleHomeDialogProcessorEvent;

    .line 26
    .line 27
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/eventbus/HandleHomeDialogProcessorEvent;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lau/c;->l(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    const/4 v0, 0x1

    .line 35
    sput-boolean v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->d:Z

    .line 36
    .line 37
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 38
    .line 39
    new-instance v5, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryRecommendShorts$1;

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-direct {v5, v0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryRecommendShorts$1;-><init>(Lrs/c;)V

    .line 43
    .line 44
    .line 45
    new-instance v6, Lkg/g;

    .line 46
    .line 47
    invoke-direct {v6}, Lkg/g;-><init>()V

    .line 48
    .line 49
    .line 50
    const/4 v7, 0x5

    .line 51
    const/4 v8, 0x0

    .line 52
    const/4 v2, 0x0

    .line 53
    const-string v3, "queryRecommendShorts"

    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    invoke-static/range {v1 .. v8}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->k(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Lgt/g0;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final G(Lrs/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/shorts/QueryCampaignRecommendShortsResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryRecommendShortsSuspend$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryRecommendShortsSuspend$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryRecommendShortsSuspend$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryRecommendShortsSuspend$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryRecommendShortsSuspend$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryRecommendShortsSuspend$1;-><init>(Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryRecommendShortsSuspend$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryRecommendShortsSuspend$1;->j:I

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
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast p1, Lkotlin/Result;

    .line 42
    .line 43
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

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
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->s()Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput v3, v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryRecommendShortsSuspend$1;->j:I

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS;->e(Lrs/c;)Ljava/lang/Object;

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

.method public final H(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 11
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p7

    .line 2
    .line 3
    instance-of v1, v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAFInfo$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAFInfo$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAFInfo$1;->j:I

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
    iput v2, v1, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAFInfo$1;->j:I

    .line 20
    .line 21
    move-object v2, p0

    .line 22
    :goto_0
    move-object v10, v1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    new-instance v1, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAFInfo$1;

    .line 25
    .line 26
    move-object v2, p0

    .line 27
    invoke-direct {v1, p0, v0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAFInfo$1;-><init>(Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;Lrs/c;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :goto_1
    iget-object v0, v10, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAFInfo$1;->h:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget v3, v10, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAFInfo$1;->j:I

    .line 38
    .line 39
    const/4 v4, 0x1

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    if-ne v3, v4, :cond_1

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
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 66
    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v5, "reportAFInfo params -> requestId:"

    .line 73
    .line 74
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    move-object v5, p2

    .line 78
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v6, " -- afConversionData:"

    .line 82
    .line 83
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    move-object v6, p3

    .line 87
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v7, " -- gpInstallReferrer:"

    .line 91
    .line 92
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    move-object/from16 v8, p5

    .line 96
    .line 97
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v7, " -- appsFlyerId:"

    .line 101
    .line 102
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    move-object/from16 v9, p6

    .line 106
    .line 107
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    const-string v7, "CampaignNewTag"

    .line 115
    .line 116
    invoke-virtual {v0, v7, v3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->s()Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    iput v4, v10, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAFInfo$1;->j:I

    .line 124
    .line 125
    move v4, p1

    .line 126
    move-object v5, p2

    .line 127
    move-object v6, p3

    .line 128
    move-object v7, p4

    .line 129
    move-object/from16 v8, p5

    .line 130
    .line 131
    move-object/from16 v9, p6

    .line 132
    .line 133
    invoke-virtual/range {v3 .. v10}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS;->f(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    if-ne v0, v1, :cond_3

    .line 138
    .line 139
    return-object v1

    .line 140
    :cond_3
    :goto_2
    return-object v0
.end method

.method public final I(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 8
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p6, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAJInfo$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p6

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAJInfo$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAJInfo$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAJInfo$1;->j:I

    .line 18
    .line 19
    :goto_0
    move-object v7, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAJInfo$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p6}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAJInfo$1;-><init>(Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;Lrs/c;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p6, v7, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAJInfo$1;->h:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v7, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAJInfo$1;->j:I

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    invoke-static {p6}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    check-cast p6, Lkotlin/Result;

    .line 44
    .line 45
    invoke-virtual {p6}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    goto :goto_2

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
    invoke-static {p6}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    sget-object p6, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 62
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v3, "reportAJInfo params -> requestId:"

    .line 69
    .line 70
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v3, " -- ajConversionData:"

    .line 77
    .line 78
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v3, " -- gpInstallReferrer:"

    .line 85
    .line 86
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    const-string v3, "CampaignNewTag"

    .line 97
    .line 98
    invoke-virtual {p6, v3, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->s()Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    iput v2, v7, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAJInfo$1;->j:I

    .line 106
    .line 107
    move v2, p1

    .line 108
    move-object v3, p2

    .line 109
    move-object v4, p3

    .line 110
    move-object v5, p4

    .line 111
    move-object v6, p5

    .line 112
    invoke-virtual/range {v1 .. v7}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS;->g(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    if-ne p1, v0, :cond_3

    .line 117
    .line 118
    return-object v0

    .line 119
    :cond_3
    :goto_2
    return-object p1
.end method

.method public final J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p4, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportActiveWebInfo$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportActiveWebInfo$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportActiveWebInfo$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportActiveWebInfo$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportActiveWebInfo$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportActiveWebInfo$1;-><init>(Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportActiveWebInfo$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportActiveWebInfo$1;->j:I

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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->s()Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS;

    .line 60
    .line 61
    .line 62
    move-result-object p4

    .line 63
    iput v3, v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportActiveWebInfo$1;->j:I

    .line 64
    .line 65
    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

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

.method public final M()V
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAttributionSdkResponses$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, v1}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAttributionSdkResponses$1;-><init>(Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "reportAttributionSdkResponses"

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

.method public final N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p4, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportDDLInfo$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportDDLInfo$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportDDLInfo$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportDDLInfo$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportDDLInfo$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportDDLInfo$1;-><init>(Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportDDLInfo$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportDDLInfo$1;->j:I

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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->s()Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS;

    .line 60
    .line 61
    .line 62
    move-result-object p4

    .line 63
    iput v3, v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportDDLInfo$1;->j:I

    .line 64
    .line 65
    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

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

.method public final O(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILrs/c;)Ljava/lang/Object;
    .locals 8
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p6, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportFBInfo$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p6

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportFBInfo$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportFBInfo$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportFBInfo$1;->j:I

    .line 18
    .line 19
    :goto_0
    move-object v7, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportFBInfo$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p6}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportFBInfo$1;-><init>(Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;Lrs/c;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p6, v7, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportFBInfo$1;->h:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v7, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportFBInfo$1;->j:I

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    invoke-static {p6}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    check-cast p6, Lkotlin/Result;

    .line 44
    .line 45
    invoke-virtual {p6}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    goto :goto_2

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
    invoke-static {p6}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->s()Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iput v2, v7, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportFBInfo$1;->j:I

    .line 66
    .line 67
    move v2, p1

    .line 68
    move-object v3, p2

    .line 69
    move-object v4, p3

    .line 70
    move-object v5, p4

    .line 71
    move v6, p5

    .line 72
    invoke-virtual/range {v1 .. v7}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS;->k(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILrs/c;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-ne p1, v0, :cond_3

    .line 77
    .line 78
    return-object v0

    .line 79
    :cond_3
    :goto_2
    return-object p1
.end method

.method public final P()V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->g:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lud/b;->a:Lud/b;

    .line 6
    .line 7
    invoke-virtual {v0}, Lud/b;->L0()Z

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
    const/4 v0, 0x1

    .line 15
    sput-boolean v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->g:Z

    .line 16
    .line 17
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 18
    .line 19
    new-instance v5, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportInstallInfo$1;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-direct {v5, v0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportInstallInfo$1;-><init>(Lrs/c;)V

    .line 23
    .line 24
    .line 25
    new-instance v6, Lkg/h;

    .line 26
    .line 27
    invoke-direct {v6}, Lkg/h;-><init>()V

    .line 28
    .line 29
    .line 30
    const/4 v7, 0x5

    .line 31
    const/4 v8, 0x0

    .line 32
    const/4 v2, 0x0

    .line 33
    const-string v3, "reportInstallInfo"

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-static/range {v1 .. v8}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->k(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Lgt/g0;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void
.end method

.method public final R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p6, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportLPInfo$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p6

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportLPInfo$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportLPInfo$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportLPInfo$1;->j:I

    .line 18
    .line 19
    :goto_0
    move-object v7, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportLPInfo$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p6}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportLPInfo$1;-><init>(Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;Lrs/c;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p6, v7, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportLPInfo$1;->h:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v7, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportLPInfo$1;->j:I

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    invoke-static {p6}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    check-cast p6, Lkotlin/Result;

    .line 44
    .line 45
    invoke-virtual {p6}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    goto :goto_2

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
    invoke-static {p6}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    sget-object p6, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 62
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v3, "reportLpInfo params -> requestId:"

    .line 69
    .line 70
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v3, " -- clipboardInfo:"

    .line 77
    .line 78
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v3, " -- intranetIp:"

    .line 85
    .line 86
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v3, " -- latestInstallTime:"

    .line 93
    .line 94
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v3, " -- gpInstallReferrer:"

    .line 101
    .line 102
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v3, " -- firstOpen:"

    .line 109
    .line 110
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    sget-object v3, Lud/a;->a:Lud/a;

    .line 114
    .line 115
    invoke-virtual {v3}, Lud/a;->P()Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    const-string v3, "CampaignNewTag"

    .line 127
    .line 128
    invoke-virtual {p6, v3, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->s()Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    iput v2, v7, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportLPInfo$1;->j:I

    .line 136
    .line 137
    move-object v2, p1

    .line 138
    move-object v3, p2

    .line 139
    move-object v4, p3

    .line 140
    move-object v5, p4

    .line 141
    move-object v6, p5

    .line 142
    invoke-virtual/range {v1 .. v7}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    if-ne p1, v0, :cond_3

    .line 147
    .line 148
    return-object v0

    .line 149
    :cond_3
    :goto_2
    return-object p1
.end method

.method public final S(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 11
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p7

    .line 2
    .line 3
    instance-of v1, v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportUdlAfInfo$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportUdlAfInfo$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportUdlAfInfo$1;->j:I

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
    iput v2, v1, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportUdlAfInfo$1;->j:I

    .line 20
    .line 21
    move-object v2, p0

    .line 22
    :goto_0
    move-object v10, v1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    new-instance v1, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportUdlAfInfo$1;

    .line 25
    .line 26
    move-object v2, p0

    .line 27
    invoke-direct {v1, p0, v0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportUdlAfInfo$1;-><init>(Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;Lrs/c;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :goto_1
    iget-object v0, v10, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportUdlAfInfo$1;->h:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget v3, v10, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportUdlAfInfo$1;->j:I

    .line 38
    .line 39
    const/4 v4, 0x1

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    if-ne v3, v4, :cond_1

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
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 66
    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v5, "reportUdlAfInfo params -> requestId:"

    .line 73
    .line 74
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    move-object v5, p2

    .line 78
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v6, " -- afConversionData:"

    .line 82
    .line 83
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    move-object v6, p3

    .line 87
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v7, " -- gpInstallReferrer:"

    .line 91
    .line 92
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    move-object/from16 v8, p5

    .line 96
    .line 97
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v7, " -- appsFlyerId:"

    .line 101
    .line 102
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    move-object/from16 v9, p6

    .line 106
    .line 107
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    const-string v7, "CampaignNewTag"

    .line 115
    .line 116
    invoke-virtual {v0, v7, v3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->s()Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    iput v4, v10, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportUdlAfInfo$1;->j:I

    .line 124
    .line 125
    move v4, p1

    .line 126
    move-object v5, p2

    .line 127
    move-object v6, p3

    .line 128
    move-object v7, p4

    .line 129
    move-object/from16 v8, p5

    .line 130
    .line 131
    move-object/from16 v9, p6

    .line 132
    .line 133
    invoke-virtual/range {v3 .. v10}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS;->n(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    if-ne v0, v1, :cond_3

    .line 138
    .line 139
    return-object v1

    .line 140
    :cond_3
    :goto_2
    return-object v0
.end method

.method public final T(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 8
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p6, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportUdlAjInfo$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p6

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportUdlAjInfo$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportUdlAjInfo$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportUdlAjInfo$1;->j:I

    .line 18
    .line 19
    :goto_0
    move-object v7, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportUdlAjInfo$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p6}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportUdlAjInfo$1;-><init>(Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;Lrs/c;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p6, v7, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportUdlAjInfo$1;->h:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v7, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportUdlAjInfo$1;->j:I

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    invoke-static {p6}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    check-cast p6, Lkotlin/Result;

    .line 44
    .line 45
    invoke-virtual {p6}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    goto :goto_2

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
    invoke-static {p6}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    sget-object p6, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 62
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v3, "reportUdlAjInfo params -> requestId:"

    .line 69
    .line 70
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v3, " -- ajConversionData:"

    .line 77
    .line 78
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v3, " -- gpInstallReferrer:"

    .line 85
    .line 86
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    const-string v3, "CampaignNewTag"

    .line 97
    .line 98
    invoke-virtual {p6, v3, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->s()Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    iput v2, v7, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportUdlAjInfo$1;->j:I

    .line 106
    .line 107
    move v2, p1

    .line 108
    move-object v3, p2

    .line 109
    move-object v4, p3

    .line 110
    move-object v5, p4

    .line 111
    move-object v6, p5

    .line 112
    invoke-virtual/range {v1 .. v7}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS;->o(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    if-ne p1, v0, :cond_3

    .line 117
    .line 118
    return-object v0

    .line 119
    :cond_3
    :goto_2
    return-object p1
.end method

.method public final U(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "campaign"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->r()Lkg/b;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lkg/b;->k(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final V()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->r()Lkg/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lkg/b;->l()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final W(J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->r()Lkg/b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1, p2}, Lkg/b;->m(J)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final o()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->r()Lkg/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lkg/b;->o(Lcom/startshorts/androidplayer/bean/shorts/QueryCampaignRecommendShortsResult;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final p()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->r()Lkg/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lkg/b;->c()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final q(Lrs/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/campaign/GoogleEventUploadInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$getGoogleMatchEventUploadInfo$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$getGoogleMatchEventUploadInfo$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$getGoogleMatchEventUploadInfo$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$getGoogleMatchEventUploadInfo$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$getGoogleMatchEventUploadInfo$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$getGoogleMatchEventUploadInfo$1;-><init>(Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$getGoogleMatchEventUploadInfo$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$getGoogleMatchEventUploadInfo$1;->j:I

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
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast p1, Lkotlin/Result;

    .line 42
    .line 43
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

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
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->s()Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput v3, v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$getGoogleMatchEventUploadInfo$1;->j:I

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS;->a(Lrs/c;)Ljava/lang/Object;

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

.method public final u(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/campaign/AFEventUploadInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$getMatchEventUploadInfo$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$getMatchEventUploadInfo$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$getMatchEventUploadInfo$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$getMatchEventUploadInfo$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$getMatchEventUploadInfo$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$getMatchEventUploadInfo$1;-><init>(Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$getMatchEventUploadInfo$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$getMatchEventUploadInfo$1;->j:I

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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->s()Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    iput v3, v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$getMatchEventUploadInfo$1;->j:I

    .line 64
    .line 65
    invoke-virtual {p2, p1, v0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS;->b(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

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

.method public final v()Lcom/startshorts/androidplayer/bean/shorts/QueryCampaignRecommendShortsResult;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->r()Lkg/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lkg/b;->e()Lcom/startshorts/androidplayer/bean/shorts/QueryCampaignRecommendShortsResult;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final w()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->r()Lkg/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lkg/b;->f()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final x()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->r()Lkg/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lkg/b;->c()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "GG"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method
