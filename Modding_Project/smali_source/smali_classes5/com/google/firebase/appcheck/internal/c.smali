.class public Lcom/google/firebase/appcheck/internal/c;
.super Ljava/lang/Object;
.source "DefaultTokenRefresher.java"


# instance fields
.field private final a:Lcom/google/firebase/appcheck/internal/b;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Ljava/util/concurrent/ScheduledExecutorService;

.field private volatile d:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile e:J


# direct methods
.method constructor <init>(Lcom/google/firebase/appcheck/internal/b;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0
    .param p1    # Lcom/google/firebase/appcheck/internal/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Lo7/c;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation build Lo7/b;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/google/firebase/appcheck/internal/b;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/firebase/appcheck/internal/c;->a:Lcom/google/firebase/appcheck/internal/b;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/google/firebase/appcheck/internal/c;->b:Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/google/firebase/appcheck/internal/c;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 15
    .line 16
    const-wide/16 p1, -0x1

    .line 17
    .line 18
    iput-wide p1, p0, Lcom/google/firebase/appcheck/internal/c;->e:J

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/appcheck/internal/c;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/appcheck/internal/c;->e(Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/google/firebase/appcheck/internal/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/appcheck/internal/c;->f()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private d()J
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/appcheck/internal/c;->e:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-wide/16 v0, 0x1e

    .line 10
    .line 11
    return-wide v0

    .line 12
    :cond_0
    iget-wide v0, p0, Lcom/google/firebase/appcheck/internal/c;->e:J

    .line 13
    .line 14
    const-wide/16 v2, 0x2

    .line 15
    .line 16
    mul-long/2addr v0, v2

    .line 17
    const-wide/16 v4, 0x3c0

    .line 18
    .line 19
    cmp-long v0, v0, v4

    .line 20
    .line 21
    if-gez v0, :cond_1

    .line 22
    .line 23
    iget-wide v0, p0, Lcom/google/firebase/appcheck/internal/c;->e:J

    .line 24
    .line 25
    mul-long/2addr v0, v2

    .line 26
    return-wide v0

    .line 27
    :cond_1
    return-wide v4
.end method

.method private synthetic e(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/appcheck/internal/c;->h()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/c;->a:Lcom/google/firebase/appcheck/internal/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/appcheck/internal/b;->l()Lcom/google/android/gms/tasks/Task;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/firebase/appcheck/internal/c;->b:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    new-instance v2, Lq7/j;

    .line 10
    .line 11
    invoke-direct {v2, p0}, Lq7/j;-><init>(Lcom/google/firebase/appcheck/internal/c;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private h()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/appcheck/internal/c;->c()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/firebase/appcheck/internal/c;->d()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/google/firebase/appcheck/internal/c;->e:J

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/c;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 11
    .line 12
    new-instance v1, Lq7/i;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lq7/i;-><init>(Lcom/google/firebase/appcheck/internal/c;)V

    .line 15
    .line 16
    .line 17
    iget-wide v2, p0, Lcom/google/firebase/appcheck/internal/c;->e:J

    .line 18
    .line 19
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 20
    .line 21
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/google/firebase/appcheck/internal/c;->d:Ljava/util/concurrent/ScheduledFuture;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/c;->d:Ljava/util/concurrent/ScheduledFuture;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/c;->d:Ljava/util/concurrent/ScheduledFuture;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/c;->d:Ljava/util/concurrent/ScheduledFuture;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public g(J)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/appcheck/internal/c;->c()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/google/firebase/appcheck/internal/c;->e:J

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/c;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    .line 10
    new-instance v1, Lq7/i;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lq7/i;-><init>(Lcom/google/firebase/appcheck/internal/c;)V

    .line 13
    .line 14
    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 18
    .line 19
    .line 20
    move-result-wide p1

    .line 21
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 22
    .line 23
    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/google/firebase/appcheck/internal/c;->d:Ljava/util/concurrent/ScheduledFuture;

    .line 28
    .line 29
    return-void
.end method
