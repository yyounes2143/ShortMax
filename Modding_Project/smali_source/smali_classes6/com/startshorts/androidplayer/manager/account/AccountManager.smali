.class public final Lcom/startshorts/androidplayer/manager/account/AccountManager;
.super Ljava/lang/Object;
.source "AccountManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAccountManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountManager.kt\ncom/startshorts/androidplayer/manager/account/AccountManager\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,316:1\n426#2,11:317\n216#3,2:328\n*S KotlinDebug\n*F\n+ 1 AccountManager.kt\ncom/startshorts/androidplayer/manager/account/AccountManager\n*L\n157#1:317,11\n182#1:328,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/manager/account/AccountManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static c:Z

.field private static d:J

.field private static final e:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static f:Z

.field private static g:J

.field private static final h:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final i:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Runnable;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/startshorts/androidplayer/bean/exception/ResponseException;",
            "Lkotlin/Unit;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static j:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static k:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/account/AccountManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/account/AccountManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/manager/account/AccountManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountManager;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/startshorts/androidplayer/manager/account/AccountManager;->b:Ljava/lang/Object;

    .line 14
    .line 15
    const-wide/16 v0, -0x1

    .line 16
    .line 17
    sput-wide v0, Lcom/startshorts/androidplayer/manager/account/AccountManager;->d:J

    .line 18
    .line 19
    new-instance v2, Ljava/lang/Object;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v2, Lcom/startshorts/androidplayer/manager/account/AccountManager;->e:Ljava/lang/Object;

    .line 25
    .line 26
    sput-wide v0, Lcom/startshorts/androidplayer/manager/account/AccountManager;->g:J

    .line 27
    .line 28
    new-instance v0, Ljava/lang/Object;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lcom/startshorts/androidplayer/manager/account/AccountManager;->h:Ljava/lang/Object;

    .line 34
    .line 35
    new-instance v0, Lbe/f;

    .line 36
    .line 37
    invoke-direct {v0}, Lbe/f;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sput-object v0, Lcom/startshorts/androidplayer/manager/account/AccountManager;->i:Lms/i;

    .line 45
    .line 46
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

.method public static synthetic a()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->q()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->r()Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c(I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->w(I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final d(Ljava/lang/Runnable;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/startshorts/androidplayer/bean/exception/ResponseException;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/account/AccountManager;->i:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/util/Map;

    .line 20
    .line 21
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public static synthetic m(Lcom/startshorts/androidplayer/manager/account/AccountManager;ZLcom/startshorts/androidplayer/bean/exception/ResponseException;ILjava/lang/Object;)V
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->l(ZLcom/startshorts/androidplayer/bean/exception/ResponseException;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic p(Lcom/startshorts/androidplayer/manager/account/AccountManager;Lcom/startshorts/androidplayer/bean/account/Account;ZZILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    move p2, v0

    .line 12
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 13
    .line 14
    if-eqz p4, :cond_2

    .line 15
    .line 16
    move p3, v0

    .line 17
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->o(Lcom/startshorts/androidplayer/bean/account/Account;ZZ)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private static final q()V
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/account/AccountManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->u()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static final r()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final u()V
    .locals 3

    .line 1
    sget-object v0, Laa/a;->a:Laa/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Laa/a;->d()Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/hades/aar/activity/IDActivity;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v1, Lcom/startshorts/androidplayer/bean/tip/Builder;

    .line 18
    .line 19
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/tip/Builder;-><init>()V

    .line 20
    .line 21
    .line 22
    sget v2, Lcom/startshorts/androidplayer/R$string;->common_login_expired:I

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/tip/Builder;->setContent(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget v2, Lcom/startshorts/androidplayer/R$string;->common_re_login:I

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/tip/Builder;->setPositiveButtonText(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v2, Lcom/startshorts/androidplayer/manager/account/AccountManager$c;

    .line 41
    .line 42
    invoke-direct {v2, v0}, Lcom/startshorts/androidplayer/manager/account/AccountManager$c;-><init>(Lcom/hades/aar/activity/IDActivity;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/tip/Builder;->setPositiveButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    .line 47
    .line 48
    sget v2, Lcom/startshorts/androidplayer/R$string;->common_cancel:I

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/tip/Builder;->setNegativeButtonText(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance v2, Lli/c;

    .line 58
    .line 59
    invoke-direct {v2, v0, v1}, Lli/c;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/tip/Builder;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Lfi/a;->show()V

    .line 63
    .line 64
    .line 65
    :cond_0
    return-void
.end method

.method private static final w(I)Lkotlin/Unit;
    .locals 4

    .line 1
    sget-object p0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->z0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->o0()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    sub-long/2addr v0, v2

    .line 20
    const-wide/32 v2, 0x1d4c0

    .line 21
    .line 22
    .line 23
    cmp-long v0, v0, v2

    .line 24
    .line 25
    if-lez v0, :cond_0

    .line 26
    .line 27
    sget-object p0, Lcom/startshorts/androidplayer/manager/account/AccountManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountManager;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->e()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    sget v0, Lcom/startshorts/androidplayer/manager/account/AccountManager;->k:I

    .line 34
    .line 35
    const/4 v1, 0x5

    .line 36
    if-le v0, v1, :cond_1

    .line 37
    .line 38
    sget-object p0, Lcom/startshorts/androidplayer/manager/account/AccountManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountManager;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->e()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 45
    .line 46
    const-string v1, "AccountManager"

    .line 47
    .line 48
    const-string v2, "checkSubsRenew"

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sget v0, Lcom/startshorts/androidplayer/manager/account/AccountManager;->k:I

    .line 54
    .line 55
    add-int/lit8 v0, v0, 0x1

    .line 56
    .line 57
    sput v0, Lcom/startshorts/androidplayer/manager/account/AccountManager;->k:I

    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    const/4 v1, 0x3

    .line 61
    const/4 v2, 0x0

    .line 62
    invoke-static {p0, v0, v2, v1, v2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->c1(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 66
    .line 67
    return-object p0
.end method


# virtual methods
.method public final e()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    sput v0, Lcom/startshorts/androidplayer/manager/account/AccountManager;->k:I

    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/manager/account/AccountManager;->j:Lkotlinx/coroutines/r;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 16
    .line 17
    const-string v2, "AccountManager"

    .line 18
    .line 19
    const-string v3, "cancelCheckSubsRenewJob"

    .line 20
    .line 21
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sput-object v1, Lcom/startshorts/androidplayer/manager/account/AccountManager;->j:Lkotlinx/coroutines/r;

    .line 25
    .line 26
    return-void
.end method

.method public final f(Ljava/lang/Runnable;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .param p1    # Ljava/lang/Runnable;
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
            "Ljava/lang/Runnable;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/startshorts/androidplayer/bean/exception/ResponseException;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "runnable"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "executeFailed"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/startshorts/androidplayer/manager/account/AccountManager;->b:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->w0()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    sget-object v2, Lcom/startshorts/androidplayer/manager/account/AccountManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountManager;

    .line 29
    .line 30
    invoke-direct {v2, p1, p2}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->d(Ljava/lang/Runnable;Lkotlin/jvm/functions/Function1;)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    const/4 p2, 0x0

    .line 35
    invoke-static {v1, p2, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->X(Lcom/startshorts/androidplayer/repo/account/AccountRepo;Ljava/lang/String;ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :goto_1
    monitor-exit v0

    .line 43
    throw p1
.end method

.method public final g()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->a:Lcom/startshorts/androidplayer/repo/config/ConfigRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->t()Lcom/startshorts/androidplayer/bean/configure/ServerConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    sget-object v0, Laa/a;->a:Laa/a;

    .line 10
    .line 11
    invoke-virtual {v0}, Laa/a;->d()Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/hades/aar/activity/IDActivity;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    if-eqz v0, :cond_1

    .line 26
    .line 27
    sget v1, Lcom/startshorts/androidplayer/R$string;->facebook_login_dialog_fragment_huge:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    :cond_1
    const-string v0, "100"

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/ServerConfig;->getGgLoginBonus()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :cond_3
    :goto_1
    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->a:Lcom/startshorts/androidplayer/repo/config/ConfigRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->t()Lcom/startshorts/androidplayer/bean/configure/ServerConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    sget-object v0, Laa/a;->a:Laa/a;

    .line 10
    .line 11
    invoke-virtual {v0}, Laa/a;->d()Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/hades/aar/activity/IDActivity;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    if-eqz v0, :cond_1

    .line 26
    .line 27
    sget v1, Lcom/startshorts/androidplayer/R$string;->facebook_login_dialog_fragment_huge:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    :cond_1
    const-string v0, "100"

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/ServerConfig;->getMetaLoginBonus()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :cond_3
    :goto_1
    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->a:Lcom/startshorts/androidplayer/repo/config/ConfigRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->t()Lcom/startshorts/androidplayer/bean/configure/ServerConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    sget-object v0, Laa/a;->a:Laa/a;

    .line 10
    .line 11
    invoke-virtual {v0}, Laa/a;->d()Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/hades/aar/activity/IDActivity;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    if-eqz v0, :cond_1

    .line 26
    .line 27
    sget v1, Lcom/startshorts/androidplayer/R$string;->facebook_login_dialog_fragment_huge:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    :cond_1
    const-string v0, "50"

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/ServerConfig;->getMobileLoginBonus()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :cond_3
    :goto_1
    return-object v0
.end method

.method public final j()V
    .locals 13

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/account/AccountManager;->h:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a0()Lcom/startshorts/androidplayer/bean/account/Account;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 11
    .line 12
    const-string v2, "AccountManager"

    .line 13
    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v5, "handleTokenError -> mLastHandleTokenErrorTime("

    .line 20
    .line 21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    sget-wide v5, Lcom/startshorts/androidplayer/manager/account/AccountManager;->g:J

    .line 25
    .line 26
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v5, ") mTokenError("

    .line 30
    .line 31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    sget-boolean v5, Lcom/startshorts/androidplayer/manager/account/AccountManager;->f:Z

    .line 35
    .line 36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v5, ") account("

    .line 40
    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const/16 v5, 0x29

    .line 48
    .line 49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v1, v2, v4}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 62
    .line 63
    .line 64
    move-result-wide v4

    .line 65
    sget-wide v6, Lcom/startshorts/androidplayer/manager/account/AccountManager;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    sub-long v6, v4, v6

    .line 68
    .line 69
    const-wide/16 v8, 0x7530

    .line 70
    .line 71
    cmp-long v2, v6, v8

    .line 72
    .line 73
    if-gez v2, :cond_0

    .line 74
    .line 75
    monitor-exit v0

    .line 76
    return-void

    .line 77
    :cond_0
    :try_start_1
    sget-boolean v2, Lcom/startshorts/androidplayer/manager/account/AccountManager;->f:Z

    .line 78
    .line 79
    if-nez v2, :cond_2

    .line 80
    .line 81
    if-nez v3, :cond_1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    const/4 v2, 0x1

    .line 85
    sput-boolean v2, Lcom/startshorts/androidplayer/manager/account/AccountManager;->f:Z

    .line 86
    .line 87
    sput-wide v4, Lcom/startshorts/androidplayer/manager/account/AccountManager;->g:J

    .line 88
    .line 89
    sget-object v6, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 90
    .line 91
    const-string/jumbo v7, "token_status"

    .line 92
    .line 93
    .line 94
    new-instance v8, Landroid/os/Bundle;

    .line 95
    .line 96
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string/jumbo v2, "status"

    .line 100
    .line 101
    .line 102
    const-string v4, "illegal"

    .line 103
    .line 104
    invoke-virtual {v8, v2, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 108
    .line 109
    const/4 v11, 0x4

    .line 110
    const/4 v12, 0x0

    .line 111
    const-wide/16 v9, 0x0

    .line 112
    .line 113
    invoke-static/range {v6 .. v12}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    const-string v2, "AccountManager"

    .line 117
    .line 118
    const-string v4, "handleTokenError"

    .line 119
    .line 120
    invoke-virtual {v1, v2, v4}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    sget-object v2, Lcom/startshorts/androidplayer/manager/account/AccountManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountManager;

    .line 124
    .line 125
    const/4 v6, 0x2

    .line 126
    const/4 v7, 0x0

    .line 127
    const/4 v4, 0x0

    .line 128
    const/4 v5, 0x1

    .line 129
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->p(Lcom/startshorts/androidplayer/manager/account/AccountManager;Lcom/startshorts/androidplayer/bean/account/Account;ZZILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    .line 131
    .line 132
    monitor-exit v0

    .line 133
    return-void

    .line 134
    :catchall_0
    move-exception v1

    .line 135
    goto :goto_1

    .line 136
    :cond_2
    :goto_0
    monitor-exit v0

    .line 137
    return-void

    .line 138
    :goto_1
    monitor-exit v0

    .line 139
    throw v1
.end method

.method public final k()V
    .locals 12

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/account/AccountManager;->e:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a0()Lcom/startshorts/androidplayer/bean/account/Account;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 11
    .line 12
    const-string v2, "AccountManager"

    .line 13
    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v5, "handleTokenExpired -> mLastHandleTokenExpiredTime("

    .line 20
    .line 21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    sget-wide v5, Lcom/startshorts/androidplayer/manager/account/AccountManager;->d:J

    .line 25
    .line 26
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v5, ") mTokenExpired("

    .line 30
    .line 31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    sget-boolean v5, Lcom/startshorts/androidplayer/manager/account/AccountManager;->c:Z

    .line 35
    .line 36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v5, ") account("

    .line 40
    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const/16 v5, 0x29

    .line 48
    .line 49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v1, v2, v4}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 62
    .line 63
    .line 64
    move-result-wide v4

    .line 65
    sget-wide v6, Lcom/startshorts/androidplayer/manager/account/AccountManager;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    sub-long v6, v4, v6

    .line 68
    .line 69
    const-wide/16 v8, 0x7530

    .line 70
    .line 71
    cmp-long v2, v6, v8

    .line 72
    .line 73
    if-gez v2, :cond_0

    .line 74
    .line 75
    monitor-exit v0

    .line 76
    return-void

    .line 77
    :cond_0
    :try_start_1
    sget-boolean v2, Lcom/startshorts/androidplayer/manager/account/AccountManager;->c:Z

    .line 78
    .line 79
    if-nez v2, :cond_2

    .line 80
    .line 81
    if-nez v3, :cond_1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    const/4 v2, 0x1

    .line 85
    sput-boolean v2, Lcom/startshorts/androidplayer/manager/account/AccountManager;->c:Z

    .line 86
    .line 87
    sput-wide v4, Lcom/startshorts/androidplayer/manager/account/AccountManager;->d:J

    .line 88
    .line 89
    const-string v2, "AccountManager"

    .line 90
    .line 91
    const-string v4, "handleTokenExpired"

    .line 92
    .line 93
    invoke-virtual {v1, v2, v4}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    sget-object v5, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 97
    .line 98
    const-string/jumbo v6, "token_status"

    .line 99
    .line 100
    .line 101
    new-instance v7, Landroid/os/Bundle;

    .line 102
    .line 103
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string/jumbo v1, "status"

    .line 107
    .line 108
    .line 109
    const-string v2, "expired"

    .line 110
    .line 111
    invoke-virtual {v7, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 115
    .line 116
    const/4 v10, 0x4

    .line 117
    const/4 v11, 0x0

    .line 118
    const-wide/16 v8, 0x0

    .line 119
    .line 120
    invoke-static/range {v5 .. v11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    sget-object v2, Lcom/startshorts/androidplayer/manager/account/AccountManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountManager;

    .line 124
    .line 125
    const/4 v6, 0x4

    .line 126
    const/4 v7, 0x0

    .line 127
    const/4 v4, 0x1

    .line 128
    const/4 v5, 0x0

    .line 129
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->p(Lcom/startshorts/androidplayer/manager/account/AccountManager;Lcom/startshorts/androidplayer/bean/account/Account;ZZILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    .line 131
    .line 132
    monitor-exit v0

    .line 133
    return-void

    .line 134
    :catchall_0
    move-exception v1

    .line 135
    goto :goto_1

    .line 136
    :cond_2
    :goto_0
    monitor-exit v0

    .line 137
    return-void

    .line 138
    :goto_1
    monitor-exit v0

    .line 139
    throw v1
.end method

.method public final l(ZLcom/startshorts/androidplayer/bean/exception/ResponseException;)V
    .locals 3
    .param p2    # Lcom/startshorts/androidplayer/bean/exception/ResponseException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/account/AccountManager;->i:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/util/Map$Entry;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ljava/lang/Runnable;

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    if-eqz p2, :cond_0

    .line 49
    .line 50
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 55
    .line 56
    invoke-interface {v2, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    sget-object p1, Lcom/startshorts/androidplayer/manager/account/AccountManager;->i:Lms/i;

    .line 61
    .line 62
    invoke-interface {p1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 69
    .line 70
    .line 71
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    monitor-exit v1

    .line 74
    return-void

    .line 75
    :goto_1
    monitor-exit v1

    .line 76
    throw p1
.end method

.method public final n(Lrs/c;)Ljava/lang/Object;
    .locals 5
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/manager/account/AccountManager$isAccountReady$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/manager/account/AccountManager$isAccountReady$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/manager/account/AccountManager$isAccountReady$1;->j:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/manager/account/AccountManager$isAccountReady$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/account/AccountManager$isAccountReady$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/manager/account/AccountManager$isAccountReady$1;-><init>(Lcom/startshorts/androidplayer/manager/account/AccountManager;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/startshorts/androidplayer/manager/account/AccountManager$isAccountReady$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/manager/account/AccountManager$isAccountReady$1;->j:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iput v3, v0, Lcom/startshorts/androidplayer/manager/account/AccountManager$isAccountReady$1;->j:I

    .line 54
    .line 55
    new-instance p1, Lkotlinx/coroutines/e;

    .line 56
    .line 57
    invoke-static {v0}, Lkotlin/coroutines/intrinsics/a;->c(Lrs/c;)Lrs/c;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-direct {p1, v2, v3}, Lkotlinx/coroutines/e;-><init>(Lrs/c;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lkotlinx/coroutines/e;->H()V

    .line 65
    .line 66
    .line 67
    sget-object v2, Lcom/startshorts/androidplayer/manager/account/AccountManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountManager;

    .line 68
    .line 69
    new-instance v3, Lcom/startshorts/androidplayer/manager/account/AccountManager$a;

    .line 70
    .line 71
    invoke-direct {v3, p1}, Lcom/startshorts/androidplayer/manager/account/AccountManager$a;-><init>(Lgt/i;)V

    .line 72
    .line 73
    .line 74
    new-instance v4, Lcom/startshorts/androidplayer/manager/account/AccountManager$b;

    .line 75
    .line 76
    invoke-direct {v4, p1}, Lcom/startshorts/androidplayer/manager/account/AccountManager$b;-><init>(Lgt/i;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v3, v4}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->f(Ljava/lang/Runnable;Lkotlin/jvm/functions/Function1;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lkotlinx/coroutines/e;->B()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    if-ne p1, v2, :cond_3

    .line 91
    .line 92
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/f;->c(Lrs/c;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    if-ne p1, v1, :cond_4

    .line 96
    .line 97
    return-object v1

    .line 98
    :cond_4
    :goto_1
    check-cast p1, Lkotlin/Result;

    .line 99
    .line 100
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    return-object p1
.end method

.method public final o(Lcom/startshorts/androidplayer/bean/account/Account;ZZ)V
    .locals 6
    .param p1    # Lcom/startshorts/androidplayer/bean/account/Account;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "logout -> tokenExpired("

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, ") tokenError("

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const/16 v2, 0x29

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v3, "AccountManager"

    .line 34
    .line 35
    invoke-virtual {v0, v3, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/base/RetrofitFactory;->a:Lcom/startshorts/androidplayer/manager/api/base/RetrofitFactory;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/api/base/RetrofitFactory;->b()Lkotlinx/coroutines/r;

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/account/Account;->isPrimary()Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_0

    .line 53
    .line 54
    sget-object p1, Lfk/h0;->a:Lfk/h0;

    .line 55
    .line 56
    new-instance p2, Lbe/g;

    .line 57
    .line 58
    invoke-direct {p2}, Lbe/g;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/account/Account;->isRegisterCodeInitialized()Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    if-eqz p2, :cond_2

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/account/Account;->getRegisterCode()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    if-eqz p3, :cond_2

    .line 77
    .line 78
    if-eqz p1, :cond_2

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/account/Account;->isRegisterCodeInitialized()Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-eqz p2, :cond_2

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/account/Account;->getRegisterCode()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    goto :goto_1

    .line 91
    :cond_2
    :goto_0
    move-object p1, v0

    .line 92
    :goto_1
    sget-object p2, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 93
    .line 94
    invoke-virtual {p2, v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->f1(Lcom/startshorts/androidplayer/bean/account/Account;)V

    .line 95
    .line 96
    .line 97
    :try_start_0
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-virtual {p2}, Lcom/google/firebase/auth/FirebaseAuth;->l()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :catch_0
    move-exception p2

    .line 106
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 107
    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string/jumbo v5, "signOut exception -> "

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-virtual {v1, v3, p2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :goto_2
    sget-object p2, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;

    .line 134
    .line 135
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->h()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->g()V

    .line 139
    .line 140
    .line 141
    sget-object p2, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 142
    .line 143
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->o()V

    .line 144
    .line 145
    .line 146
    sget-object p2, Lud/b;->a:Lud/b;

    .line 147
    .line 148
    invoke-virtual {p2}, Lud/b;->c()V

    .line 149
    .line 150
    .line 151
    const/4 p2, 0x0

    .line 152
    if-eqz p3, :cond_3

    .line 153
    .line 154
    sget-object p3, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 155
    .line 156
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->c()Z

    .line 157
    .line 158
    .line 159
    move-result p3

    .line 160
    goto :goto_3

    .line 161
    :cond_3
    move p3, p2

    .line 162
    :goto_3
    if-nez p3, :cond_5

    .line 163
    .line 164
    sget-object p3, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 165
    .line 166
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->s0()Lcom/startshorts/androidplayer/bean/account/Account;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    if-eqz v0, :cond_4

    .line 171
    .line 172
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 173
    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    const-string v5, "logout -> use touristAccount("

    .line 180
    .line 181
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/account/Account;->getUserCode()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-virtual {v1, v3, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    sput-boolean p2, Lcom/startshorts/androidplayer/manager/account/AccountManager;->c:Z

    .line 202
    .line 203
    sput-boolean p2, Lcom/startshorts/androidplayer/manager/account/AccountManager;->f:Z

    .line 204
    .line 205
    invoke-virtual {p3, v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->f1(Lcom/startshorts/androidplayer/bean/account/Account;)V

    .line 206
    .line 207
    .line 208
    sget-object p3, Lud/a;->a:Lud/a;

    .line 209
    .line 210
    invoke-virtual {p3}, Lud/a;->t()Z

    .line 211
    .line 212
    .line 213
    move-result p3

    .line 214
    if-eqz p3, :cond_4

    .line 215
    .line 216
    sget-object p3, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->a:Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;

    .line 217
    .line 218
    invoke-virtual {p3, p2}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->x(Z)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->u()V

    .line 222
    .line 223
    .line 224
    sget-object p2, Lcom/startshorts/androidplayer/repo/push/PushRepo;->a:Lcom/startshorts/androidplayer/repo/push/PushRepo;

    .line 225
    .line 226
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->C()V

    .line 227
    .line 228
    .line 229
    :cond_4
    move-object v0, p1

    .line 230
    :cond_5
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    new-instance p2, Lcom/startshorts/androidplayer/bean/eventbus/RefreshAccountEvent;

    .line 235
    .line 236
    invoke-direct {p2}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshAccountEvent;-><init>()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1, p2}, Lau/c;->l(Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 243
    .line 244
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->w0()Z

    .line 245
    .line 246
    .line 247
    move-result p2

    .line 248
    if-nez p2, :cond_6

    .line 249
    .line 250
    sget-object p2, Lud/a;->a:Lud/a;

    .line 251
    .line 252
    invoke-virtual {p2}, Lud/a;->t()Z

    .line 253
    .line 254
    .line 255
    move-result p2

    .line 256
    if-eqz p2, :cond_6

    .line 257
    .line 258
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->W(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    :cond_6
    return-void
.end method

.method public final s(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lcom/startshorts/androidplayer/manager/account/AccountManager;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method public final t(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lcom/startshorts/androidplayer/manager/account/AccountManager;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method public final v()V
    .locals 12

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/account/AccountManager;->j:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->e()V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->M0()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->z0()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->o0()J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    sget-object v3, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    sub-long/2addr v1, v3

    .line 34
    const-wide/32 v3, 0x1d4c0

    .line 35
    .line 36
    .line 37
    cmp-long v1, v1, v3

    .line 38
    .line 39
    if-gez v1, :cond_3

    .line 40
    .line 41
    :cond_1
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->M0()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    const/4 v2, 0x3

    .line 49
    const/4 v3, 0x0

    .line 50
    invoke-static {v0, v1, v3, v2, v3}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->c1(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    sget-object v4, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 54
    .line 55
    new-instance v8, Lbe/h;

    .line 56
    .line 57
    invoke-direct {v8}, Lbe/h;-><init>()V

    .line 58
    .line 59
    .line 60
    const/16 v10, 0xa

    .line 61
    .line 62
    const/4 v11, 0x0

    .line 63
    const-wide/16 v5, 0x7530

    .line 64
    .line 65
    const/4 v7, 0x0

    .line 66
    const/4 v9, 0x0

    .line 67
    invoke-static/range {v4 .. v11}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->n(Lcom/startshorts/androidplayer/utils/CoroutineUtil;JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lcom/startshorts/androidplayer/manager/account/AccountManager;->j:Lkotlinx/coroutines/r;

    .line 72
    .line 73
    :cond_3
    return-void
.end method
