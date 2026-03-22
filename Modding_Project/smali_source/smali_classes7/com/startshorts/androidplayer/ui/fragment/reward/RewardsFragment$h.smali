.class public final Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h;
.super Ljava/lang/Object;
.source "RewardsFragment.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->U1()Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRewardsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$createRecyclerAdapter$1\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n*L\n1#1,1701:1\n15#2,9:1702\n15#2,9:1711\n15#2,9:1720\n15#2,9:1729\n15#2,9:1738\n15#2,9:1747\n15#2,9:1756\n15#2,9:1765\n15#2,9:1774\n15#2,9:1783\n*S KotlinDebug\n*F\n+ 1 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$createRecyclerAdapter$1\n*L\n486#1:1702,9\n495#1:1711,9\n504#1:1720,9\n518#1:1729,9\n535#1:1738,9\n608#1:1747,9\n616#1:1756,9\n648#1:1765,9\n669#1:1774,9\n679#1:1783,9\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic r(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/viewmodel/reward/c;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h;->s(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/viewmodel/reward/c;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final s(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/viewmodel/reward/c;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->g1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->Q(Lcom/startshorts/androidplayer/viewmodel/reward/c;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method


# virtual methods
.method public a(Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 2
    .line 3
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$i;

    .line 4
    .line 5
    invoke-direct {v1, v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$i;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$j;

    .line 9
    .line 10
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$j;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, p1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 1

    .line 1
    const-string p1, "errorMsg"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 7
    .line 8
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$o;

    .line 9
    .line 10
    invoke-direct {v0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$o;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance p2, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$p;

    .line 14
    .line 15
    invoke-direct {p2}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$p;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0, p2}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public c(ILcom/startshorts/androidplayer/bean/checkin/CheckInInfo;Z)V
    .locals 2

    .line 1
    const-string v0, "checkInInfo"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;->getBonus()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->u1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 16
    .line 17
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$c;

    .line 18
    .line 19
    invoke-direct {v1, v0, p3, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;ZILcom/startshorts/androidplayer/bean/checkin/CheckInInfo;)V

    .line 20
    .line 21
    .line 22
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$d;

    .line 23
    .line 24
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$d;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1, p1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public d(Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;)V
    .locals 1

    .line 1
    const-string v0, "adBonus"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->q1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public e(Lcom/startshorts/androidplayer/bean/auth/AuthReason;)V
    .locals 2

    .line 1
    const-string v0, "reason"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 7
    .line 8
    const-string v1, "task_facebook_login"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->m1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->Z0(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Lms/i;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/auth/a;->a(Lcom/startshorts/androidplayer/bean/auth/AuthReason;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public f(I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->l1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->z1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 13
    .line 14
    const-wide/16 v1, 0x0

    .line 15
    .line 16
    invoke-static {p1, v1, v2}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->A1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;J)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-static {p1, v0, v1, v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->P1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->g1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/reward/c$j;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/reward/c$j;-><init>(Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->Q(Lcom/startshorts/androidplayer/viewmodel/reward/c;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public g(Lcom/startshorts/androidplayer/bean/task/Task;)V
    .locals 2

    .line 1
    const-string v0, "task"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 7
    .line 8
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$a;

    .line 9
    .line 10
    invoke-direct {v1, v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$a;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/bean/task/Task;)V

    .line 11
    .line 12
    .line 13
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$b;

    .line 14
    .line 15
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$b;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1, p1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public h(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->u1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 7
    .line 8
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$e;

    .line 9
    .line 10
    invoke-direct {v1, v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$e;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;I)V

    .line 11
    .line 12
    .line 13
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$f;

    .line 14
    .line 15
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$f;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1, p1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "from"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->r1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public j(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;",
            ">;I)V"
        }
    .end annotation

    .line 1
    const-string v0, "waitReceiveTasks"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 7
    .line 8
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$m;

    .line 9
    .line 10
    invoke-direct {v1, v0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$m;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Ljava/util/List;I)V

    .line 11
    .line 12
    .line 13
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$n;

    .line 14
    .line 15
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$n;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1, p1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public k(Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;)V
    .locals 2

    .line 1
    const-string v0, "signAdTaskInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 7
    .line 8
    const-string v1, "reward_page"

    .line 9
    .line 10
    invoke-static {v0, p1, v1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->p1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 14
    .line 15
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$q;

    .line 16
    .line 17
    invoke-direct {v1, v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$q;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$r;

    .line 21
    .line 22
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$r;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1, p1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public l()V
    .locals 9

    .line 1
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v8, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;

    .line 6
    .line 7
    sget-object v2, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->SHORTS:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 8
    .line 9
    const/16 v6, 0xa

    .line 10
    .line 11
    const/4 v7, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    const-string v4, "mission_center"

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    move-object v1, v8

    .line 17
    invoke-direct/range {v1 .. v7}, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;-><init>(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v8}, Lau/c;->l(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 24
    .line 25
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$k;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$k;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)V

    .line 28
    .line 29
    .line 30
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$l;

    .line 31
    .line 32
    invoke-direct {v2}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$l;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1, v2}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public m(Lcom/startshorts/androidplayer/bean/task/Task;)V
    .locals 1

    .line 1
    const-string v0, "task"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->V0(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/bean/task/Task;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public n(Lcom/hades/aar/pagestate/StateViewGroup;Lcom/startshorts/androidplayer/viewmodel/reward/c;)V
    .locals 2

    .line 1
    const-string v0, "stateViewGroup"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "rewardsIntent"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 12
    .line 13
    new-instance v1, Lvi/w;

    .line 14
    .line 15
    invoke-direct {v1, v0, p2}, Lvi/w;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/viewmodel/reward/c;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0, p1, v1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->o1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/hades/aar/pagestate/StateViewGroup;Lkotlin/jvm/functions/Function0;)V

    .line 19
    .line 20
    .line 21
    instance-of p1, p2, Lcom/startshorts/androidplayer/viewmodel/reward/c$f;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->g1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-instance p2, Lcom/startshorts/androidplayer/viewmodel/reward/c$f;

    .line 32
    .line 33
    const-string v0, "1"

    .line 34
    .line 35
    invoke-direct {p2, v0}, Lcom/startshorts/androidplayer/viewmodel/reward/c$f;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->Q(Lcom/startshorts/androidplayer/viewmodel/reward/c;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    instance-of p1, p2, Lcom/startshorts/androidplayer/viewmodel/reward/c$i;

    .line 43
    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->g1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    sget-object p2, Lcom/startshorts/androidplayer/viewmodel/reward/c$i;->a:Lcom/startshorts/androidplayer/viewmodel/reward/c$i;

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->Q(Lcom/startshorts/androidplayer/viewmodel/reward/c;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    instance-of p1, p2, Lcom/startshorts/androidplayer/viewmodel/reward/c$j;

    .line 59
    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->g1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/reward/c$j;

    .line 69
    .line 70
    check-cast p2, Lcom/startshorts/androidplayer/viewmodel/reward/c$j;

    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/reward/c$j;->a()Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    invoke-direct {v0, p2}, Lcom/startshorts/androidplayer/viewmodel/reward/c$j;-><init>(Z)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->Q(Lcom/startshorts/androidplayer/viewmodel/reward/c;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    :goto_0
    return-void
.end method

.method public o(Lcom/startshorts/androidplayer/bean/auth/AuthReason;)V
    .locals 2

    .line 1
    const-string v0, "reason"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 7
    .line 8
    const-string v1, "task_google_login"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->m1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->Z0(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Lms/i;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/auth/a;->b(Lcom/startshorts/androidplayer/bean/auth/AuthReason;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->s()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public p(Lcom/startshorts/androidplayer/bean/task/Task;)V
    .locals 2

    .line 1
    const-string v0, "followTask"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 7
    .line 8
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$g;

    .line 9
    .line 10
    invoke-direct {v1, p1, v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$g;-><init>(Lcom/startshorts/androidplayer/bean/task/Task;Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)V

    .line 11
    .line 12
    .line 13
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$h;

    .line 14
    .line 15
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$h;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1, p1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->g1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/reward/c$g;->a:Lcom/startshorts/androidplayer/viewmodel/reward/c$g;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->Q(Lcom/startshorts/androidplayer/viewmodel/reward/c;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
