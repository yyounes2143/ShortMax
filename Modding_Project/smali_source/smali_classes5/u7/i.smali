.class public Lu7/i;
.super Ljava/lang/Object;
.source "PlayIntegrityAppCheckProvider.java"

# interfaces
.implements Lp7/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/play/core/integrity/IntegrityManager;

.field private final c:Lcom/google/firebase/appcheck/internal/d;

.field private final d:Ljava/util/concurrent/Executor;

.field private final e:Ljava/util/concurrent/Executor;

.field private final f:Lq7/l;


# direct methods
.method public constructor <init>(Lcom/google/firebase/f;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 8
    .param p1    # Lcom/google/firebase/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Lo7/c;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Lo7/b;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/f;->p()Lcom/google/firebase/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/m;->d()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-virtual {p1}, Lcom/google/firebase/f;->l()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/play/core/integrity/IntegrityManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/integrity/IntegrityManager;

    move-result-object v3

    new-instance v4, Lcom/google/firebase/appcheck/internal/d;

    invoke-direct {v4, p1}, Lcom/google/firebase/appcheck/internal/d;-><init>(Lcom/google/firebase/f;)V

    new-instance v7, Lq7/l;

    invoke-direct {v7}, Lq7/l;-><init>()V

    move-object v1, p0

    move-object v5, p2

    move-object v6, p3

    .line 3
    invoke-direct/range {v1 .. v7}, Lu7/i;-><init>(Ljava/lang/String;Lcom/google/android/play/core/integrity/IntegrityManager;Lcom/google/firebase/appcheck/internal/d;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lq7/l;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/play/core/integrity/IntegrityManager;Lcom/google/firebase/appcheck/internal/d;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lq7/l;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/play/core/integrity/IntegrityManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/appcheck/internal/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lq7/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lu7/i;->a:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lu7/i;->b:Lcom/google/android/play/core/integrity/IntegrityManager;

    .line 7
    iput-object p3, p0, Lu7/i;->c:Lcom/google/firebase/appcheck/internal/d;

    .line 8
    iput-object p4, p0, Lu7/i;->d:Ljava/util/concurrent/Executor;

    .line 9
    iput-object p5, p0, Lu7/i;->e:Ljava/util/concurrent/Executor;

    .line 10
    iput-object p6, p0, Lu7/i;->f:Lq7/l;

    return-void
.end method

.method public static synthetic a(Lu7/i;Lu7/c;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lu7/i;->h(Lu7/c;)Lcom/google/android/gms/tasks/Task;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lq7/a;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 1
    invoke-static {p0}, Lu7/i;->k(Lq7/a;)Lcom/google/android/gms/tasks/Task;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lu7/i;Lu7/a;)Lq7/a;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lu7/i;->i(Lu7/a;)Lq7/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lu7/i;Lcom/google/android/play/core/integrity/IntegrityTokenResponse;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lu7/i;->j(Lcom/google/android/play/core/integrity/IntegrityTokenResponse;)Lcom/google/android/gms/tasks/Task;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lu7/i;Lu7/b;)Lu7/c;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lu7/i;->g(Lu7/b;)Lu7/c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private f()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/play/core/integrity/IntegrityTokenResponse;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lu7/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lu7/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lu7/i;->e:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    new-instance v2, Lu7/g;

    .line 9
    .line 10
    invoke-direct {v2, p0, v0}, Lu7/g;-><init>(Lu7/i;Lu7/b;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lu7/i;->d:Ljava/util/concurrent/Executor;

    .line 18
    .line 19
    new-instance v2, Lu7/h;

    .line 20
    .line 21
    invoke-direct {v2, p0}, Lu7/h;-><init>(Lu7/i;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method private synthetic g(Lu7/b;)Lu7/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu7/i;->c:Lcom/google/firebase/appcheck/internal/d;

    .line 2
    .line 3
    invoke-virtual {p1}, Lu7/b;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v1, "UTF-8"

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v1, p0, Lu7/i;->f:Lq7/l;

    .line 14
    .line 15
    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/appcheck/internal/d;->c([BLq7/l;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Lu7/c;->a(Ljava/lang/String;)Lu7/c;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method private synthetic h(Lu7/c;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu7/i;->b:Lcom/google/android/play/core/integrity/IntegrityManager;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/play/core/integrity/IntegrityTokenRequest;->builder()Lcom/google/android/play/core/integrity/IntegrityTokenRequest$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lu7/i;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    invoke-virtual {v1, v2, v3}, Lcom/google/android/play/core/integrity/IntegrityTokenRequest$Builder;->setCloudProjectNumber(J)Lcom/google/android/play/core/integrity/IntegrityTokenRequest$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lu7/c;->b()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v1, p1}, Lcom/google/android/play/core/integrity/IntegrityTokenRequest$Builder;->setNonce(Ljava/lang/String;)Lcom/google/android/play/core/integrity/IntegrityTokenRequest$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/IntegrityTokenRequest$Builder;->build()Lcom/google/android/play/core/integrity/IntegrityTokenRequest;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {v0, p1}, Lcom/google/android/play/core/integrity/IntegrityManager;->requestIntegrityToken(Lcom/google/android/play/core/integrity/IntegrityTokenRequest;)Lcom/google/android/gms/tasks/Task;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method private synthetic i(Lu7/a;)Lq7/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu7/i;->c:Lcom/google/firebase/appcheck/internal/d;

    .line 2
    .line 3
    invoke-virtual {p1}, Lu7/a;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v1, "UTF-8"

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v1, 0x3

    .line 14
    iget-object v2, p0, Lu7/i;->f:Lq7/l;

    .line 15
    .line 16
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/firebase/appcheck/internal/d;->b([BILq7/l;)Lq7/a;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method private synthetic j(Lcom/google/android/play/core/integrity/IntegrityTokenResponse;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lu7/a;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/IntegrityTokenResponse;->token()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lu7/a;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lu7/i;->e:Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    new-instance v1, Lu7/f;

    .line 13
    .line 14
    invoke-direct {v1, p0, v0}, Lu7/f;-><init>(Lu7/i;Lu7/a;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method private static synthetic k(Lq7/a;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/firebase/appcheck/internal/a;->c(Lq7/a;)Lcom/google/firebase/appcheck/internal/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public getToken()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lp7/c;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lu7/i;->f()Lcom/google/android/gms/tasks/Task;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lu7/i;->d:Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    new-instance v2, Lu7/d;

    .line 8
    .line 9
    invoke-direct {v2, p0}, Lu7/d;-><init>(Lu7/i;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lu7/i;->d:Ljava/util/concurrent/Executor;

    .line 17
    .line 18
    new-instance v2, Lu7/e;

    .line 19
    .line 20
    invoke-direct {v2}, Lu7/e;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method
