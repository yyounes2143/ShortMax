.class public final La2/g;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nActivityLifecycleTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityLifecycleTracker.kt\ncom/facebook/appevents/internal/ActivityLifecycleTracker\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,269:1\n1#2:270\n*E\n"
    }
.end annotation


# static fields
.field public static final a:La2/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Ljava/util/concurrent/ScheduledExecutorService;

.field private static final d:Ljava/util/concurrent/ScheduledExecutorService;

.field private static volatile e:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static final f:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final g:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static volatile h:La2/l;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static final i:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static k:J

.field private static l:I

.field private static m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static n:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, La2/g;

    .line 2
    .line 3
    invoke-direct {v0}, La2/g;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, La2/g;->a:La2/g;

    .line 7
    .line 8
    const-class v0, La2/g;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string v0, "com.facebook.appevents.internal.ActivityLifecycleTracker"

    .line 17
    .line 18
    :cond_0
    sput-object v0, La2/g;->b:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, La2/g;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 25
    .line 26
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, La2/g;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 31
    .line 32
    new-instance v0, Ljava/lang/Object;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    sput-object v0, La2/g;->f:Ljava/lang/Object;

    .line 38
    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 43
    .line 44
    .line 45
    sput-object v0, La2/g;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    .line 49
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 50
    .line 51
    .line 52
    sput-object v0, La2/g;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    .line 54
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

.method private static final A(Z)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {}, Ls1/e;->f()V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Ls1/e;->e()V

    .line 8
    .line 9
    .line 10
    :goto_0
    return-void
.end method

.method public static synthetic a()V
    .locals 0

    .line 1
    invoke-static {}, La2/g;->r()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(JLjava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, La2/g;->y(JLjava/lang/String;Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, La2/g;->A(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, La2/g;->v(JLjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e()V
    .locals 0

    .line 1
    invoke-static {}, La2/g;->x()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, La2/g;->u(JLjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic g()I
    .locals 1

    .line 1
    sget v0, La2/g;->l:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic h()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, La2/g;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic i(La2/g;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, La2/g;->s(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic j(La2/g;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, La2/g;->t(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic k(I)V
    .locals 0

    .line 1
    sput p0, La2/g;->l:I

    .line 2
    .line 3
    return-void
.end method

.method private final l()V
    .locals 3

    .line 1
    sget-object v0, La2/g;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, La2/g;->e:Ljava/util/concurrent/ScheduledFuture;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    sget-object v1, La2/g;->e:Ljava/util/concurrent/ScheduledFuture;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 20
    sput-object v1, La2/g;->e:Ljava/util/concurrent/ScheduledFuture;

    .line 21
    .line 22
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :goto_1
    monitor-exit v0

    .line 27
    throw v1
.end method

.method public static final m()Landroid/app/Activity;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, La2/g;->m:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    move-object v1, v0

    .line 13
    check-cast v1, Landroid/app/Activity;

    .line 14
    .line 15
    :cond_0
    return-object v1
.end method

.method public static final n()Ljava/util/UUID;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, La2/g;->h:La2/l;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v0, La2/g;->h:La2/l;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, La2/l;->d()Ljava/util/UUID;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    return-object v1
.end method

.method private final o()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/v;->m()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/facebook/internal/FetchedAppSettingsManager;->f(Ljava/lang/String;)Lcom/facebook/internal/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, La2/j;->a()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/internal/p;->v()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method public static final p()Z
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    sget v0, La2/g;->l:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public static final q(Landroid/app/Activity;)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object p0, La2/g;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    new-instance v0, La2/e;

    .line 4
    .line 5
    invoke-direct {v0}, La2/e;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static final r()V
    .locals 1

    .line 1
    sget-object v0, La2/g;->h:La2/l;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, La2/l;->g:La2/l$a;

    .line 6
    .line 7
    invoke-virtual {v0}, La2/l$a;->b()La2/l;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, La2/g;->h:La2/l;

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private final s(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ls1/e;->j(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final t(Landroid/app/Activity;)V
    .locals 3

    .line 1
    sget-object v0, La2/g;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-gez v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 11
    .line 12
    .line 13
    sget-object v0, La2/g;->b:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, "Unexpected activity pause without a matching activity resume. Logging data may be incorrect. Make sure you call activateApp from your Application\'s onCreate method"

    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-direct {p0}, La2/g;->l()V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    invoke-static {p1}, Lcom/facebook/internal/u0;->u(Landroid/content/Context;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {p1}, Ls1/e;->k(Landroid/app/Activity;)V

    .line 32
    .line 33
    .line 34
    new-instance p1, La2/d;

    .line 35
    .line 36
    invoke-direct {p1, v0, v1, v2}, La2/d;-><init>(JLjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget-object v0, La2/g;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 40
    .line 41
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private static final u(JLjava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "$activityName"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, La2/g;->h:La2/l;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, La2/l;

    .line 11
    .line 12
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v5, 0x4

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    move-object v1, v0

    .line 21
    invoke-direct/range {v1 .. v6}, La2/l;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/UUID;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 22
    .line 23
    .line 24
    sput-object v0, La2/g;->h:La2/l;

    .line 25
    .line 26
    :cond_0
    sget-object v0, La2/g;->h:La2/l;

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, La2/l;->k(Ljava/lang/Long;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    sget-object v0, La2/g;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-gtz v0, :cond_2

    .line 45
    .line 46
    new-instance v0, La2/f;

    .line 47
    .line 48
    invoke-direct {v0, p0, p1, p2}, La2/f;-><init>(JLjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sget-object v1, La2/g;->f:Ljava/lang/Object;

    .line 52
    .line 53
    monitor-enter v1

    .line 54
    :try_start_0
    sget-object v2, La2/g;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 55
    .line 56
    sget-object v3, La2/g;->a:La2/g;

    .line 57
    .line 58
    invoke-direct {v3}, La2/g;->o()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    int-to-long v3, v3

    .line 63
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 64
    .line 65
    invoke-interface {v2, v0, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sput-object v0, La2/g;->e:Ljava/util/concurrent/ScheduledFuture;

    .line 70
    .line 71
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    monitor-exit v1

    .line 74
    goto :goto_1

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    monitor-exit v1

    .line 77
    throw p0

    .line 78
    :cond_2
    :goto_1
    sget-wide v0, La2/g;->k:J

    .line 79
    .line 80
    const-wide/16 v2, 0x0

    .line 81
    .line 82
    cmp-long v4, v0, v2

    .line 83
    .line 84
    if-lez v4, :cond_3

    .line 85
    .line 86
    sub-long/2addr p0, v0

    .line 87
    const/16 v0, 0x3e8

    .line 88
    .line 89
    int-to-long v0, v0

    .line 90
    div-long v2, p0, v0

    .line 91
    .line 92
    :cond_3
    invoke-static {p2, v2, v3}, La2/i;->i(Ljava/lang/String;J)V

    .line 93
    .line 94
    .line 95
    sget-object p0, La2/g;->h:La2/l;

    .line 96
    .line 97
    if-eqz p0, :cond_4

    .line 98
    .line 99
    invoke-virtual {p0}, La2/l;->m()V

    .line 100
    .line 101
    .line 102
    :cond_4
    return-void
.end method

.method private static final v(JLjava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "$activityName"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, La2/g;->h:La2/l;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, La2/l;

    .line 11
    .line 12
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v5, 0x4

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    move-object v1, v0

    .line 21
    invoke-direct/range {v1 .. v6}, La2/l;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/UUID;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 22
    .line 23
    .line 24
    sput-object v0, La2/g;->h:La2/l;

    .line 25
    .line 26
    :cond_0
    sget-object p0, La2/g;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    const/4 p1, 0x0

    .line 33
    if-gtz p0, :cond_1

    .line 34
    .line 35
    sget-object p0, La2/g;->h:La2/l;

    .line 36
    .line 37
    sget-object v0, La2/g;->j:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {p2, p0, v0}, La2/m;->d(Ljava/lang/String;La2/l;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget-object p0, La2/l;->g:La2/l$a;

    .line 43
    .line 44
    invoke-virtual {p0}, La2/l$a;->a()V

    .line 45
    .line 46
    .line 47
    sput-object p1, La2/g;->h:La2/l;

    .line 48
    .line 49
    :cond_1
    sget-object p0, La2/g;->f:Ljava/lang/Object;

    .line 50
    .line 51
    monitor-enter p0

    .line 52
    :try_start_0
    sput-object p1, La2/g;->e:Ljava/util/concurrent/ScheduledFuture;

    .line 53
    .line 54
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    monitor-exit p0

    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    monitor-exit p0

    .line 60
    throw p1
.end method

.method public static final w(Landroid/app/Activity;)V
    .locals 8
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, La2/g;->m:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    sget-object v0, La2/g;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 16
    .line 17
    .line 18
    sget-object v0, La2/g;->a:La2/g;

    .line 19
    .line 20
    invoke-direct {v0}, La2/g;->l()V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    sput-wide v0, La2/g;->k:J

    .line 28
    .line 29
    invoke-static {p0}, Lcom/facebook/internal/u0;->u(Landroid/content/Context;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {p0}, Ls1/e;->l(Landroid/app/Activity;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p0}, Lq1/b;->d(Landroid/app/Activity;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p0}, Le2/e;->h(Landroid/app/Activity;)V

    .line 40
    .line 41
    .line 42
    sget-object v3, La2/g;->n:Ljava/lang/String;

    .line 43
    .line 44
    if-eqz v3, :cond_0

    .line 45
    .line 46
    const/4 v4, 0x2

    .line 47
    const/4 v5, 0x0

    .line 48
    const-string v6, "ProxyBillingActivity"

    .line 49
    .line 50
    const/4 v7, 0x0

    .line 51
    invoke-static {v3, v6, v7, v4, v5}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    const/4 v4, 0x1

    .line 56
    if-ne v3, v4, :cond_0

    .line 57
    .line 58
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-nez v3, :cond_0

    .line 63
    .line 64
    sget-object v3, La2/g;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 65
    .line 66
    new-instance v4, La2/b;

    .line 67
    .line 68
    invoke-direct {v4}, La2/b;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 72
    .line 73
    .line 74
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    new-instance v3, La2/c;

    .line 79
    .line 80
    invoke-direct {v3, v0, v1, v2, p0}, La2/c;-><init>(JLjava/lang/String;Landroid/content/Context;)V

    .line 81
    .line 82
    .line 83
    sget-object p0, La2/g;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 84
    .line 85
    invoke-interface {p0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 86
    .line 87
    .line 88
    sput-object v2, La2/g;->n:Ljava/lang/String;

    .line 89
    .line 90
    return-void
.end method

.method private static final x()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/facebook/appevents/iap/g;->h()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final y(JLjava/lang/String;Landroid/content/Context;)V
    .locals 10

    .line 1
    const-string v0, "$activityName"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, La2/g;->h:La2/l;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, La2/l;->e()Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v0, v1

    .line 17
    :goto_0
    sget-object v2, La2/g;->h:La2/l;

    .line 18
    .line 19
    const-string v3, "appContext"

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    new-instance v0, La2/l;

    .line 24
    .line 25
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    const/4 v8, 0x4

    .line 30
    const/4 v9, 0x0

    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v7, 0x0

    .line 33
    move-object v4, v0

    .line 34
    invoke-direct/range {v4 .. v9}, La2/l;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/UUID;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 35
    .line 36
    .line 37
    sput-object v0, La2/g;->h:La2/l;

    .line 38
    .line 39
    sget-object v0, La2/g;->j:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p2, v1, v0, p3}, La2/m;->b(Ljava/lang/String;La2/n;Ljava/lang/String;Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    if-eqz v0, :cond_3

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 51
    .line 52
    .line 53
    move-result-wide v4

    .line 54
    sub-long v4, p0, v4

    .line 55
    .line 56
    sget-object v0, La2/g;->a:La2/g;

    .line 57
    .line 58
    invoke-direct {v0}, La2/g;->o()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    mul-int/lit16 v0, v0, 0x3e8

    .line 63
    .line 64
    int-to-long v6, v0

    .line 65
    cmp-long v0, v4, v6

    .line 66
    .line 67
    if-lez v0, :cond_2

    .line 68
    .line 69
    sget-object v0, La2/g;->h:La2/l;

    .line 70
    .line 71
    sget-object v2, La2/g;->j:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {p2, v0, v2}, La2/m;->d(Ljava/lang/String;La2/l;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    sget-object v0, La2/g;->j:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-static {p2, v1, v0, p3}, La2/m;->b(Ljava/lang/String;La2/n;Ljava/lang/String;Landroid/content/Context;)V

    .line 82
    .line 83
    .line 84
    new-instance p2, La2/l;

    .line 85
    .line 86
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    const/4 v8, 0x4

    .line 91
    const/4 v9, 0x0

    .line 92
    const/4 v6, 0x0

    .line 93
    const/4 v7, 0x0

    .line 94
    move-object v4, p2

    .line 95
    invoke-direct/range {v4 .. v9}, La2/l;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/UUID;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 96
    .line 97
    .line 98
    sput-object p2, La2/g;->h:La2/l;

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_2
    const-wide/16 p2, 0x3e8

    .line 102
    .line 103
    cmp-long p2, v4, p2

    .line 104
    .line 105
    if-lez p2, :cond_3

    .line 106
    .line 107
    sget-object p2, La2/g;->h:La2/l;

    .line 108
    .line 109
    if-eqz p2, :cond_3

    .line 110
    .line 111
    invoke-virtual {p2}, La2/l;->h()V

    .line 112
    .line 113
    .line 114
    :cond_3
    :goto_1
    sget-object p2, La2/g;->h:La2/l;

    .line 115
    .line 116
    if-nez p2, :cond_4

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_4
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-virtual {p2, p0}, La2/l;->k(Ljava/lang/Long;)V

    .line 124
    .line 125
    .line 126
    :goto_2
    sget-object p0, La2/g;->h:La2/l;

    .line 127
    .line 128
    if-eqz p0, :cond_5

    .line 129
    .line 130
    invoke-virtual {p0}, La2/l;->m()V

    .line 131
    .line 132
    .line 133
    :cond_5
    return-void
.end method

.method public static final z(Landroid/app/Application;Ljava/lang/String;)V
    .locals 3
    .param p0    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, La2/g;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    sget-object v0, Lcom/facebook/internal/FeatureManager$Feature;->CodelessEvents:Lcom/facebook/internal/FeatureManager$Feature;

    .line 18
    .line 19
    new-instance v1, La2/a;

    .line 20
    .line 21
    invoke-direct {v1}, La2/a;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/facebook/internal/FeatureManager;->a(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$a;)V

    .line 25
    .line 26
    .line 27
    sput-object p1, La2/g;->j:Ljava/lang/String;

    .line 28
    .line 29
    new-instance p1, La2/g$a;

    .line 30
    .line 31
    invoke-direct {p1}, La2/g$a;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
