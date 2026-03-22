.class public Lcom/google/firebase/remoteconfig/c;
.super Ljava/lang/Object;
.source "RemoteConfigComponent.java"

# interfaces
.implements Lh9/a;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/remoteconfig/c$a;
    }
.end annotation


# static fields
.field private static final j:Lcom/google/android/gms/common/util/Clock;

.field private static final k:Ljava/util/Random;

.field private static final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/remoteconfig/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/Map;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/remoteconfig/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/concurrent/ScheduledExecutorService;

.field private final d:Lcom/google/firebase/f;

.field private final e:Lx8/e;

.field private final f:Ll7/b;

.field private final g:Lw8/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw8/b<",
            "Ln7/a;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/String;

.field private i:Ljava/util/Map;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/google/firebase/remoteconfig/c;->j:Lcom/google/android/gms/common/util/Clock;

    .line 6
    .line 7
    new-instance v0, Ljava/util/Random;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/google/firebase/remoteconfig/c;->k:Ljava/util/Random;

    .line 13
    .line 14
    new-instance v0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/google/firebase/remoteconfig/c;->l:Ljava/util/Map;

    .line 20
    .line 21
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/f;Lx8/e;Ll7/b;Lw8/b;)V
    .locals 8
    .param p2    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation build Lo7/b;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/firebase/f;",
            "Lx8/e;",
            "Ll7/b;",
            "Lw8/b<",
            "Ln7/a;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/remoteconfig/c;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/f;Lx8/e;Ll7/b;Lw8/b;Z)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/f;Lx8/e;Ll7/b;Lw8/b;Z)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/firebase/f;",
            "Lx8/e;",
            "Ll7/b;",
            "Lw8/b<",
            "Ln7/a;",
            ">;Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/c;->a:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/c;->i:Ljava/util/Map;

    .line 5
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/c;->b:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/google/firebase/remoteconfig/c;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 7
    iput-object p3, p0, Lcom/google/firebase/remoteconfig/c;->d:Lcom/google/firebase/f;

    .line 8
    iput-object p4, p0, Lcom/google/firebase/remoteconfig/c;->e:Lx8/e;

    .line 9
    iput-object p5, p0, Lcom/google/firebase/remoteconfig/c;->f:Ll7/b;

    .line 10
    iput-object p6, p0, Lcom/google/firebase/remoteconfig/c;->g:Lw8/b;

    .line 11
    invoke-virtual {p3}, Lcom/google/firebase/f;->p()Lcom/google/firebase/m;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/firebase/m;->c()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/google/firebase/remoteconfig/c;->h:Ljava/lang/String;

    .line 12
    invoke-static {p1}, Lcom/google/firebase/remoteconfig/c$a;->a(Landroid/content/Context;)V

    if-eqz p7, :cond_0

    .line 13
    new-instance p1, Lcom/google/firebase/remoteconfig/b;

    invoke-direct {p1, p0}, Lcom/google/firebase/remoteconfig/b;-><init>(Lcom/google/firebase/remoteconfig/c;)V

    invoke-static {p2, p1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method

.method public static synthetic b()Ln7/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/remoteconfig/c;->q()Ln7/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method static synthetic c(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/remoteconfig/c;->r(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private f(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/f;
    .locals 2

    .line 1
    const-string v0, "frc"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/c;->h:Ljava/lang/String;

    .line 4
    .line 5
    filled-new-array {v0, v1, p1, p2}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string p2, "%s_%s_%s_%s.json"

    .line 10
    .line 11
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p2, p0, Lcom/google/firebase/remoteconfig/c;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/c;->b:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/t;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/t;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p2, p1}, Lcom/google/firebase/remoteconfig/internal/f;->h(Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/internal/t;)Lcom/google/firebase/remoteconfig/internal/f;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method private j(Lcom/google/firebase/remoteconfig/internal/f;Lcom/google/firebase/remoteconfig/internal/f;)Lcom/google/firebase/remoteconfig/internal/n;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/remoteconfig/internal/n;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/c;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1, p2}, Lcom/google/firebase/remoteconfig/internal/n;-><init>(Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/internal/f;Lcom/google/firebase/remoteconfig/internal/f;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method private static k(Lcom/google/firebase/f;Ljava/lang/String;Lw8/b;)Lcom/google/firebase/remoteconfig/internal/v;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/f;",
            "Ljava/lang/String;",
            "Lw8/b<",
            "Ln7/a;",
            ">;)",
            "Lcom/google/firebase/remoteconfig/internal/v;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/firebase/remoteconfig/c;->p(Lcom/google/firebase/f;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string p0, "firebase"

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    new-instance p0, Lcom/google/firebase/remoteconfig/internal/v;

    .line 16
    .line 17
    invoke-direct {p0, p2}, Lcom/google/firebase/remoteconfig/internal/v;-><init>(Lw8/b;)V

    .line 18
    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method private m(Lcom/google/firebase/remoteconfig/internal/f;Lcom/google/firebase/remoteconfig/internal/f;)Lg9/e;
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lg9/a;->a(Lcom/google/firebase/remoteconfig/internal/f;Lcom/google/firebase/remoteconfig/internal/f;)Lg9/a;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    new-instance v0, Lg9/e;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/c;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 8
    .line 9
    invoke-direct {v0, p1, p2, v1}, Lg9/e;-><init>(Lcom/google/firebase/remoteconfig/internal/f;Lg9/a;Ljava/util/concurrent/Executor;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method static n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/s;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const-string v0, "frc"

    .line 2
    .line 3
    const-string v1, "settings"

    .line 4
    .line 5
    filled-new-array {v0, p1, p2, v1}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string p2, "%s_%s_%s_%s"

    .line 10
    .line 11
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 p2, 0x0

    .line 16
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    new-instance p1, Lcom/google/firebase/remoteconfig/internal/s;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Lcom/google/firebase/remoteconfig/internal/s;-><init>(Landroid/content/SharedPreferences;)V

    .line 23
    .line 24
    .line 25
    return-object p1
.end method

.method private static o(Lcom/google/firebase/f;Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "firebase"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-static {p0}, Lcom/google/firebase/remoteconfig/c;->p(Lcom/google/firebase/f;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method private static p(Lcom/google/firebase/f;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/f;->o()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "[DEFAULT]"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static synthetic q()Ln7/a;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method private static declared-synchronized r(Z)V
    .locals 3

    .line 1
    const-class v0, Lcom/google/firebase/remoteconfig/c;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/google/firebase/remoteconfig/c;->l:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/google/firebase/remoteconfig/a;

    .line 25
    .line 26
    invoke-virtual {v2, p0}, Lcom/google/firebase/remoteconfig/a;->t(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Li9/f;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Li9/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/remoteconfig/c;->e(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/a;->l()Lg9/e;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p2}, Lg9/e;->h(Li9/f;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method declared-synchronized d(Lcom/google/firebase/f;Ljava/lang/String;Lx8/e;Ll7/b;Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/internal/f;Lcom/google/firebase/remoteconfig/internal/f;Lcom/google/firebase/remoteconfig/internal/f;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;Lcom/google/firebase/remoteconfig/internal/n;Lcom/google/firebase/remoteconfig/internal/s;Lg9/e;)Lcom/google/firebase/remoteconfig/a;
    .locals 24
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v0, p2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v1, v9, Lcom/google/firebase/remoteconfig/c;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    new-instance v15, Lcom/google/firebase/remoteconfig/a;

    iget-object v11, v9, Lcom/google/firebase/remoteconfig/c;->b:Landroid/content/Context;

    .line 3
    invoke-static/range {p1 .. p2}, Lcom/google/firebase/remoteconfig/c;->o(Lcom/google/firebase/f;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v14, p4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v14, v1

    :goto_0
    iget-object v6, v9, Lcom/google/firebase/remoteconfig/c;->b:Landroid/content/Context;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object/from16 v5, p7

    move-object/from16 v7, p2

    move-object/from16 v8, p11

    .line 4
    invoke-virtual/range {v1 .. v8}, Lcom/google/firebase/remoteconfig/c;->l(Lcom/google/firebase/f;Lx8/e;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;Lcom/google/firebase/remoteconfig/internal/f;Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/s;)Lcom/google/firebase/remoteconfig/internal/o;

    move-result-object v22

    move-object v10, v15

    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move-object v1, v15

    move-object/from16 v15, p5

    move-object/from16 v16, p6

    move-object/from16 v17, p7

    move-object/from16 v18, p8

    move-object/from16 v19, p9

    move-object/from16 v20, p10

    move-object/from16 v21, p11

    move-object/from16 v23, p12

    invoke-direct/range {v10 .. v23}, Lcom/google/firebase/remoteconfig/a;-><init>(Landroid/content/Context;Lcom/google/firebase/f;Lx8/e;Ll7/b;Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/internal/f;Lcom/google/firebase/remoteconfig/internal/f;Lcom/google/firebase/remoteconfig/internal/f;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;Lcom/google/firebase/remoteconfig/internal/n;Lcom/google/firebase/remoteconfig/internal/s;Lcom/google/firebase/remoteconfig/internal/o;Lg9/e;)V

    .line 5
    invoke-virtual {v1}, Lcom/google/firebase/remoteconfig/a;->u()V

    .line 6
    iget-object v2, v9, Lcom/google/firebase/remoteconfig/c;->a:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v2, Lcom/google/firebase/remoteconfig/c;->l:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 8
    :cond_1
    :goto_1
    iget-object v1, v9, Lcom/google/firebase/remoteconfig/c;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/remoteconfig/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized e(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/a;
    .locals 14
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "fetch"

    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/remoteconfig/c;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/f;

    .line 5
    .line 6
    .line 7
    move-result-object v7

    .line 8
    const-string v0, "activate"

    .line 9
    .line 10
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/remoteconfig/c;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/f;

    .line 11
    .line 12
    .line 13
    move-result-object v8

    .line 14
    const-string v0, "defaults"

    .line 15
    .line 16
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/remoteconfig/c;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/f;

    .line 17
    .line 18
    .line 19
    move-result-object v9

    .line 20
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/c;->b:Landroid/content/Context;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/c;->h:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0, v1, p1}, Lcom/google/firebase/remoteconfig/c;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/s;

    .line 25
    .line 26
    .line 27
    move-result-object v12

    .line 28
    invoke-direct {p0, v8, v9}, Lcom/google/firebase/remoteconfig/c;->j(Lcom/google/firebase/remoteconfig/internal/f;Lcom/google/firebase/remoteconfig/internal/f;)Lcom/google/firebase/remoteconfig/internal/n;

    .line 29
    .line 30
    .line 31
    move-result-object v11

    .line 32
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/c;->d:Lcom/google/firebase/f;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/c;->g:Lw8/b;

    .line 35
    .line 36
    invoke-static {v0, p1, v1}, Lcom/google/firebase/remoteconfig/c;->k(Lcom/google/firebase/f;Ljava/lang/String;Lw8/b;)Lcom/google/firebase/remoteconfig/internal/v;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    new-instance v1, Lf9/k;

    .line 43
    .line 44
    invoke-direct {v1, v0}, Lf9/k;-><init>(Lcom/google/firebase/remoteconfig/internal/v;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v11, v1}, Lcom/google/firebase/remoteconfig/internal/n;->b(Lcom/google/android/gms/common/util/BiConsumer;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    :goto_0
    invoke-direct {p0, v8, v9}, Lcom/google/firebase/remoteconfig/c;->m(Lcom/google/firebase/remoteconfig/internal/f;Lcom/google/firebase/remoteconfig/internal/f;)Lg9/e;

    .line 54
    .line 55
    .line 56
    move-result-object v13

    .line 57
    iget-object v2, p0, Lcom/google/firebase/remoteconfig/c;->d:Lcom/google/firebase/f;

    .line 58
    .line 59
    iget-object v4, p0, Lcom/google/firebase/remoteconfig/c;->e:Lx8/e;

    .line 60
    .line 61
    iget-object v5, p0, Lcom/google/firebase/remoteconfig/c;->f:Ll7/b;

    .line 62
    .line 63
    iget-object v6, p0, Lcom/google/firebase/remoteconfig/c;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 64
    .line 65
    invoke-virtual {p0, p1, v7, v12}, Lcom/google/firebase/remoteconfig/c;->h(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/f;Lcom/google/firebase/remoteconfig/internal/s;)Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    move-object v1, p0

    .line 70
    move-object v3, p1

    .line 71
    invoke-virtual/range {v1 .. v13}, Lcom/google/firebase/remoteconfig/c;->d(Lcom/google/firebase/f;Ljava/lang/String;Lx8/e;Ll7/b;Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/internal/f;Lcom/google/firebase/remoteconfig/internal/f;Lcom/google/firebase/remoteconfig/internal/f;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;Lcom/google/firebase/remoteconfig/internal/n;Lcom/google/firebase/remoteconfig/internal/s;Lg9/e;)Lcom/google/firebase/remoteconfig/a;

    .line 72
    .line 73
    .line 74
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    .line 76
    return-object p1

    .line 77
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    throw p1
.end method

.method g()Lcom/google/firebase/remoteconfig/a;
    .locals 1

    .line 1
    const-string v0, "firebase"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/firebase/remoteconfig/c;->e(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method declared-synchronized h(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/f;Lcom/google/firebase/remoteconfig/internal/s;)Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;
    .locals 11
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v10, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/c;->e:Lx8/e;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/c;->d:Lcom/google/firebase/f;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/firebase/remoteconfig/c;->p(Lcom/google/firebase/f;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/c;->g:Lw8/b;

    .line 15
    .line 16
    :goto_0
    move-object v2, v0

    .line 17
    goto :goto_1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_2

    .line 20
    :cond_0
    new-instance v0, Lf9/l;

    .line 21
    .line 22
    invoke-direct {v0}, Lf9/l;-><init>()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :goto_1
    iget-object v3, p0, Lcom/google/firebase/remoteconfig/c;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 27
    .line 28
    sget-object v4, Lcom/google/firebase/remoteconfig/c;->j:Lcom/google/android/gms/common/util/Clock;

    .line 29
    .line 30
    sget-object v5, Lcom/google/firebase/remoteconfig/c;->k:Ljava/util/Random;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/c;->d:Lcom/google/firebase/f;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/google/firebase/f;->p()Lcom/google/firebase/m;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/google/firebase/m;->b()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p0, v0, p1, p3}, Lcom/google/firebase/remoteconfig/c;->i(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/s;)Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    iget-object v9, p0, Lcom/google/firebase/remoteconfig/c;->i:Ljava/util/Map;

    .line 47
    .line 48
    move-object v0, v10

    .line 49
    move-object v6, p2

    .line 50
    move-object v8, p3

    .line 51
    invoke-direct/range {v0 .. v9}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;-><init>(Lx8/e;Lw8/b;Ljava/util/concurrent/Executor;Lcom/google/android/gms/common/util/Clock;Ljava/util/Random;Lcom/google/firebase/remoteconfig/internal/f;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;Lcom/google/firebase/remoteconfig/internal/s;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    monitor-exit p0

    .line 55
    return-object v10

    .line 56
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    throw p1
.end method

.method i(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/s;)Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;
    .locals 10
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/c;->d:Lcom/google/firebase/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/f;->p()Lcom/google/firebase/m;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/firebase/m;->c()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    new-instance v0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/google/firebase/remoteconfig/c;->b:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p3}, Lcom/google/firebase/remoteconfig/internal/s;->c()J

    .line 16
    .line 17
    .line 18
    move-result-wide v6

    .line 19
    invoke-virtual {p3}, Lcom/google/firebase/remoteconfig/internal/s;->c()J

    .line 20
    .line 21
    .line 22
    move-result-wide v8

    .line 23
    move-object v1, v0

    .line 24
    move-object v4, p1

    .line 25
    move-object v5, p2

    .line 26
    invoke-direct/range {v1 .. v9}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method declared-synchronized l(Lcom/google/firebase/f;Lx8/e;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;Lcom/google/firebase/remoteconfig/internal/f;Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/s;)Lcom/google/firebase/remoteconfig/internal/o;
    .locals 11

    .line 1
    move-object v1, p0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    new-instance v0, Lcom/google/firebase/remoteconfig/internal/o;

    .line 4
    .line 5
    iget-object v10, v1, Lcom/google/firebase/remoteconfig/c;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    .line 7
    move-object v2, v0

    .line 8
    move-object v3, p1

    .line 9
    move-object v4, p2

    .line 10
    move-object v5, p3

    .line 11
    move-object v6, p4

    .line 12
    move-object/from16 v7, p5

    .line 13
    .line 14
    move-object/from16 v8, p6

    .line 15
    .line 16
    move-object/from16 v9, p7

    .line 17
    .line 18
    invoke-direct/range {v2 .. v10}, Lcom/google/firebase/remoteconfig/internal/o;-><init>(Lcom/google/firebase/f;Lx8/e;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;Lcom/google/firebase/remoteconfig/internal/f;Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/s;Ljava/util/concurrent/ScheduledExecutorService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw v0
.end method
