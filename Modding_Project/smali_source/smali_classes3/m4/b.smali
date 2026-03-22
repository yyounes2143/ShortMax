.class public final Lm4/b;
.super Ljava/lang/Object;
.source "ANRDetector.kt"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nANRDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ANRDetector.kt\ncom/facebook/internal/instrument/anrreport/ANRDetector\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,68:1\n1855#2,2:69\n*S KotlinDebug\n*F\n+ 1 ANRDetector.kt\ncom/facebook/internal/instrument/anrreport/ANRDetector\n*L\n46#1:69,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lm4/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:I

.field private static final c:Ljava/util/concurrent/ScheduledExecutorService;

.field private static d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static final e:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lm4/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lm4/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lm4/b;->a:Lm4/b;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    sput v0, Lm4/b;->b:I

    .line 13
    .line 14
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lm4/b;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 19
    .line 20
    const-string v0, ""

    .line 21
    .line 22
    sput-object v0, Lm4/b;->d:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v0, Lm4/a;

    .line 25
    .line 26
    invoke-direct {v0}, Lm4/a;-><init>()V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lm4/b;->e:Ljava/lang/Runnable;

    .line 30
    .line 31
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
    invoke-static {}, Lm4/b;->b()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final b()V
    .locals 3

    .line 1
    const-class v0, Lm4/b;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/v;->l()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "activity"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "null cannot be cast to non-null type android.app.ActivityManager"

    .line 21
    .line 22
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    check-cast v1, Landroid/app/ActivityManager;

    .line 26
    .line 27
    invoke-static {v1}, Lm4/b;->c(Landroid/app/ActivityManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    invoke-static {v1, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :catch_0
    :goto_0
    return-void
.end method

.method public static final c(Landroid/app/ActivityManager;)V
    .locals 5
    .param p0    # Landroid/app/ActivityManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const-class v0, Lm4/b;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    if-eqz p0, :cond_3

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getProcessesInErrorState()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_3

    .line 17
    .line 18
    check-cast p0, Ljava/lang/Iterable;

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 35
    .line 36
    iget v2, v1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    .line 37
    .line 38
    const/4 v3, 0x2

    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    iget v2, v1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->uid:I

    .line 42
    .line 43
    sget v3, Lm4/b;->b:I

    .line 44
    .line 45
    if-ne v2, v3, :cond_1

    .line 46
    .line 47
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const-string v3, "getMainLooper().thread"

    .line 56
    .line 57
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v2}, Ll4/i;->g(Ljava/lang/Thread;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    sget-object v4, Lm4/b;->d:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-nez v4, :cond_1

    .line 71
    .line 72
    invoke-static {v2}, Ll4/i;->k(Ljava/lang/Thread;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_2

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    sput-object v3, Lm4/b;->d:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v1, v1, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v1, v3}, Lcom/facebook/internal/instrument/InstrumentData$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/internal/instrument/InstrumentData;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1}, Lcom/facebook/internal/instrument/InstrumentData;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    return-void
.end method

.method public static final d()V
    .locals 9
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const-class v0, Lm4/b;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    sget-object v2, Lm4/b;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 11
    .line 12
    sget-object v3, Lm4/b;->e:Ljava/lang/Runnable;

    .line 13
    .line 14
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 15
    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    const-wide/16 v6, 0x1f4

    .line 19
    .line 20
    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    invoke-static {v1, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
