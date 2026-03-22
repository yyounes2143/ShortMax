.class public final Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreCategoryFilterViewModel;
.super Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;
.source "DiscoverMoreCategoryFilterViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreCategoryFilterViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final f:Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreCategoryFilterViewModel$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final e:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/discover/d;",
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
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreCategoryFilterViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreCategoryFilterViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreCategoryFilterViewModel;->f:Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreCategoryFilterViewModel$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 5
    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/discover/d$b;->a:Lcom/startshorts/androidplayer/viewmodel/discover/d$b;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreCategoryFilterViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    return-void
.end method

.method private final C(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/Integer;)Lkotlinx/coroutines/r;
    .locals 10

    .line 1
    new-instance v9, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreCategoryFilterViewModel$queryCategoryEpisode$1;

    .line 2
    .line 3
    const/4 v8, 0x0

    .line 4
    move-object v0, v9

    .line 5
    move v1, p4

    .line 6
    move v2, p3

    .line 7
    move-object v3, p1

    .line 8
    move-object v4, p2

    .line 9
    move-object v5, p5

    .line 10
    move-object/from16 v6, p6

    .line 11
    .line 12
    move-object v7, p0

    .line 13
    invoke-direct/range {v0 .. v8}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreCategoryFilterViewModel$queryCategoryEpisode$1;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreCategoryFilterViewModel;Lrs/c;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    const/4 v1, 0x0

    .line 18
    const-string v2, "queryCategoryEpisode"

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    move-object p1, p0

    .line 22
    move-object p2, v2

    .line 23
    move p3, v3

    .line 24
    move-object p4, v9

    .line 25
    move p5, v0

    .line 26
    move-object/from16 p6, v1

    .line 27
    .line 28
    invoke-static/range {p1 .. p6}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method


# virtual methods
.method public final A()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/discover/d;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreCategoryFilterViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final B(Lcom/startshorts/androidplayer/viewmodel/discover/c;)V
    .locals 7
    .param p1    # Lcom/startshorts/androidplayer/viewmodel/discover/c;
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
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/discover/c$a;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/discover/c$a;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/discover/c$a;->a()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/discover/c$a;->b()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/discover/c$a;->d()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/discover/c$a;->e()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/discover/c$a;->c()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/discover/c$a;->f()Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    move-object v0, p0

    .line 37
    invoke-direct/range {v0 .. v6}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreCategoryFilterViewModel;->C(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/Integer;)Lkotlinx/coroutines/r;

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 42
    .line 43
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 44
    .line 45
    .line 46
    throw p1
.end method

.method public t()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "DiscoverMoreCategoryFilterViewModel"

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreCategoryFilterViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/discover/d$a;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->p(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/discover/d$a;-><init>(Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
