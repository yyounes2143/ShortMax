.class public final Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;
.super Ljava/lang/Object;
.source "DiscountSubscribeManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;
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
    new-instance v0, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->a:Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;

    .line 7
    .line 8
    new-instance v0, Lxe/a;

    .line 9
    .line 10
    invoke-direct {v0}, Lxe/a;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->b:Lms/i;

    .line 18
    .line 19
    new-instance v0, Lxe/b;

    .line 20
    .line 21
    invoke-direct {v0}, Lxe/b;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->c:Lms/i;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    sput-boolean v0, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->d:Z

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

.method public static synthetic a()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->t()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->s()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic c(Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->m(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lkotlin/jvm/functions/Function1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic d(Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->n()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e(Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->o(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic f(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method private final g(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lkotlin/jvm/functions/Function0;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->z0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->r1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 34
    .line 35
    invoke-virtual {v0}, Lud/b;->p0()Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->l(Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 49
    .line 50
    new-instance v0, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager$checkDiscountSubs$1;

    .line 51
    .line 52
    const/4 v7, 0x0

    .line 53
    move-object v2, v0

    .line 54
    move-object v3, p2

    .line 55
    move-object v4, p1

    .line 56
    move-object v5, p4

    .line 57
    move-object v6, p3

    .line 58
    invoke-direct/range {v2 .. v7}, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager$checkDiscountSubs$1;-><init>(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 59
    .line 60
    .line 61
    const/4 v5, 0x2

    .line 62
    const/4 v6, 0x0

    .line 63
    const-string v2, "checkDiscountSubs"

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    move-object v4, v0

    .line 67
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method static synthetic h(Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lkotlin/jvm/functions/Function0;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p6, p5, 0x4

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p6, :cond_0

    .line 5
    .line 6
    move-object p3, v0

    .line 7
    :cond_0
    and-int/lit8 p5, p5, 0x8

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    move-object p4, v0

    .line 12
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->g(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lkotlin/jvm/functions/Function0;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final m(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lkotlin/jvm/functions/Function1;)V
    .locals 5
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
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 17
    .line 18
    sget-boolean v1, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->d:Z

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->n()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->q()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    new-instance v4, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager$a;

    .line 29
    .line 30
    invoke-direct {v4, p1, p2}, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager$a;-><init>(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lkotlin/jvm/functions/Function1;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->t(ZLjava/lang/String;Ljava/lang/String;Lle/g;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method private final n()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->q()Ljava/lang/String;

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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->r()Ljava/util/concurrent/atomic/AtomicInteger;

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

.method private final o(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)I
    .locals 4

    .line 1
    invoke-static {p1}, Ljk/u;->e(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "discountGap = "

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v3, " sku="

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v2, "DiscountSubscribeManager"

    .line 37
    .line 38
    invoke-virtual {v1, v2, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return v0
.end method

.method private final q()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->b:Lms/i;

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

.method private final r()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->c:Lms/i;

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

.method private static final s()Ljava/lang/String;
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

.method private static final t()Ljava/util/concurrent/atomic/AtomicInteger;
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


# virtual methods
.method public final i(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lud/b;->a:Lud/b;

    .line 7
    .line 8
    sget-object v1, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 9
    .line 10
    new-instance v2, Ljava/util/Date;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v2}, Ljk/f;->a(Ljava/util/Date;)Ljava/util/Date;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/utils/TimeUtil;->f(Ljava/util/Date;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lud/b;->s0(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/16 v1, 0xa

    .line 28
    .line 29
    if-ge v0, v1, :cond_0

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    const-string v0, "immersion_page"

    .line 33
    .line 34
    invoke-direct {p0, v0, p1, p3, p2}, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->g(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lkotlin/jvm/functions/Function0;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final j(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lkotlin/jvm/functions/Function0;)V
    .locals 8
    .param p1    # Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/16 v6, 0x8

    .line 7
    .line 8
    const/4 v7, 0x0

    .line 9
    const-string v2, "profile"

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    move-object v1, p0

    .line 13
    move-object v3, p1

    .line 14
    move-object v4, p2

    .line 15
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->h(Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lkotlin/jvm/functions/Function0;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final k(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lkotlin/jvm/functions/Function0;)V
    .locals 8
    .param p1    # Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/16 v6, 0x8

    .line 7
    .line 8
    const/4 v7, 0x0

    .line 9
    const-string/jumbo v2, "subscribe"

    .line 10
    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    move-object v1, p0

    .line 14
    move-object v3, p1

    .line 15
    move-object v4, p2

    .line 16
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->h(Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lkotlin/jvm/functions/Function0;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final l(Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;)Z
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    sget-object p1, Lud/b;->a:Lud/b;

    .line 6
    .line 7
    sget-object v1, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 8
    .line 9
    new-instance v2, Ljava/util/Date;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v2}, Ljk/f;->a(Ljava/util/Date;)Ljava/util/Date;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/utils/TimeUtil;->f(Ljava/util/Date;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p1, v1}, Lud/b;->j2(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    return v0

    .line 29
    :cond_1
    const/4 p1, 0x1

    .line 30
    return p1
.end method

.method public final p()Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->z0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "DiscountSubscribeManager"

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 13
    .line 14
    const-string v3, "hasSubscribed = false"

    .line 15
    .line 16
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->r1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 43
    .line 44
    const-string v3, "ABTestFactory = false"

    .line 45
    .line 46
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v1

    .line 50
    :cond_1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 51
    .line 52
    invoke-virtual {v0}, Lud/b;->p0()Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 59
    .line 60
    const-string v3, "discountSubscribeInfo = null"

    .line 61
    .line 62
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-object v1

    .line 66
    :cond_2
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;->getSubscribeSkuResponse()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-nez v0, :cond_3

    .line 71
    .line 72
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 73
    .line 74
    const-string/jumbo v3, "subscribeSkuResponse = null"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-object v1

    .line 81
    :cond_3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getDiscountTime()Ljava/lang/Long;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    if-eqz v3, :cond_4

    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 88
    .line 89
    .line 90
    move-result-wide v3

    .line 91
    goto :goto_0

    .line 92
    :cond_4
    const-wide/16 v3, 0x0

    .line 93
    .line 94
    :goto_0
    sget-object v5, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 95
    .line 96
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 97
    .line 98
    .line 99
    move-result-wide v5

    .line 100
    sub-long/2addr v3, v5

    .line 101
    const/16 v5, 0x3e8

    .line 102
    .line 103
    int-to-long v5, v5

    .line 104
    div-long/2addr v3, v5

    .line 105
    const-wide/16 v5, 0x1

    .line 106
    .line 107
    cmp-long v3, v3, v5

    .line 108
    .line 109
    if-gez v3, :cond_5

    .line 110
    .line 111
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 112
    .line 113
    const-string v3, "countDownSeconds < 1"

    .line 114
    .line 115
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    return-object v1

    .line 119
    :cond_5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuDetails()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    if-nez v3, :cond_6

    .line 124
    .line 125
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 126
    .line 127
    const-string/jumbo v3, "skuDetails = null"

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return-object v1

    .line 134
    :cond_6
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->o(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    const/4 v5, 0x2

    .line 143
    if-le v4, v5, :cond_8

    .line 144
    .line 145
    if-nez v3, :cond_7

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_7
    return-object v0

    .line 149
    :cond_8
    :goto_1
    sget-object v4, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 150
    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    const-string v6, "discountGap <= 2 , isEnableDiscount = "

    .line 157
    .line 158
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v3, " subscribeSku="

    .line 165
    .line 166
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-static {v0}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v4, v2, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    return-object v1
.end method

.method public final u(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "gpSkuId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lud/b;->a:Lud/b;

    .line 7
    .line 8
    invoke-virtual {v0}, Lud/b;->p0()Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;->getSubscribeSkuResponse()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 31
    .line 32
    const-string v1, "DiscountSubscribeManager"

    .line 33
    .line 34
    const-string v2, "premiumSuccess discountSubscribeInfo = null"

    .line 35
    .line 36
    invoke-virtual {p1, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    invoke-virtual {v0, p1}, Lud/b;->A3(Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    sget-object p1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->a:Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;

    .line 44
    .line 45
    const-string/jumbo v0, "topup"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->f(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final v(Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;)V
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "info"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "saveDiscountSubscribe  info="

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "DiscountSubscribeManager"

    .line 30
    .line 31
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object v0, Lud/b;->a:Lud/b;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lud/b;->A3(Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final w(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "date"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lud/b;->a:Lud/b;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Lud/b;->B3(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
