.class public final Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel;
.super Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;
.source "DiscoverMoreViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final f:Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final e:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/discover/f;",
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
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel;->f:Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel$a;

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
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/discover/f$b;->a:Lcom/startshorts/androidplayer/viewmodel/discover/f$b;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    return-void
.end method

.method private final B(Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;Ljava/lang/String;)Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel$loadMoreEpisodes$1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v3, p1, p2, p0, v0}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel$loadMoreEpisodes$1;-><init>(Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;Ljava/lang/String;Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel;Lrs/c;)V

    .line 5
    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x0

    .line 9
    const-string v1, "loadMoreEpisodes"

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
    move-result-object p1

    .line 17
    return-object p1
.end method


# virtual methods
.method public final A()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/discover/f;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final C(Lcom/startshorts/androidplayer/viewmodel/discover/e;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/viewmodel/discover/e;
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
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/discover/e$a;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/discover/e$a;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/discover/e$a;->b()Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/discover/e$a;->a()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {p0, v0, p1}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel;->B(Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;Ljava/lang/String;)Lkotlinx/coroutines/r;

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 25
    .line 26
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public t()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "DiscoverMoreViewModel"

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverMoreViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/discover/f$a;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->p(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/discover/f$a;-><init>(Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
