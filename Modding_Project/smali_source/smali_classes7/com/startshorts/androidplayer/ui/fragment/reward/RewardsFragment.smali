.class public final Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/ListFragment;
.source "RewardsFragment.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NotifyDataSetChanged"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/ListFragment<",
        "Lcom/startshorts/androidplayer/bean/reward/RewardsModule;",
        "Lcom/startshorts/androidplayer/databinding/FragmentRewardsBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRewardsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n*L\n1#1,1701:1\n15#2,9:1702\n15#2,9:1711\n15#2,9:1720\n15#2,9:1729\n15#2,9:1738\n15#2,9:1747\n15#2,9:1756\n15#2,9:1765\n15#2,9:1774\n15#2,9:1783\n15#2,9:1792\n15#2,9:1801\n15#2,9:1810\n15#2,9:1819\n15#2,9:1828\n15#2,9:1837\n15#2,9:1846\n15#2,9:1855\n15#2,9:1864\n15#2,9:1873\n15#2,9:1882\n*S KotlinDebug\n*F\n+ 1 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment\n*L\n464#1:1702,9\n723#1:1711,9\n796#1:1720,9\n823#1:1729,9\n889#1:1738,9\n916#1:1747,9\n941#1:1756,9\n960#1:1765,9\n991#1:1774,9\n1073#1:1783,9\n1135#1:1792,9\n1362#1:1801,9\n1390#1:1810,9\n1412#1:1819,9\n1448#1:1828,9\n1461#1:1837,9\n1477#1:1846,9\n181#1:1855,9\n189#1:1864,9\n206#1:1873,9\n839#1:1882,9\n*E\n"
    }
.end annotation


# static fields
.field public static final Y:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static Z:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final A:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$mPropertyObserver$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final B:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final C:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private D:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private E:Z

.field private F:Z

.field private final G:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private H:Z

.field private I:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private J:Lhi/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private K:Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private L:J

.field private M:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private N:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private O:I

.field private P:Z

.field private Q:Lcom/startshorts/androidplayer/bean/task/Task;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private R:Z

.field private S:Lcom/startshorts/androidplayer/bean/task/Task;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private T:Z

.field private U:I

.field private V:Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private W:Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private X:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->Y:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$a;

    .line 8
    .line 9
    sget-object v0, Lud/b;->a:Lud/b;

    .line 10
    .line 11
    invoke-virtual {v0}, Lud/b;->e2()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-string v0, "UTC+0"

    .line 18
    .line 19
    :cond_0
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->Z:Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/ListFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$mPropertyObserver$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$mPropertyObserver$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->A:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$mPropertyObserver$1;

    .line 10
    .line 11
    new-instance v0, Lvi/h;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lvi/h;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->B:Lms/i;

    .line 21
    .line 22
    new-instance v0, Lvi/i;

    .line 23
    .line 24
    invoke-direct {v0}, Lvi/i;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->C:Lms/i;

    .line 32
    .line 33
    new-instance v0, Lvi/j;

    .line 34
    .line 35
    invoke-direct {v0}, Lvi/j;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->G:Lms/i;

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->H:Z

    .line 46
    .line 47
    const-string v1, ""

    .line 48
    .line 49
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->N:Ljava/lang/String;

    .line 50
    .line 51
    const/4 v1, -0x1

    .line 52
    iput v1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->O:I

    .line 53
    .line 54
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->T:Z

    .line 55
    .line 56
    return-void
.end method

.method public static final synthetic A1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->L:J

    .line 2
    .line 3
    return-void
.end method

.method private static final A2(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/viewmodel/reward/k;)Lkotlin/Unit;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/k$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/reward/k$a;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/k$a;->a()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->U:I

    .line 12
    .line 13
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$j0;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$j0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$k0;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$k0;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {p0, p1, v0}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/k$d;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$l0;

    .line 32
    .line 33
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$l0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/viewmodel/reward/k;)V

    .line 34
    .line 35
    .line 36
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$m0;

    .line 37
    .line 38
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$m0;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-static {p0, v0, p1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 45
    .line 46
    return-object p0
.end method

.method public static final synthetic B1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->W:Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog;

    .line 2
    .line 3
    return-void
.end method

.method private static final B2(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/viewmodel/reward/d;)Lkotlin/Unit;
    .locals 1

    .line 1
    instance-of p1, p1, Lcom/startshorts/androidplayer/viewmodel/reward/d$a;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$n0;

    .line 6
    .line 7
    invoke-direct {p1, p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$n0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$o0;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$o0;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {p0, p1, v0}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method public static final synthetic C1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->V:Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;

    .line 2
    .line 3
    return-void
.end method

.method private static final C2(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/viewmodel/reward/b;)Lkotlin/Unit;
    .locals 8

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/b$a;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/reward/b$a;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/b$a;->a()Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->getList()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, v1

    .line 20
    :goto_0
    check-cast v0, Ljava/util/Collection;

    .line 21
    .line 22
    if-eqz v0, :cond_5

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->e0()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    instance-of v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    move-object v1, p0

    .line 40
    check-cast v1, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 41
    .line 42
    :cond_2
    if-nez v1, :cond_3

    .line 43
    .line 44
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_3
    new-instance p0, Lvi/l;

    .line 48
    .line 49
    invoke-direct {p0, v1}, Lvi/l;-><init>(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    check-cast p0, Ljava/lang/Number;

    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    const/4 v0, -0x1

    .line 63
    if-eq p0, v0, :cond_4

    .line 64
    .line 65
    new-instance v0, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/b$a;->a()Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    const/4 v6, 0x2

    .line 72
    const/4 v7, 0x0

    .line 73
    const/4 v3, 0x6

    .line 74
    const/4 v4, 0x0

    .line 75
    move-object v2, v0

    .line 76
    invoke-direct/range {v2 .. v7}, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;-><init>(ILjava/lang/Object;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, p0, v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->A(ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 83
    .line 84
    return-object p0

    .line 85
    :cond_5
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 86
    .line 87
    return-object p0

    .line 88
    :cond_6
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 89
    .line 90
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 91
    .line 92
    .line 93
    throw p0
.end method

.method public static final synthetic D1(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->Z:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method private static final D2(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->getItemCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->getItemViewType(I)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x6

    .line 13
    if-ne v2, v3, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p0, -0x1

    .line 20
    return p0
.end method

.method public static synthetic E0(Lkotlin/jvm/functions/Function0;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->Y1(Lkotlin/jvm/functions/Function0;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic E1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->J2(Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final E2(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/viewmodel/reward/i;)Lkotlin/Unit;
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/i$a;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/reward/i$a;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/i$a;->a()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/i$a;->b()Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getRedirectUrl()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    const-string v0, ""

    .line 27
    .line 28
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/i$a;->b()Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-direct {p0, v0, p1, v1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->e2(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 41
    .line 42
    return-object p0
.end method

.method public static synthetic F0(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->O2(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic F1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/bean/task/Task;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->L2(Lcom/startshorts/androidplayer/bean/task/Task;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final F2(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/viewmodel/reward/i;)Lkotlin/Unit;
    .locals 2

    .line 1
    instance-of v0, p1, Lel/a;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    check-cast p1, Lel/a;

    .line 6
    .line 7
    invoke-virtual {p1}, Lel/a;->a()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-virtual {p1}, Lel/a;->b()Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getRedirectUrl()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, ""

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    move-object v0, v1

    .line 29
    :cond_1
    invoke-virtual {p1}, Lel/a;->b()Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getTaskName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-nez p1, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    move-object v1, p1

    .line 41
    :goto_0
    const/4 p1, 0x0

    .line 42
    invoke-direct {p0, v0, v1, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->e2(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 46
    .line 47
    return-object p0
.end method

.method public static synthetic G0(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/viewmodel/reward/k;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->A2(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/viewmodel/reward/k;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic G1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->M2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final G2(Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;Ljava/lang/String;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->D:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    new-instance v5, Lvi/u;

    .line 10
    .line 11
    invoke-direct {v5, p0, p1, p2}, Lvi/u;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/16 v6, 0x8

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    const-string v3, "check_in"

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-static/range {v0 .. v7}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->q0(Lcom/startshorts/androidplayer/manager/ad/AdManager;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static synthetic H0()Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->q2()Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic H1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->Q2(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final H2(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;Ljava/lang/String;Z)Lkotlin/Unit;
    .locals 2

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->d2()Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/reward/c$c;

    .line 8
    .line 9
    sget-object v1, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 10
    .line 11
    invoke-virtual {v1, p0}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->G(Landroidx/fragment/app/Fragment;)Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-direct {v0, p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/reward/c$c;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p3, v0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->Q(Lcom/startshorts/androidplayer/viewmodel/reward/c;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->I2(Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0
.end method

.method public static synthetic I0(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->s2(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic I1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->S2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final I2(Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$p0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$p0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$q0;

    .line 7
    .line 8
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$q0;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0, p1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static synthetic J0(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->P2(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final J1(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/reward/RewardsModule;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->d2()Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->O()Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v4, 0x4

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v1, 0x3

    .line 14
    const/4 v3, 0x0

    .line 15
    move-object v0, v6

    .line 16
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;-><init>(ILjava/lang/Object;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private final J2(Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->c2()Lve/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lve/g;->j()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    if-nez p1, :cond_1

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->K2()V

    .line 15
    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_1
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 19
    .line 20
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getSumNum()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x0

    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    iput-boolean v2, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    sget-object v1, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->a:Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->l()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getCompleteNum()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_6

    .line 44
    .line 45
    iget-boolean v3, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->F:Z

    .line 46
    .line 47
    const/4 v4, 0x1

    .line 48
    if-eqz v3, :cond_3

    .line 49
    .line 50
    iput-boolean v4, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getSumBonus()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    iput v2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->U:I

    .line 57
    .line 58
    sget-object v2, Lud/b;->a:Lud/b;

    .line 59
    .line 60
    invoke-virtual {v2, v1, v4}, Lud/b;->M4(Ljava/lang/String;Z)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    iget v3, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->O:I

    .line 65
    .line 66
    if-gtz v3, :cond_5

    .line 67
    .line 68
    iput-boolean v4, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 69
    .line 70
    sget-object v3, Lud/b;->a:Lud/b;

    .line 71
    .line 72
    invoke-virtual {v3, v1}, Lud/b;->z1(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-nez v5, :cond_4

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getSumBonus()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    iput v2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->U:I

    .line 83
    .line 84
    invoke-virtual {v3, v1, v4}, Lud/b;->M4(Ljava/lang/String;Z)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    iput v2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->U:I

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_5
    iput-boolean v2, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 92
    .line 93
    iput v3, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->U:I

    .line 94
    .line 95
    sget-object v2, Lud/b;->a:Lud/b;

    .line 96
    .line 97
    invoke-virtual {v2, v1, v4}, Lud/b;->M4(Ljava/lang/String;Z)V

    .line 98
    .line 99
    .line 100
    :goto_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->p2()V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_6
    iput-boolean v2, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 105
    .line 106
    :goto_1
    iget v1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->U:I

    .line 107
    .line 108
    if-gtz v1, :cond_7

    .line 109
    .line 110
    return-void

    .line 111
    :cond_7
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$s0;

    .line 112
    .line 113
    invoke-direct {v1, p0, v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$s0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;)V

    .line 114
    .line 115
    .line 116
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$t0;

    .line 117
    .line 118
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$t0;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-static {p0, v1, p1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 122
    .line 123
    .line 124
    :goto_2
    return-void
.end method

.method public static synthetic K0(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/viewmodel/reward/d;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->B2(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/viewmodel/reward/d;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final K1(Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/reward/RewardsModule;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v7, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;

    .line 4
    .line 5
    const/4 v5, 0x6

    .line 6
    const/4 v6, 0x0

    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    move-object v1, v7

    .line 12
    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;-><init>(ILjava/lang/Object;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    sget-object v1, Lud/b;->a:Lud/b;

    .line 19
    .line 20
    invoke-virtual {v1}, Lud/b;->l0()Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->isInvalid()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/4 v3, 0x1

    .line 31
    if-ne v2, v3, :cond_0

    .line 32
    .line 33
    new-instance v2, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;

    .line 34
    .line 35
    invoke-virtual {v1}, Lud/b;->l0()Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    const/4 v8, 0x2

    .line 40
    const/4 v9, 0x0

    .line 41
    const/4 v5, 0x6

    .line 42
    const/4 v6, 0x0

    .line 43
    move-object v4, v2

    .line 44
    invoke-direct/range {v4 .. v9}, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;-><init>(ILjava/lang/Object;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    :cond_0
    new-instance v1, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;

    .line 51
    .line 52
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->d2()Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->N()Landroidx/lifecycle/MutableLiveData;

    .line 57
    .line 58
    .line 59
    move-result-object v12

    .line 60
    const/4 v14, 0x4

    .line 61
    const/4 v15, 0x0

    .line 62
    const/4 v11, 0x2

    .line 63
    const/4 v13, 0x0

    .line 64
    move-object v10, v1

    .line 65
    invoke-direct/range {v10 .. v15}, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;-><init>(ILjava/lang/Object;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method private final K2()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->U:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$v0;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$v0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$w0;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$w0;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0, v1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static synthetic L0(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/viewmodel/reward/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->C2(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/viewmodel/reward/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final L1(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/reward/RewardsModule;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->l1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->J1(Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->K1(Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->K1(Ljava/util/List;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->J1(Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method private final L2(Lcom/startshorts/androidplayer/bean/task/Task;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->S:Lcom/startshorts/androidplayer/bean/task/Task;

    .line 2
    .line 3
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$y0;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$y0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/bean/task/Task;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$z0;

    .line 9
    .line 10
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$z0;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v0, p1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static synthetic M0(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->D2(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final M1()V
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/PushManager;->a:Lcom/startshorts/androidplayer/manager/push/PushManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/push/PushManager;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final M2()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->j2()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$b1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$b1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$c1;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$c1;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v0, v1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static synthetic N0(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/viewmodel/reward/i;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->F2(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/viewmodel/reward/i;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final N1(Lcom/startshorts/androidplayer/bean/task/Task;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/bean/task/Task;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$c;

    .line 7
    .line 8
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$c;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0, p1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final N2()V
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->Q1()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->T:Z

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->E:Z

    .line 8
    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    if-nez v0, :cond_3

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->e0()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    check-cast v0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    if-nez v0, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    new-instance v1, Lvi/v;

    .line 29
    .line 30
    invoke-direct {v1, v0}, Lvi/v;-><init>(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/lang/Number;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    add-int/lit8 v2, v1, 0x1

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->getItemCount()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    add-int/lit8 v0, v0, -0x1

    .line 50
    .line 51
    if-gt v2, v0, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    move v2, v1

    .line 55
    :goto_1
    const/4 v0, -0x1

    .line 56
    if-eq v1, v0, :cond_3

    .line 57
    .line 58
    sget-object v3, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 59
    .line 60
    new-instance v7, Lvi/g;

    .line 61
    .line 62
    invoke-direct {v7, p0, v2}, Lvi/g;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;I)V

    .line 63
    .line 64
    .line 65
    const/4 v8, 0x2

    .line 66
    const/4 v9, 0x0

    .line 67
    const-wide/16 v4, 0x4b0

    .line 68
    .line 69
    const/4 v6, 0x0

    .line 70
    invoke-static/range {v3 .. v9}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->g(Lcom/startshorts/androidplayer/utils/CoroutineUtil;JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 71
    .line 72
    .line 73
    :cond_3
    return-void
.end method

.method public static synthetic O0(Lkotlin/jvm/functions/Function0;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->S1(Lkotlin/jvm/functions/Function0;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final O1(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$d;

    .line 2
    .line 3
    invoke-direct {v0, p1, p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$d;-><init>(Lkotlin/jvm/functions/Function0;Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$e;

    .line 7
    .line 8
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$e;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0, p1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static final O2(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->getItemCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->getItemViewType(I)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x6

    .line 13
    if-ne v2, v3, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p0, -0x1

    .line 20
    return p0
.end method

.method public static synthetic P0(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/viewmodel/reward/i;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->E2(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/viewmodel/reward/i;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic P1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->O1(Lkotlin/jvm/functions/Function0;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final P2(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->g0()Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method public static synthetic Q0(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;Ljava/lang/String;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->H2(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;Ljava/lang/String;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final Q1()Z
    .locals 1

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/b;->l0()Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->isAllTaskComplete()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    return v0
.end method

.method private final Q2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p1, "Cannot be opened temporarily"

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->x(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic R0(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->v2(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final R1(Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;Lkotlin/jvm/functions/Function0;)Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->m:Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog$a;->a()Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->S(Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;)V

    .line 8
    .line 9
    .line 10
    const-string p1, "mission_center"

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->U(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string p1, "C"

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->V(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->X(Lkotlin/jvm/functions/Function0;)V

    .line 21
    .line 22
    .line 23
    new-instance p1, Lvi/k;

    .line 24
    .line 25
    invoke-direct {p1, p2}, Lvi/k;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;->W(Lkotlin/jvm/functions/Function1;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method public static synthetic S0()Lve/g;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->r2()Lve/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final S1(Lkotlin/jvm/functions/Function0;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private final S2()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->d2()Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->N()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/reward/j$k;->a:Lcom/startshorts/androidplayer/viewmodel/reward/j$k;

    .line 10
    .line 11
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static synthetic T0(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->V1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final T1()V
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/PushManager;->a:Lcom/startshorts/androidplayer/manager/push/PushManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/push/PushManager;->g()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic U0(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->W1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final U1()Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 2
    .line 3
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)V

    .line 6
    .line 7
    .line 8
    new-instance v3, Lvi/f;

    .line 9
    .line 10
    invoke-direct {v3, p0}, Lvi/f;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)V

    .line 11
    .line 12
    .line 13
    new-instance v4, Lvi/n;

    .line 14
    .line 15
    invoke-direct {v4, p0}, Lvi/n;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)V

    .line 16
    .line 17
    .line 18
    new-instance v5, Ljava/lang/ref/WeakReference;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    move-object v0, v7

    .line 32
    move-object v2, p0

    .line 33
    invoke-direct/range {v0 .. v6}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;-><init>(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/lang/ref/WeakReference;Landroidx/lifecycle/Lifecycle;)V

    .line 34
    .line 35
    .line 36
    return-object v7
.end method

.method public static final synthetic V0(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/bean/task/Task;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->N1(Lcom/startshorts/androidplayer/bean/task/Task;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final V1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->D:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic W0(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;Lkotlin/jvm/functions/Function0;)Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->R1(Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;Lkotlin/jvm/functions/Function0;)Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final W1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->P:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic X0(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;Lkotlin/jvm/functions/Function0;)Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->X1(Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;Lkotlin/jvm/functions/Function0;)Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final X1(Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;Lkotlin/jvm/functions/Function0;)Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->o:Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog$a;->a()Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->X(Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;)V

    .line 8
    .line 9
    .line 10
    const-string p1, "mission_center"

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->Z(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string p1, "C"

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->a0(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->c0(Lkotlin/jvm/functions/Function0;)V

    .line 21
    .line 22
    .line 23
    new-instance p1, Lvi/o;

    .line 24
    .line 25
    invoke-direct {p1, p2}, Lvi/o;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->b0(Lkotlin/jvm/functions/Function1;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method public static final synthetic Y0(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->Z1(Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final Y1(Lkotlin/jvm/functions/Function0;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final synthetic Z0(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Lms/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->C:Lms/i;

    .line 2
    .line 3
    return-object p0
.end method

.method private final Z1(Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->isAd()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->G2(Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->isOutsideH5()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->i2(Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->isInnerH5()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->g2(Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_2
    :goto_0
    return-void
.end method

.method public static final synthetic a1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Lcom/startshorts/androidplayer/databinding/FragmentRewardsBinding;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/startshorts/androidplayer/databinding/FragmentRewardsBinding;

    .line 6
    .line 7
    return-object p0
.end method

.method private final a2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->M:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-wide v1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->L:J

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->validH5(J)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$i;

    .line 16
    .line 17
    invoke-direct {v1, p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$i;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$j;

    .line 21
    .line 22
    invoke-direct {v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$j;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {p0, v1, v0}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->I2(Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->M:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 34
    .line 35
    :cond_2
    return-void
.end method

.method public static final synthetic b1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->U:I

    .line 2
    .line 3
    return p0
.end method

.method private final b2()V
    .locals 9

    .line 1
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->K:Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;

    .line 2
    .line 3
    if-eqz v1, :cond_3

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    iget-wide v2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->L:J

    .line 9
    .line 10
    invoke-virtual {v1, v2, v3}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->validH5(J)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->d2()Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 17
    .line 18
    .line 19
    move-result-object v7

    .line 20
    new-instance v8, Lcom/startshorts/androidplayer/viewmodel/reward/c$e;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->D:Ljava/lang/String;

    .line 23
    .line 24
    const/4 v4, 0x4

    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    move-object v0, v8

    .line 28
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/reward/c$e;-><init>(Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v7, v8}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->Q(Lcom/startshorts/androidplayer/viewmodel/reward/c;)V

    .line 32
    .line 33
    .line 34
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/c;->a:Lcom/startshorts/androidplayer/manager/configure/ad/c;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->n()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v0, 0x1

    .line 41
    invoke-static {p0, v6, v0, v6}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->P1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->d2()Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->H()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$k;

    .line 62
    .line 63
    invoke-direct {v1, p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$k;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$l;

    .line 67
    .line 68
    invoke-direct {v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$l;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-static {p0, v1, v0}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_0
    iput-object v6, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->K:Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;

    .line 75
    .line 76
    :cond_3
    return-void
.end method

.method public static final synthetic c1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->N:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private final c2()Lve/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lve/g<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->G:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lve/g;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final synthetic d1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Lve/g;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->c2()Lve/g;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final d2()Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->B:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final synthetic e1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Lcom/startshorts/androidplayer/bean/task/Task;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->Q:Lcom/startshorts/androidplayer/bean/task/Task;

    .line 2
    .line 3
    return-object p0
.end method

.method private final e2(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.intent.action.VIEW"

    .line 4
    .line 5
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 10
    .line 11
    .line 12
    const/high16 v1, 0x10000000

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p3

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 30
    .line 31
    sget-object p3, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->a:Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;

    .line 32
    .line 33
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->z()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v1, " WatchAd click failed from "

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p2, " link "

    .line 51
    .line 52
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p1, " -> "

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->g(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    :goto_2
    return-void
.end method

.method public static final synthetic f1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->D:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private final f2(Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getRedirectUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-static {v0}, Ljk/v;->g(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v0, " WatchAd click failed from "

    .line 28
    .line 29
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, " link null"

    .line 40
    .line 41
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->g(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->K:Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->M:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 56
    .line 57
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 60
    .line 61
    .line 62
    move-result-wide v0

    .line 63
    iput-wide v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->L:J

    .line 64
    .line 65
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->N:Ljava/lang/String;

    .line 66
    .line 67
    new-instance p2, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$o;

    .line 68
    .line 69
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$o;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;)V

    .line 70
    .line 71
    .line 72
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$p;

    .line 73
    .line 74
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$p;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-static {p0, p2, p1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public static final synthetic g1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->d2()Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final g2(Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getRedirectUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-static {v0}, Ljk/v;->g(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v0, " WatchAd click failed from "

    .line 28
    .line 29
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getTaskDescription()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, " link null"

    .line 40
    .line 41
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->g(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->M:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->K:Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;

    .line 56
    .line 57
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 60
    .line 61
    .line 62
    move-result-wide v0

    .line 63
    iput-wide v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->L:J

    .line 64
    .line 65
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->N:Ljava/lang/String;

    .line 66
    .line 67
    new-instance p2, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$m;

    .line 68
    .line 69
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$m;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;)V

    .line 70
    .line 71
    .line 72
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$n;

    .line 73
    .line 74
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$n;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-static {p0, p2, p1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public static final synthetic h1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->W:Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog;

    .line 2
    .line 3
    return-object p0
.end method

.method private final h2(Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getRedirectUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v0, " WatchAd click failed from "

    .line 21
    .line 22
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p1, " link null"

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->g(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->K:Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->M:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 49
    .line 50
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 53
    .line 54
    .line 55
    move-result-wide v1

    .line 56
    iput-wide v1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->L:J

    .line 57
    .line 58
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->N:Ljava/lang/String;

    .line 59
    .line 60
    new-instance p2, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$s;

    .line 61
    .line 62
    invoke-direct {p2, p1, p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$s;-><init>(Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$t;

    .line 66
    .line 67
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$t;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-static {p0, p2, p1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public static final synthetic i1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->V:Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;

    .line 2
    .line 3
    return-object p0
.end method

.method private final i2(Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getRedirectUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v0, " WatchAd click failed from "

    .line 21
    .line 22
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getTaskDescription()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p1, " link null"

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->g(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->M:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->K:Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;

    .line 49
    .line 50
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 53
    .line 54
    .line 55
    move-result-wide v1

    .line 56
    iput-wide v1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->L:J

    .line 57
    .line 58
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->N:Ljava/lang/String;

    .line 59
    .line 60
    new-instance p2, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$q;

    .line 61
    .line 62
    invoke-direct {p2, p1, p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$q;-><init>(Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$r;

    .line 66
    .line 67
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$r;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-static {p0, p2, p1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public static final synthetic j1()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->Z:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private final j2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->J:Lhi/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->J:Lhi/b;

    .line 10
    .line 11
    return-void
.end method

.method public static final synthetic k1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->e2(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final k2(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->C:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->isInitialized()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->C:Lms/i;

    .line 10
    .line 11
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;->F(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const-string v0, "initAuthManager"

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->C:Lms/i;

    .line 27
    .line 28
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 33
    .line 34
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/auth/a;->p(Ljava/lang/ref/WeakReference;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;->F(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->J0()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$u;

    .line 58
    .line 59
    invoke-direct {p1, p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$u;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/auth/a;->r(Lke/a;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$v;

    .line 67
    .line 68
    invoke-direct {p1, p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$v;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/auth/a;->s(Lke/b;)V

    .line 72
    .line 73
    .line 74
    :goto_0
    return-void
.end method

.method public static final synthetic l1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->j2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final l2()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->d2()Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->I()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/reward/a$i;->a:Lcom/startshorts/androidplayer/viewmodel/reward/a$i;

    .line 10
    .line 11
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static final synthetic m1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->k2(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final m2(Lcom/hades/aar/pagestate/StateViewGroup;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hades/aar/pagestate/StateViewGroup;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$w;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$w;-><init>(Lcom/hades/aar/pagestate/StateViewGroup;Lkotlin/jvm/functions/Function0;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/hades/aar/pagestate/StateViewGroup;->setMOnInflatedListener(Lla/a;)V

    .line 7
    .line 8
    .line 9
    sget p2, Lcom/startshorts/androidplayer/R$layout;->viewstub_page_state_loading:I

    .line 10
    .line 11
    sget-object v0, Lcom/hades/aar/pagestate/State;->LOADING:Lcom/hades/aar/pagestate/State;

    .line 12
    .line 13
    invoke-virtual {p1, p2, v0}, Lcom/hades/aar/pagestate/StateViewGroup;->f(ILcom/hades/aar/pagestate/State;)V

    .line 14
    .line 15
    .line 16
    sget p2, Lcom/startshorts/androidplayer/R$layout;->viewstub_page_state_network_error:I

    .line 17
    .line 18
    sget-object v0, Lcom/hades/aar/pagestate/State;->NETWORK_ERROR:Lcom/hades/aar/pagestate/State;

    .line 19
    .line 20
    invoke-virtual {p1, p2, v0}, Lcom/hades/aar/pagestate/StateViewGroup;->f(ILcom/hades/aar/pagestate/State;)V

    .line 21
    .line 22
    .line 23
    sget p2, Lcom/startshorts/androidplayer/R$layout;->viewstub_page_state_other_error:I

    .line 24
    .line 25
    sget-object v0, Lcom/hades/aar/pagestate/State;->OTHER_ERROR:Lcom/hades/aar/pagestate/State;

    .line 26
    .line 27
    invoke-virtual {p1, p2, v0}, Lcom/hades/aar/pagestate/StateViewGroup;->f(ILcom/hades/aar/pagestate/State;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static final synthetic n1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->l2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final n2()V
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$loadTodayAllBonus$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, v1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$loadTodayAllBonus$1;-><init>(Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "loadTodayAllBonus"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static final synthetic o1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/hades/aar/pagestate/StateViewGroup;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->m2(Lcom/hades/aar/pagestate/StateViewGroup;Lkotlin/jvm/functions/Function0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final o2(Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;Ljava/lang/String;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    new-instance v2, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "type"

    .line 9
    .line 10
    const-string v3, "check_in"

    .line 11
    .line 12
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getTaskId()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v3, "task_id"

    .line 24
    .line 25
    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getTaskType()Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v3, "task_type_id"

    .line 37
    .line 38
    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getTaskType()Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-nez v1, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const/4 v3, 0x1

    .line 53
    if-ne v1, v3, :cond_1

    .line 54
    .line 55
    const-string v1, "\u5e7f\u544a\u7c7b"

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    :goto_0
    const-string v1, ""

    .line 59
    .line 60
    :goto_1
    const-string v3, "task_type_name"

    .line 61
    .line 62
    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getTaskSortId()Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string v1, "task_sort_id"

    .line 74
    .line 75
    invoke-virtual {v2, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string p1, "placement"

    .line 79
    .line 80
    invoke-virtual {v2, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 84
    .line 85
    const/4 v5, 0x4

    .line 86
    const/4 v6, 0x0

    .line 87
    const-string v1, "task_click"

    .line 88
    .line 89
    const-wide/16 v3, 0x0

    .line 90
    .line 91
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public static final synthetic p1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->o2(Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final p2()V
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    new-instance v2, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->F:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string v1, "checkdone_ads_reward"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v1, "checknot_ads_reward"

    .line 16
    .line 17
    :goto_0
    const-string v3, "popup_name"

    .line 18
    .line 19
    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    const/4 v5, 0x4

    .line 25
    const/4 v6, 0x0

    .line 26
    const-string v1, "popup_show"

    .line 27
    .line 28
    const-wide/16 v3, 0x0

    .line 29
    .line 30
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static final synthetic q1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->u2(Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final q2()Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final synthetic r1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->x2(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final r2()Lve/g;
    .locals 3

    .line 1
    new-instance v0, Lve/g;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x3

    .line 5
    invoke-direct {v0, v1, v1, v2, v1}, Lve/g;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static final synthetic s1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->y2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final s2(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;
    .locals 2

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v1, "requireActivity(...)"

    .line 8
    .line 9
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 13
    .line 14
    .line 15
    const-class p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 22
    .line 23
    return-object p0
.end method

.method public static final synthetic t1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->O:I

    .line 2
    .line 3
    return-void
.end method

.method private final t2()V
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->A:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$mPropertyObserver$1;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->O(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final synthetic u1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->U:I

    .line 2
    .line 3
    return-void
.end method

.method private final u2(Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->isAd()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget-object v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->a:Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->l()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lud/b;->a:Lud/b;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskId()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v1, v2}, Lud/b;->d2(I)Lcom/startshorts/androidplayer/bean/checkin/WatchAdNumber;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/checkin/WatchAdNumber;->getDay()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/checkin/WatchAdNumber;->getCount()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getConditionValue()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-lt v0, v1, :cond_0

    .line 44
    .line 45
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$z;

    .line 46
    .line 47
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$z;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;)V

    .line 48
    .line 49
    .line 50
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$a0;

    .line 51
    .line 52
    invoke-direct {v1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$a0;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-static {p0, v0, v1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    sget-object v2, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 59
    .line 60
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->D:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    new-instance v7, Lvi/m;

    .line 67
    .line 68
    invoke-direct {v7, p0, p1}, Lvi/m;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;)V

    .line 69
    .line 70
    .line 71
    const/16 v8, 0x8

    .line 72
    .line 73
    const/4 v9, 0x0

    .line 74
    const-string v5, "daily_reward"

    .line 75
    .line 76
    const/4 v6, 0x0

    .line 77
    invoke-static/range {v2 .. v9}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->q0(Lcom/startshorts/androidplayer/manager/ad/AdManager;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->isOutsideH5()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    const-string v1, ""

    .line 86
    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    invoke-direct {p0, p1, v1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->h2(Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->isInnerH5()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_3

    .line 98
    .line 99
    invoke-direct {p0, p1, v1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->f2(Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_3
    :goto_0
    return-void
.end method

.method public static final synthetic v1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/bean/task/Task;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->Q:Lcom/startshorts/androidplayer/bean/task/Task;

    .line 2
    .line 3
    return-void
.end method

.method private static final v2(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    new-instance p2, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$b0;

    .line 4
    .line 5
    invoke-direct {p2, p1, p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$b0;-><init>(Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$c0;

    .line 9
    .line 10
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$c0;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p2, p1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method

.method public static final synthetic w1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->R:Z

    .line 2
    .line 3
    return-void
.end method

.method private final w2()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->U1()Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->k0(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->g0()Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->e0()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->d2()Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->W(Landroidx/lifecycle/LifecycleOwner;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v7, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;

    .line 34
    .line 35
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->d2()Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->I()Landroidx/lifecycle/MutableLiveData;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const/4 v5, 0x4

    .line 44
    const/4 v6, 0x0

    .line 45
    const/4 v2, 0x1

    .line 46
    const/4 v4, 0x0

    .line 47
    move-object v1, v7

    .line 48
    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;-><init>(ILjava/lang/Object;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    sget-object v1, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->a:Lcom/startshorts/androidplayer/manager/act/ActResourceManager;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->C()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Ljava/util/Collection;

    .line 61
    .line 62
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_1

    .line 67
    .line 68
    new-instance v1, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;

    .line 69
    .line 70
    const/4 v6, 0x6

    .line 71
    const/4 v7, 0x0

    .line 72
    const/4 v3, 0x7

    .line 73
    const/4 v4, 0x0

    .line 74
    const/4 v5, 0x0

    .line 75
    move-object v2, v1

    .line 76
    invoke-direct/range {v2 .. v7}, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;-><init>(ILjava/lang/Object;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 77
    .line 78
    .line 79
    const/high16 v2, 0x41800000    # 16.0f

    .line 80
    .line 81
    invoke-static {v2}, Ljk/g;->a(F)I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;->setTopMargin(I)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    :cond_1
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->L1(Ljava/util/List;)V

    .line 92
    .line 93
    .line 94
    new-instance v1, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;

    .line 95
    .line 96
    const/4 v7, 0x4

    .line 97
    const/4 v8, 0x0

    .line 98
    const/4 v4, 0x4

    .line 99
    const/4 v5, 0x0

    .line 100
    const/4 v6, 0x0

    .line 101
    move-object v3, v1

    .line 102
    invoke-direct/range {v3 .. v8}, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;-><init>(ILjava/lang/Object;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 103
    .line 104
    .line 105
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    const/4 v1, 0x1

    .line 109
    invoke-virtual {p0, v1, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/ListFragment;->y0(ZLjava/util/List;)V

    .line 110
    .line 111
    .line 112
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->t2()V

    .line 113
    .line 114
    .line 115
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->l2()V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public static final synthetic x1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/bean/task/Task;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->S:Lcom/startshorts/androidplayer/bean/task/Task;

    .line 2
    .line 3
    return-void
.end method

.method private final x2(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lid/d;->a:Lid/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lid/d;->a()[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h0;

    .line 8
    .line 9
    invoke-direct {v1, p1, p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h0;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    const/16 v2, 0x7d1

    .line 14
    .line 15
    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/PermissionFragment;->E([Ljava/lang/String;ZILmk/b;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static final synthetic y1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lhi/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->J:Lhi/b;

    .line 2
    .line 3
    return-void
.end method

.method private final y2()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->g0()Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, -0x1

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    move v4, v1

    .line 20
    move v5, v2

    .line 21
    :goto_0
    if-ge v4, v3, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    const/4 v7, 0x3

    .line 28
    if-ne v6, v7, :cond_0

    .line 29
    .line 30
    move v5, v4

    .line 31
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v5, v2

    .line 35
    :cond_2
    if-eq v5, v2, :cond_4

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->g0()Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    goto :goto_1

    .line 48
    :cond_3
    const/4 v0, 0x0

    .line 49
    :goto_1
    instance-of v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 50
    .line 51
    if-eqz v2, :cond_4

    .line 52
    .line 53
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 54
    .line 55
    invoke-virtual {v0, v5, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 56
    .line 57
    .line 58
    :cond_4
    return-void
.end method

.method public static final synthetic z1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->K:Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;

    .line 2
    .line 3
    return-void
.end method

.method private final z2()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->d2()Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->O()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Lvi/p;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Lvi/p;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$i0;

    .line 19
    .line 20
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$i0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->d2()Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->K()Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v2, Lvi/q;

    .line 39
    .line 40
    invoke-direct {v2, p0}, Lvi/q;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)V

    .line 41
    .line 42
    .line 43
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$i0;

    .line 44
    .line 45
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$i0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->d2()Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->J()Landroidx/lifecycle/MutableLiveData;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    new-instance v2, Lvi/r;

    .line 64
    .line 65
    invoke-direct {v2, p0}, Lvi/r;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)V

    .line 66
    .line 67
    .line 68
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$i0;

    .line 69
    .line 70
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$i0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->d2()Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->M()Landroidx/lifecycle/MutableLiveData;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    new-instance v2, Lvi/s;

    .line 89
    .line 90
    invoke-direct {v2, p0}, Lvi/s;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)V

    .line 91
    .line 92
    .line 93
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$i0;

    .line 94
    .line 95
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$i0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 99
    .line 100
    .line 101
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->d2()Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->L()Landroidx/lifecycle/MutableLiveData;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    new-instance v2, Lvi/t;

    .line 114
    .line 115
    invoke-direct {v2, p0}, Lvi/t;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)V

    .line 116
    .line 117
    .line 118
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$i0;

    .line 119
    .line 120
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$i0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method


# virtual methods
.method public A0(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/fragment/base/ListFragment;->A0(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    int-to-float p1, p1

    .line 14
    iget p2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->X:F

    .line 15
    .line 16
    div-float/2addr p1, p2

    .line 17
    const/4 p2, 0x0

    .line 18
    const/high16 p3, 0x3f800000    # 1.0f

    .line 19
    .line 20
    invoke-static {p1, p2, p3}, Lkotlin/ranges/e;->m(FFF)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    cmpl-float p2, p1, p3

    .line 25
    .line 26
    if-ltz p2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    check-cast p2, Lcom/startshorts/androidplayer/databinding/FragmentRewardsBinding;

    .line 33
    .line 34
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/FragmentRewardsBinding;->a:Landroid/view/View;

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    cmpg-float p2, p2, p3

    .line 41
    .line 42
    if-nez p2, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lcom/startshorts/androidplayer/databinding/FragmentRewardsBinding;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/FragmentRewardsBinding;->a:Landroid/view/View;

    .line 52
    .line 53
    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    :goto_0
    cmpg-float p2, p1, p3

    .line 58
    .line 59
    if-gez p2, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    check-cast p2, Lcom/startshorts/androidplayer/databinding/FragmentRewardsBinding;

    .line 66
    .line 67
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/FragmentRewardsBinding;->a:Landroid/view/View;

    .line 68
    .line 69
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 70
    .line 71
    .line 72
    :cond_2
    :goto_1
    return-void
.end method

.method public final R2(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "from"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->D:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public i0()V
    .locals 1

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->l0(I)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->U1()Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->k0(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 11
    .line 12
    .line 13
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/ListFragment;->i0()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->fragment_rewards:I

    .line 2
    .line 3
    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->C:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "requireActivity(...)"

    .line 14
    .line 15
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/startshorts/androidplayer/manager/auth/a;->l(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    instance-of v1, v0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    check-cast v0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    const/4 v1, 0x1

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    move v0, v1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    :goto_1
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->P:Z

    .line 25
    .line 26
    sget-object v0, Led/a;->a:Led/a;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string v3, "requireActivity(...)"

    .line 33
    .line 34
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2, v1}, Led/a;->b(Landroid/app/Activity;Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 49
    .line 50
    int-to-float v0, v0

    .line 51
    const/high16 v1, 0x40000000    # 2.0f

    .line 52
    .line 53
    div-float/2addr v0, v1

    .line 54
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->X:F

    .line 55
    .line 56
    invoke-super {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->e0()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->C0(Z)V

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->d2()Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->I()Landroidx/lifecycle/MutableLiveData;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/reward/a$f;->a:Lcom/startshorts/androidplayer/viewmodel/reward/a$f;

    .line 31
    .line 32
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->d2()Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->O()Landroidx/lifecycle/MutableLiveData;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/reward/k$b;->a:Lcom/startshorts/androidplayer/viewmodel/reward/k$b;

    .line 44
    .line 45
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->d2()Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->N()Landroidx/lifecycle/MutableLiveData;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/reward/j$c;->a:Lcom/startshorts/androidplayer/viewmodel/reward/j$c;

    .line 57
    .line 58
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public onResume()V
    .locals 9

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->e0()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    const/4 v1, 0x1

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->C0(Z)V

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->d2()Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->I()Landroidx/lifecycle/MutableLiveData;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sget-object v2, Lcom/startshorts/androidplayer/viewmodel/reward/a$g;->a:Lcom/startshorts/androidplayer/viewmodel/reward/a$g;

    .line 31
    .line 32
    invoke-static {v0, v2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->d2()Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->O()Landroidx/lifecycle/MutableLiveData;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sget-object v2, Lcom/startshorts/androidplayer/viewmodel/reward/k$c;->a:Lcom/startshorts/androidplayer/viewmodel/reward/k$c;

    .line 44
    .line 45
    invoke-static {v0, v2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->d2()Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->N()Landroidx/lifecycle/MutableLiveData;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sget-object v2, Lcom/startshorts/androidplayer/viewmodel/reward/j$d;->a:Lcom/startshorts/androidplayer/viewmodel/reward/j$d;

    .line 57
    .line 58
    invoke-static {v0, v2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->H:Z

    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    iput-boolean v2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->H:Z

    .line 67
    .line 68
    sget-object v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->p()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->I:Ljava/lang/String;

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    sget-object v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->a:Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->q()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_3

    .line 84
    .line 85
    sget-object v3, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 86
    .line 87
    const/4 v7, 0x6

    .line 88
    const/4 v8, 0x0

    .line 89
    const/4 v4, 0x1

    .line 90
    const/4 v5, 0x0

    .line 91
    const/4 v6, 0x0

    .line 92
    invoke-static/range {v3 .. v8}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->Z0(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZLandroid/content/Context;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    sget-object v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->p()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->I:Ljava/lang/String;

    .line 102
    .line 103
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-nez v3, :cond_4

    .line 108
    .line 109
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->I:Ljava/lang/String;

    .line 110
    .line 111
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->d2()Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/reward/c$k;

    .line 116
    .line 117
    const/4 v4, 0x5

    .line 118
    invoke-direct {v3, v4}, Lcom/startshorts/androidplayer/viewmodel/reward/c$k;-><init>(I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->Q(Lcom/startshorts/androidplayer/viewmodel/reward/c;)V

    .line 122
    .line 123
    .line 124
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->d2()Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/reward/c$k;

    .line 129
    .line 130
    invoke-direct {v3, v1}, Lcom/startshorts/androidplayer/viewmodel/reward/c$k;-><init>(I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->Q(Lcom/startshorts/androidplayer/viewmodel/reward/c;)V

    .line 134
    .line 135
    .line 136
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->K:Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;

    .line 137
    .line 138
    if-nez v0, :cond_5

    .line 139
    .line 140
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->M:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 141
    .line 142
    if-eqz v0, :cond_7

    .line 143
    .line 144
    :cond_5
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->M:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 145
    .line 146
    if-eqz v0, :cond_6

    .line 147
    .line 148
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->a2()V

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->b2()V

    .line 153
    .line 154
    .line 155
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->Q:Lcom/startshorts/androidplayer/bean/task/Task;

    .line 156
    .line 157
    if-eqz v0, :cond_8

    .line 158
    .line 159
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->R:Z

    .line 160
    .line 161
    if-eqz v0, :cond_8

    .line 162
    .line 163
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$d0;

    .line 164
    .line 165
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$d0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)V

    .line 166
    .line 167
    .line 168
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$e0;

    .line 169
    .line 170
    invoke-direct {v1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$e0;-><init>()V

    .line 171
    .line 172
    .line 173
    invoke-static {p0, v0, v1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 174
    .line 175
    .line 176
    :cond_8
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->n2()V

    .line 177
    .line 178
    .line 179
    sget-object v0, Lud/a;->a:Lud/a;

    .line 180
    .line 181
    invoke-virtual {v0}, Lud/a;->n()Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-eqz v1, :cond_9

    .line 186
    .line 187
    invoke-virtual {v0, v2}, Lud/a;->q0(Z)V

    .line 188
    .line 189
    .line 190
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->S:Lcom/startshorts/androidplayer/bean/task/Task;

    .line 191
    .line 192
    if-eqz v1, :cond_9

    .line 193
    .line 194
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$f0;

    .line 195
    .line 196
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$f0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)V

    .line 197
    .line 198
    .line 199
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$g0;

    .line 200
    .line 201
    invoke-direct {v3}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$g0;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-static {p0, v1, v3}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 205
    .line 206
    .line 207
    :cond_9
    invoke-virtual {v0}, Lud/a;->o()Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-eqz v1, :cond_a

    .line 212
    .line 213
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    instance-of v1, v1, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 218
    .line 219
    if-eqz v1, :cond_a

    .line 220
    .line 221
    invoke-virtual {v0, v2}, Lud/a;->r0(Z)V

    .line 222
    .line 223
    .line 224
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->d2()Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/reward/c$j;

    .line 229
    .line 230
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/reward/c$j;-><init>(Z)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->Q(Lcom/startshorts/androidplayer/viewmodel/reward/c;)V

    .line 234
    .line 235
    .line 236
    :cond_a
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/startshorts/androidplayer/databinding/FragmentRewardsBinding;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/FragmentRewardsBinding;->b:Lcom/airbnb/lottie/LottieAnimationView;

    .line 16
    .line 17
    sget-object p2, Lfk/v;->a:Lfk/v;

    .line 18
    .line 19
    invoke-virtual {p2}, Lfk/v;->b()Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    const/high16 p2, -0x40800000    # -1.0f

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    .line 29
    .line 30
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->z2()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public p()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "RewardsFragment"

    .line 2
    .line 3
    return-object v0
.end method

.method public final receiveAppStateEvent(Lcom/startshorts/androidplayer/bean/eventbus/AppStateEvent;)V
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/AppStateEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/AppStateEvent;->getState()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x2

    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    instance-of p1, p1, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    sget-object p1, Lud/a;->a:Lud/a;

    .line 23
    .line 24
    invoke-virtual {p1}, Lud/a;->H()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-lez p1, :cond_0

    .line 29
    .line 30
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->T1()V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->Q:Lcom/startshorts/androidplayer/bean/task/Task;

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    iput-boolean v2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->R:Z

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/AppStateEvent;->getState()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-ne p1, v2, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    instance-of p1, p1, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->M1()V

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_0
    return-void
.end method

.method public final receiveBindSuccessEvent(Lcom/startshorts/androidplayer/bean/eventbus/BindSuccessEvent;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/BindSuccessEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "receive BindSuccessEvent -> "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->m()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->d2()Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->N()Landroidx/lifecycle/MutableLiveData;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/reward/j$i;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/BindSuccessEvent;->getBindType()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/reward/j$i;-><init>(I)V

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final receiveRefreshAccountEvent(Lcom/startshorts/androidplayer/bean/eventbus/RefreshAccountEvent;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/RefreshAccountEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->m()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string p1, "receiveRefreshAccountEvent"

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->w2()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final receiveRewardsAlertWindowEvent(Lcom/startshorts/androidplayer/bean/eventbus/RewardsModuleRefreshEvent;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/RewardsModuleRefreshEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    instance-of p1, p1, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    sget-object p1, Lud/a;->a:Lud/a;

    .line 15
    .line 16
    invoke-virtual {p1}, Lud/a;->R()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1, v0}, Lud/a;->D0(Z)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->d2()Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    sget-object v0, Lcom/startshorts/androidplayer/viewmodel/reward/c$i;->a:Lcom/startshorts/androidplayer/viewmodel/reward/c$i;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->Q(Lcom/startshorts/androidplayer/viewmodel/reward/c;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->w2()V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public s()V
    .locals 2
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$x;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$x;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$y;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$y;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0, v1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public t()V
    .locals 9

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->t()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v1, "from"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->D:Ljava/lang/String;

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const-string v1, "isLocateWatchTaskModule"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->E:Z

    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    const-string v1, "isFromHomeCheckInDialog"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->F:Z

    .line 47
    .line 48
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    new-instance v7, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;

    .line 54
    .line 55
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->d2()Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->I()Landroidx/lifecycle/MutableLiveData;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    const/4 v5, 0x4

    .line 64
    const/4 v6, 0x0

    .line 65
    const/4 v2, 0x1

    .line 66
    const/4 v4, 0x0

    .line 67
    move-object v1, v7

    .line 68
    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;-><init>(ILjava/lang/Object;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    sget-object v1, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->a:Lcom/startshorts/androidplayer/manager/act/ActResourceManager;

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->C()Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Ljava/util/Collection;

    .line 81
    .line 82
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_3

    .line 87
    .line 88
    new-instance v1, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;

    .line 89
    .line 90
    const/4 v6, 0x6

    .line 91
    const/4 v7, 0x0

    .line 92
    const/4 v3, 0x7

    .line 93
    const/4 v4, 0x0

    .line 94
    const/4 v5, 0x0

    .line 95
    move-object v2, v1

    .line 96
    invoke-direct/range {v2 .. v7}, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;-><init>(ILjava/lang/Object;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 97
    .line 98
    .line 99
    const/high16 v2, 0x41800000    # 16.0f

    .line 100
    .line 101
    invoke-static {v2}, Ljk/g;->a(F)I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;->setTopMargin(I)V

    .line 106
    .line 107
    .line 108
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    :cond_3
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->L1(Ljava/util/List;)V

    .line 112
    .line 113
    .line 114
    new-instance v1, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;

    .line 115
    .line 116
    const/4 v7, 0x4

    .line 117
    const/4 v8, 0x0

    .line 118
    const/4 v4, 0x4

    .line 119
    const/4 v5, 0x0

    .line 120
    const/4 v6, 0x0

    .line 121
    move-object v3, v1

    .line 122
    invoke-direct/range {v3 .. v8}, Lcom/startshorts/androidplayer/bean/reward/RewardsModule;-><init>(ILjava/lang/Object;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 123
    .line 124
    .line 125
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    const/4 v1, 0x1

    .line 129
    invoke-virtual {p0, v1, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/ListFragment;->y0(ZLjava/util/List;)V

    .line 130
    .line 131
    .line 132
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->t2()V

    .line 133
    .line 134
    .line 135
    sget-object v2, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 136
    .line 137
    const/4 v6, 0x6

    .line 138
    const/4 v7, 0x0

    .line 139
    const/4 v3, 0x1

    .line 140
    const/4 v4, 0x0

    .line 141
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->Z0(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZLandroid/content/Context;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    sget-object v0, Lud/a;->a:Lud/a;

    .line 145
    .line 146
    invoke-virtual {v0}, Lud/a;->V()Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_4

    .line 151
    .line 152
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 153
    .line 154
    new-instance v4, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$onFirstUserVisible$5;

    .line 155
    .line 156
    const/4 v0, 0x0

    .line 157
    invoke-direct {v4, p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$onFirstUserVisible$5;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lrs/c;)V

    .line 158
    .line 159
    .line 160
    const/4 v5, 0x2

    .line 161
    const/4 v6, 0x0

    .line 162
    const-string v2, "taskCenterFloatingList"

    .line 163
    .line 164
    const/4 v3, 0x0

    .line 165
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 166
    .line 167
    .line 168
    :cond_4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->N2()V

    .line 169
    .line 170
    .line 171
    sget-object v0, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->a:Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;

    .line 172
    .line 173
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->v()V

    .line 174
    .line 175
    .line 176
    return-void
.end method

.method public v()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/ListFragment;->v()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->j2()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->M1()V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->A:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$mPropertyObserver$1;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->d1(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->C:Lms/i;

    .line 18
    .line 19
    invoke-interface {v0}, Lms/i;->isInitialized()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->C:Lms/i;

    .line 26
    .line 27
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/auth/a;->n()V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    instance-of v0, v0, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    sget-object v0, Lud/a;->a:Lud/a;

    .line 45
    .line 46
    invoke-virtual {v0}, Lud/a;->R()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    new-instance v1, Lcom/startshorts/androidplayer/bean/eventbus/RewardsModuleRefreshEvent;

    .line 57
    .line 58
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/eventbus/RewardsModuleRefreshEvent;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lau/c;->l(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->e0()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 69
    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    check-cast v0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    const/4 v0, 0x0

    .line 76
    :goto_0
    if-eqz v0, :cond_3

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->z()V

    .line 79
    .line 80
    .line 81
    :cond_3
    return-void
.end method
