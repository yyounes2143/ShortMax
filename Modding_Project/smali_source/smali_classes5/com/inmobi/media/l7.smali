.class public abstract Lcom/inmobi/media/l7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/ScheduledExecutorService;

.field public static final b:Ljava/util/concurrent/ExecutorService;

.field public static final c:Ljava/util/concurrent/Semaphore;

.field public static final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/inmobi/media/K5;

    .line 2
    .line 3
    const-string v1, "Log"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/inmobi/media/K5;-><init>(Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x5

    .line 10
    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "newScheduledThreadPool(...)"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/inmobi/media/l7;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 20
    .line 21
    new-instance v0, Lcom/inmobi/media/K5;

    .line 22
    .line 23
    const-string v1, "LogSingle"

    .line 24
    .line 25
    invoke-direct {v0, v1, v2}, Lcom/inmobi/media/K5;-><init>(Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lcom/inmobi/media/l7;->b:Ljava/util/concurrent/ExecutorService;

    .line 33
    .line 34
    new-instance v0, Ljava/util/concurrent/Semaphore;

    .line 35
    .line 36
    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/inmobi/media/l7;->c:Ljava/util/concurrent/Semaphore;

    .line 40
    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/inmobi/media/l7;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    .line 49
    return-void
.end method
