.class public final Lcom/google/firebase/appcheck/internal/e;
.super Ljava/lang/Object;
.source "TokenRefreshManager.java"


# instance fields
.field private final a:Lcom/google/firebase/appcheck/internal/c;

.field private final b:Lr7/a;

.field private volatile c:Z

.field private volatile d:I

.field private volatile e:J

.field private volatile f:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/firebase/appcheck/internal/b;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/appcheck/internal/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Lo7/c;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation build Lo7/b;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    new-instance v0, Lcom/google/firebase/appcheck/internal/c;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/appcheck/internal/b;

    invoke-direct {v0, p2, p3, p4}, Lcom/google/firebase/appcheck/internal/c;-><init>(Lcom/google/firebase/appcheck/internal/b;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)V

    new-instance p2, Lr7/a$a;

    invoke-direct {p2}, Lr7/a$a;-><init>()V

    .line 3
    invoke-direct {p0, p1, v0, p2}, Lcom/google/firebase/appcheck/internal/e;-><init>(Landroid/content/Context;Lcom/google/firebase/appcheck/internal/c;Lr7/a;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/firebase/appcheck/internal/c;Lr7/a;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p2, p0, Lcom/google/firebase/appcheck/internal/e;->a:Lcom/google/firebase/appcheck/internal/c;

    .line 6
    iput-object p3, p0, Lcom/google/firebase/appcheck/internal/e;->b:Lr7/a;

    const-wide/16 v0, -0x1

    .line 7
    iput-wide v0, p0, Lcom/google/firebase/appcheck/internal/e;->e:J

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->initialize(Landroid/app/Application;)V

    .line 9
    invoke-static {}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->getInstance()Lcom/google/android/gms/common/api/internal/BackgroundDetector;

    move-result-object p1

    new-instance v0, Lcom/google/firebase/appcheck/internal/e$a;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/firebase/appcheck/internal/e$a;-><init>(Lcom/google/firebase/appcheck/internal/e;Lcom/google/firebase/appcheck/internal/c;Lr7/a;)V

    .line 10
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->addListener(Lcom/google/android/gms/common/api/internal/BackgroundDetector$BackgroundStateChangeListener;)V

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/appcheck/internal/e;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/firebase/appcheck/internal/e;->c:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic b(Lcom/google/firebase/appcheck/internal/e;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/appcheck/internal/e;->f()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic c(Lcom/google/firebase/appcheck/internal/e;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/appcheck/internal/e;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method private f()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/appcheck/internal/e;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/google/firebase/appcheck/internal/e;->c:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lcom/google/firebase/appcheck/internal/e;->d:I

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    iget-wide v0, p0, Lcom/google/firebase/appcheck/internal/e;->e:J

    .line 14
    .line 15
    const-wide/16 v2, -0x1

    .line 16
    .line 17
    cmp-long v0, v0, v2

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method


# virtual methods
.method public d(Lp7/c;)V
    .locals 6
    .param p1    # Lp7/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/google/firebase/appcheck/internal/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/google/firebase/appcheck/internal/a;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lp7/c;->b()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/google/firebase/appcheck/internal/a;->d(Ljava/lang/String;)Lcom/google/firebase/appcheck/internal/a;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_0
    invoke-virtual {p1}, Lcom/google/firebase/appcheck/internal/a;->h()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    invoke-virtual {p1}, Lcom/google/firebase/appcheck/internal/a;->f()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    long-to-double v2, v2

    .line 25
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 26
    .line 27
    mul-double/2addr v2, v4

    .line 28
    double-to-long v2, v2

    .line 29
    add-long/2addr v0, v2

    .line 30
    const-wide/32 v2, 0x493e0

    .line 31
    .line 32
    .line 33
    add-long/2addr v0, v2

    .line 34
    iput-wide v0, p0, Lcom/google/firebase/appcheck/internal/e;->e:J

    .line 35
    .line 36
    iget-wide v0, p0, Lcom/google/firebase/appcheck/internal/e;->e:J

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/google/firebase/appcheck/internal/a;->a()J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    cmp-long v0, v0, v2

    .line 43
    .line 44
    if-lez v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/google/firebase/appcheck/internal/a;->a()J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    const-wide/32 v2, 0xea60

    .line 51
    .line 52
    .line 53
    sub-long/2addr v0, v2

    .line 54
    iput-wide v0, p0, Lcom/google/firebase/appcheck/internal/e;->e:J

    .line 55
    .line 56
    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/appcheck/internal/e;->f()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    iget-object p1, p0, Lcom/google/firebase/appcheck/internal/e;->a:Lcom/google/firebase/appcheck/internal/c;

    .line 63
    .line 64
    iget-wide v0, p0, Lcom/google/firebase/appcheck/internal/e;->e:J

    .line 65
    .line 66
    iget-object v2, p0, Lcom/google/firebase/appcheck/internal/e;->b:Lr7/a;

    .line 67
    .line 68
    invoke-interface {v2}, Lr7/a;->currentTimeMillis()J

    .line 69
    .line 70
    .line 71
    move-result-wide v2

    .line 72
    sub-long/2addr v0, v2

    .line 73
    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/appcheck/internal/c;->g(J)V

    .line 74
    .line 75
    .line 76
    :cond_2
    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/firebase/appcheck/internal/e;->f:Z

    .line 2
    .line 3
    return-void
.end method
