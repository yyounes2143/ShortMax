.class public final Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;
.super Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;
.source "RewardsViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final m:Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final e:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/reward/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/reward/k;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/reward/j;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final h:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/reward/d;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final i:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/reward/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final j:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/reward/i;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final k:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/reward/i;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private l:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->m:Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$a;

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
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 10
    .line 11
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 17
    .line 18
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 19
    .line 20
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 24
    .line 25
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 26
    .line 27
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 33
    .line 34
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 38
    .line 39
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 40
    .line 41
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    .line 45
    .line 46
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 47
    .line 48
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 52
    .line 53
    return-void
.end method

.method private final A(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)Lkotlinx/coroutines/r;
    .locals 9

    .line 1
    new-instance v8, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$acceptTaskReward$1;

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
    move-object v3, p0

    .line 8
    move v4, p3

    .line 9
    move v5, p4

    .line 10
    move-object v6, p5

    .line 11
    invoke-direct/range {v0 .. v7}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$acceptTaskReward$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;IILjava/lang/String;Lrs/c;)V

    .line 12
    .line 13
    .line 14
    const/4 v4, 0x2

    .line 15
    const/4 v5, 0x0

    .line 16
    const-string v1, "acceptTaskReward"

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

.method public static final synthetic B(Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->P()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic C(Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;)Lkotlinx/coroutines/r;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->S()Lkotlinx/coroutines/r;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final D(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Z)Lkotlinx/coroutines/r;
    .locals 10

    .line 1
    new-instance v9, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$checkIn$1;

    .line 2
    .line 3
    const/4 v8, 0x0

    .line 4
    move-object v0, v9

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p3

    .line 7
    move-object v3, p0

    .line 8
    move v4, p4

    .line 9
    move-object v5, p5

    .line 10
    move v6, p2

    .line 11
    move/from16 v7, p6

    .line 12
    .line 13
    invoke-direct/range {v0 .. v8}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$checkIn$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;ILjava/lang/String;IZLrs/c;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    const/4 v1, 0x0

    .line 18
    const-string v2, "checkIn"

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

.method private final E(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;Ljava/lang/String;)Lkotlinx/coroutines/r;
    .locals 7

    .line 1
    new-instance v6, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$claimCheckInMixedTaskReward$1;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v0, v6

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move-object v3, p0

    .line 8
    move-object v4, p3

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$claimCheckInMixedTaskReward$1;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;Ljava/lang/String;Lrs/c;)V

    .line 10
    .line 11
    .line 12
    const/4 v4, 0x2

    .line 13
    const-string v1, "claimCheckInMixedTaskReward"

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    move-object v0, p0

    .line 17
    move-object v3, v6

    .line 18
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method private final F(Ljava/util/List;ILjava/lang/String;)Lkotlinx/coroutines/r;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/coroutines/r;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$dailyWatchTimeTaskReward$1;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v0, v6

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p3

    .line 8
    move v4, p2

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$dailyWatchTimeTaskReward$1;-><init>(Ljava/util/List;Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;Ljava/lang/String;ILrs/c;)V

    .line 10
    .line 11
    .line 12
    const/4 v4, 0x2

    .line 13
    const-string v1, "dailyWatchTimeTaskReward"

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    move-object v0, p0

    .line 17
    move-object v3, v6

    .line 18
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method private final G(Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;Ljava/lang/String;Ljava/lang/Integer;)Lkotlinx/coroutines/r;
    .locals 7

    .line 1
    new-instance v6, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$exchangeWatchAdBonusTask$1;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v0, v6

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p3

    .line 7
    move-object v3, p0

    .line 8
    move-object v4, p2

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$exchangeWatchAdBonusTask$1;-><init>(Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;Ljava/lang/Integer;Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;Ljava/lang/String;Lrs/c;)V

    .line 10
    .line 11
    .line 12
    const/4 v4, 0x2

    .line 13
    const-string v1, "exchangeWatchAdBonus"

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    move-object v0, p0

    .line 17
    move-object v3, v6

    .line 18
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method private final P()V
    .locals 2

    .line 1
    sget-object v0, Lbf/e;->a:Lbf/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lbf/e;->j()Lbf/e$a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lbf/e$a;->i()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lbf/e;->j()Lbf/e$a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lbf/e$a;->h()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 21
    .line 22
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/reward/d$a;->a:Lcom/startshorts/androidplayer/viewmodel/reward/d$a;

    .line 23
    .line 24
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method private final R(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/reward/a$d;->a:Lcom/startshorts/androidplayer/viewmodel/reward/a$d;

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    new-instance v5, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryCheckInInfo$1;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-direct {v5, p1, p0, v0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryCheckInInfo$1;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;Lrs/c;)V

    .line 12
    .line 13
    .line 14
    const/4 v6, 0x2

    .line 15
    const/4 v7, 0x0

    .line 16
    const-string v3, "queryCheckInInfo"

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    move-object v2, p0

    .line 20
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private final S()Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryDailyWatchTask$1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v3, p0, v0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryDailyWatchTask$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;Lrs/c;)V

    .line 5
    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x0

    .line 9
    const-string v1, "queryDailyWatchTask"

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

.method private final T()V
    .locals 6

    .line 1
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$querySignInAdInfo$1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v3, p0, v0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$querySignInAdInfo$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;Lrs/c;)V

    .line 5
    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x0

    .line 9
    const-string v1, "querySignInAdInfo"

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

.method private final U()Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryTaskList$1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v3, p0, v0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryTaskList$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;Lrs/c;)V

    .line 5
    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x0

    .line 9
    const-string v1, "queryTaskList"

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

.method private final V(Z)Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryWatchAdBonuses$1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v3, p1, p0, v0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryWatchAdBonuses$1;-><init>(ZLcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;Lrs/c;)V

    .line 5
    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x0

    .line 9
    const-string v1, "queryWatchAdBonusesTask"

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

.method private final Y(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;)Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$startCheckInTask$1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v3, p1, p2, p0, v0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$startCheckInTask$1;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;Lrs/c;)V

    .line 5
    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x0

    .line 9
    const-string v1, "startCheckInTask"

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

.method private final Z(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;)Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$startTask$1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v3, p1, p2, p0, v0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$startTask$1;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;Lrs/c;)V

    .line 5
    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x0

    .line 9
    const-string v1, "startTask"

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
.method public final H()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final I()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/reward/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final J()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/reward/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final K()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/reward/d;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final L()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/reward/i;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final M()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/reward/i;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final N()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/reward/j;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final O()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/reward/k;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Q(Lcom/startshorts/androidplayer/viewmodel/reward/c;)V
    .locals 7
    .param p1    # Lcom/startshorts/androidplayer/viewmodel/reward/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "rewardsIntent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/c$f;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/reward/c$f;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/c$f;->a()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->R(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/c$b;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/reward/c$b;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/c$b;->c()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/c$b;->f()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/c$b;->d()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/c$b;->b()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/c$b;->e()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/c$b;->a()Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    move-object v0, p0

    .line 54
    invoke-direct/range {v0 .. v6}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->D(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Z)Lkotlinx/coroutines/r;

    .line 55
    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :cond_1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/c$h;

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->T()V

    .line 64
    .line 65
    .line 66
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 67
    .line 68
    goto/16 :goto_0

    .line 69
    .line 70
    :cond_2
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/c$j;

    .line 71
    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/reward/c$j;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/c$j;->a()Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->V(Z)Lkotlinx/coroutines/r;

    .line 81
    .line 82
    .line 83
    goto/16 :goto_0

    .line 84
    .line 85
    :cond_3
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/c$e;

    .line 86
    .line 87
    if-eqz v0, :cond_4

    .line 88
    .line 89
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/reward/c$e;

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/c$e;->c()Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/c$e;->a()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/c$e;->b()Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-direct {p0, v0, v1, p1}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->G(Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;Ljava/lang/String;Ljava/lang/Integer;)Lkotlinx/coroutines/r;

    .line 104
    .line 105
    .line 106
    goto/16 :goto_0

    .line 107
    .line 108
    :cond_4
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/c$c;

    .line 109
    .line 110
    if-eqz v0, :cond_5

    .line 111
    .line 112
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/reward/c$c;

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/c$c;->a()Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/c$c;->c()Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/c$c;->b()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-direct {p0, v0, v1, p1}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->E(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;Ljava/lang/String;)Lkotlinx/coroutines/r;

    .line 127
    .line 128
    .line 129
    goto/16 :goto_0

    .line 130
    .line 131
    :cond_5
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/c$i;

    .line 132
    .line 133
    if-eqz v0, :cond_6

    .line 134
    .line 135
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->U()Lkotlinx/coroutines/r;

    .line 136
    .line 137
    .line 138
    goto/16 :goto_0

    .line 139
    .line 140
    :cond_6
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/c$a;

    .line 141
    .line 142
    if-eqz v0, :cond_7

    .line 143
    .line 144
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/reward/c$a;

    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/c$a;->b()Landroid/content/Context;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/c$a;->d()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/c$a;->e()I

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/c$a;->a()I

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/c$a;->c()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    move-object v0, p0

    .line 167
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->A(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)Lkotlinx/coroutines/r;

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_7
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/c$k;

    .line 172
    .line 173
    if-eqz v0, :cond_8

    .line 174
    .line 175
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 176
    .line 177
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/reward/j$e;

    .line 178
    .line 179
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/reward/c$k;

    .line 180
    .line 181
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/c$k;->a()I

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/reward/j$e;-><init>(I)V

    .line 186
    .line 187
    .line 188
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 192
    .line 193
    goto :goto_0

    .line 194
    :cond_8
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/c$d;

    .line 195
    .line 196
    if-eqz v0, :cond_9

    .line 197
    .line 198
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/reward/c$d;

    .line 199
    .line 200
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/c$d;->c()Ljava/util/List;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/c$d;->a()I

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/c$d;->b()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-direct {p0, v0, v1, p1}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->F(Ljava/util/List;ILjava/lang/String;)Lkotlinx/coroutines/r;

    .line 213
    .line 214
    .line 215
    goto :goto_0

    .line 216
    :cond_9
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/c$g;

    .line 217
    .line 218
    if-eqz v0, :cond_a

    .line 219
    .line 220
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->S()Lkotlinx/coroutines/r;

    .line 221
    .line 222
    .line 223
    goto :goto_0

    .line 224
    :cond_a
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/c$m;

    .line 225
    .line 226
    if-eqz v0, :cond_b

    .line 227
    .line 228
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/reward/c$m;

    .line 229
    .line 230
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/c$m;->a()Landroid/content/Context;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/c$m;->b()Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-direct {p0, v0, p1}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->Z(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;)Lkotlinx/coroutines/r;

    .line 239
    .line 240
    .line 241
    goto :goto_0

    .line 242
    :cond_b
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/c$l;

    .line 243
    .line 244
    if-eqz v0, :cond_c

    .line 245
    .line 246
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/reward/c$l;

    .line 247
    .line 248
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/c$l;->a()Landroid/content/Context;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/c$l;->b()Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    invoke-direct {p0, v0, p1}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->Y(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;)Lkotlinx/coroutines/r;

    .line 257
    .line 258
    .line 259
    :goto_0
    return-void

    .line 260
    :cond_c
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 261
    .line 262
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 263
    .line 264
    .line 265
    throw p1
.end method

.method public final W(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "liveCircleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->w()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 15
    .line 16
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/reward/a$d;->a:Lcom/startshorts/androidplayer/viewmodel/reward/a$d;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 27
    .line 28
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/reward/k$g;->a:Lcom/startshorts/androidplayer/viewmodel/reward/k$g;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 39
    .line 40
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/reward/j$h;->a:Lcom/startshorts/androidplayer/viewmodel/reward/j$h;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 56
    .line 57
    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final X(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "RewardViewModel"

    .line 2
    .line 3
    return-object v0
.end method
