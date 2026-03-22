.class public Lop/b;
.super Ljava/lang/Object;
.source "NativeNetworkExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static b:Lop/b;


# instance fields
.field private final a:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    mul-int/lit8 v3, v0, 0x2

    .line 13
    .line 14
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 15
    .line 16
    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 20
    .line 21
    const-wide/16 v4, 0x0

    .line 22
    .line 23
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 24
    .line 25
    move-object v1, v0

    .line 26
    move v2, v3

    .line 27
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lop/b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 31
    .line 32
    return-void
.end method

.method public static a()Lop/b;
    .locals 1

    .line 1
    sget-object v0, Lop/b;->b:Lop/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lop/b;

    .line 6
    .line 7
    invoke-direct {v0}, Lop/b;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lop/b;->b:Lop/b;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lop/b;->b:Lop/b;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lop/b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
