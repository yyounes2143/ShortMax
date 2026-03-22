.class public final Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;
.super Ljava/lang/Object;
.source "ShortsRepo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;
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

.field private static e:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/shorts/ShortsListResult;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->a:Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;

    .line 7
    .line 8
    new-instance v0, Lhh/d;

    .line 9
    .line 10
    invoke-direct {v0}, Lhh/d;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->b:Lms/i;

    .line 18
    .line 19
    new-instance v0, Lhh/e;

    .line 20
    .line 21
    invoke-direct {v0}, Lhh/e;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->c:Lms/i;

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

.method public static synthetic a()Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->q()Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b()Lhh/c;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->p()Lhh/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final i()Lhh/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lhh/c;

    .line 8
    .line 9
    return-object v0
.end method

.method private final j()Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->c:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic m(Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;IZILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->k(IZ)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static final p()Lhh/c;
    .locals 1

    .line 1
    new-instance v0, Lhh/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lhh/c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final q()Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS;
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final c(ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 1
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "nextEpisode"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->i()Lhh/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1, p2}, Lhh/c;->c(ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->i()Lhh/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lhh/c;->s(Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final e()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->i()Lhh/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lhh/c;->d()Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->i()Lhh/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lhh/c;->e()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final g()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->i()Lhh/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lhh/c;->f()Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final h()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public final k(IZ)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->i()Lhh/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lhh/c;->g(IZ)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final l()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->i()Lhh/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lhh/c;->h()Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final n()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->i()Lhh/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lhh/c;->i()Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final o()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->i()Lhh/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lhh/c;->k()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final r(IIZLjava/lang/Integer;Ljava/lang/Integer;Lrs/c;)Ljava/lang/Object;
    .locals 8
    .param p4    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/shorts/ShortsListResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p6, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo$queryEpisodes$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p6

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo$queryEpisodes$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo$queryEpisodes$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo$queryEpisodes$1;->j:I

    .line 18
    .line 19
    :goto_0
    move-object v7, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo$queryEpisodes$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p6}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo$queryEpisodes$1;-><init>(Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;Lrs/c;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p6, v7, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo$queryEpisodes$1;->h:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v7, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo$queryEpisodes$1;->j:I

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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->j()Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iput v2, v7, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo$queryEpisodes$1;->j:I

    .line 66
    .line 67
    move v2, p1

    .line 68
    move v3, p2

    .line 69
    move v4, p3

    .line 70
    move-object v5, p4

    .line 71
    move-object v6, p5

    .line 72
    invoke-virtual/range {v1 .. v7}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS;->b(IIZLjava/lang/Integer;Ljava/lang/Integer;Lrs/c;)Ljava/lang/Object;

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

.method public final s(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->i()Lhh/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lhh/c;->n(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final t()V
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    const-string v1, "Feed_Check_New_Test"

    .line 4
    .line 5
    const-string v2, "mLocalDS.resetPageNumber()"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->i()Lhh/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lhh/c;->p()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final u(II)V
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
    const-string v2, "mLocalDS.resetPageNumber pageNumber -> "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, " lastWatchIndex ->"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "Feed_Check_New_Test"

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->i()Lhh/c;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, p1, p2}, Lhh/c;->q(II)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final v(Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->i()Lhh/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lhh/c;->r(Ljava/lang/Integer;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final w(Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->i()Lhh/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lhh/c;->t(Ljava/lang/Integer;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final x(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/shorts/ShortsListResult;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    sput-object p1, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->e:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method
