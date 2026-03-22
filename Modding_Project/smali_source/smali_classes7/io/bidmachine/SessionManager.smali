.class public Lio/bidmachine/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/SessionManager$Status;,
        Lio/bidmachine/SessionManager$a;
    }
.end annotation


# static fields
.field public static final SESSION_ID_EMPTY:Ljava/lang/String; = ""
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SessionManager"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static volatile instance:Lio/bidmachine/SessionManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private volatile applicationContext:Landroid/content/Context;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final observers:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lio/bidmachine/SessionManager$a;",
            ">;"
        }
    .end annotation
.end field

.field private pauseTime:J

.field private resumeTime:J

.field private sessionId:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private sessionResetAfterSec:J

.field private sessionStartTime:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lio/bidmachine/SessionManager;->sessionId:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lio/bidmachine/SessionManager;->observers:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 14
    .line 15
    invoke-virtual {p0}, Lio/bidmachine/SessionManager;->startNewSession()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a(Lio/bidmachine/SessionManager;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/SessionManager;->lambda$saveCurrentSessionDuration$1(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/SessionManager;->lambda$onNewSessionStarted$0(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lio/bidmachine/SessionManager;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/SessionManager;->saveCurrentSessionDuration(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static get()Lio/bidmachine/SessionManager;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/SessionManager;->instance:Lio/bidmachine/SessionManager;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v1, Lio/bidmachine/SessionManager;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    sget-object v0, Lio/bidmachine/SessionManager;->instance:Lio/bidmachine/SessionManager;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lio/bidmachine/SessionManager;

    .line 13
    .line 14
    invoke-direct {v0}, Lio/bidmachine/SessionManager;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lio/bidmachine/SessionManager;->instance:Lio/bidmachine/SessionManager;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v1

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v0

    .line 26
    :cond_1
    :goto_2
    return-object v0
.end method

.method private getLastSessionDurationMs()J
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/SessionManager;->applicationContext:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "SessionManager"

    .line 6
    .line 7
    const-string v1, "Context not attached"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    return-wide v0

    .line 15
    :cond_0
    invoke-static {v0}, Lio/bidmachine/m2;->h(Landroid/content/Context;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    return-wide v0
.end method

.method private getSessionDurationMs()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lio/bidmachine/SessionManager;->resumeTime:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-wide v2

    .line 10
    :cond_0
    invoke-static {}, Lio/bidmachine/core/b;->a()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iget-wide v2, p0, Lio/bidmachine/SessionManager;->sessionStartTime:J

    .line 15
    .line 16
    sub-long/2addr v0, v2

    .line 17
    return-wide v0
.end method

.method private static synthetic lambda$onNewSessionStarted$0(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/m2;->o(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lio/bidmachine/m2;->a(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private synthetic lambda$saveCurrentSessionDuration$1(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/SessionManager;->getSessionDurationMs()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {p1, v0, v1}, Lio/bidmachine/m2;->w(Landroid/content/Context;J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private notifyObservers(Lio/bidmachine/SessionManager$Status;)V
    .locals 2
    .param p1    # Lio/bidmachine/SessionManager$Status;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/SessionManager;->observers:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lio/bidmachine/SessionManager$a;

    .line 18
    .line 19
    invoke-interface {v1, p1}, Lio/bidmachine/SessionManager$a;->a(Lio/bidmachine/SessionManager$Status;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private onContextAttached()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/SessionManager;->onNewSessionStarted()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private onNewSessionStarted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/SessionManager;->applicationContext:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v1, Lio/bidmachine/b5;

    .line 4
    .line 5
    invoke-direct {v1}, Lio/bidmachine/b5;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private saveCurrentSessionDuration(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/bidmachine/d5;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lio/bidmachine/d5;-><init>(Lio/bidmachine/SessionManager;Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lio/bidmachine/core/g;->X(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method addObserver(Lio/bidmachine/SessionManager$a;)V
    .locals 1
    .param p1    # Lio/bidmachine/SessionManager$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/SessionManager;->observers:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method declared-synchronized attachContext(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/SessionManager;->applicationContext:Landroid/content/Context;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lio/bidmachine/SessionManager;->applicationContext:Landroid/content/Context;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-direct {p0}, Lio/bidmachine/SessionManager;->onContextAttached()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_2

    .line 23
    :cond_1
    :goto_1
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p1
.end method

.method getLastSessionDurationSec()I
    .locals 4

    .line 1
    invoke-direct {p0}, Lio/bidmachine/SessionManager;->getLastSessionDurationMs()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x3e8

    .line 6
    .line 7
    div-long/2addr v0, v2

    .line 8
    long-to-int v0, v0

    .line 9
    return v0
.end method

.method getSessionCount()I
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/SessionManager;->applicationContext:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "SessionManager"

    .line 6
    .line 7
    const-string v1, "Context not attached"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_0
    invoke-static {v0}, Lio/bidmachine/m2;->i(Landroid/content/Context;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method getSessionDurationSec()I
    .locals 4

    .line 1
    invoke-direct {p0}, Lio/bidmachine/SessionManager;->getSessionDurationMs()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x3e8

    .line 6
    .line 7
    div-long/2addr v0, v2

    .line 8
    long-to-int v0, v0

    .line 9
    return v0
.end method

.method getSessionId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/SessionManager;->sessionId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method pause()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lio/bidmachine/SessionManager;->resumeTime:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Lio/bidmachine/core/b;->a()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iput-wide v0, p0, Lio/bidmachine/SessionManager;->pauseTime:J

    .line 15
    .line 16
    sget-object v0, Lio/bidmachine/SessionManager$Status;->PAUSE:Lio/bidmachine/SessionManager$Status;

    .line 17
    .line 18
    invoke-direct {p0, v0}, Lio/bidmachine/SessionManager;->notifyObservers(Lio/bidmachine/SessionManager$Status;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lio/bidmachine/SessionManager;->applicationContext:Landroid/content/Context;

    .line 22
    .line 23
    new-instance v1, Lio/bidmachine/c5;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lio/bidmachine/c5;-><init>(Lio/bidmachine/SessionManager;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v1, "Session paused: "

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lio/bidmachine/SessionManager;->getSessionDurationSec()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, " sec."

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string v1, "SessionManager"

    .line 58
    .line 59
    invoke-static {v1, v0}, Lio/bidmachine/core/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method removeObserver(Lio/bidmachine/SessionManager$a;)V
    .locals 1
    .param p1    # Lio/bidmachine/SessionManager$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/SessionManager;->observers:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method resume()V
    .locals 8

    .line 1
    invoke-static {}, Lio/bidmachine/core/b;->a()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lio/bidmachine/SessionManager;->sessionResetAfterSec:J

    .line 6
    .line 7
    const-wide/16 v4, 0x0

    .line 8
    .line 9
    cmp-long v6, v2, v4

    .line 10
    .line 11
    if-lez v6, :cond_0

    .line 12
    .line 13
    iget-wide v6, p0, Lio/bidmachine/SessionManager;->pauseTime:J

    .line 14
    .line 15
    cmp-long v4, v6, v4

    .line 16
    .line 17
    if-lez v4, :cond_0

    .line 18
    .line 19
    sub-long v4, v0, v6

    .line 20
    .line 21
    const-wide/16 v6, 0x3e8

    .line 22
    .line 23
    mul-long/2addr v2, v6

    .line 24
    cmp-long v2, v4, v2

    .line 25
    .line 26
    if-ltz v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Lio/bidmachine/SessionManager;->startNewSession()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    sget-object v2, Lio/bidmachine/SessionManager$Status;->RESUME:Lio/bidmachine/SessionManager$Status;

    .line 33
    .line 34
    invoke-direct {p0, v2}, Lio/bidmachine/SessionManager;->notifyObservers(Lio/bidmachine/SessionManager$Status;)V

    .line 35
    .line 36
    .line 37
    const-string v2, "SessionManager"

    .line 38
    .line 39
    const-string v3, "Session resumed"

    .line 40
    .line 41
    invoke-static {v2, v3}, Lio/bidmachine/core/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    iput-wide v0, p0, Lio/bidmachine/SessionManager;->resumeTime:J

    .line 45
    .line 46
    return-void
.end method

.method setSessionResetAfter(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/bidmachine/SessionManager;->sessionResetAfterSec:J

    .line 2
    .line 3
    return-void
.end method

.method startNewSession()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

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
    iput-object v0, p0, Lio/bidmachine/SessionManager;->sessionId:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {}, Lio/bidmachine/core/b;->a()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Lio/bidmachine/SessionManager;->sessionStartTime:J

    .line 16
    .line 17
    const-wide/16 v0, 0x0

    .line 18
    .line 19
    iput-wide v0, p0, Lio/bidmachine/SessionManager;->pauseTime:J

    .line 20
    .line 21
    iput-wide v0, p0, Lio/bidmachine/SessionManager;->resumeTime:J

    .line 22
    .line 23
    invoke-direct {p0}, Lio/bidmachine/SessionManager;->onNewSessionStarted()V

    .line 24
    .line 25
    .line 26
    sget-object v0, Lio/bidmachine/SessionManager$Status;->START:Lio/bidmachine/SessionManager$Status;

    .line 27
    .line 28
    invoke-direct {p0, v0}, Lio/bidmachine/SessionManager;->notifyObservers(Lio/bidmachine/SessionManager$Status;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "SessionManager"

    .line 32
    .line 33
    const-string v1, "New session started"

    .line 34
    .line 35
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
