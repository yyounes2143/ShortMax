.class public Lcom/google/firebase/appcheck/internal/b;
.super Lp7/e;
.source "DefaultFirebaseAppCheck.java"


# instance fields
.field private final a:Lcom/google/firebase/f;

.field private final b:Lw8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw8/b<",
            "Lu8/h;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls7/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp7/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/firebase/appcheck/internal/StorageHelper;

.field private final f:Lcom/google/firebase/appcheck/internal/e;

.field private final g:Ljava/util/concurrent/Executor;

.field private final h:Ljava/util/concurrent/Executor;

.field private final i:Ljava/util/concurrent/Executor;

.field private final j:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lr7/a;

.field private l:Lp7/b;

.field private m:Lp7/a;

.field private n:Lp7/c;

.field private o:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Lp7/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/f;Lw8/b;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2
    .param p1    # Lcom/google/firebase/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lw8/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Lo7/d;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/Executor;
        .annotation build Lo7/c;
        .end annotation
    .end param
    .param p5    # Ljava/util/concurrent/Executor;
        .annotation build Lo7/a;
        .end annotation
    .end param
    .param p6    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation build Lo7/b;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/f;",
            "Lw8/b<",
            "Lu8/h;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lp7/e;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/firebase/appcheck/internal/b;->a:Lcom/google/firebase/f;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/google/firebase/appcheck/internal/b;->b:Lw8/b;

    .line 13
    .line 14
    new-instance p2, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lcom/google/firebase/appcheck/internal/b;->c:Ljava/util/List;

    .line 20
    .line 21
    new-instance p2, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, Lcom/google/firebase/appcheck/internal/b;->d:Ljava/util/List;

    .line 27
    .line 28
    new-instance p2, Lcom/google/firebase/appcheck/internal/StorageHelper;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/google/firebase/f;->l()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1}, Lcom/google/firebase/f;->q()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {p2, v0, v1}, Lcom/google/firebase/appcheck/internal/StorageHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iput-object p2, p0, Lcom/google/firebase/appcheck/internal/b;->e:Lcom/google/firebase/appcheck/internal/StorageHelper;

    .line 42
    .line 43
    new-instance p2, Lcom/google/firebase/appcheck/internal/e;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/google/firebase/f;->l()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {p2, p1, p0, p4, p6}, Lcom/google/firebase/appcheck/internal/e;-><init>(Landroid/content/Context;Lcom/google/firebase/appcheck/internal/b;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 50
    .line 51
    .line 52
    iput-object p2, p0, Lcom/google/firebase/appcheck/internal/b;->f:Lcom/google/firebase/appcheck/internal/e;

    .line 53
    .line 54
    iput-object p3, p0, Lcom/google/firebase/appcheck/internal/b;->g:Ljava/util/concurrent/Executor;

    .line 55
    .line 56
    iput-object p4, p0, Lcom/google/firebase/appcheck/internal/b;->h:Ljava/util/concurrent/Executor;

    .line 57
    .line 58
    iput-object p5, p0, Lcom/google/firebase/appcheck/internal/b;->i:Ljava/util/concurrent/Executor;

    .line 59
    .line 60
    invoke-direct {p0, p5}, Lcom/google/firebase/appcheck/internal/b;->v(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lcom/google/firebase/appcheck/internal/b;->j:Lcom/google/android/gms/tasks/Task;

    .line 65
    .line 66
    new-instance p1, Lr7/a$a;

    .line 67
    .line 68
    invoke-direct {p1}, Lr7/a$a;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lcom/google/firebase/appcheck/internal/b;->k:Lr7/a;

    .line 72
    .line 73
    return-void
.end method

.method public static synthetic f(Lcom/google/firebase/appcheck/internal/b;Lp7/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/appcheck/internal/b;->u(Lp7/c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/appcheck/internal/b;->r(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Lcom/google/firebase/appcheck/internal/b;Lp7/c;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/appcheck/internal/b;->p(Lp7/c;)Lcom/google/android/gms/tasks/Task;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Lcom/google/firebase/appcheck/internal/b;ZLcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/appcheck/internal/b;->s(ZLcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Lcom/google/firebase/appcheck/internal/b;ZLcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/appcheck/internal/b;->q(ZLcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k(Lcom/google/firebase/appcheck/internal/b;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/appcheck/internal/b;->t(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private n()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/b;->n:Lp7/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lp7/c;->a()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-object v2, p0, Lcom/google/firebase/appcheck/internal/b;->k:Lr7/a;

    .line 10
    .line 11
    invoke-interface {v2}, Lr7/a;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    sub-long/2addr v0, v2

    .line 16
    const-wide/32 v2, 0x493e0

    .line 17
    .line 18
    .line 19
    cmp-long v0, v0, v2

    .line 20
    .line 21
    if-lez v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method

.method private synthetic p(Lp7/c;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/appcheck/internal/b;->x(Lp7/c;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/b;->d:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lp7/e$a;

    .line 21
    .line 22
    invoke-interface {v1, p1}, Lp7/e$a;->a(Lp7/c;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {p1}, Lq7/b;->c(Lp7/c;)Lq7/b;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/google/firebase/appcheck/internal/b;->c:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Ls7/a;

    .line 47
    .line 48
    invoke-interface {v2, v0}, Ls7/a;->a(Lp7/d;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    return-object p1
.end method

.method private synthetic q(ZLcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/appcheck/internal/b;->n()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/google/firebase/appcheck/internal/b;->n:Lp7/c;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/appcheck/internal/b;->m:Lp7/a;

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    new-instance p1, Lcom/google/firebase/FirebaseException;

    .line 21
    .line 22
    const-string p2, "No AppCheckProvider installed."

    .line 23
    .line 24
    invoke-direct {p1, p2}, Lcom/google/firebase/FirebaseException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    :cond_1
    iget-object p1, p0, Lcom/google/firebase/appcheck/internal/b;->o:Lcom/google/android/gms/tasks/Task;

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_2

    .line 41
    .line 42
    iget-object p1, p0, Lcom/google/firebase/appcheck/internal/b;->o:Lcom/google/android/gms/tasks/Task;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_3

    .line 49
    .line 50
    :cond_2
    invoke-virtual {p0}, Lcom/google/firebase/appcheck/internal/b;->l()Lcom/google/android/gms/tasks/Task;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Lcom/google/firebase/appcheck/internal/b;->o:Lcom/google/android/gms/tasks/Task;

    .line 55
    .line 56
    :cond_3
    iget-object p1, p0, Lcom/google/firebase/appcheck/internal/b;->o:Lcom/google/android/gms/tasks/Task;

    .line 57
    .line 58
    return-object p1
.end method

.method private static synthetic r(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lp7/c;

    .line 12
    .line 13
    invoke-static {p0}, Lq7/b;->c(Lp7/c;)Lq7/b;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    new-instance v0, Lcom/google/firebase/FirebaseException;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-direct {v0, v1, p0}, Lcom/google/firebase/FirebaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lq7/b;->d(Lcom/google/firebase/FirebaseException;)Lq7/b;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method

.method private synthetic s(ZLcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/appcheck/internal/b;->n()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/google/firebase/appcheck/internal/b;->n:Lp7/c;

    .line 10
    .line 11
    invoke-static {p1}, Lq7/b;->c(Lp7/c;)Lq7/b;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/appcheck/internal/b;->m:Lp7/a;

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    new-instance p1, Lcom/google/firebase/FirebaseException;

    .line 25
    .line 26
    const-string p2, "No AppCheckProvider installed."

    .line 27
    .line 28
    invoke-direct {p1, p2}, Lcom/google/firebase/FirebaseException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lq7/b;->d(Lcom/google/firebase/FirebaseException;)Lq7/b;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    :cond_1
    iget-object p1, p0, Lcom/google/firebase/appcheck/internal/b;->o:Lcom/google/android/gms/tasks/Task;

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_2

    .line 49
    .line 50
    iget-object p1, p0, Lcom/google/firebase/appcheck/internal/b;->o:Lcom/google/android/gms/tasks/Task;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    :cond_2
    invoke-virtual {p0}, Lcom/google/firebase/appcheck/internal/b;->l()Lcom/google/android/gms/tasks/Task;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lcom/google/firebase/appcheck/internal/b;->o:Lcom/google/android/gms/tasks/Task;

    .line 63
    .line 64
    :cond_3
    iget-object p1, p0, Lcom/google/firebase/appcheck/internal/b;->o:Lcom/google/android/gms/tasks/Task;

    .line 65
    .line 66
    iget-object p2, p0, Lcom/google/firebase/appcheck/internal/b;->h:Ljava/util/concurrent/Executor;

    .line 67
    .line 68
    new-instance v0, Lq7/f;

    .line 69
    .line 70
    invoke-direct {v0}, Lq7/f;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    return-object p1
.end method

.method private synthetic t(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/b;->e:Lcom/google/firebase/appcheck/internal/StorageHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/appcheck/internal/StorageHelper;->d()Lp7/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/google/firebase/appcheck/internal/b;->w(Lp7/c;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private synthetic u(Lp7/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/b;->e:Lcom/google/firebase/appcheck/internal/StorageHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/firebase/appcheck/internal/StorageHelper;->e(Lp7/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private v(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lq7/c;

    .line 7
    .line 8
    invoke-direct {v1, p0, v0}, Lq7/c;-><init>(Lcom/google/firebase/appcheck/internal/b;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method private x(Lp7/c;)V
    .locals 2
    .param p1    # Lp7/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/b;->i:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    new-instance v1, Lq7/h;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lq7/h;-><init>(Lcom/google/firebase/appcheck/internal/b;Lp7/c;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/google/firebase/appcheck/internal/b;->w(Lp7/c;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/b;->f:Lcom/google/firebase/appcheck/internal/e;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/google/firebase/appcheck/internal/e;->d(Lp7/c;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public a(Z)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lp7/d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/b;->j:Lcom/google/android/gms/tasks/Task;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/firebase/appcheck/internal/b;->h:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    new-instance v2, Lq7/e;

    .line 6
    .line 7
    invoke-direct {v2, p0, p1}, Lq7/e;-><init>(Lcom/google/firebase/appcheck/internal/b;Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public b(Z)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lp7/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/b;->j:Lcom/google/android/gms/tasks/Task;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/firebase/appcheck/internal/b;->h:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    new-instance v2, Lq7/d;

    .line 6
    .line 7
    invoke-direct {v2, p0, p1}, Lq7/d;-><init>(Lcom/google/firebase/appcheck/internal/b;Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public e(Lp7/b;)V
    .locals 1
    .param p1    # Lp7/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/b;->a:Lcom/google/firebase/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/f;->v()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/appcheck/internal/b;->o(Lp7/b;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method l()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lp7/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/b;->m:Lp7/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lp7/a;->getToken()Lcom/google/android/gms/tasks/Task;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/firebase/appcheck/internal/b;->g:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    new-instance v2, Lq7/g;

    .line 10
    .line 11
    invoke-direct {v2, p0}, Lq7/g;-><init>(Lcom/google/firebase/appcheck/internal/b;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method m()Lw8/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw8/b<",
            "Lu8/h;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/b;->b:Lw8/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public o(Lp7/b;Z)V
    .locals 1
    .param p1    # Lp7/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/appcheck/internal/b;->l:Lp7/b;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/b;->a:Lcom/google/firebase/f;

    .line 7
    .line 8
    invoke-interface {p1, v0}, Lp7/b;->a(Lcom/google/firebase/f;)Lp7/a;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/google/firebase/appcheck/internal/b;->m:Lp7/a;

    .line 13
    .line 14
    iget-object p1, p0, Lcom/google/firebase/appcheck/internal/b;->f:Lcom/google/firebase/appcheck/internal/e;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lcom/google/firebase/appcheck/internal/e;->e(Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method w(Lp7/c;)V
    .locals 0
    .param p1    # Lp7/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/firebase/appcheck/internal/b;->n:Lp7/c;

    .line 2
    .line 3
    return-void
.end method
