.class public Li2/b;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "ConstrainedExecutorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li2/b$a;
    }
.end annotation


# static fields
.field private static final h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/concurrent/Executor;

.field private volatile c:I

.field private final d:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Li2/b$a;

.field private final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final g:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Li2/b;

    .line 2
    .line 3
    sput-object v0, Li2/b;->h:Ljava/lang/Class;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/concurrent/Executor;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 2
    .line 3
    .line 4
    if-lez p2, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Li2/b;->a:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Li2/b;->b:Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    iput p2, p0, Li2/b;->c:I

    .line 11
    .line 12
    iput-object p4, p0, Li2/b;->d:Ljava/util/concurrent/BlockingQueue;

    .line 13
    .line 14
    new-instance p1, Li2/b$a;

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-direct {p1, p0, p2}, Li2/b$a;-><init>(Li2/b;Li2/c;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Li2/b;->e:Li2/b$a;

    .line 21
    .line 22
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Li2/b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 29
    .line 30
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 31
    .line 32
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Li2/b;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    const-string p2, "max concurrency must be > 0"

    .line 41
    .line 42
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method static bridge synthetic a(Li2/b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Li2/b;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic b(Li2/b;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Li2/b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic c(Li2/b;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Li2/b;->d:Ljava/util/concurrent/BlockingQueue;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic d(Li2/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li2/b;->f()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic e()Ljava/lang/Class;
    .locals 1

    .line 1
    sget-object v0, Li2/b;->h:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method private f()V
    .locals 5

    .line 1
    iget-object v0, p0, Li2/b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    :goto_0
    iget v1, p0, Li2/b;->c:I

    .line 8
    .line 9
    if-ge v0, v1, :cond_1

    .line 10
    .line 11
    add-int/lit8 v1, v0, 0x1

    .line 12
    .line 13
    iget-object v2, p0, Li2/b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    .line 15
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    sget-object v0, Li2/b;->h:Ljava/lang/Class;

    .line 22
    .line 23
    iget-object v2, p0, Li2/b;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget v3, p0, Li2/b;->c:I

    .line 30
    .line 31
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const-string v4, "%s: starting worker %d of %d"

    .line 36
    .line 37
    invoke-static {v0, v4, v2, v1, v3}, Ll2/a;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Li2/b;->b:Ljava/util/concurrent/Executor;

    .line 41
    .line 42
    iget-object v1, p0, Li2/b;->e:Li2/b$a;

    .line 43
    .line 44
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    sget-object v0, Li2/b;->h:Ljava/lang/Class;

    .line 49
    .line 50
    const-string v1, "%s: race in startWorkerIfNeeded; retrying"

    .line 51
    .line 52
    iget-object v2, p0, Li2/b;->a:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v0, v1, v2}, Ll2/a;->p(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Li2/b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Li2/b;->d:Ljava/util/concurrent/BlockingQueue;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Li2/b;->d:Ljava/util/concurrent/BlockingQueue;

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iget-object v0, p0, Li2/b;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-le p1, v0, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Li2/b;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    .line 27
    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    sget-object v0, Li2/b;->h:Ljava/lang/Class;

    .line 34
    .line 35
    iget-object v1, p0, Li2/b;->a:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v2, "%s: max pending work in queue = %d"

    .line 42
    .line 43
    invoke-static {v0, v2, v1, p1}, Ll2/a;->q(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-direct {p0}, Li2/b;->f()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    .line 51
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Li2/b;->a:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v1, " queue is full, size="

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Li2/b;->d:Ljava/util/concurrent/BlockingQueue;

    .line 68
    .line 69
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-direct {p1, v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 85
    .line 86
    const-string v0, "runnable parameter is null"

    .line 87
    .line 88
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p1
.end method

.method public isShutdown()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public isTerminated()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public shutdown()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method
