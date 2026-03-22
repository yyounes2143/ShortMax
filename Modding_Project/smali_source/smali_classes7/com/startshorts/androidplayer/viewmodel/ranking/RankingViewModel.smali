.class public final Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;
.super Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;
.source "RankingViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final e:Lfk/x;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/ranking/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lfk/x;

    .line 5
    .line 6
    const/16 v1, 0x14

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lfk/x;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;->e:Lfk/x;

    .line 12
    .line 13
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic A(Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;ILjava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;->F(Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;ILjava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final E(IIIILjava/lang/Integer;)V
    .locals 9

    .line 1
    new-instance v8, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel$queryNextPage$1;

    .line 2
    .line 3
    const/4 v7, 0x0

    .line 4
    move-object v0, v8

    .line 5
    move v1, p4

    .line 6
    move-object v2, p5

    .line 7
    move v3, p2

    .line 8
    move v4, p3

    .line 9
    move-object v5, p0

    .line 10
    move v6, p1

    .line 11
    invoke-direct/range {v0 .. v7}, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel$queryNextPage$1;-><init>(ILjava/lang/Integer;IILcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;ILrs/c;)V

    .line 12
    .line 13
    .line 14
    new-instance v4, Lbl/a;

    .line 15
    .line 16
    invoke-direct {v4, p0, p1}, Lbl/a;-><init>(Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;I)V

    .line 17
    .line 18
    .line 19
    const/4 v5, 0x2

    .line 20
    const/4 v6, 0x0

    .line 21
    const-string v1, "queryRankList"

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    move-object v0, p0

    .line 25
    move-object v3, v8

    .line 26
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->j(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private static final F(Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;ILjava/lang/String;)Lkotlin/Unit;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;->e:Lfk/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfk/x;->f()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/ranking/b$a;

    .line 9
    .line 10
    new-instance v2, Ljava/lang/Throwable;

    .line 11
    .line 12
    invoke-direct {v2, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v2}, Ljk/z;->a(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->p(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-direct {v1, p1, p0}, Lcom/startshorts/androidplayer/viewmodel/ranking/b$a;-><init>(ILcom/startshorts/androidplayer/bean/api/ApiErrorState;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 30
    .line 31
    return-object p0
.end method


# virtual methods
.method public final B()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/ranking/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final C()Lfk/x;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;->e:Lfk/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public final D(Lcom/startshorts/androidplayer/viewmodel/ranking/a;)V
    .locals 6
    .param p1    # Lcom/startshorts/androidplayer/viewmodel/ranking/a;
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
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/ranking/a$a;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/ranking/a$a;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/ranking/a$a;->d()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/ranking/a$a;->a()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;->e:Lfk/x;

    .line 21
    .line 22
    invoke-virtual {v0}, Lfk/x;->c()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/ranking/a$a;->b()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/ranking/a$a;->c()Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    move-object v0, p0

    .line 35
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/ranking/RankingViewModel;->E(IIIILjava/lang/Integer;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 40
    .line 41
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 42
    .line 43
    .line 44
    throw p1
.end method
