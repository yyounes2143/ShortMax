.class public final Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;
.super Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;
.source "WatchHistoryViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final g:Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private e:Z

.field private final f:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;->g:Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel$a;

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
    new-instance v0, Lxk/g;

    .line 5
    .line 6
    invoke-direct {v0}, Lxk/g;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;->f:Lms/i;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic A(Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;->N(Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;->L(Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;->I()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic D(Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;Lcom/startshorts/androidplayer/bean/exception/ResponseException;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;->H(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic E(Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;->e:Z

    .line 2
    .line 3
    return-void
.end method

.method private final F(Landroid/content/Context;Ljava/util/List;)Lkotlinx/coroutines/r;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lkotlinx/coroutines/r;"
        }
    .end annotation

    .line 1
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel$deleteWatchHistories$1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v3, p1, p2, p0, v0}, Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel$deleteWatchHistories$1;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;Lrs/c;)V

    .line 5
    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x0

    .line 9
    const-string v1, "deleteWatchHistories"

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

.method private final H(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;->e:Z

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->x(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 8
    .line 9
    const-string v1, "recently"

    .line 10
    .line 11
    invoke-virtual {v0, p1, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->m0(Lcom/startshorts/androidplayer/bean/exception/ResponseException;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static final I()Landroidx/lifecycle/MutableLiveData;
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

.method private final K(JI)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;->e:Z

    .line 8
    .line 9
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel$queryWatchHistories$1;

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    move-object v1, v0

    .line 13
    move-wide v2, p1

    .line 14
    move v4, p3

    .line 15
    move-object v5, p0

    .line 16
    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel$queryWatchHistories$1;-><init>(JILcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;Lrs/c;)V

    .line 17
    .line 18
    .line 19
    new-instance v5, Lxk/e;

    .line 20
    .line 21
    invoke-direct {v5, p0}, Lxk/e;-><init>(Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;)V

    .line 22
    .line 23
    .line 24
    const/4 v6, 0x2

    .line 25
    const/4 v7, 0x0

    .line 26
    const-string v2, "queryWatchHistories"

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    move-object v1, p0

    .line 30
    move-object v4, v0

    .line 31
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->j(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private static final L(Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Throwable;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljk/z;->a(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;->H(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method private final M(JI)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;->e:Z

    .line 8
    .line 9
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel$queryWatchHistoriesSimple$1;

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    move-object v1, v0

    .line 13
    move-wide v2, p1

    .line 14
    move v4, p3

    .line 15
    move-object v5, p0

    .line 16
    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel$queryWatchHistoriesSimple$1;-><init>(JILcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;Lrs/c;)V

    .line 17
    .line 18
    .line 19
    new-instance v5, Lxk/f;

    .line 20
    .line 21
    invoke-direct {v5, p0}, Lxk/f;-><init>(Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;)V

    .line 22
    .line 23
    .line 24
    const/4 v6, 0x2

    .line 25
    const/4 v7, 0x0

    .line 26
    const-string v2, "queryWatchHistories"

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    move-object v1, p0

    .line 30
    move-object v4, v0

    .line 31
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->j(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private static final N(Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Throwable;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljk/z;->a(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;->H(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method


# virtual methods
.method public final G()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/mylist/e;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;->f:Lms/i;

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

.method public final J(Lcom/startshorts/androidplayer/viewmodel/mylist/d;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/viewmodel/mylist/d;
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
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/mylist/d$c;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/mylist/d$c;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/mylist/d$c;->a()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/mylist/d$c;->b()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-direct {p0, v0, v1, p1}, Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;->M(JI)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/mylist/d$b;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/mylist/d$b;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/mylist/d$b;->a()J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/mylist/d$b;->b()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-direct {p0, v0, v1, p1}, Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;->K(JI)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/mylist/d$a;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/mylist/d$a;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/mylist/d$a;->a()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/mylist/d$a;->b()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {p0, v0, p1}, Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;->F(Landroid/content/Context;Ljava/util/List;)Lkotlinx/coroutines/r;

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void

    .line 60
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 61
    .line 62
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 63
    .line 64
    .line 65
    throw p1
.end method

.method public t()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "WatchHistoryViewModel"

    .line 2
    .line 3
    return-object v0
.end method

.method public w()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;->e:Z

    .line 3
    .line 4
    invoke-super {p0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->w()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
