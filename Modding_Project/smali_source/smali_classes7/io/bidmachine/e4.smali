.class final Lio/bidmachine/e4;
.super Ljava/lang/Object;
.source "InitialRequestLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/e4$d;,
        Lio/bidmachine/e4$e;,
        Lio/bidmachine/e4$c;,
        Lio/bidmachine/e4$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lio/bidmachine/e4$d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final d:Lio/bidmachine/SessionManager$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field e:Lio/bidmachine/c4;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final f:Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field g:Lio/bidmachine/c4$c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/e4$d;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/e4$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/bidmachine/e4$e;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lio/bidmachine/e4$e;-><init>(Lio/bidmachine/e4;Lio/bidmachine/e4$a;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lio/bidmachine/e4;->d:Lio/bidmachine/SessionManager$a;

    .line 11
    .line 12
    iput-object v1, p0, Lio/bidmachine/e4;->e:Lio/bidmachine/c4;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/Object;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lio/bidmachine/e4;->f:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-static {}, Lio/bidmachine/SessionManager;->get()Lio/bidmachine/SessionManager;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iput-object p1, p0, Lio/bidmachine/e4;->a:Landroid/content/Context;

    .line 26
    .line 27
    iput-object p2, p0, Lio/bidmachine/e4;->b:Ljava/lang/String;

    .line 28
    .line 29
    iput-object p3, p0, Lio/bidmachine/e4;->c:Lio/bidmachine/e4$d;

    .line 30
    .line 31
    new-instance p1, Lio/bidmachine/e4$c;

    .line 32
    .line 33
    invoke-virtual {v1}, Lio/bidmachine/SessionManager;->getSessionId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-direct {p1, p0, p2}, Lio/bidmachine/e4$c;-><init>(Lio/bidmachine/e4;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lio/bidmachine/e4;->g:Lio/bidmachine/c4$c;

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Lio/bidmachine/SessionManager;->addObserver(Lio/bidmachine/SessionManager$a;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method static synthetic a(Lio/bidmachine/e4;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/e4;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lio/bidmachine/e4;)Lio/bidmachine/e4$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/e4;->c:Lio/bidmachine/e4$d;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method c()Lio/bidmachine/c4;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/c4;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/e4;->a:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lio/bidmachine/e4;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {}, Lio/bidmachine/UrlProvider;->getInitUrlQueue()Ljava/util/Queue;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-direct {v0, v1, v2, v3}, Lio/bidmachine/c4;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Queue;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method d()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/e4;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/e4;->e:Lio/bidmachine/c4;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1}, Lio/bidmachine/c4;->p()V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lio/bidmachine/e4;->e:Lio/bidmachine/c4;

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v1
.end method

.method e()V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/e4;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lio/bidmachine/e4;->d()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/e4;->c()Lio/bidmachine/c4;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, p0, Lio/bidmachine/e4;->e:Lio/bidmachine/c4;

    .line 12
    .line 13
    iget-object v2, p0, Lio/bidmachine/e4;->g:Lio/bidmachine/c4$c;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lio/bidmachine/c4;->s(Lio/bidmachine/c4$c;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lio/bidmachine/e4;->e:Lio/bidmachine/c4;

    .line 19
    .line 20
    invoke-virtual {v1}, Lio/bidmachine/c4;->r()V

    .line 21
    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw v1
.end method

.method f()V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/e4;->c:Lio/bidmachine/e4$d;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lio/bidmachine/d4;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lio/bidmachine/d4;-><init>(Lio/bidmachine/e4$d;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lio/bidmachine/e4;->g(Lio/bidmachine/Executable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method g(Lio/bidmachine/Executable;)V
    .locals 3
    .param p1    # Lio/bidmachine/Executable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/Executable<",
            "Lio/bidmachine/e4$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/e4;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/m2;->f(Landroid/content/Context;)Lio/bidmachine/protobuf/InitResponse;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lio/bidmachine/e4;->a:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v1}, Lio/bidmachine/m2;->g(Landroid/content/Context;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v2, Lio/bidmachine/e4$b;

    .line 16
    .line 17
    invoke-direct {v2, v0, v1}, Lio/bidmachine/e4$b;-><init>(Lio/bidmachine/protobuf/InitResponse;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, v2}, Lio/bidmachine/Executable;->execute(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
