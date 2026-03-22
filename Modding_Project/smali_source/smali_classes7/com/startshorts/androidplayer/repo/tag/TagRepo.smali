.class public final Lcom/startshorts/androidplayer/repo/tag/TagRepo;
.super Ljava/lang/Object;
.source "TagRepo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/repo/tag/TagRepo;
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
    new-instance v0, Lcom/startshorts/androidplayer/repo/tag/TagRepo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/repo/tag/TagRepo;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/repo/tag/TagRepo;->a:Lcom/startshorts/androidplayer/repo/tag/TagRepo;

    .line 7
    .line 8
    new-instance v0, Ljh/b;

    .line 9
    .line 10
    invoke-direct {v0}, Ljh/b;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/startshorts/androidplayer/repo/tag/TagRepo;->b:Lms/i;

    .line 18
    .line 19
    new-instance v0, Ljh/c;

    .line 20
    .line 21
    invoke-direct {v0}, Ljh/c;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/startshorts/androidplayer/repo/tag/TagRepo;->c:Lms/i;

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

.method public static synthetic a()Ljh/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/repo/tag/TagRepo;->f()Ljh/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b()Lcom/startshorts/androidplayer/repo/tag/TagRemoteDS;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/repo/tag/TagRepo;->g()Lcom/startshorts/androidplayer/repo/tag/TagRemoteDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final c()Ljh/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/tag/TagRepo;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljh/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final d()Lcom/startshorts/androidplayer/repo/tag/TagRemoteDS;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/tag/TagRepo;->c:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/repo/tag/TagRemoteDS;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final f()Ljh/a;
    .locals 1

    .line 1
    new-instance v0, Ljh/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ljh/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final g()Lcom/startshorts/androidplayer/repo/tag/TagRemoteDS;
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/repo/tag/TagRemoteDS;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/repo/tag/TagRemoteDS;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final e(Landroid/content/Context;I)Ljava/util/List;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/tab/TagFilterTab;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/tag/TagRepo;->c()Ljh/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1, p2}, Ljh/a;->a(Landroid/content/Context;I)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public final h(Ljava/lang/Long;IIILrs/c;)Ljava/lang/Object;
    .locals 7
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "III",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/tag/TagFilterShortsListResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p5, Lcom/startshorts/androidplayer/repo/tag/TagRepo$queryTagFilterEpisodeList$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p5

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/tag/TagRepo$queryTagFilterEpisodeList$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/tag/TagRepo$queryTagFilterEpisodeList$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/tag/TagRepo$queryTagFilterEpisodeList$1;->j:I

    .line 18
    .line 19
    :goto_0
    move-object v6, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/tag/TagRepo$queryTagFilterEpisodeList$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p5}, Lcom/startshorts/androidplayer/repo/tag/TagRepo$queryTagFilterEpisodeList$1;-><init>(Lcom/startshorts/androidplayer/repo/tag/TagRepo;Lrs/c;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p5, v6, Lcom/startshorts/androidplayer/repo/tag/TagRepo$queryTagFilterEpisodeList$1;->h:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v6, Lcom/startshorts/androidplayer/repo/tag/TagRepo$queryTagFilterEpisodeList$1;->j:I

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
    invoke-static {p5}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    check-cast p5, Lkotlin/Result;

    .line 44
    .line 45
    invoke-virtual {p5}, Lkotlin/Result;->n()Ljava/lang/Object;

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
    invoke-static {p5}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/tag/TagRepo;->d()Lcom/startshorts/androidplayer/repo/tag/TagRemoteDS;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iput v2, v6, Lcom/startshorts/androidplayer/repo/tag/TagRepo$queryTagFilterEpisodeList$1;->j:I

    .line 66
    .line 67
    move-object v2, p1

    .line 68
    move v3, p2

    .line 69
    move v4, p3

    .line 70
    move v5, p4

    .line 71
    invoke-virtual/range {v1 .. v6}, Lcom/startshorts/androidplayer/repo/tag/TagRemoteDS;->a(Ljava/lang/Long;IIILrs/c;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-ne p1, v0, :cond_3

    .line 76
    .line 77
    return-object v0

    .line 78
    :cond_3
    :goto_2
    return-object p1
.end method
