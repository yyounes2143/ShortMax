.class public final Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;
.super Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;
.source "ShortsViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nShortsViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortsViewModel.kt\ncom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,310:1\n1863#2,2:311\n*S KotlinDebug\n*F\n+ 1 ShortsViewModel.kt\ncom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel\n*L\n248#1:311,2\n*E\n"
    }
.end annotation


# static fields
.field public static final k:Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final e:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->k:Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lhl/c;

    .line 5
    .line 6
    invoke-direct {v0}, Lhl/c;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->e:Lms/i;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->f:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->g:Z

    .line 19
    .line 20
    iput v0, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->j:I

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic A(Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->Y()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic C(Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->V(Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic D(Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;ZIILkotlin/Result;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->U(Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;ZIILkotlin/Result;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic E(Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;Lcom/startshorts/androidplayer/bean/exception/ResponseException;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->N(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic F(Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;Ljava/lang/Object;ZII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->P(Ljava/lang/Object;ZII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic G(Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->Q()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final H(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;",
            ">;)V"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Iterable;

    .line 2
    .line 3
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/4 v0, 0x0

    .line 8
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->fromRecommendPool()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    iget v2, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->j:I

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->setRound(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->setPageNumber(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->setIndex(I)V

    .line 35
    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-void
.end method

.method private final I()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->i:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iput-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->i:Lkotlinx/coroutines/r;

    .line 11
    .line 12
    return-void
.end method

.method private final K(Ljava/util/List;ZIIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;",
            ">;ZIIZ)V"
        }
    .end annotation

    .line 1
    if-nez p5, :cond_0

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->M(ZII)V

    .line 4
    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    move-object p2, p1

    .line 8
    check-cast p2, Ljava/util/Collection;

    .line 9
    .line 10
    if-eqz p2, :cond_2

    .line 11
    .line 12
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->c0(Ljava/util/List;I)V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 24
    invoke-direct {p0, p1, p3, p4}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->M(ZII)V

    .line 25
    .line 26
    .line 27
    :goto_1
    return-void
.end method

.method private final L(ZII)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "handleRefreshShorts failed -> pageNumber("

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p2, ") pageSize("

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p2, ") errMsg(retry one time and still empty data)"

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->f(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance p1, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    const/4 p2, 0x0

    .line 40
    invoke-direct {p0, p2, p1}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->e0(ZLjava/util/List;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private final M(ZII)V
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->e0(ZLjava/util/List;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v0, "handleMoreShorts failed -> pageNumber("

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p2, ") pageSize("

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p2, ") errMsg(retry one time and still empty data)"

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->f(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private final N(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->h:Z

    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->f:Z

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->f:Z

    .line 9
    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->x(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->e0(ZLjava/util/List;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->x(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method private final O(Ljava/util/List;ZIIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;",
            ">;ZIIZ)V"
        }
    .end annotation

    .line 1
    if-nez p5, :cond_0

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->L(ZII)V

    .line 4
    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    move-object p2, p1

    .line 8
    check-cast p2, Ljava/util/Collection;

    .line 9
    .line 10
    if-eqz p2, :cond_2

    .line 11
    .line 12
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-direct {p0, p1, p3, p4}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->b0(Ljava/util/List;II)V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 24
    invoke-direct {p0, p1, p3, p4}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->L(ZII)V

    .line 25
    .line 26
    .line 27
    :goto_1
    return-void
.end method

.method private final P(Ljava/lang/Object;ZII)V
    .locals 9

    .line 1
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_a

    .line 6
    .line 7
    move-object v0, p1

    .line 8
    check-cast v0, Lcom/startshorts/androidplayer/bean/shorts/ShortsListResult;

    .line 9
    .line 10
    sget-object v1, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->a:Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/ShortsListResult;->getLastShortPlayId()Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v3, v2

    .line 21
    :goto_0
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->w(Ljava/lang/Integer;)V

    .line 22
    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/ShortsListResult;->getConsecutiveTimes()Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move-object v3, v2

    .line 32
    :goto_1
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->v(Ljava/lang/Integer;)V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->h:Z

    .line 37
    .line 38
    iget-boolean v3, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->f:Z

    .line 39
    .line 40
    if-eqz v3, :cond_5

    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    move-object v3, v2

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    move-object v3, p1

    .line 51
    :goto_2
    check-cast v3, Lcom/startshorts/androidplayer/bean/shorts/ShortsListResult;

    .line 52
    .line 53
    if-eqz v3, :cond_3

    .line 54
    .line 55
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/ShortsListResult;->getForYouList()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    :cond_3
    move-object v4, v2

    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/ShortsListResult;->getHasMore()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    :cond_4
    move v8, v1

    .line 67
    move-object v3, p0

    .line 68
    move v5, p2

    .line 69
    move v6, p3

    .line 70
    move v7, p4

    .line 71
    invoke-direct/range {v3 .. v8}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->O(Ljava/util/List;ZIIZ)V

    .line 72
    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_5
    const/4 v3, 0x1

    .line 76
    if-ne p3, v3, :cond_6

    .line 77
    .line 78
    iget v4, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->j:I

    .line 79
    .line 80
    add-int/2addr v4, v3

    .line 81
    iput v4, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->j:I

    .line 82
    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v4, "mRound updated -> "

    .line 89
    .line 90
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget v4, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->j:I

    .line 94
    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {p0, v3}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_6
    invoke-static {p1}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_7

    .line 110
    .line 111
    move-object v3, v2

    .line 112
    goto :goto_3

    .line 113
    :cond_7
    move-object v3, p1

    .line 114
    :goto_3
    check-cast v3, Lcom/startshorts/androidplayer/bean/shorts/ShortsListResult;

    .line 115
    .line 116
    if-eqz v3, :cond_8

    .line 117
    .line 118
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/ShortsListResult;->getForYouList()Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    :cond_8
    move-object v4, v2

    .line 123
    if-eqz v0, :cond_9

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/ShortsListResult;->getHasMore()Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    :cond_9
    move v8, v1

    .line 130
    move-object v3, p0

    .line 131
    move v5, p2

    .line 132
    move v6, p3

    .line 133
    move v7, p4

    .line 134
    invoke-direct/range {v3 .. v8}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->K(Ljava/util/List;ZIIZ)V

    .line 135
    .line 136
    .line 137
    :cond_a
    :goto_4
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    if-eqz p1, :cond_b

    .line 142
    .line 143
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->s(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->N(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)V

    .line 148
    .line 149
    .line 150
    sget-object p2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 151
    .line 152
    const-string p3, "shorts"

    .line 153
    .line 154
    invoke-virtual {p2, p1, p3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->m0(Lcom/startshorts/androidplayer/bean/exception/ResponseException;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    :cond_b
    return-void
.end method

.method private final Q()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->f:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->g:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->g:Z

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    :cond_0
    return v1
.end method

.method private final R(IIZ)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "loadEpisodes -> mFirstLoad("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->f:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ") mEpisodeRequesting("

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->h:Z

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ") pageNumber("

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ") pageSize("

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, ") retry("

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const/16 v1, 0x29

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->h:Z

    .line 63
    .line 64
    if-eqz v0, :cond_0

    .line 65
    .line 66
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->h:Z

    .line 69
    .line 70
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    .line 71
    .line 72
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 73
    .line 74
    .line 75
    iput p1, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 76
    .line 77
    sget-object v0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->a:Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->h()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_1

    .line 84
    .line 85
    new-instance v1, Lhl/a;

    .line 86
    .line 87
    invoke-direct {v1, p0, p3, p1, p2}, Lhl/a;-><init>(Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;ZII)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->x(Lkotlin/jvm/functions/Function1;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;

    .line 95
    .line 96
    const/4 v7, 0x0

    .line 97
    move-object v1, v0

    .line 98
    move-object v3, p0

    .line 99
    move v4, p3

    .line 100
    move v5, p1

    .line 101
    move v6, p2

    .line 102
    invoke-direct/range {v1 .. v7}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;ZIILrs/c;)V

    .line 103
    .line 104
    .line 105
    new-instance v6, Lhl/b;

    .line 106
    .line 107
    invoke-direct {v6, p0}, Lhl/b;-><init>(Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;)V

    .line 108
    .line 109
    .line 110
    const/4 v7, 0x2

    .line 111
    const/4 v8, 0x0

    .line 112
    const-string v3, "loadEpisodes"

    .line 113
    .line 114
    const/4 v4, 0x0

    .line 115
    move-object v2, p0

    .line 116
    move-object v5, v0

    .line 117
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->j(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 118
    .line 119
    .line 120
    :goto_0
    return-void
.end method

.method private final S(ZLjava/util/List;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;",
            ">;II)V"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p2, 0x0

    .line 9
    :goto_0
    if-nez p1, :cond_1

    .line 10
    .line 11
    sget-object v0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->a:Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->t()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->o()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    :goto_1
    move v2, v0

    .line 21
    goto :goto_2

    .line 22
    :cond_1
    sget-object v0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->a:Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->o()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v1, "loadEpisodes -> loadMore("

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, ") nextPageNumber("

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p1, ") currentPosition("

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p1, ") itemCount("

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const/16 p1, 0x29

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const/4 v5, 0x4

    .line 81
    const/4 v6, 0x0

    .line 82
    const/4 v4, 0x0

    .line 83
    move-object v1, p0

    .line 84
    move v3, p4

    .line 85
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->T(Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;IIZILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method static synthetic T(Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;IIZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->R(IIZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final U(Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;ZIILkotlin/Result;)Lkotlin/Unit;
    .locals 8

    .line 1
    new-instance v7, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$1$1;

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    move-object v0, v7

    .line 5
    move-object v1, p0

    .line 6
    move-object v2, p4

    .line 7
    move v3, p1

    .line 8
    move v4, p2

    .line 9
    move v5, p3

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$1$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;Lkotlin/Result;ZIILrs/c;)V

    .line 11
    .line 12
    .line 13
    new-instance v4, Lhl/d;

    .line 14
    .line 15
    invoke-direct {v4, p0}, Lhl/d;-><init>(Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;)V

    .line 16
    .line 17
    .line 18
    const/4 v5, 0x2

    .line 19
    const-string v1, "handleRequestResult"

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    move-object v0, p0

    .line 23
    move-object v3, v7

    .line 24
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->j(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 25
    .line 26
    .line 27
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    return-object p0
.end method

.method private static final V(Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->r(Ljava/lang/String;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->N(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method private static final W(Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->r(Ljava/lang/String;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->N(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method private final X(II)V
    .locals 3

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "handleShorts failed -> list is empty, load next page("

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x29

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->f(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "loadNextPage pageNumber -> "

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v2, " lastWatchIndex -> -1 pageSize -> "

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v2, "Feed_Check_New_Test"

    .line 56
    .line 57
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    sget-object v0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->a:Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;

    .line 61
    .line 62
    const/4 v1, -0x1

    .line 63
    invoke-virtual {v0, p1, v1}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->u(II)V

    .line 64
    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->R(IIZ)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method private static final Y()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final Z(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->I()V

    .line 2
    .line 3
    .line 4
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {v3, p1, v0}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;-><init>(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    const/4 v4, 0x2

    .line 11
    const/4 v5, 0x0

    .line 12
    const-string v1, "preloadNextEpisodeForImmersion"

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    move-object v0, p0

    .line 16
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->i:Lkotlinx/coroutines/r;

    .line 21
    .line 22
    return-void
.end method

.method private final b0(Ljava/util/List;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;",
            ">;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p1}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->H(ILjava/util/List;)V

    .line 2
    .line 3
    .line 4
    move-object v0, p1

    .line 5
    check-cast v0, Ljava/util/Collection;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    iput-boolean p2, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->f:Z

    .line 15
    .line 16
    invoke-direct {p0, p2, p1}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->e0(ZLjava/util/List;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->X(II)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method private final c0(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p1}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->H(ILjava/util/List;)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x1

    .line 5
    invoke-direct {p0, p2, p1}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->e0(ZLjava/util/List;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final e0(ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->J()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/shorts/b$a;

    .line 6
    .line 7
    invoke-direct {v0, p2}, Lcom/startshorts/androidplayer/viewmodel/shorts/b$a;-><init>(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final J()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/shorts/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->e:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    return-object v0
.end method

.method public final a0(Lcom/startshorts/androidplayer/viewmodel/shorts/a;)V
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/viewmodel/shorts/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "intent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/shorts/a$b;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/shorts/a$b;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/shorts/a$b;->c()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/shorts/a$b;->b()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/shorts/a$b;->a()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/shorts/a$b;->d()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->S(ZLjava/util/List;II)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/shorts/a$c;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/shorts/a$c;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/shorts/a$c;->a()Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->Z(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    instance-of p1, p1, Lcom/startshorts/androidplayer/viewmodel/shorts/a$a;

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->I()V

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void

    .line 54
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 55
    .line 56
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 57
    .line 58
    .line 59
    throw p1
.end method

.method public final d0()V
    .locals 1

    .line 1
    const-string v0, "resetFirstLoad"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->f:Z

    .line 8
    .line 9
    sget-object v0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->a:Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->d()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "ShortsViewModel"

    .line 2
    .line 3
    return-object v0
.end method
