.class public Lcom/bytedance/bdtracker/x;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/bdtracker/x$b;
    }
.end annotation


# static fields
.field public static a:Ljava/util/concurrent/ExecutorService;

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lcom/bytedance/bdtracker/x$b;

.field public static final h:Ljava/util/concurrent/RejectedExecutionHandler;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput v0, Lcom/bytedance/bdtracker/x;->b:I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v1

    .line 16
    :goto_0
    sput v0, Lcom/bytedance/bdtracker/x;->c:I

    .line 17
    .line 18
    sub-int/2addr v0, v1

    .line 19
    const/4 v2, 0x6

    .line 20
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x2

    .line 25
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    mul-int/lit8 v3, v0, 0x2

    .line 30
    .line 31
    sput v3, Lcom/bytedance/bdtracker/x;->d:I

    .line 32
    .line 33
    mul-int/lit8 v0, v0, 0x4

    .line 34
    .line 35
    add-int/lit8 v4, v0, 0x1

    .line 36
    .line 37
    sput v4, Lcom/bytedance/bdtracker/x;->e:I

    .line 38
    .line 39
    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 40
    .line 41
    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 42
    .line 43
    .line 44
    sput-object v8, Lcom/bytedance/bdtracker/x;->f:Ljava/util/concurrent/BlockingQueue;

    .line 45
    .line 46
    new-instance v9, Lcom/bytedance/bdtracker/x$b;

    .line 47
    .line 48
    const-string v0, "TTDefaultExecutors"

    .line 49
    .line 50
    invoke-direct {v9, v0}, Lcom/bytedance/bdtracker/x$b;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sput-object v9, Lcom/bytedance/bdtracker/x;->g:Lcom/bytedance/bdtracker/x$b;

    .line 54
    .line 55
    new-instance v10, Lcom/bytedance/bdtracker/x$a;

    .line 56
    .line 57
    invoke-direct {v10}, Lcom/bytedance/bdtracker/x$a;-><init>()V

    .line 58
    .line 59
    .line 60
    sput-object v10, Lcom/bytedance/bdtracker/x;->h:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 61
    .line 62
    new-instance v0, Lcom/bytedance/bdtracker/y;

    .line 63
    .line 64
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 65
    .line 66
    const-wide/16 v5, 0x1e

    .line 67
    .line 68
    move-object v2, v0

    .line 69
    invoke-direct/range {v2 .. v10}, Lcom/bytedance/bdtracker/y;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 70
    .line 71
    .line 72
    sput-object v0, Lcom/bytedance/bdtracker/x;->a:Ljava/util/concurrent/ExecutorService;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 75
    .line 76
    .line 77
    return-void
.end method
