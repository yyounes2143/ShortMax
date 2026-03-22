.class public final Lcom/facebook/n0;
.super Ljava/lang/Object;
.source "UserSettingsManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/n0$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lcom/facebook/n0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final d:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final e:Lcom/facebook/n0$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final f:Lcom/facebook/n0$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final g:Lcom/facebook/n0$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final h:Lcom/facebook/n0$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final i:Lcom/facebook/n0$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static j:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/facebook/n0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/n0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/facebook/n0;->a:Lcom/facebook/n0;

    .line 7
    .line 8
    const-class v0, Lcom/facebook/n0;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/facebook/n0;->b:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/facebook/n0;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/facebook/n0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    new-instance v0, Lcom/facebook/n0$a;

    .line 32
    .line 33
    const-string v2, "com.facebook.sdk.AutoInitEnabled"

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    invoke-direct {v0, v3, v2}, Lcom/facebook/n0$a;-><init>(ZLjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/facebook/n0;->e:Lcom/facebook/n0$a;

    .line 40
    .line 41
    new-instance v0, Lcom/facebook/n0$a;

    .line 42
    .line 43
    const-string v2, "com.facebook.sdk.AutoLogAppEventsEnabled"

    .line 44
    .line 45
    invoke-direct {v0, v3, v2}, Lcom/facebook/n0$a;-><init>(ZLjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    sput-object v0, Lcom/facebook/n0;->f:Lcom/facebook/n0$a;

    .line 49
    .line 50
    new-instance v0, Lcom/facebook/n0$a;

    .line 51
    .line 52
    const-string v2, "com.facebook.sdk.AdvertiserIDCollectionEnabled"

    .line 53
    .line 54
    invoke-direct {v0, v3, v2}, Lcom/facebook/n0$a;-><init>(ZLjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    sput-object v0, Lcom/facebook/n0;->g:Lcom/facebook/n0$a;

    .line 58
    .line 59
    new-instance v0, Lcom/facebook/n0$a;

    .line 60
    .line 61
    const-string v2, "auto_event_setup_enabled"

    .line 62
    .line 63
    invoke-direct {v0, v1, v2}, Lcom/facebook/n0$a;-><init>(ZLjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    sput-object v0, Lcom/facebook/n0;->h:Lcom/facebook/n0$a;

    .line 67
    .line 68
    new-instance v0, Lcom/facebook/n0$a;

    .line 69
    .line 70
    const-string v1, "com.facebook.sdk.MonitorEnabled"

    .line 71
    .line 72
    invoke-direct {v0, v3, v1}, Lcom/facebook/n0$a;-><init>(ZLjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    sput-object v0, Lcom/facebook/n0;->i:Lcom/facebook/n0$a;

    .line 76
    .line 77
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(J)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/facebook/n0;->i(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final b()Z
    .locals 4

    .line 1
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/internal/FetchedAppSettingsManager;->g()Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_5

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const-string v2, "auto_log_app_events_enabled"

    .line 23
    .line 24
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/lang/Boolean;

    .line 29
    .line 30
    const-string v3, "auto_log_app_events_default"

    .line 31
    .line 32
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/lang/Boolean;

    .line 37
    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    return v0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    invoke-direct {p0}, Lcom/facebook/n0;->c()Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    return v0

    .line 58
    :cond_3
    if-eqz v0, :cond_4

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    return v0

    .line 65
    :cond_4
    const/4 v0, 0x1

    .line 66
    return v0

    .line 67
    :cond_5
    :goto_0
    sget-object v0, Lcom/facebook/n0;->f:Lcom/facebook/n0$a;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/facebook/n0$a;->e()Z

    .line 70
    .line 71
    .line 72
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    return v0

    .line 74
    :goto_1
    invoke-static {v0, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    return v1
.end method

.method private final c()Ljava/lang/Boolean;
    .locals 2

    .line 1
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/n0;->q()Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_1
    invoke-direct {p0}, Lcom/facebook/n0;->l()Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_2
    return-object v1

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    invoke-static {v0, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-object v1
.end method

.method public static final d()Z
    .locals 3

    .line 1
    const-class v0, Lcom/facebook/n0;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/n0;->a:Lcom/facebook/n0;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/facebook/n0;->j()V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/facebook/n0;->g:Lcom/facebook/n0$a;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/facebook/n0$a;->e()Z

    .line 19
    .line 20
    .line 21
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    return v0

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    invoke-static {v1, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return v2
.end method

.method public static final e()Z
    .locals 3

    .line 1
    const-class v0, Lcom/facebook/n0;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/n0;->a:Lcom/facebook/n0;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/facebook/n0;->j()V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/facebook/n0;->e:Lcom/facebook/n0$a;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/facebook/n0$a;->e()Z

    .line 19
    .line 20
    .line 21
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    return v0

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    invoke-static {v1, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return v2
.end method

.method public static final f()Z
    .locals 3

    .line 1
    const-class v0, Lcom/facebook/n0;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/n0;->a:Lcom/facebook/n0;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/facebook/n0;->j()V

    .line 14
    .line 15
    .line 16
    invoke-direct {v1}, Lcom/facebook/n0;->b()Z

    .line 17
    .line 18
    .line 19
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    return v0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    invoke-static {v1, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return v2
.end method

.method public static final g()Z
    .locals 3

    .line 1
    const-class v0, Lcom/facebook/n0;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/n0;->a:Lcom/facebook/n0;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/facebook/n0;->j()V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/facebook/n0;->h:Lcom/facebook/n0$a;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/facebook/n0$a;->e()Z

    .line 19
    .line 20
    .line 21
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    return v0

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    invoke-static {v1, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return v2
.end method

.method private final h()V
    .locals 7

    .line 1
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/n0;->h:Lcom/facebook/n0$a;

    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/facebook/n0;->r(Lcom/facebook/n0$a;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-virtual {v0}, Lcom/facebook/n0$a;->d()Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/facebook/n0$a;->c()J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    sub-long v3, v1, v3

    .line 28
    .line 29
    const-wide/32 v5, 0x240c8400

    .line 30
    .line 31
    .line 32
    cmp-long v3, v3, v5

    .line 33
    .line 34
    if-gez v3, :cond_1

    .line 35
    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v3, 0x0

    .line 40
    invoke-virtual {v0, v3}, Lcom/facebook/n0$a;->g(Ljava/lang/Boolean;)V

    .line 41
    .line 42
    .line 43
    const-wide/16 v3, 0x0

    .line 44
    .line 45
    invoke-virtual {v0, v3, v4}, Lcom/facebook/n0$a;->f(J)V

    .line 46
    .line 47
    .line 48
    sget-object v0, Lcom/facebook/n0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    const/4 v4, 0x1

    .line 52
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    invoke-static {}, Lcom/facebook/v;->u()Ljava/util/concurrent/Executor;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    new-instance v3, Lcom/facebook/m0;

    .line 64
    .line 65
    invoke-direct {v3, v1, v2}, Lcom/facebook/m0;-><init>(J)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :goto_0
    invoke-static {v0, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method private static final i(J)V
    .locals 7

    .line 1
    const-string v0, "auto_event_setup_enabled"

    .line 2
    .line 3
    const-class v1, Lcom/facebook/n0;

    .line 4
    .line 5
    invoke-static {v1}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_0
    sget-object v2, Lcom/facebook/n0;->g:Lcom/facebook/n0$a;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/facebook/n0$a;->e()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    invoke-static {}, Lcom/facebook/v;->m()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v2, v3}, Lcom/facebook/internal/FetchedAppSettingsManager;->u(Ljava/lang/String;Z)Lcom/facebook/internal/p;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/facebook/internal/p;->d()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    invoke-static {}, Lcom/facebook/v;->l()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    sget-object v4, Lcom/facebook/internal/b;->f:Lcom/facebook/internal/b$a;

    .line 42
    .line 43
    invoke-virtual {v4, v2}, Lcom/facebook/internal/b$a;->e(Landroid/content/Context;)Lcom/facebook/internal/b;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const/4 v4, 0x0

    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/facebook/internal/b;->h()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    if-eqz v5, :cond_1

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/facebook/internal/b;->h()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    move-object v2, v4

    .line 64
    :goto_0
    if-eqz v2, :cond_2

    .line 65
    .line 66
    new-instance v5, Landroid/os/Bundle;

    .line 67
    .line 68
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v6, "advertiser_id"

    .line 72
    .line 73
    invoke-virtual {v5, v6, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string v2, "fields"

    .line 77
    .line 78
    invoke-virtual {v5, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    sget-object v2, Lcom/facebook/GraphRequest;->n:Lcom/facebook/GraphRequest$c;

    .line 82
    .line 83
    const-string v6, "app"

    .line 84
    .line 85
    invoke-virtual {v2, v4, v6, v4}, Lcom/facebook/GraphRequest$c;->x(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v2, v5}, Lcom/facebook/GraphRequest;->H(Landroid/os/Bundle;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Lcom/facebook/GraphRequest;->k()Lcom/facebook/b0;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v2}, Lcom/facebook/b0;->c()Lorg/json/JSONObject;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    if-eqz v2, :cond_2

    .line 101
    .line 102
    sget-object v4, Lcom/facebook/n0;->h:Lcom/facebook/n0$a;

    .line 103
    .line 104
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v4, v0}, Lcom/facebook/n0$a;->g(Ljava/lang/Boolean;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4, p0, p1}, Lcom/facebook/n0$a;->f(J)V

    .line 116
    .line 117
    .line 118
    sget-object p0, Lcom/facebook/n0;->a:Lcom/facebook/n0;

    .line 119
    .line 120
    invoke-direct {p0, v4}, Lcom/facebook/n0;->u(Lcom/facebook/n0$a;)V

    .line 121
    .line 122
    .line 123
    :cond_2
    sget-object p0, Lcom/facebook/n0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 124
    .line 125
    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :goto_1
    invoke-static {p0, v1}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method private final j()V
    .locals 3

    .line 1
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/v;->G()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    sget-object v0, Lcom/facebook/n0;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    invoke-static {}, Lcom/facebook/v;->l()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "com.facebook.sdk.USER_SETTINGS"

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "getApplicationContext()\n\u2026GS, Context.MODE_PRIVATE)"

    .line 37
    .line 38
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/facebook/n0;->j:Landroid/content/SharedPreferences;

    .line 42
    .line 43
    sget-object v0, Lcom/facebook/n0;->f:Lcom/facebook/n0$a;

    .line 44
    .line 45
    sget-object v1, Lcom/facebook/n0;->g:Lcom/facebook/n0$a;

    .line 46
    .line 47
    sget-object v2, Lcom/facebook/n0;->e:Lcom/facebook/n0$a;

    .line 48
    .line 49
    filled-new-array {v0, v1, v2}, [Lcom/facebook/n0$a;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-direct {p0, v0}, Lcom/facebook/n0;->k([Lcom/facebook/n0$a;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0}, Lcom/facebook/n0;->h()V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/facebook/n0;->p()V

    .line 60
    .line 61
    .line 62
    invoke-direct {p0}, Lcom/facebook/n0;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    invoke-static {v0, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method private final varargs k([Lcom/facebook/n0$a;)V
    .locals 4

    .line 1
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    array-length v0, p1

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_4

    .line 11
    .line 12
    aget-object v2, p1, v1

    .line 13
    .line 14
    sget-object v3, Lcom/facebook/n0;->h:Lcom/facebook/n0$a;

    .line 15
    .line 16
    if-ne v2, v3, :cond_1

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/facebook/n0;->h()V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_2

    .line 24
    :cond_1
    invoke-virtual {v2}, Lcom/facebook/n0$a;->d()Ljava/lang/Boolean;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-nez v3, :cond_2

    .line 29
    .line 30
    invoke-direct {p0, v2}, Lcom/facebook/n0;->r(Lcom/facebook/n0$a;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/facebook/n0$a;->d()Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    if-nez v3, :cond_3

    .line 38
    .line 39
    invoke-direct {p0, v2}, Lcom/facebook/n0;->m(Lcom/facebook/n0$a;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    invoke-direct {p0, v2}, Lcom/facebook/n0;->u(Lcom/facebook/n0$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_4
    return-void

    .line 50
    :goto_2
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private final l()Ljava/lang/Boolean;
    .locals 5

    .line 1
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/n0;->t()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    :try_start_1
    invoke-static {}, Lcom/facebook/v;->l()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/16 v3, 0x80

    .line 25
    .line 26
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v2, "ctx.packageManager.getAp\u2026ageManager.GET_META_DATA)"

    .line 31
    .line 32
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    sget-object v3, Lcom/facebook/n0;->f:Lcom/facebook/n0$a;

    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/facebook/n0$a;->b()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/facebook/n0$a;->b()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 62
    .line 63
    .line 64
    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    :try_start_2
    sget-object v2, Lcom/facebook/n0;->b:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v2, v0}, Lcom/facebook/internal/u0;->j0(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    .line 73
    .line 74
    :cond_1
    return-object v1

    .line 75
    :goto_0
    invoke-static {v0, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-object v1
.end method

.method private final m(Lcom/facebook/n0$a;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/n0;->t()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    :try_start_1
    invoke-static {}, Lcom/facebook/v;->l()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/16 v2, 0x80

    .line 24
    .line 25
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "ctx.packageManager.getAp\u2026ageManager.GET_META_DATA)"

    .line 30
    .line 31
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/facebook/n0$a;->b()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/facebook/n0$a;->b()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {p1}, Lcom/facebook/n0$a;->a()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p1, v0}, Lcom/facebook/n0$a;->g(Ljava/lang/Boolean;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    goto :goto_1

    .line 72
    :catch_0
    move-exception p1

    .line 73
    :try_start_2
    sget-object v0, Lcom/facebook/n0;->b:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v0, p1}, Lcom/facebook/internal/u0;->j0(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    .line 77
    .line 78
    :cond_1
    :goto_0
    return-void

    .line 79
    :goto_1
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public static final n()V
    .locals 6

    .line 1
    const-string v0, "You haven\'t set the Auto App Link URL scheme: fb<YOUR APP ID> in AndroidManifest"

    .line 2
    .line 3
    const-class v1, Lcom/facebook/n0;

    .line 4
    .line 5
    invoke-static {v1}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/v;->l()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    const/16 v5, 0x80

    .line 25
    .line 26
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const-string v4, "ctx.packageManager.getAp\u2026ageManager.GET_META_DATA)"

    .line 31
    .line 32
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 36
    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    const-string v4, "com.facebook.sdk.AutoAppLinkEnabled"

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    new-instance v3, Lcom/facebook/appevents/h0;

    .line 49
    .line 50
    invoke-direct {v3, v2}, Lcom/facebook/appevents/h0;-><init>(Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    new-instance v2, Landroid/os/Bundle;

    .line 54
    .line 55
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lcom/facebook/internal/u0;->V()Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-nez v4, :cond_1

    .line 63
    .line 64
    const-string v4, "SchemeWarning"

    .line 65
    .line 66
    invoke-virtual {v2, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sget-object v4, Lcom/facebook/n0;->b:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    :goto_0
    const-string v0, "fb_auto_applink"

    .line 78
    .line 79
    invoke-virtual {v3, v0, v2}, Lcom/facebook/appevents/h0;->d(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :goto_1
    invoke-static {v0, v1}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :catch_0
    :cond_2
    :goto_2
    return-void
.end method

.method private final o()V
    .locals 13

    .line 1
    const/4 v0, 0x4

    .line 2
    const-string v1, "com.facebook.sdk.USER_SETTINGS_BITMASK"

    .line 3
    .line 4
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    :try_start_0
    sget-object v2, Lcom/facebook/n0;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    invoke-static {}, Lcom/facebook/v;->G()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_2

    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    invoke-static {}, Lcom/facebook/v;->l()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    sget-object v3, Lcom/facebook/n0;->e:Lcom/facebook/n0$a;

    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/facebook/n0$a;->e()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const/4 v4, 0x0

    .line 38
    sget-object v5, Lcom/facebook/n0;->f:Lcom/facebook/n0$a;

    .line 39
    .line 40
    invoke-virtual {v5}, Lcom/facebook/n0$a;->e()Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    shl-int/lit8 v5, v5, 0x1

    .line 45
    .line 46
    or-int/2addr v3, v5

    .line 47
    sget-object v5, Lcom/facebook/n0;->g:Lcom/facebook/n0$a;

    .line 48
    .line 49
    invoke-virtual {v5}, Lcom/facebook/n0$a;->e()Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    shl-int/lit8 v5, v5, 0x2

    .line 54
    .line 55
    or-int/2addr v3, v5

    .line 56
    sget-object v5, Lcom/facebook/n0;->i:Lcom/facebook/n0$a;

    .line 57
    .line 58
    invoke-virtual {v5}, Lcom/facebook/n0$a;->e()Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    shl-int/lit8 v5, v5, 0x3

    .line 63
    .line 64
    or-int/2addr v3, v5

    .line 65
    sget-object v5, Lcom/facebook/n0;->j:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    const/4 v6, 0x0

    .line 68
    const-string v7, "userSettingPref"

    .line 69
    .line 70
    if-nez v5, :cond_3

    .line 71
    .line 72
    :try_start_1
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    move-object v5, v6

    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    goto/16 :goto_6

    .line 79
    .line 80
    :cond_3
    :goto_0
    invoke-interface {v5, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-eq v5, v3, :cond_7

    .line 85
    .line 86
    sget-object v8, Lcom/facebook/n0;->j:Landroid/content/SharedPreferences;

    .line 87
    .line 88
    if-nez v8, :cond_4

    .line 89
    .line 90
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    move-object v6, v8

    .line 95
    :goto_1
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-interface {v6, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    .line 105
    .line 106
    :try_start_2
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    const/16 v7, 0x80

    .line 115
    .line 116
    invoke-virtual {v1, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    const-string v6, "ctx.packageManager.getAp\u2026ageManager.GET_META_DATA)"

    .line 121
    .line 122
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 126
    .line 127
    if-eqz v6, :cond_6

    .line 128
    .line 129
    const-string v6, "com.facebook.sdk.AutoInitEnabled"

    .line 130
    .line 131
    const-string v7, "com.facebook.sdk.AutoLogAppEventsEnabled"

    .line 132
    .line 133
    const-string v8, "com.facebook.sdk.AdvertiserIDCollectionEnabled"

    .line 134
    .line 135
    const-string v9, "com.facebook.sdk.MonitorEnabled"

    .line 136
    .line 137
    filled-new-array {v6, v7, v8, v9}, [Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    new-array v7, v0, [Z

    .line 142
    .line 143
    fill-array-data v7, :array_0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    .line 145
    .line 146
    move v8, v4

    .line 147
    move v9, v8

    .line 148
    :goto_2
    if-ge v4, v0, :cond_5

    .line 149
    .line 150
    :try_start_3
    iget-object v10, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 151
    .line 152
    aget-object v11, v6, v4

    .line 153
    .line 154
    invoke-virtual {v10, v11}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 155
    .line 156
    .line 157
    move-result v10

    .line 158
    shl-int/2addr v10, v4

    .line 159
    or-int/2addr v9, v10

    .line 160
    iget-object v10, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 161
    .line 162
    aget-object v11, v6, v4

    .line 163
    .line 164
    aget-boolean v12, v7, v4

    .line 165
    .line 166
    invoke-virtual {v10, v11, v12}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 167
    .line 168
    .line 169
    move-result v10
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 170
    shl-int/2addr v10, v4

    .line 171
    or-int/2addr v8, v10

    .line 172
    add-int/lit8 v4, v4, 0x1

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :catch_0
    move v4, v8

    .line 176
    goto :goto_4

    .line 177
    :cond_5
    :goto_3
    move v4, v9

    .line 178
    goto :goto_5

    .line 179
    :catch_1
    move v9, v4

    .line 180
    goto :goto_4

    .line 181
    :cond_6
    move v8, v4

    .line 182
    goto :goto_5

    .line 183
    :goto_4
    move v8, v4

    .line 184
    goto :goto_3

    .line 185
    :goto_5
    :try_start_4
    new-instance v0, Lcom/facebook/appevents/h0;

    .line 186
    .line 187
    invoke-direct {v0, v2}, Lcom/facebook/appevents/h0;-><init>(Landroid/content/Context;)V

    .line 188
    .line 189
    .line 190
    new-instance v1, Landroid/os/Bundle;

    .line 191
    .line 192
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 193
    .line 194
    .line 195
    const-string v2, "usage"

    .line 196
    .line 197
    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 198
    .line 199
    .line 200
    const-string v2, "initial"

    .line 201
    .line 202
    invoke-virtual {v1, v2, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 203
    .line 204
    .line 205
    const-string v2, "previous"

    .line 206
    .line 207
    invoke-virtual {v1, v2, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 208
    .line 209
    .line 210
    const-string v2, "current"

    .line 211
    .line 212
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v1}, Lcom/facebook/appevents/h0;->b(Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 216
    .line 217
    .line 218
    :cond_7
    return-void

    .line 219
    :goto_6
    invoke-static {v0, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    return-void

    .line 223
    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method private final p()V
    .locals 3

    .line 1
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/v;->l()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/16 v2, 0x80

    .line 21
    .line 22
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "ctx.packageManager.getAp\u2026ageManager.GET_META_DATA)"

    .line 27
    .line 28
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    const-string v1, "com.facebook.sdk.AdvertiserIDCollectionEnabled"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    sget-object v0, Lcom/facebook/n0;->b:Ljava/lang/String;

    .line 44
    .line 45
    const-string v1, "You haven\'t set a value for AdvertiserIDCollectionEnabled. Set the flag to TRUE if you want to collect Advertiser ID for better advertising and analytics results. To request user consent before collecting data, set the flag value to FALSE, then change to TRUE once user consent is received. Learn more: https://developers.facebook.com/docs/app-events/getting-started-app-events-android#disable-auto-events."

    .line 46
    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    :goto_0
    invoke-static {}, Lcom/facebook/n0;->d()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    sget-object v0, Lcom/facebook/n0;->b:Ljava/lang/String;

    .line 60
    .line 61
    const-string v1, "The value for AdvertiserIDCollectionEnabled is currently set to FALSE so you\'re sending app events without collecting Advertiser ID. This can affect the quality of your advertising and analytics results."

    .line 62
    .line 63
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :goto_1
    invoke-static {v0, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :catch_0
    :cond_2
    :goto_2
    return-void
.end method

.method private static final q()Ljava/lang/Boolean;
    .locals 5

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-class v1, Lcom/facebook/n0;

    .line 4
    .line 5
    invoke-static {v1}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    return-object v3

    .line 13
    :cond_0
    :try_start_0
    sget-object v2, Lcom/facebook/n0;->a:Lcom/facebook/n0;

    .line 14
    .line 15
    invoke-direct {v2}, Lcom/facebook/n0;->t()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    :try_start_1
    sget-object v2, Lcom/facebook/n0;->j:Landroid/content/SharedPreferences;

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    const-string v2, "userSettingPref"

    .line 23
    .line 24
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    move-object v2, v3

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    goto :goto_3

    .line 31
    :catch_0
    move-exception v0

    .line 32
    goto :goto_2

    .line 33
    :cond_1
    :goto_0
    sget-object v4, Lcom/facebook/n0;->f:Lcom/facebook/n0$a;

    .line 34
    .line 35
    invoke-virtual {v4}, Lcom/facebook/n0$a;->b()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move-object v0, v2

    .line 47
    :goto_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-lez v2, :cond_3

    .line 52
    .line 53
    new-instance v2, Lorg/json/JSONObject;

    .line 54
    .line 55
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v0, "value"

    .line 59
    .line 60
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 65
    .line 66
    .line 67
    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    return-object v0

    .line 69
    :goto_2
    :try_start_2
    sget-object v2, Lcom/facebook/n0;->b:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v2, v0}, Lcom/facebook/internal/u0;->j0(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    .line 73
    .line 74
    :cond_3
    return-object v3

    .line 75
    :goto_3
    invoke-static {v0, v1}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-object v3
.end method

.method private final r(Lcom/facebook/n0$a;)V
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/n0;->t()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    :try_start_1
    sget-object v1, Lcom/facebook/n0;->j:Landroid/content/SharedPreferences;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    const-string v1, "userSettingPref"

    .line 18
    .line 19
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_4

    .line 26
    :catch_0
    move-exception p1

    .line 27
    goto :goto_2

    .line 28
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/n0$a;->b()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move-object v0, v1

    .line 40
    :goto_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-lez v1, :cond_3

    .line 45
    .line 46
    new-instance v1, Lorg/json/JSONObject;

    .line 47
    .line 48
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v0, "value"

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p1, v0}, Lcom/facebook/n0$a;->g(Ljava/lang/Boolean;)V

    .line 62
    .line 63
    .line 64
    const-string v0, "last_timestamp"

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 67
    .line 68
    .line 69
    move-result-wide v0

    .line 70
    invoke-virtual {p1, v0, v1}, Lcom/facebook/n0$a;->f(J)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .line 72
    .line 73
    goto :goto_3

    .line 74
    :goto_2
    :try_start_2
    sget-object v0, Lcom/facebook/n0;->b:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {v0, p1}, Lcom/facebook/internal/u0;->j0(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    .line 78
    .line 79
    :cond_3
    :goto_3
    return-void

    .line 80
    :goto_4
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public static final s(Z)V
    .locals 4

    .line 1
    const-class v0, Lcom/facebook/n0;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/n0;->e:Lcom/facebook/n0$a;

    .line 11
    .line 12
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v1, p0}, Lcom/facebook/n0$a;->g(Ljava/lang/Boolean;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    invoke-virtual {v1, v2, v3}, Lcom/facebook/n0$a;->f(J)V

    .line 24
    .line 25
    .line 26
    sget-object p0, Lcom/facebook/n0;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    sget-object p0, Lcom/facebook/n0;->a:Lcom/facebook/n0;

    .line 35
    .line 36
    invoke-direct {p0, v1}, Lcom/facebook/n0;->u(Lcom/facebook/n0$a;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    sget-object p0, Lcom/facebook/n0;->a:Lcom/facebook/n0;

    .line 43
    .line 44
    invoke-direct {p0}, Lcom/facebook/n0;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void

    .line 48
    :goto_1
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private final t()V
    .locals 2

    .line 1
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/n0;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    new-instance v0, Lcom/facebook/FacebookSdkNotInitializedException;

    .line 18
    .line 19
    const-string v1, "The UserSettingManager has not been initialized successfully"

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/facebook/FacebookSdkNotInitializedException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    invoke-static {v0, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private final u(Lcom/facebook/n0$a;)V
    .locals 4

    .line 1
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/n0;->t()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "value"

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/facebook/n0$a;->d()Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    const-string v1, "last_timestamp"

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/facebook/n0$a;->c()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    sget-object v1, Lcom/facebook/n0;->j:Landroid/content/SharedPreferences;

    .line 35
    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    const-string v1, "userSettingPref"

    .line 39
    .line 40
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_3

    .line 47
    :catch_0
    move-exception p1

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p1}, Lcom/facebook/n0$a;->b()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0}, Lcom/facebook/n0;->o()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :goto_1
    :try_start_2
    sget-object v0, Lcom/facebook/n0;->b:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v0, p1}, Lcom/facebook/internal/u0;->j0(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    .line 76
    .line 77
    :goto_2
    return-void

    .line 78
    :goto_3
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method
