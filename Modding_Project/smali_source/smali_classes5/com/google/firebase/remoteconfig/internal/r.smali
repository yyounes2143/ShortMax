.class public Lcom/google/firebase/remoteconfig/internal/r;
.super Ljava/lang/Object;
.source "ConfigRealtimeHttpClient.java"


# static fields
.field static final t:[I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final u:Ljava/util/regex/Pattern;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lf9/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private c:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private d:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private e:Z

.field private f:Ljava/net/HttpURLConnection;

.field private g:Lcom/google/firebase/remoteconfig/internal/b;

.field private final h:I

.field private final i:Ljava/util/concurrent/ScheduledExecutorService;

.field private final j:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;

.field private final k:Lcom/google/firebase/f;

.field private final l:Lx8/e;

.field m:Lcom/google/firebase/remoteconfig/internal/f;

.field private final n:Landroid/content/Context;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/util/Random;

.field private final q:Lcom/google/android/gms/common/util/Clock;

.field private final r:Lcom/google/firebase/remoteconfig/internal/s;

.field private final s:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/firebase/remoteconfig/internal/r;->t:[I

    .line 9
    .line 10
    const-string v0, "^[^:]+:([0-9]+):(android|ios|web):([0-9a-f]+)"

    .line 11
    .line 12
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/google/firebase/remoteconfig/internal/r;->u:Ljava/util/regex/Pattern;

    .line 17
    .line 18
    return-void

    .line 19
    :array_0
    .array-data 4
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
    .end array-data
.end method

.method public constructor <init>(Lcom/google/firebase/f;Lx8/e;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;Lcom/google/firebase/remoteconfig/internal/f;Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcom/google/firebase/remoteconfig/internal/s;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/f;",
            "Lx8/e;",
            "Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;",
            "Lcom/google/firebase/remoteconfig/internal/f;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lf9/c;",
            ">;",
            "Lcom/google/firebase/remoteconfig/internal/s;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x8

    .line 5
    .line 6
    iput v0, p0, Lcom/google/firebase/remoteconfig/internal/r;->h:I

    .line 7
    .line 8
    iput-object p7, p0, Lcom/google/firebase/remoteconfig/internal/r;->a:Ljava/util/Set;

    .line 9
    .line 10
    const/4 p7, 0x0

    .line 11
    iput-boolean p7, p0, Lcom/google/firebase/remoteconfig/internal/r;->b:Z

    .line 12
    .line 13
    iput-object p9, p0, Lcom/google/firebase/remoteconfig/internal/r;->i:Ljava/util/concurrent/ScheduledExecutorService;

    .line 14
    .line 15
    new-instance p9, Ljava/util/Random;

    .line 16
    .line 17
    invoke-direct {p9}, Ljava/util/Random;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p9, p0, Lcom/google/firebase/remoteconfig/internal/r;->p:Ljava/util/Random;

    .line 21
    .line 22
    invoke-virtual {p8}, Lcom/google/firebase/remoteconfig/internal/s;->h()Lcom/google/firebase/remoteconfig/internal/s$b;

    .line 23
    .line 24
    .line 25
    move-result-object p9

    .line 26
    invoke-virtual {p9}, Lcom/google/firebase/remoteconfig/internal/s$b;->b()I

    .line 27
    .line 28
    .line 29
    move-result p9

    .line 30
    sub-int/2addr v0, p9

    .line 31
    const/4 p9, 0x1

    .line 32
    invoke-static {v0, p9}, Ljava/lang/Math;->max(II)I

    .line 33
    .line 34
    .line 35
    move-result p9

    .line 36
    iput p9, p0, Lcom/google/firebase/remoteconfig/internal/r;->c:I

    .line 37
    .line 38
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    .line 39
    .line 40
    .line 41
    move-result-object p9

    .line 42
    iput-object p9, p0, Lcom/google/firebase/remoteconfig/internal/r;->q:Lcom/google/android/gms/common/util/Clock;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/r;->k:Lcom/google/firebase/f;

    .line 45
    .line 46
    iput-object p3, p0, Lcom/google/firebase/remoteconfig/internal/r;->j:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;

    .line 47
    .line 48
    iput-object p2, p0, Lcom/google/firebase/remoteconfig/internal/r;->l:Lx8/e;

    .line 49
    .line 50
    iput-object p4, p0, Lcom/google/firebase/remoteconfig/internal/r;->m:Lcom/google/firebase/remoteconfig/internal/f;

    .line 51
    .line 52
    iput-object p5, p0, Lcom/google/firebase/remoteconfig/internal/r;->n:Landroid/content/Context;

    .line 53
    .line 54
    iput-object p6, p0, Lcom/google/firebase/remoteconfig/internal/r;->o:Ljava/lang/String;

    .line 55
    .line 56
    iput-object p8, p0, Lcom/google/firebase/remoteconfig/internal/r;->r:Lcom/google/firebase/remoteconfig/internal/s;

    .line 57
    .line 58
    iput-boolean p7, p0, Lcom/google/firebase/remoteconfig/internal/r;->d:Z

    .line 59
    .line 60
    iput-boolean p7, p0, Lcom/google/firebase/remoteconfig/internal/r;->e:Z

    .line 61
    .line 62
    new-instance p1, Ljava/lang/Object;

    .line 63
    .line 64
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/r;->s:Ljava/lang/Object;

    .line 68
    .line 69
    return-void
.end method

.method private declared-synchronized A(Z)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-boolean p1, p0, Lcom/google/firebase/remoteconfig/internal/r;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method

.method private F(Ljava/util/Date;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/r;->r:Lcom/google/firebase/remoteconfig/internal/s;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/s;->h()Lcom/google/firebase/remoteconfig/internal/s$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/s$b;->b()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    add-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/google/firebase/remoteconfig/internal/r;->o(I)J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    new-instance v3, Ljava/util/Date;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    add-long/2addr v4, v1

    .line 24
    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/google/firebase/remoteconfig/internal/r;->r:Lcom/google/firebase/remoteconfig/internal/s;

    .line 28
    .line 29
    invoke-virtual {p1, v0, v3}, Lcom/google/firebase/remoteconfig/internal/s;->p(ILjava/util/Date;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/remoteconfig/internal/r;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/remoteconfig/internal/r;->s(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lcom/google/firebase/remoteconfig/internal/r;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/remoteconfig/internal/r;->t(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic c(Lcom/google/firebase/remoteconfig/internal/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/internal/r;->l()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d(Lcom/google/firebase/remoteconfig/internal/r;Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/internal/r;->w(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private declared-synchronized f()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/r;->a:Ljava/util/Set;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/google/firebase/remoteconfig/internal/r;->b:Z

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/google/firebase/remoteconfig/internal/r;->d:Z

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/google/firebase/remoteconfig/internal/r;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    monitor-exit p0

    .line 28
    return v0

    .line 29
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw v0
.end method

.method private declared-synchronized g()Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/internal/r;->f()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {p0, v1}, Lcom/google/firebase/remoteconfig/internal/r;->A(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    monitor-exit p0

    .line 16
    return v0

    .line 17
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    throw v0
.end method

.method private h(Ljava/io/InputStream;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p1

    .line 8
    const-string v0, "FirebaseRemoteConfig"

    .line 9
    .line 10
    const-string v1, "Error closing connection stream."

    .line 11
    .line 12
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    return-void
.end method

.method private k(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/r;->k:Lcom/google/firebase/f;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/google/firebase/f;->p()Lcom/google/firebase/m;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/google/firebase/m;->c()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Lcom/google/firebase/remoteconfig/internal/r;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "project"

    .line 21
    .line 22
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    const-string v1, "namespace"

    .line 26
    .line 27
    iget-object v2, p0, Lcom/google/firebase/remoteconfig/internal/r;->o:Ljava/lang/String;

    .line 28
    .line 29
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/r;->j:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;->r()J

    .line 35
    .line 36
    .line 37
    move-result-wide v1

    .line 38
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, "lastKnownVersionNumber"

    .line 43
    .line 44
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/r;->k:Lcom/google/firebase/f;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/google/firebase/f;->p()Lcom/google/firebase/m;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lcom/google/firebase/m;->c()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v2, "appId"

    .line 58
    .line 59
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    const-string v1, "sdkVersion"

    .line 63
    .line 64
    const-string v2, "23.0.1"

    .line 65
    .line 66
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    const-string v1, "appInstanceId"

    .line 70
    .line 71
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    new-instance p1, Lorg/json/JSONObject;

    .line 75
    .line 76
    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 77
    .line 78
    .line 79
    return-object p1
.end method

.method private declared-synchronized l()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/google/firebase/remoteconfig/internal/r;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    throw v0
.end method

.method private static m(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/remoteconfig/internal/r;->u:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return-object p0
.end method

.method private n()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "FirebaseRemoteConfig"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/google/firebase/remoteconfig/internal/r;->n:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    invoke-static {v2, v3}, Lcom/google/android/gms/common/util/AndroidUtilsLight;->getPackageCertificateHashBytes(Landroid/content/Context;Ljava/lang/String;)[B

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v3, "Could not get fingerprint hash for package: "

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Lcom/google/firebase/remoteconfig/internal/r;->n:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return-object v1

    .line 43
    :cond_0
    const/4 v3, 0x0

    .line 44
    invoke-static {v2, v3}, Lcom/google/android/gms/common/util/Hex;->bytesToStringUppercase([BZ)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return-object v0

    .line 49
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v3, "No such package: "

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v3, p0, Lcom/google/firebase/remoteconfig/internal/r;->n:Landroid/content/Context;

    .line 60
    .line 61
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    return-object v1
.end method

.method private o(I)J
    .locals 4

    .line 1
    sget-object v0, Lcom/google/firebase/remoteconfig/internal/r;->t:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-ge p1, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move p1, v1

    .line 8
    :goto_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 9
    .line 10
    add-int/lit8 p1, p1, -0x1

    .line 11
    .line 12
    aget p1, v0, p1

    .line 13
    .line 14
    int-to-long v2, p1

    .line 15
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    const-wide/16 v2, 0x2

    .line 20
    .line 21
    div-long v2, v0, v2

    .line 22
    .line 23
    iget-object p1, p0, Lcom/google/firebase/remoteconfig/internal/r;->p:Ljava/util/Random;

    .line 24
    .line 25
    long-to-int v0, v0

    .line 26
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    int-to-long v0, p1

    .line 31
    add-long/2addr v2, v0

    .line 32
    return-wide v2
.end method

.method private p(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/r;->k:Lcom/google/firebase/f;

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
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/google/firebase/remoteconfig/internal/r;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "https://firebaseremoteconfigrealtime.googleapis.com/v1/projects/%s/namespaces/%s:streamFetchInvalidations"

    .line 20
    .line 21
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method private q()Ljava/net/URL;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/r;->o:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0, v1}, Lcom/google/firebase/remoteconfig/internal/r;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    const-string v0, "FirebaseRemoteConfig"

    .line 14
    .line 15
    const-string v1, "URL is malformed"

    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    :goto_0
    return-object v0
.end method

.method private r(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x198

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x1ad

    .line 6
    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x1f6

    .line 10
    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0x1f7

    .line 14
    .line 15
    if-eq p1, v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0x1f8

    .line 18
    .line 19
    if-ne p1, v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 25
    :goto_1
    return p1
.end method

.method private synthetic s(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string p2, "Unable to connect to the server. Try again in a few minutes. HTTP status code: %d"

    .line 2
    .line 3
    const/16 v0, 0x193

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/16 v2, 0xc8

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 11
    .line 12
    .line 13
    move-result v5

    .line 14
    if-eqz v5, :cond_6

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/r;->f:Ljava/net/HttpURLConnection;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 25
    .line 26
    .line 27
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 28
    :try_start_1
    iget-object v5, p0, Lcom/google/firebase/remoteconfig/internal/r;->f:Ljava/net/HttpURLConnection;

    .line 29
    .line 30
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 31
    .line 32
    .line 33
    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 34
    :try_start_2
    iget-object v6, p0, Lcom/google/firebase/remoteconfig/internal/r;->f:Ljava/net/HttpURLConnection;

    .line 35
    .line 36
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 44
    if-ne v6, v2, :cond_0

    .line 45
    .line 46
    :try_start_3
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/internal/r;->x()V

    .line 47
    .line 48
    .line 49
    iget-object v8, p0, Lcom/google/firebase/remoteconfig/internal/r;->r:Lcom/google/firebase/remoteconfig/internal/s;

    .line 50
    .line 51
    invoke-virtual {v8}, Lcom/google/firebase/remoteconfig/internal/s;->j()V

    .line 52
    .line 53
    .line 54
    iget-object v8, p0, Lcom/google/firebase/remoteconfig/internal/r;->f:Ljava/net/HttpURLConnection;

    .line 55
    .line 56
    invoke-virtual {p0, v8}, Lcom/google/firebase/remoteconfig/internal/r;->D(Ljava/net/HttpURLConnection;)Lcom/google/firebase/remoteconfig/internal/b;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    iput-object v8, p0, Lcom/google/firebase/remoteconfig/internal/r;->g:Lcom/google/firebase/remoteconfig/internal/b;

    .line 61
    .line 62
    invoke-virtual {v8}, Lcom/google/firebase/remoteconfig/internal/b;->i()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception v4

    .line 67
    goto/16 :goto_9

    .line 68
    .line 69
    :catch_0
    move-exception v6

    .line 70
    goto/16 :goto_5

    .line 71
    .line 72
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v5}, Lcom/google/firebase/remoteconfig/internal/r;->i(Ljava/io/InputStream;Ljava/io/InputStream;)V

    .line 73
    .line 74
    .line 75
    invoke-direct {p0, v3}, Lcom/google/firebase/remoteconfig/internal/r;->A(Z)V

    .line 76
    .line 77
    .line 78
    iget-boolean p1, p0, Lcom/google/firebase/remoteconfig/internal/r;->e:Z

    .line 79
    .line 80
    if-nez p1, :cond_1

    .line 81
    .line 82
    invoke-direct {p0, v6}, Lcom/google/firebase/remoteconfig/internal/r;->r(I)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_1
    move v1, v3

    .line 90
    :goto_1
    if-eqz v1, :cond_2

    .line 91
    .line 92
    new-instance p1, Ljava/util/Date;

    .line 93
    .line 94
    iget-object v3, p0, Lcom/google/firebase/remoteconfig/internal/r;->q:Lcom/google/android/gms/common/util/Clock;

    .line 95
    .line 96
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 97
    .line 98
    .line 99
    move-result-wide v8

    .line 100
    invoke-direct {p1, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 101
    .line 102
    .line 103
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/internal/r;->F(Ljava/util/Date;)V

    .line 104
    .line 105
    .line 106
    :cond_2
    if-nez v1, :cond_5

    .line 107
    .line 108
    if-ne v6, v2, :cond_3

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_3
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    if-ne v6, v0, :cond_4

    .line 120
    .line 121
    iget-object p1, p0, Lcom/google/firebase/remoteconfig/internal/r;->f:Ljava/net/HttpURLConnection;

    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/internal/r;->v(Ljava/io/InputStream;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    :cond_4
    new-instance p2, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigServerException;

    .line 132
    .line 133
    sget-object v0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException$Code;->CONFIG_UPDATE_STREAM_ERROR:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException$Code;

    .line 134
    .line 135
    invoke-direct {p2, v6, p1, v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigServerException;-><init>(ILjava/lang/String;Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException$Code;)V

    .line 136
    .line 137
    .line 138
    :goto_2
    invoke-direct {p0, p2}, Lcom/google/firebase/remoteconfig/internal/r;->w(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;)V

    .line 139
    .line 140
    .line 141
    goto/16 :goto_8

    .line 142
    .line 143
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/r;->y()V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_8

    .line 147
    .line 148
    :catchall_1
    move-exception v6

    .line 149
    move-object v7, v4

    .line 150
    move-object v4, v6

    .line 151
    goto/16 :goto_9

    .line 152
    .line 153
    :catch_1
    move-exception v6

    .line 154
    move-object v7, v4

    .line 155
    goto :goto_5

    .line 156
    :catchall_2
    move-exception v5

    .line 157
    move-object v7, v4

    .line 158
    move-object v4, v5

    .line 159
    move-object v5, v7

    .line 160
    goto/16 :goto_9

    .line 161
    .line 162
    :catch_2
    move-exception v6

    .line 163
    move-object v5, v4

    .line 164
    :goto_4
    move-object v7, v5

    .line 165
    goto :goto_5

    .line 166
    :catchall_3
    move-exception p1

    .line 167
    move-object v5, v4

    .line 168
    move-object v7, v5

    .line 169
    move-object v4, p1

    .line 170
    move-object p1, v7

    .line 171
    goto/16 :goto_9

    .line 172
    .line 173
    :catch_3
    move-exception v6

    .line 174
    move-object p1, v4

    .line 175
    move-object v5, p1

    .line 176
    goto :goto_4

    .line 177
    :cond_6
    :try_start_4
    new-instance v5, Ljava/io/IOException;

    .line 178
    .line 179
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-direct {v5, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 184
    .line 185
    .line 186
    throw v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 187
    :goto_5
    :try_start_5
    iget-boolean v8, p0, Lcom/google/firebase/remoteconfig/internal/r;->e:Z

    .line 188
    .line 189
    if-eqz v8, :cond_7

    .line 190
    .line 191
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/internal/r;->x()V

    .line 192
    .line 193
    .line 194
    goto :goto_6

    .line 195
    :cond_7
    const-string v8, "FirebaseRemoteConfig"

    .line 196
    .line 197
    const-string v9, "Exception connecting to real-time RC backend. Retrying the connection..."

    .line 198
    .line 199
    invoke-static {v8, v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 200
    .line 201
    .line 202
    :goto_6
    invoke-virtual {p0, p1, v5}, Lcom/google/firebase/remoteconfig/internal/r;->i(Ljava/io/InputStream;Ljava/io/InputStream;)V

    .line 203
    .line 204
    .line 205
    invoke-direct {p0, v3}, Lcom/google/firebase/remoteconfig/internal/r;->A(Z)V

    .line 206
    .line 207
    .line 208
    iget-boolean p1, p0, Lcom/google/firebase/remoteconfig/internal/r;->e:Z

    .line 209
    .line 210
    if-nez p1, :cond_8

    .line 211
    .line 212
    if-eqz v7, :cond_9

    .line 213
    .line 214
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/internal/r;->r(I)Z

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    if-eqz p1, :cond_8

    .line 223
    .line 224
    goto :goto_7

    .line 225
    :cond_8
    move v1, v3

    .line 226
    :cond_9
    :goto_7
    if-eqz v1, :cond_a

    .line 227
    .line 228
    new-instance p1, Ljava/util/Date;

    .line 229
    .line 230
    iget-object v3, p0, Lcom/google/firebase/remoteconfig/internal/r;->q:Lcom/google/android/gms/common/util/Clock;

    .line 231
    .line 232
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 233
    .line 234
    .line 235
    move-result-wide v5

    .line 236
    invoke-direct {p1, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 237
    .line 238
    .line 239
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/internal/r;->F(Ljava/util/Date;)V

    .line 240
    .line 241
    .line 242
    :cond_a
    if-nez v1, :cond_5

    .line 243
    .line 244
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    if-ne p1, v2, :cond_b

    .line 249
    .line 250
    goto :goto_3

    .line 251
    :cond_b
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 260
    .line 261
    .line 262
    move-result p2

    .line 263
    if-ne p2, v0, :cond_c

    .line 264
    .line 265
    iget-object p1, p0, Lcom/google/firebase/remoteconfig/internal/r;->f:Ljava/net/HttpURLConnection;

    .line 266
    .line 267
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/internal/r;->v(Ljava/io/InputStream;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    :cond_c
    new-instance p2, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigServerException;

    .line 276
    .line 277
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    sget-object v1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException$Code;->CONFIG_UPDATE_STREAM_ERROR:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException$Code;

    .line 282
    .line 283
    invoke-direct {p2, v0, p1, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigServerException;-><init>(ILjava/lang/String;Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException$Code;)V

    .line 284
    .line 285
    .line 286
    goto/16 :goto_2

    .line 287
    .line 288
    :goto_8
    iput-object v4, p0, Lcom/google/firebase/remoteconfig/internal/r;->f:Ljava/net/HttpURLConnection;

    .line 289
    .line 290
    iput-object v4, p0, Lcom/google/firebase/remoteconfig/internal/r;->g:Lcom/google/firebase/remoteconfig/internal/b;

    .line 291
    .line 292
    invoke-static {v4}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    return-object p1

    .line 297
    :goto_9
    invoke-virtual {p0, p1, v5}, Lcom/google/firebase/remoteconfig/internal/r;->i(Ljava/io/InputStream;Ljava/io/InputStream;)V

    .line 298
    .line 299
    .line 300
    invoke-direct {p0, v3}, Lcom/google/firebase/remoteconfig/internal/r;->A(Z)V

    .line 301
    .line 302
    .line 303
    iget-boolean p1, p0, Lcom/google/firebase/remoteconfig/internal/r;->e:Z

    .line 304
    .line 305
    if-nez p1, :cond_d

    .line 306
    .line 307
    if-eqz v7, :cond_e

    .line 308
    .line 309
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 310
    .line 311
    .line 312
    move-result p1

    .line 313
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/internal/r;->r(I)Z

    .line 314
    .line 315
    .line 316
    move-result p1

    .line 317
    if-eqz p1, :cond_d

    .line 318
    .line 319
    goto :goto_a

    .line 320
    :cond_d
    move v1, v3

    .line 321
    :cond_e
    :goto_a
    if-eqz v1, :cond_f

    .line 322
    .line 323
    new-instance p1, Ljava/util/Date;

    .line 324
    .line 325
    iget-object v3, p0, Lcom/google/firebase/remoteconfig/internal/r;->q:Lcom/google/android/gms/common/util/Clock;

    .line 326
    .line 327
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 328
    .line 329
    .line 330
    move-result-wide v5

    .line 331
    invoke-direct {p1, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 332
    .line 333
    .line 334
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/internal/r;->F(Ljava/util/Date;)V

    .line 335
    .line 336
    .line 337
    :cond_f
    if-nez v1, :cond_11

    .line 338
    .line 339
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 340
    .line 341
    .line 342
    move-result p1

    .line 343
    if-eq p1, v2, :cond_11

    .line 344
    .line 345
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 354
    .line 355
    .line 356
    move-result p2

    .line 357
    if-ne p2, v0, :cond_10

    .line 358
    .line 359
    iget-object p1, p0, Lcom/google/firebase/remoteconfig/internal/r;->f:Ljava/net/HttpURLConnection;

    .line 360
    .line 361
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 362
    .line 363
    .line 364
    move-result-object p1

    .line 365
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/internal/r;->v(Ljava/io/InputStream;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    :cond_10
    new-instance p2, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigServerException;

    .line 370
    .line 371
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    sget-object v1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException$Code;->CONFIG_UPDATE_STREAM_ERROR:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException$Code;

    .line 376
    .line 377
    invoke-direct {p2, v0, p1, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigServerException;-><init>(ILjava/lang/String;Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException$Code;)V

    .line 378
    .line 379
    .line 380
    invoke-direct {p0, p2}, Lcom/google/firebase/remoteconfig/internal/r;->w(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;)V

    .line 381
    .line 382
    .line 383
    goto :goto_b

    .line 384
    :cond_11
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/r;->y()V

    .line 385
    .line 386
    .line 387
    :goto_b
    throw v4
.end method

.method private synthetic t(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    new-instance p2, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;

    .line 8
    .line 9
    const-string p3, "Firebase Installations failed to get installation auth token for config update listener connection."

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {p2, p3, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p2}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    if-nez p3, :cond_1

    .line 28
    .line 29
    new-instance p1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;

    .line 30
    .line 31
    const-string p3, "Firebase Installations failed to get installation ID for config update listener connection."

    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-direct {p1, p3, p2}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1

    .line 45
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/internal/r;->q()Ljava/net/URL;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    invoke-virtual {p3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    check-cast p3, Ljava/net/HttpURLConnection;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lcom/google/firebase/installations/f;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/google/firebase/installations/f;->b()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    check-cast p2, Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {p0, p3, p2, p1}, Lcom/google/firebase/remoteconfig/internal/r;->C(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    invoke-static {p3}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    return-object p1

    .line 79
    :catch_0
    move-exception p1

    .line 80
    new-instance p2, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;

    .line 81
    .line 82
    const-string p3, "Failed to open HTTP stream connection"

    .line 83
    .line 84
    invoke-direct {p2, p3, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    invoke-static {p2}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    return-object p1
.end method

.method private declared-synchronized u(J)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/internal/r;->f()Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/firebase/remoteconfig/internal/r;->c:I

    .line 11
    .line 12
    if-lez v0, :cond_1

    .line 13
    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    iput v0, p0, Lcom/google/firebase/remoteconfig/internal/r;->c:I

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/r;->i:Ljava/util/concurrent/ScheduledExecutorService;

    .line 19
    .line 20
    new-instance v1, Lcom/google/firebase/remoteconfig/internal/r$a;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/google/firebase/remoteconfig/internal/r$a;-><init>(Lcom/google/firebase/remoteconfig/internal/r;)V

    .line 23
    .line 24
    .line 25
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 26
    .line 27
    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iget-boolean p1, p0, Lcom/google/firebase/remoteconfig/internal/r;->e:Z

    .line 34
    .line 35
    if-nez p1, :cond_2

    .line 36
    .line 37
    new-instance p1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;

    .line 38
    .line 39
    const-string p2, "Unable to connect to the server. Check your connection and try again."

    .line 40
    .line 41
    sget-object v0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException$Code;->CONFIG_UPDATE_STREAM_ERROR:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException$Code;

    .line 42
    .line 43
    invoke-direct {p1, p2, v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigClientException;-><init>(Ljava/lang/String;Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException$Code;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/internal/r;->w(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_0
    monitor-exit p0

    .line 50
    return-void

    .line 51
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    throw p1
.end method

.method private v(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    .line 7
    .line 8
    new-instance v2, Ljava/io/InputStreamReader;

    .line 9
    .line 10
    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    const-string p1, "Unable to connect to the server, access is forbidden. HTTP status code: 403"

    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method

.method private declared-synchronized w(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/r;->a:Ljava/util/Set;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lf9/c;

    .line 19
    .line 20
    invoke-interface {v1, p1}, Lf9/c;->b(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p1
.end method

.method private declared-synchronized x()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/16 v0, 0x8

    .line 3
    .line 4
    :try_start_0
    iput v0, p0, Lcom/google/firebase/remoteconfig/internal/r;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw v0
.end method

.method private z(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "X-Goog-Firebase-Installations-Auth"

    .line 2
    .line 3
    invoke-virtual {p1, v0, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/google/firebase/remoteconfig/internal/r;->k:Lcom/google/firebase/f;

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/google/firebase/f;->p()Lcom/google/firebase/m;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p2}, Lcom/google/firebase/m;->b()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const-string v0, "X-Goog-Api-Key"

    .line 17
    .line 18
    invoke-virtual {p1, v0, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/google/firebase/remoteconfig/internal/r;->n:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const-string v0, "X-Android-Package"

    .line 28
    .line 29
    invoke-virtual {p1, v0, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string p2, "X-Android-Cert"

    .line 33
    .line 34
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/internal/r;->n()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p1, p2, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string p2, "X-Google-GFE-Can-Retry"

    .line 42
    .line 43
    const-string v0, "yes"

    .line 44
    .line 45
    invoke-virtual {p1, p2, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string p2, "X-Accept-Response-Streaming"

    .line 49
    .line 50
    const-string v0, "true"

    .line 51
    .line 52
    invoke-virtual {p1, p2, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string p2, "Content-Type"

    .line 56
    .line 57
    const-string v0, "application/json"

    .line 58
    .line 59
    invoke-virtual {p1, p2, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string p2, "Accept"

    .line 63
    .line 64
    invoke-virtual {p1, p2, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method


# virtual methods
.method public B(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/r;->s:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-boolean p1, p0, Lcom/google/firebase/remoteconfig/internal/r;->e:Z

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/r;->g:Lcom/google/firebase/remoteconfig/internal/b;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Lcom/google/firebase/remoteconfig/internal/b;->l(Z)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    const/16 v2, 0x1a

    .line 19
    .line 20
    if-lt v1, v2, :cond_1

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/google/firebase/remoteconfig/internal/r;->f:Ljava/net/HttpURLConnection;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 29
    .line 30
    .line 31
    :cond_1
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p1
.end method

.method public C(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "VisibleForTests"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "POST"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p3}, Lcom/google/firebase/remoteconfig/internal/r;->z(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/google/firebase/remoteconfig/internal/r;->k(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const-string p3, "utf-8"

    .line 18
    .line 19
    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    new-instance p3, Ljava/io/BufferedOutputStream;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {p3, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, p2}, Ljava/io/OutputStream;->write([B)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public declared-synchronized D(Ljava/net/HttpURLConnection;)Lcom/google/firebase/remoteconfig/internal/b;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "VisibleForTests"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v5, Lcom/google/firebase/remoteconfig/internal/r$b;

    .line 3
    .line 4
    invoke-direct {v5, p0}, Lcom/google/firebase/remoteconfig/internal/r$b;-><init>(Lcom/google/firebase/remoteconfig/internal/r;)V

    .line 5
    .line 6
    .line 7
    new-instance v8, Lcom/google/firebase/remoteconfig/internal/b;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/firebase/remoteconfig/internal/r;->j:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/google/firebase/remoteconfig/internal/r;->m:Lcom/google/firebase/remoteconfig/internal/f;

    .line 12
    .line 13
    iget-object v4, p0, Lcom/google/firebase/remoteconfig/internal/r;->a:Ljava/util/Set;

    .line 14
    .line 15
    iget-object v6, p0, Lcom/google/firebase/remoteconfig/internal/r;->i:Ljava/util/concurrent/ScheduledExecutorService;

    .line 16
    .line 17
    iget-object v7, p0, Lcom/google/firebase/remoteconfig/internal/r;->r:Lcom/google/firebase/remoteconfig/internal/s;

    .line 18
    .line 19
    move-object v0, v8

    .line 20
    move-object v1, p1

    .line 21
    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/remoteconfig/internal/b;-><init>(Ljava/net/HttpURLConnection;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;Lcom/google/firebase/remoteconfig/internal/f;Ljava/util/Set;Lf9/c;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/remoteconfig/internal/s;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-object v8

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw p1
.end method

.method public E()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    invoke-direct {p0, v0, v1}, Lcom/google/firebase/remoteconfig/internal/r;->u(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "VisibleForTests",
            "DefaultLocale"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/internal/r;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/r;->r:Lcom/google/firebase/remoteconfig/internal/s;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/s;->h()Lcom/google/firebase/remoteconfig/internal/s$b;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/util/Date;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/google/firebase/remoteconfig/internal/r;->q:Lcom/google/android/gms/common/util/Clock;

    .line 17
    .line 18
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/s$b;->a()Ljava/util/Date;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/r;->y()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/r;->j()Lcom/google/android/gms/tasks/Task;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    filled-new-array {v0}, [Lcom/google/android/gms/tasks/Task;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->whenAllComplete([Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/google/firebase/remoteconfig/internal/r;->i:Ljava/util/concurrent/ScheduledExecutorService;

    .line 52
    .line 53
    new-instance v3, Lcom/google/firebase/remoteconfig/internal/p;

    .line 54
    .line 55
    invoke-direct {v3, p0, v0}, Lcom/google/firebase/remoteconfig/internal/p;-><init>(Lcom/google/firebase/remoteconfig/internal/r;Lcom/google/android/gms/tasks/Task;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public i(Ljava/io/InputStream;Ljava/io/InputStream;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/r;->f:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/google/firebase/remoteconfig/internal/r;->e:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/internal/r;->h(Ljava/io/InputStream;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p2}, Lcom/google/firebase/remoteconfig/internal/r;->h(Ljava/io/InputStream;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public j()Lcom/google/android/gms/tasks/Task;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "VisibleForTests"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/net/HttpURLConnection;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/r;->l:Lx8/e;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lx8/e;->a(Z)Lcom/google/android/gms/tasks/Task;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/r;->l:Lx8/e;

    .line 9
    .line 10
    invoke-interface {v1}, Lx8/e;->getId()Lcom/google/android/gms/tasks/Task;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    filled-new-array {v0, v1}, [Lcom/google/android/gms/tasks/Task;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v2}, Lcom/google/android/gms/tasks/Tasks;->whenAllComplete([Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iget-object v3, p0, Lcom/google/firebase/remoteconfig/internal/r;->i:Ljava/util/concurrent/ScheduledExecutorService;

    .line 23
    .line 24
    new-instance v4, Lcom/google/firebase/remoteconfig/internal/q;

    .line 25
    .line 26
    invoke-direct {v4, p0, v0, v1}, Lcom/google/firebase/remoteconfig/internal/q;-><init>(Lcom/google/firebase/remoteconfig/internal/r;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public declared-synchronized y()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "VisibleForTests"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/Date;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/r;->q:Lcom/google/android/gms/common/util/Clock;

    .line 5
    .line 6
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/r;->r:Lcom/google/firebase/remoteconfig/internal/s;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/google/firebase/remoteconfig/internal/s;->h()Lcom/google/firebase/remoteconfig/internal/s$b;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/google/firebase/remoteconfig/internal/s$b;->a()Ljava/util/Date;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    sub-long/2addr v1, v3

    .line 32
    const-wide/16 v3, 0x0

    .line 33
    .line 34
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    invoke-direct {p0, v0, v1}, Lcom/google/firebase/remoteconfig/internal/r;->u(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    throw v0
.end method
