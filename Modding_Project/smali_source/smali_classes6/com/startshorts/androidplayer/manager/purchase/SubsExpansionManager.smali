.class public final Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;
.super Ljava/lang/Object;
.source "SubsExpansionManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSubsExpansionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubsExpansionManager.kt\ncom/startshorts/androidplayer/manager/purchase/SubsExpansionManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,286:1\n360#2,7:287\n360#2,7:295\n360#2,7:302\n1#3:294\n*S KotlinDebug\n*F\n+ 1 SubsExpansionManager.kt\ncom/startshorts/androidplayer/manager/purchase/SubsExpansionManager\n*L\n86#1:287,7\n87#1:295,7\n89#1:302,7\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->a:Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;

    .line 7
    .line 8
    new-instance v0, Lqf/i;

    .line 9
    .line 10
    invoke-direct {v0}, Lqf/i;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->b:Lms/i;

    .line 18
    .line 19
    new-instance v0, Lqf/j;

    .line 20
    .line 21
    invoke-direct {v0}, Lqf/j;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->c:Lms/i;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    sput-boolean v0, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->d:Z

    .line 32
    .line 33
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->i(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->r()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->s()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic d(Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->l()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method private static final i(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Lkotlin/Unit;
    .locals 7

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->t()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    sget-object v0, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->a:Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;

    .line 24
    .line 25
    invoke-virtual {v0, p2}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->q(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getRetentionTime()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->t(I)V

    .line 36
    .line 37
    .line 38
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getRetentionTime()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    int-to-long v3, v3

    .line 49
    const-wide/32 v5, 0xea60

    .line 50
    .line 51
    .line 52
    mul-long/2addr v3, v5

    .line 53
    add-long/2addr v1, v3

    .line 54
    invoke-virtual {p2, v1, v2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->setExpireTime(J)V

    .line 55
    .line 56
    .line 57
    :cond_0
    invoke-virtual {v0, p0, p2, p1}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->y(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 61
    .line 62
    return-object p0
.end method

.method private final l()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->n()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x5f

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->o()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method private final n()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method private final o()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->c:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final r()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method private static final s()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public static synthetic x(Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;Lcom/startshorts/androidplayer/bean/subs/SubsSku;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->w(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->Y0()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->abTestValue()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "B"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public final B()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->Y0()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->abTestValue()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "C"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public final C()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->A()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->B()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->C()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->H0()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    return v0
.end method

.method public final g(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "subsSku"

    .line 7
    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "from"

    .line 13
    .line 14
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->H0()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    sget-object v0, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->a:Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;

    .line 26
    .line 27
    invoke-virtual {v0, p2}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->q(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 34
    .line 35
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    new-instance p1, Lqf/k;

    .line 39
    .line 40
    invoke-direct {p1, v1, p3}, Lqf/k;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p2, p1}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->k(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lkotlin/jvm/functions/Function1;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public final h(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "from"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->m()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget-object v1, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->a:Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;

    .line 18
    .line 19
    invoke-virtual {v1, p1, v0, p2}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->g(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final j()V
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    const-string v1, "SubsExpansionManager"

    .line 4
    .line 5
    const-string v2, "clearExpansionSubsSku"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lud/b;->a:Lud/b;

    .line 11
    .line 12
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v1, v2}, Lud/b;->F3(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final k(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lkotlin/jvm/functions/Function1;)V
    .locals 5
    .param p1    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string/jumbo v0, "subs"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "onResult"

    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 28
    .line 29
    sget-boolean v1, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->d:Z

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->l()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->n()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    new-instance v4, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager$a;

    .line 40
    .line 41
    invoke-direct {v4, p1, p2}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager$a;-><init>(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lkotlin/jvm/functions/Function1;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->t(ZLjava/lang/String;Ljava/lang/String;Lle/g;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method public final m()Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lud/b;->a:Lud/b;

    .line 3
    .line 4
    sget-object v2, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 5
    .line 6
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    invoke-virtual {v1, v3}, Lud/b;->u0(Ljava/lang/String;)Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->z0()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->j()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :catch_0
    move-exception v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-object v1

    .line 27
    :goto_0
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 28
    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v4, "getExpansionSku failed -> "

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v3, "SubsExpansionManager"

    .line 51
    .line 52
    invoke-virtual {v2, v3, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v0
.end method

.method public final p(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Z
    .locals 4
    .param p1    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->m()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->H0()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getRetainLevel()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v3

    .line 23
    :goto_0
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getRetainLevel()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move p1, v3

    .line 31
    :goto_1
    if-le p1, v0, :cond_2

    .line 32
    .line 33
    goto :goto_3

    .line 34
    :cond_2
    move v2, v3

    .line 35
    goto :goto_3

    .line 36
    :cond_3
    const-string v1, ""

    .line 37
    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getProductId()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-nez v0, :cond_5

    .line 45
    .line 46
    :cond_4
    move-object v0, v1

    .line 47
    :cond_5
    if-eqz p1, :cond_7

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getProductId()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-nez p1, :cond_6

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_6
    move-object v1, p1

    .line 57
    :cond_7
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_2

    .line 62
    .line 63
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_2

    .line 68
    .line 69
    :goto_3
    return v2
.end method

.method public final q(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Z
    .locals 7
    .param p1    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getExpireTime()J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    cmp-long v1, v1, v3

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getExpireTime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    const/16 p1, 0x3e8

    .line 26
    .line 27
    int-to-long v5, p1

    .line 28
    sub-long/2addr v3, v5

    .line 29
    cmp-long p1, v1, v3

    .line 30
    .line 31
    if-gez p1, :cond_1

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    :cond_1
    :goto_0
    return v0
.end method

.method public final t(I)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->m()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    int-to-long v3, p1

    .line 14
    const-wide/32 v5, 0xea60

    .line 15
    .line 16
    .line 17
    mul-long/2addr v3, v5

    .line 18
    add-long/2addr v1, v3

    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->setExpireTime(J)V

    .line 20
    .line 21
    .line 22
    sget-object p1, Lud/b;->a:Lud/b;

    .line 23
    .line 24
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p1, v1, v0}, Lud/b;->F3(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final u(ZLjava/util/List;Lat/n;)V
    .locals 10
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;",
            "Lat/n<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            "-",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "onSubReplaced"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    check-cast p2, Ljava/util/Collection;

    .line 9
    .line 10
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    if-nez p2, :cond_1

    .line 15
    .line 16
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    :cond_1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->H0()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->C()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v3, -0x1

    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    if-eqz v0, :cond_15

    .line 36
    .line 37
    :cond_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->m()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_14

    .line 42
    .line 43
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->q(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-nez v4, :cond_3

    .line 48
    .line 49
    if-eqz v0, :cond_14

    .line 50
    .line 51
    :cond_3
    if-nez v4, :cond_4

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getRetentionTime()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->t(I)V

    .line 58
    .line 59
    .line 60
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 63
    .line 64
    .line 65
    move-result-wide v4

    .line 66
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getRetentionTime()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    int-to-long v6, v0

    .line 71
    const-wide/32 v8, 0xea60

    .line 72
    .line 73
    .line 74
    mul-long/2addr v6, v8

    .line 75
    add-long/2addr v4, v6

    .line 76
    invoke-virtual {v1, v4, v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->setExpireTime(J)V

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    new-instance v4, Lcom/startshorts/androidplayer/bean/eventbus/SubsExpansionShowEvent;

    .line 84
    .line 85
    invoke-direct {v4}, Lcom/startshorts/androidplayer/bean/eventbus/SubsExpansionShowEvent;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v4}, Lau/c;->l(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_4
    const/4 v0, 0x0

    .line 92
    if-eqz p1, :cond_f

    .line 93
    .line 94
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    move v4, v0

    .line 99
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-eqz v5, :cond_7

    .line 104
    .line 105
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    check-cast v5, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 110
    .line 111
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    if-ne v6, v7, :cond_6

    .line 120
    .line 121
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->getItemStyle()Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->getCARD_BIG()I

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-nez v6, :cond_5

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_5
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    if-ne v6, v5, :cond_6

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_6
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_7
    move v4, v3

    .line 143
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    if-eq v4, v3, :cond_8

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_8
    move-object p1, v2

    .line 155
    :goto_3
    if-eqz p1, :cond_9

    .line 156
    .line 157
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    goto/16 :goto_9

    .line 162
    .line 163
    :cond_9
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    if-eqz v4, :cond_c

    .line 172
    .line 173
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    check-cast v4, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 178
    .line 179
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    if-ne v5, v6, :cond_b

    .line 188
    .line 189
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->getItemStyle()Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->getCARD_SMALL()I

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    if-nez v5, :cond_a

    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_a
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 201
    .line 202
    .line 203
    move-result v5

    .line 204
    if-ne v5, v4, :cond_b

    .line 205
    .line 206
    goto :goto_6

    .line 207
    :cond_b
    :goto_5
    add-int/lit8 v0, v0, 0x1

    .line 208
    .line 209
    goto :goto_4

    .line 210
    :cond_c
    move v0, v3

    .line 211
    :goto_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-eq v0, v3, :cond_d

    .line 220
    .line 221
    move-object v2, p1

    .line 222
    :cond_d
    if-eqz v2, :cond_e

    .line 223
    .line 224
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    goto :goto_9

    .line 229
    :cond_e
    move p1, v3

    .line 230
    goto :goto_9

    .line 231
    :cond_f
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 236
    .line 237
    .line 238
    move-result v4

    .line 239
    if-eqz v4, :cond_11

    .line 240
    .line 241
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    check-cast v4, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 246
    .line 247
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 252
    .line 253
    .line 254
    move-result v5

    .line 255
    if-ne v4, v5, :cond_10

    .line 256
    .line 257
    goto :goto_8

    .line 258
    :cond_10
    add-int/lit8 v0, v0, 0x1

    .line 259
    .line 260
    goto :goto_7

    .line 261
    :cond_11
    move v0, v3

    .line 262
    :goto_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-eq v0, v3, :cond_12

    .line 271
    .line 272
    move-object v2, p1

    .line 273
    :cond_12
    if-eqz v2, :cond_e

    .line 274
    .line 275
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 276
    .line 277
    .line 278
    move-result p1

    .line 279
    :goto_9
    if-eq p1, v3, :cond_13

    .line 280
    .line 281
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    check-cast v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 286
    .line 287
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->getItemStyle()Ljava/lang/Integer;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->setItemStyle(Ljava/lang/Integer;)V

    .line 292
    .line 293
    .line 294
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    check-cast v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 299
    .line 300
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->isHighlight()Ljava/lang/Integer;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->setHighlight(Ljava/lang/Integer;)V

    .line 305
    .line 306
    .line 307
    invoke-interface {p2, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSubscriptionId()I

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getProductId()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    invoke-virtual {p0, v0, v2}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->v(ILjava/lang/String;)Lkotlinx/coroutines/r;

    .line 319
    .line 320
    .line 321
    :cond_13
    move v3, p1

    .line 322
    :cond_14
    move-object v2, v1

    .line 323
    :cond_15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    invoke-interface {p3, p1, v2, p2}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    return-void
.end method

.method public final v(ILjava/lang/String;)Lkotlinx/coroutines/r;
    .locals 7
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "productId"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 7
    .line 8
    new-instance v4, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager$retainSubsSkuExpose$1;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-direct {v4, p1, p2, v0}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager$retainSubsSkuExpose$1;-><init>(ILjava/lang/String;Lrs/c;)V

    .line 12
    .line 13
    .line 14
    const/4 v5, 0x2

    .line 15
    const/4 v6, 0x0

    .line 16
    const-string v2, "retainSubsSkuExpose"

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public final w(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Z)V
    .locals 6
    .param p1    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->p(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    if-eqz p2, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->q(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    sget-object p2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getRetentionTime()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    int-to-long v2, p2

    .line 31
    const-wide/32 v4, 0xea60

    .line 32
    .line 33
    .line 34
    mul-long/2addr v2, v4

    .line 35
    add-long/2addr v0, v2

    .line 36
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->setExpireTime(J)V

    .line 37
    .line 38
    .line 39
    :cond_1
    sget-object p2, Lud/b;->a:Lud/b;

    .line 40
    .line 41
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p2, v0, p1}, Lud/b;->F3(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final y(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "subsSku"

    .line 7
    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "from"

    .line 13
    .line 14
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;

    .line 18
    .line 19
    invoke-direct {v0, p2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;-><init>(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p3}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog;->h0(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string p2, "SubsExpansionNewDialog"

    .line 30
    .line 31
    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final z(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "subsSku"

    .line 7
    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->s0(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string p2, "SubsExpansionNewDialog"

    .line 25
    .line 26
    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
