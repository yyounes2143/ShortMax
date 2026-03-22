.class public final Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;
.super Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;
.source "DiscoverViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDiscoverViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverViewModel.kt\ncom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,262:1\n1863#2,2:263\n*S KotlinDebug\n*F\n+ 1 DiscoverViewModel.kt\ncom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel\n*L\n251#1:263,2\n*E\n"
    }
.end annotation


# static fields
.field public static final f:Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final e:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/discover/b;",
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
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;->f:Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$a;

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
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic A(Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;Lkotlin/Result;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;->N(Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;Lkotlin/Result;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;->O(Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;->K(Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic D(Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;->G(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic E(Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;->H(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final G(Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move-object v0, p1

    .line 8
    check-cast v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 11
    .line 12
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/discover/b$c;

    .line 13
    .line 14
    invoke-direct {v2, v0}, Lcom/startshorts/androidplayer/viewmodel/discover/b$c;-><init>(Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->a:Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->h()V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->s(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;->x(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)V

    .line 36
    .line 37
    .line 38
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 39
    .line 40
    const-string v1, "discover"

    .line 41
    .line 42
    invoke-virtual {v0, p1, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->m0(Lcom/startshorts/androidplayer/bean/exception/ResponseException;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method private final H(Ljava/lang/Object;)V
    .locals 6

    .line 1
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    move-object v0, p1

    .line 8
    check-cast v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverTabHomeResult;

    .line 9
    .line 10
    sget-object v1, Lud/a;->a:Lud/a;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v1, v2}, Lud/a;->n0(Z)V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->a:Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTabHomeResult;->getTabPageResponse()Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v3, v2

    .line 27
    :goto_0
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->K(Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;)V

    .line 28
    .line 29
    .line 30
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    new-instance v4, Lcom/startshorts/androidplayer/viewmodel/discover/b$e;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTabHomeResult;->getTabPageResponse()Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    if-eqz v5, :cond_1

    .line 41
    .line 42
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;->getTabId()Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move-object v5, v2

    .line 48
    :goto_1
    if-eqz v0, :cond_2

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTabHomeResult;->getTabResponseList()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    :cond_2
    invoke-direct {v4, v5, v2}, Lcom/startshorts/androidplayer/viewmodel/discover/b$e;-><init>(Ljava/lang/Integer;Ljava/util/List;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v3, v4}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->i()V

    .line 61
    .line 62
    .line 63
    :cond_3
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->s(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;->x(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)V

    .line 74
    .line 75
    .line 76
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 77
    .line 78
    const-string v1, "discover"

    .line 79
    .line 80
    invoke-virtual {v0, p1, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->m0(Lcom/startshorts/androidplayer/bean/exception/ResponseException;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_4
    return-void
.end method

.method private final I(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;",
            ">;)Z"
        }
    .end annotation

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ljava/util/Collection;

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getShortPlayResponseList()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/util/Collection;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 v0, 0x0

    .line 48
    move v1, v0

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    :goto_1
    return v1
.end method

.method private final J(I)V
    .locals 10

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->a:Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->t()Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;->getTabId()Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-ne v2, p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;->getBannerResponseList()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-direct {p0, v2}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;->I(Ljava/util/List;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    const-string p1, "use cache modules"

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 38
    .line 39
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/discover/b$c;

    .line 40
    .line 41
    invoke-direct {v2, v1}, Lcom/startshorts/androidplayer/viewmodel/discover/b$c;-><init>(Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p1, v2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->h()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    :goto_0
    new-instance v6, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModules$1;

    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    invoke-direct {v6, p0, p1, v0}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModules$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;ILrs/c;)V

    .line 55
    .line 56
    .line 57
    new-instance v7, Ltk/a;

    .line 58
    .line 59
    invoke-direct {v7, p0}, Ltk/a;-><init>(Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;)V

    .line 60
    .line 61
    .line 62
    const/4 v8, 0x2

    .line 63
    const/4 v9, 0x0

    .line 64
    const-string v4, "loadModules"

    .line 65
    .line 66
    const/4 v5, 0x0

    .line 67
    move-object v3, p0

    .line 68
    invoke-static/range {v3 .. v9}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->j(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method private static final K(Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;Ljava/lang/String;)Lkotlin/Unit;
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
    const-string v2, "loadModules failed -> "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "DiscoverViewModel"

    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "Job was cancelled"

    .line 26
    .line 27
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->y(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 37
    .line 38
    return-object p0
.end method

.method private final L(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Ljava/lang/String;III)Lkotlinx/coroutines/r;
    .locals 9

    .line 1
    new-instance v8, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModulesPage$1;

    .line 2
    .line 3
    const/4 v7, 0x0

    .line 4
    move-object v0, v8

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move v3, p3

    .line 8
    move v4, p4

    .line 9
    move v5, p5

    .line 10
    move-object v6, p0

    .line 11
    invoke-direct/range {v0 .. v7}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadModulesPage$1;-><init>(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Ljava/lang/String;IIILcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;Lrs/c;)V

    .line 12
    .line 13
    .line 14
    const/4 v4, 0x2

    .line 15
    const/4 v5, 0x0

    .line 16
    const-string v1, "loadMorePageEpisodes"

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    move-object v0, p0

    .line 20
    move-object v3, v8

    .line 21
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method private final M()V
    .locals 9

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->a:Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->u()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->t()Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    move-object v3, v1

    .line 12
    check-cast v3, Ljava/util/Collection;

    .line 13
    .line 14
    if-eqz v3, :cond_2

    .line 15
    .line 16
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const-string v3, "use cache discoverTab"

    .line 24
    .line 25
    invoke-virtual {p0, v3}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;->getTabId()Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;->getTabId()Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    :goto_0
    sget-object v4, Lud/a;->a:Lud/a;

    .line 47
    .line 48
    invoke-virtual {v4, v3}, Lud/a;->n0(Z)V

    .line 49
    .line 50
    .line 51
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 52
    .line 53
    new-instance v4, Lcom/startshorts/androidplayer/viewmodel/discover/b$e;

    .line 54
    .line 55
    invoke-direct {v4, v2, v1}, Lcom/startshorts/androidplayer/viewmodel/discover/b$e;-><init>(Ljava/lang/Integer;Ljava/util/List;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v3, v4}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->i()V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->v()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    new-instance v1, Ltk/b;

    .line 72
    .line 73
    invoke-direct {v1, p0}, Ltk/b;-><init>(Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->L(Lkotlin/jvm/functions/Function1;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_3
    new-instance v5, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadTabs$2;

    .line 81
    .line 82
    const/4 v0, 0x0

    .line 83
    invoke-direct {v5, p0, v0}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadTabs$2;-><init>(Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;Lrs/c;)V

    .line 84
    .line 85
    .line 86
    new-instance v6, Ltk/c;

    .line 87
    .line 88
    invoke-direct {v6, p0}, Ltk/c;-><init>(Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;)V

    .line 89
    .line 90
    .line 91
    const/4 v7, 0x2

    .line 92
    const/4 v8, 0x0

    .line 93
    const-string v3, "loadTabs"

    .line 94
    .line 95
    const/4 v4, 0x0

    .line 96
    move-object v2, p0

    .line 97
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->j(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method private static final N(Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;Lkotlin/Result;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;->H(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method private static final O(Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;Ljava/lang/String;)Lkotlin/Unit;
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
    const-string v2, "loadModules failed -> "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "DiscoverViewModel"

    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "Job was cancelled"

    .line 26
    .line 27
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->y(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 37
    .line 38
    return-object p0
.end method

.method private final P()V
    .locals 7

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/b;->F0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v4, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$logAppOpenDay2$1;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {v4, v0}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$logAppOpenDay2$1;-><init>(Lrs/c;)V

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x2

    .line 17
    const/4 v6, 0x0

    .line 18
    const-string v2, "logAppOpenDay2"

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    move-object v1, p0

    .line 22
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private final R(ILkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$refreshModules$1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v3, p1, p0, p2, v0}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$refreshModules$1;-><init>(ILcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;Lkotlin/jvm/functions/Function1;Lrs/c;)V

    .line 5
    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x0

    .line 9
    const-string v1, "refreshModules"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    move-object v0, p0

    .line 13
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final F()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/discover/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Q(Lcom/startshorts/androidplayer/viewmodel/discover/a;)V
    .locals 6
    .param p1    # Lcom/startshorts/androidplayer/viewmodel/discover/a;
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
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/discover/a$a;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/discover/a$a;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/discover/a$a;->a()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;->J(I)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/discover/a$d;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;->P()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/discover/a$e;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/discover/a$e;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/discover/a$e;->b()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/discover/a$e;->a()Lkotlin/jvm/functions/Function1;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {p0, v0, p1}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;->R(ILkotlin/jvm/functions/Function1;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/discover/a$b;

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/discover/a$b;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/discover/a$b;->a()Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/discover/a$b;->c()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/discover/a$b;->e()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/discover/a$b;->d()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/discover/a$b;->b()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    move-object v0, p0

    .line 73
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;->L(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Ljava/lang/String;III)Lkotlinx/coroutines/r;

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    instance-of p1, p1, Lcom/startshorts/androidplayer/viewmodel/discover/a$c;

    .line 78
    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->e()V

    .line 82
    .line 83
    .line 84
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;->M()V

    .line 85
    .line 86
    .line 87
    :goto_0
    return-void

    .line 88
    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 89
    .line 90
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 91
    .line 92
    .line 93
    throw p1
.end method

.method public t()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "DiscoverViewModel"

    .line 2
    .line 3
    return-object v0
.end method

.method public x(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/exception/ResponseException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "throwable"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/discover/b$a;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->p(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/discover/b$a;-><init>(Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
