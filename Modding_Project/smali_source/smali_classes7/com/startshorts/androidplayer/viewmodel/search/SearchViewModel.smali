.class public final Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;
.super Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;
.source "SearchViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final h:Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final e:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/search/d;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private f:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->h:Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 5
    .line 6
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/search/d$a;

    .line 7
    .line 8
    new-instance v2, Lcom/startshorts/androidplayer/bean/search/SearchRankingResultV2;

    .line 9
    .line 10
    new-instance v3, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-direct {v2, v3, v4, v4}, Lcom/startshorts/androidplayer/bean/search/SearchRankingResultV2;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v1, v2, v3}, Lcom/startshorts/androidplayer/viewmodel/search/d$a;-><init>(Lcom/startshorts/androidplayer/bean/search/SearchRankingResultV2;Z)V

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->B()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static final synthetic A(Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->B()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final B()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->f:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lkotlinx/coroutines/r;->isActive()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 13
    .line 14
    const-string v1, "SearchViewModel"

    .line 15
    .line 16
    const-string v2, "fetchPopularList is running, return"

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance v6, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$fetchPopularAndRanking$1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-direct {v6, p0, v0}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$fetchPopularAndRanking$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;Lrs/c;)V

    .line 26
    .line 27
    .line 28
    const/4 v7, 0x2

    .line 29
    const/4 v8, 0x0

    .line 30
    const-string v4, "fetchPopularList"

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    move-object v3, p0

    .line 34
    invoke-static/range {v3 .. v8}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->f:Lkotlinx/coroutines/r;

    .line 39
    .line 40
    return-void
.end method

.method private final D()Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$goToInitState$1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v3, p0, v0}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$goToInitState$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;Lrs/c;)V

    .line 5
    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x0

    .line 9
    const-string v1, "goToInitState"

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
    move-result-object v0

    .line 17
    return-object v0
.end method

.method private final F(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/search/d$f;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/search/d$f;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "searchExactly "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    new-instance v5, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactly$1;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-direct {v5, p2, p1, p0, v0}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactly$1;-><init>(Ljava/lang/Long;Ljava/lang/String;Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;Lrs/c;)V

    .line 32
    .line 33
    .line 34
    const/4 v6, 0x2

    .line 35
    const/4 v7, 0x0

    .line 36
    const/4 v4, 0x0

    .line 37
    move-object v2, p0

    .line 38
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private final G(Ljava/lang/String;II)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/search/d$d;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/search/d$d;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "searchExactlyMore keyword="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ",pageNumberForRequest="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactlyMore$1;

    .line 37
    .line 38
    const/4 v9, 0x0

    .line 39
    move-object v4, v0

    .line 40
    move-object v5, p1

    .line 41
    move v6, p2

    .line 42
    move v7, p3

    .line 43
    move-object v8, p0

    .line 44
    invoke-direct/range {v4 .. v9}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchExactlyMore$1;-><init>(Ljava/lang/String;IILcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;Lrs/c;)V

    .line 45
    .line 46
    .line 47
    const/4 v6, 0x2

    .line 48
    const/4 v7, 0x0

    .line 49
    const/4 v4, 0x0

    .line 50
    move-object v2, p0

    .line 51
    move-object v5, v0

    .line 52
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method private final H(Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->g:Lkotlinx/coroutines/r;

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
    invoke-static {p1}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 17
    .line 18
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/search/d$j;

    .line 19
    .line 20
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/search/d$j;-><init>(Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->w0()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 41
    .line 42
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/search/d$i;

    .line 43
    .line 44
    invoke-direct {v2, p1}, Lcom/startshorts/androidplayer/viewmodel/search/d$i;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v2, "searchFuzzy "

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    new-instance v6, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchFuzzy$1;

    .line 68
    .line 69
    invoke-direct {v6, p1, p0, v1}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel$searchFuzzy$1;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;Lrs/c;)V

    .line 70
    .line 71
    .line 72
    const/4 v7, 0x2

    .line 73
    const/4 v8, 0x0

    .line 74
    const/4 v5, 0x0

    .line 75
    move-object v3, p0

    .line 76
    invoke-static/range {v3 .. v8}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->g:Lkotlinx/coroutines/r;

    .line 81
    .line 82
    return-void
.end method


# virtual methods
.method public final C()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/search/d;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final E(Lcom/startshorts/androidplayer/viewmodel/search/c;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/viewmodel/search/c;
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
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/search/c$a;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->D()Lkotlinx/coroutines/r;

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/search/c$d;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/search/c$d;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/search/c$d;->a()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->H(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/search/c$b;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/search/c$b;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/search/c$b;->a()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/search/c$b;->b()Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {p0, v0, p1}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->F(Ljava/lang/String;Ljava/lang/Long;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/search/c$c;

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/search/c$c;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/search/c$c;->a()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/search/c$c;->b()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/search/c$c;->c()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    invoke-direct {p0, v0, v1, p1}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->G(Ljava/lang/String;II)V

    .line 65
    .line 66
    .line 67
    :goto_0
    return-void

    .line 68
    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 69
    .line 70
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 71
    .line 72
    .line 73
    throw p1
.end method

.method public t()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "SearchViewModel"

    .line 2
    .line 3
    return-object v0
.end method
