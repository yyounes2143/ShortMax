.class public Lcom/bytedance/bdtracker/e0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/bdtracker/e0$e;,
        Lcom/bytedance/bdtracker/e0$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Handler$Callback;",
        "Ljava/util/Comparator<",
        "Lcom/bytedance/bdtracker/u3;",
        ">;"
    }
.end annotation


# instance fields
.field public final A:Lcom/bytedance/bdtracker/k3;

.field public final B:Lcom/bytedance/bdtracker/j;

.field public final C:Lcom/bytedance/bdtracker/j1;

.field public D:J

.field public final E:Lcom/bytedance/bdtracker/f0;

.field public final F:Lcom/bytedance/bdtracker/e3;

.field public a:J

.field public b:Lcom/bytedance/bdtracker/b0;

.field public c:Z

.field public final d:Lcom/bytedance/bdtracker/d;

.field public final e:Lcom/bytedance/bdtracker/p1;

.field public f:Lcom/bytedance/bdtracker/d0;

.field public final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/bdtracker/u3;",
            ">;"
        }
    .end annotation
.end field

.field public volatile h:Lcom/bytedance/bdtracker/a4;

.field public final i:Lcom/bytedance/bdtracker/r1;

.field public volatile j:Landroid/os/Handler;

.field public k:Lcom/bytedance/bdtracker/h0;

.field public l:Lcom/bytedance/bdtracker/i0;

.field public volatile m:Lcom/bytedance/bdtracker/a0;

.field public final n:Lcom/bytedance/bdtracker/j0;

.field public o:Lcom/bytedance/applog/UriConfig;

.field public final p:Landroid/os/Handler;

.field public q:Lcom/bytedance/bdtracker/h2;

.field public volatile r:Z

.field public s:Lcom/bytedance/bdtracker/c0;

.field public volatile t:Lcom/bytedance/bdtracker/g0;

.field public final u:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/bytedance/bdtracker/c0;",
            ">;"
        }
    .end annotation
.end field

.field public volatile v:Z

.field public volatile w:J

.field public final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/bdtracker/e0$d;",
            ">;"
        }
    .end annotation
.end field

.field public volatile y:Lcom/bytedance/bdtracker/a1;

.field public volatile z:Lcom/bytedance/applog/InitConfig$IpcDataChecker;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/d;Lcom/bytedance/bdtracker/p1;Lcom/bytedance/bdtracker/r1;Lcom/bytedance/bdtracker/j1;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/bytedance/bdtracker/e0;->a:J

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/bdtracker/e0;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/bdtracker/e0;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/bdtracker/e0;->x:Ljava/util/List;

    iput-object p1, p0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    iput-object p2, p0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    iput-object p3, p0, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    iput-object p4, p0, Lcom/bytedance/bdtracker/e0;->C:Lcom/bytedance/bdtracker/j1;

    new-instance p4, Lcom/bytedance/bdtracker/j0;

    invoke-direct {p4, p0}, Lcom/bytedance/bdtracker/j0;-><init>(Lcom/bytedance/bdtracker/e0;)V

    iput-object p4, p0, Lcom/bytedance/bdtracker/e0;->n:Lcom/bytedance/bdtracker/j0;

    new-instance p4, Lcom/bytedance/bdtracker/f0;

    invoke-direct {p4, p0}, Lcom/bytedance/bdtracker/f0;-><init>(Lcom/bytedance/bdtracker/e0;)V

    iput-object p4, p0, Lcom/bytedance/bdtracker/e0;->E:Lcom/bytedance/bdtracker/f0;

    new-instance p4, Landroid/os/HandlerThread;

    const-string v0, "bd_tracker_w:"

    invoke-static {v0}, Lcom/bytedance/bdtracker/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1
    iget-object v1, p1, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p4, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {v0, p4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/bytedance/bdtracker/e0;->p:Landroid/os/Handler;

    new-instance p4, Lcom/bytedance/bdtracker/j;

    invoke-direct {p4, p0}, Lcom/bytedance/bdtracker/j;-><init>(Lcom/bytedance/bdtracker/e0;)V

    iput-object p4, p0, Lcom/bytedance/bdtracker/e0;->B:Lcom/bytedance/bdtracker/j;

    .line 3
    iget-object p2, p2, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {p2}, Lcom/bytedance/applog/InitConfig;->isDeferredALinkEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p1, p4}, Lcom/bytedance/bdtracker/d;->addDataObserver(Lcom/bytedance/applog/IDataObserver;)V

    .line 5
    :cond_0
    iget-object p1, p3, Lcom/bytedance/bdtracker/r1;->h:Lcom/bytedance/bdtracker/r4;

    check-cast p1, Lcom/bytedance/bdtracker/n4;

    .line 6
    iget-object p1, p1, Lcom/bytedance/bdtracker/n4;->b:Lcom/bytedance/bdtracker/v3;

    invoke-virtual {p1, v0}, Lcom/bytedance/bdtracker/v3;->a(Landroid/os/Handler;)V

    .line 7
    iget-object p1, p3, Lcom/bytedance/bdtracker/r1;->c:Lcom/bytedance/bdtracker/p1;

    .line 8
    iget-object p1, p1, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 9
    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->isMigrateEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p3, Lcom/bytedance/bdtracker/r1;->b:Landroid/content/Context;

    .line 11
    :try_start_0
    invoke-static {p1}, Lcom/bytedance/bdtracker/g2;->a(Landroid/content/Context;)Lcom/bytedance/bdtracker/g2;

    move-result-object p2

    .line 12
    iget-boolean p2, p2, Lcom/bytedance/bdtracker/g2;->c:Z

    if-eqz p2, :cond_3

    .line 13
    iget-object p2, p3, Lcom/bytedance/bdtracker/r1;->c:Lcom/bytedance/bdtracker/p1;

    if-nez p2, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    iget-object p2, p2, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 15
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string p4, "google_aid"

    invoke-interface {p2, p4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 16
    :goto_0
    iget-object p2, p3, Lcom/bytedance/bdtracker/r1;->g:Landroid/content/SharedPreferences;

    iget-object p4, p3, Lcom/bytedance/bdtracker/r1;->h:Lcom/bytedance/bdtracker/r4;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast p4, Lcom/bytedance/bdtracker/n4;

    :try_start_1
    invoke-virtual {p4}, Lcom/bytedance/bdtracker/n4;->b()Ljava/lang/String;

    move-result-object p4

    if-nez p2, :cond_2

    goto :goto_1

    .line 17
    :cond_2
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "old_did"

    invoke-interface {p2, v0, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p4, "is_migrate"

    const/4 v0, 0x1

    invoke-interface {p2, p4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 18
    :goto_1
    iget-object p2, p3, Lcom/bytedance/bdtracker/r1;->h:Lcom/bytedance/bdtracker/r4;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p4, "openudid"

    check-cast p2, Lcom/bytedance/bdtracker/n4;

    :try_start_2
    invoke-virtual {p2, p4}, Lcom/bytedance/bdtracker/n4;->a(Ljava/lang/String;)V

    iget-object p2, p3, Lcom/bytedance/bdtracker/r1;->h:Lcom/bytedance/bdtracker/r4;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string p4, "clientudid"

    check-cast p2, Lcom/bytedance/bdtracker/n4;

    :try_start_3
    invoke-virtual {p2, p4}, Lcom/bytedance/bdtracker/n4;->a(Ljava/lang/String;)V

    iget-object p2, p3, Lcom/bytedance/bdtracker/r1;->h:Lcom/bytedance/bdtracker/r4;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string p4, "serial_number"

    check-cast p2, Lcom/bytedance/bdtracker/n4;

    :try_start_4
    invoke-virtual {p2, p4}, Lcom/bytedance/bdtracker/n4;->a(Ljava/lang/String;)V

    iget-object p2, p3, Lcom/bytedance/bdtracker/r1;->h:Lcom/bytedance/bdtracker/r4;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string p4, "sim_serial_number"

    check-cast p2, Lcom/bytedance/bdtracker/n4;

    :try_start_5
    invoke-virtual {p2, p4}, Lcom/bytedance/bdtracker/n4;->a(Ljava/lang/String;)V

    iget-object p2, p3, Lcom/bytedance/bdtracker/r1;->h:Lcom/bytedance/bdtracker/r4;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string p4, "udid"

    check-cast p2, Lcom/bytedance/bdtracker/n4;

    :try_start_6
    invoke-virtual {p2, p4}, Lcom/bytedance/bdtracker/n4;->a(Ljava/lang/String;)V

    iget-object p2, p3, Lcom/bytedance/bdtracker/r1;->h:Lcom/bytedance/bdtracker/r4;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string p4, "udid_list"

    check-cast p2, Lcom/bytedance/bdtracker/n4;

    :try_start_7
    invoke-virtual {p2, p4}, Lcom/bytedance/bdtracker/n4;->a(Ljava/lang/String;)V

    iget-object p2, p3, Lcom/bytedance/bdtracker/r1;->h:Lcom/bytedance/bdtracker/r4;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string p4, "device_id"

    check-cast p2, Lcom/bytedance/bdtracker/n4;

    :try_start_8
    invoke-virtual {p2, p4}, Lcom/bytedance/bdtracker/n4;->a(Ljava/lang/String;)V

    const-string p2, "clearMigrationInfo"

    invoke-virtual {p3, p2}, Lcom/bytedance/bdtracker/r1;->b(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_5

    :catch_0
    move-exception p2

    goto :goto_3

    :cond_3
    :goto_2
    :try_start_9
    invoke-static {p1}, Lcom/bytedance/bdtracker/g2;->a(Landroid/content/Context;)Lcom/bytedance/bdtracker/g2;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_4

    :goto_3
    :try_start_a
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object p3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const-string p4, "detect migrate is error, "

    :try_start_b
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p3, p4, p2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_2

    :goto_4
    :try_start_c
    invoke-virtual {p1}, Lcom/bytedance/bdtracker/g2;->a()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_6

    :goto_5
    :try_start_d
    invoke-static {p1}, Lcom/bytedance/bdtracker/g2;->a(Landroid/content/Context;)Lcom/bytedance/bdtracker/g2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/g2;->a()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :catchall_1
    throw p2

    .line 19
    :catchall_2
    :cond_4
    :goto_6
    new-instance p1, Lcom/bytedance/bdtracker/k3;

    invoke-direct {p1, p0}, Lcom/bytedance/bdtracker/k3;-><init>(Lcom/bytedance/bdtracker/e0;)V

    iput-object p1, p0, Lcom/bytedance/bdtracker/e0;->A:Lcom/bytedance/bdtracker/k3;

    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 20
    iget-object p1, p1, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->isClearDidAndIid()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 21
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    iget-object p2, p0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 22
    iget-object p2, p2, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {p2}, Lcom/bytedance/applog/InitConfig;->getClearKey()Ljava/lang/String;

    move-result-object p2

    .line 23
    invoke-virtual {p1, p2}, Lcom/bytedance/bdtracker/r1;->b(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 24
    iget-object p1, p1, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 25
    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->getIpcDataChecker()Lcom/bytedance/applog/InitConfig$IpcDataChecker;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/p1;->h()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 26
    iget-object p1, p1, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 27
    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->getIpcDataChecker()Lcom/bytedance/applog/InitConfig$IpcDataChecker;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/bdtracker/e0;->z:Lcom/bytedance/applog/InitConfig$IpcDataChecker;

    :cond_6
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/p1;->i()Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Lcom/bytedance/bdtracker/m2;

    invoke-direct {p1, p0}, Lcom/bytedance/bdtracker/m2;-><init>(Lcom/bytedance/bdtracker/e0;)V

    iput-object p1, p0, Lcom/bytedance/bdtracker/e0;->q:Lcom/bytedance/bdtracker/h2;

    :cond_7
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->p:Landroid/os/Handler;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 28
    iget-object p1, p1, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->autoStart()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 29
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/e0;->i()V

    :cond_8
    new-instance p1, Lcom/bytedance/bdtracker/e3;

    invoke-direct {p1, p0}, Lcom/bytedance/bdtracker/e3;-><init>(Lcom/bytedance/bdtracker/e0;)V

    iput-object p1, p0, Lcom/bytedance/bdtracker/e0;->F:Lcom/bytedance/bdtracker/e3;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/bdtracker/e0$b;

    invoke-direct {v0, p0}, Lcom/bytedance/bdtracker/e0$b;-><init>(Lcom/bytedance/bdtracker/e0;)V

    invoke-static {v0}, Lcom/bytedance/bdtracker/h5;->a(Lcom/bytedance/bdtracker/g;)V

    return-void
.end method

.method public final a(Lcom/bytedance/bdtracker/c0;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->j:Landroid/os/Handler;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 76
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 77
    iget-boolean v0, v0, Lcom/bytedance/bdtracker/d;->x:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p1, Lcom/bytedance/bdtracker/c0;->b:Z

    .line 79
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/bdtracker/e0;->j:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/c0;->a()J

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->j:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->j:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/bytedance/bdtracker/u3;)V
    .locals 4

    iget-wide v0, p1, Lcom/bytedance/bdtracker/u3;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 63
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v1, 0x0

    .line 64
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Data ts is 0"

    invoke-interface {v0, v2, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->g:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/bdtracker/e0;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/bdtracker/e0;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of p1, p1, Lcom/bytedance/bdtracker/e4;

    rem-int/lit8 v0, v1, 0xa

    if-eqz v0, :cond_1

    if-eqz p1, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->p:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    if-nez p1, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->p:Landroid/os/Handler;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->p:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/Long;)V
    .locals 4

    .line 2
    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_0
    iput-wide v0, p0, Lcom/bytedance/bdtracker/e0;->a:J

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    invoke-virtual {v1}, Lcom/bytedance/bdtracker/r1;->e()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/bdtracker/l0$b;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/bdtracker/e0;->k:Lcom/bytedance/bdtracker/h0;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/bytedance/bdtracker/h0;->a(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/bytedance/bdtracker/l0$b;->d(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 65
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "is_first_time_launch"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 66
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/bytedance/bdtracker/e0;->a(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 67
    :goto_1
    iget-object v1, p0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 68
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 69
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Register new uuid:{} failed"

    invoke-interface {v1, v2, v0, p1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/r1;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    invoke-virtual {v1, p1, p2}, Lcom/bytedance/bdtracker/r1;->b(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p2, p0, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    const-string v1, ""

    invoke-virtual {p2, v1}, Lcom/bytedance/bdtracker/r1;->g(Ljava/lang/String;)Z

    iget-object p2, p0, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    const-string v1, "$tr_web_ssid"

    invoke-virtual {p2, v1}, Lcom/bytedance/bdtracker/r1;->d(Ljava/lang/String;)V

    .line 72
    iget-object p2, p0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 73
    iget-object p2, p2, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 74
    invoke-virtual {p2}, Lcom/bytedance/applog/InitConfig;->isClearABCacheOnUserChange()Z

    move-result p2

    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 75
    iget-object p2, p0, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/bytedance/bdtracker/r1;->e(Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/bytedance/bdtracker/e0;->v:Z

    iget-object p2, p0, Lcom/bytedance/bdtracker/e0;->j:Landroid/os/Handler;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/bytedance/bdtracker/e0;->j:Landroid/os/Handler;

    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->j:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/bytedance/bdtracker/e0;->x:Ljava/util/List;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->x:Ljava/util/List;

    new-instance v1, Lcom/bytedance/bdtracker/e0$e;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/bdtracker/e0$e;-><init>(Lcom/bytedance/bdtracker/e0;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p2

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/bdtracker/u3;",
            ">;)V"
        }
    .end annotation

    .line 70
    sget-object v0, Lcom/bytedance/bdtracker/x;->a:Ljava/util/concurrent/ExecutorService;

    .line 71
    new-instance v1, Lcom/bytedance/bdtracker/e0$c;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/bdtracker/e0$c;-><init>(Lcom/bytedance/bdtracker/e0;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a([Ljava/lang/String;Z)V
    .locals 10

    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 15
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isTrackEventEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 17
    :goto_0
    iget-object v3, p0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 18
    iget-boolean v3, v3, Lcom/bytedance/bdtracker/d;->x:Z

    if-nez v3, :cond_1d

    if-eqz v0, :cond_1

    goto/16 :goto_f

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->g:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v3, p0, Lcom/bytedance/bdtracker/e0;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/bytedance/bdtracker/e0;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v4, p1

    add-int/2addr v0, v4

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    array-length v0, p1

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_2

    aget-object v5, p1, v4

    invoke-static {v5}, Lcom/bytedance/bdtracker/u3;->a(Ljava/lang/String;)Lcom/bytedance/bdtracker/u3;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 20
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    .line 21
    :cond_3
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 22
    iget-object p1, p1, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 23
    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->isEventFilterEnable()Z

    move-result p1

    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->y:Lcom/bytedance/bdtracker/a1;

    .line 24
    iget-object v4, p0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 25
    iget-object v4, v4, Lcom/bytedance/bdtracker/d;->w:Lcom/bytedance/bdtracker/a1;

    if-eqz p1, :cond_4

    if-nez v0, :cond_5

    :cond_4
    if-nez v4, :cond_5

    goto :goto_3

    .line 26
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/bdtracker/u3;

    instance-of v6, v5, Lcom/bytedance/bdtracker/b4;

    if-eqz v6, :cond_6

    check-cast v5, Lcom/bytedance/bdtracker/b4;

    .line 27
    iget-object v6, v5, Lcom/bytedance/bdtracker/b4;->u:Ljava/lang/String;

    .line 28
    invoke-virtual {v5}, Lcom/bytedance/bdtracker/b4;->e()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_7

    invoke-virtual {v4, v6, v5}, Lcom/bytedance/bdtracker/a1;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    if-eqz v0, :cond_6

    invoke-virtual {v0, v6, v5}, Lcom/bytedance/bdtracker/a1;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 29
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    invoke-virtual {p1, v3, p0}, Lcom/bytedance/bdtracker/p1;->a(Ljava/util/List;Lcom/bytedance/bdtracker/e0;)Z

    move-result p1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1b

    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/p1;->h()Z

    move-result v0

    if-eqz v0, :cond_18

    if-nez p1, :cond_b

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0x64

    if-le p1, v0, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/bdtracker/u3;

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/e0;->a(Lcom/bytedance/bdtracker/u3;)V

    goto :goto_4

    .line 30
    :cond_b
    :goto_5
    invoke-static {v3, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bytedance/bdtracker/u3;

    iget-object v7, p0, Lcom/bytedance/bdtracker/e0;->n:Lcom/bytedance/bdtracker/j0;

    .line 31
    iget-object v8, p0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 32
    invoke-virtual {v7, v8, v6, p1}, Lcom/bytedance/bdtracker/j0;->a(Lcom/bytedance/bdtracker/d;Lcom/bytedance/bdtracker/u3;Ljava/util/List;)Z

    move-result v7

    or-int/2addr v3, v7

    instance-of v7, v6, Lcom/bytedance/bdtracker/e4;

    if-eqz v7, :cond_c

    invoke-static {v6}, Lcom/bytedance/bdtracker/j0;->a(Lcom/bytedance/bdtracker/u3;)Z

    move-result v5

    move v4, v1

    :cond_c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    if-ne v7, v8, :cond_d

    iget-object v7, p0, Lcom/bytedance/bdtracker/e0;->j:Landroid/os/Handler;

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/bytedance/bdtracker/e0;->j:Landroid/os/Handler;

    const/16 v8, 0x10

    invoke-virtual {v7, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_7

    :cond_d
    invoke-virtual {p0, v6}, Lcom/bytedance/bdtracker/e0;->b(Lcom/bytedance/bdtracker/u3;)V

    :cond_e
    :goto_7
    const-string v7, "event_process"

    invoke-static {v7, v6}, Lcom/bytedance/applog/log/LogUtils;->sendObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 33
    :cond_f
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 34
    iget-boolean v6, v0, Lcom/bytedance/bdtracker/r1;->a:Z

    if-eqz v6, :cond_12

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/r1;->p()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/bytedance/bdtracker/e0;->D:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xea60

    cmp-long v0, v6, v8

    if-ltz v0, :cond_12

    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/p1;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_12

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/16 v7, 0xc8

    if-gt v6, v7, :cond_10

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/e0;->a(Ljava/util/List;)V

    goto :goto_9

    :cond_10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    div-int/2addr v6, v7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    rem-int/2addr v8, v7

    if-nez v8, :cond_11

    move v1, v2

    :cond_11
    add-int/2addr v6, v1

    move v1, v2

    :goto_8
    if-ge v1, v6, :cond_12

    mul-int/lit16 v7, v1, 0xc8

    add-int/lit16 v8, v7, 0xc8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-interface {v0, v7, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/bytedance/bdtracker/e0;->a(Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 36
    :cond_12
    :goto_9
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/e0;->c()Lcom/bytedance/bdtracker/a4;

    move-result-object v0

    .line 37
    iget-object v0, v0, Lcom/bytedance/bdtracker/a4;->c:Lcom/bytedance/bdtracker/z3;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/z3;->b(Ljava/util/List;)V

    if-eqz v4, :cond_14

    .line 38
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->p:Landroid/os/Handler;

    if-eqz p1, :cond_14

    const/4 v0, 0x7

    if-eqz v5, :cond_13

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_a

    :cond_13
    iget-object v1, p0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    invoke-virtual {v1}, Lcom/bytedance/bdtracker/p1;->d()J

    move-result-wide v4

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_14
    :goto_a
    if-nez v3, :cond_16

    .line 39
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 40
    iget-object p1, p1, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    const-string v0, "batch_event_size"

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 41
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/p1;->a(I)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_b

    :cond_15
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->h:Lcom/bytedance/bdtracker/a4;

    .line 42
    iget-object v1, p0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 43
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 44
    iget-object v3, v0, Lcom/bytedance/bdtracker/a4;->a:Lcom/bytedance/bdtracker/y3;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v4, "eventv3"

    const-string v5, "_app_id= ? "

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/bytedance/bdtracker/a4;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lt v0, p1, :cond_17

    .line 45
    :cond_16
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->l:Lcom/bytedance/bdtracker/i0;

    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/e0;->a(Lcom/bytedance/bdtracker/c0;)V

    .line 46
    :cond_17
    :goto_b
    iget-boolean p1, p0, Lcom/bytedance/bdtracker/e0;->c:Z

    if-nez p1, :cond_1b

    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->n:Lcom/bytedance/bdtracker/j0;

    .line 47
    iget-boolean p1, p1, Lcom/bytedance/bdtracker/j0;->i:Z

    if-eqz p1, :cond_1b

    .line 48
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->j:Landroid/os/Handler;

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 49
    iget-object p1, p1, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 50
    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->isAutoActive()Z

    move-result p1

    if-eqz p1, :cond_1b

    invoke-virtual {p0, v2}, Lcom/bytedance/bdtracker/e0;->a(Z)Z

    goto :goto_e

    :cond_18
    new-instance p1, Landroid/content/Intent;

    .line 51
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 52
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    .line 53
    const-class v4, Lcom/bytedance/applog/collector/Collector;

    invoke-direct {p1, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    move v5, v2

    :goto_c
    if-ge v2, v0, :cond_19

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bytedance/bdtracker/u3;

    invoke-virtual {v6}, Lcom/bytedance/bdtracker/u3;->g()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_19
    const v0, 0x4b000

    if-lt v5, v0, :cond_1a

    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->z:Lcom/bytedance/applog/InitConfig$IpcDataChecker;

    if-eqz v0, :cond_1a

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->z:Lcom/bytedance/applog/InitConfig$IpcDataChecker;

    invoke-interface {v0, v4}, Lcom/bytedance/applog/InitConfig$IpcDataChecker;->checkIpcData([Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_d

    :catchall_0
    move-exception v0

    .line 54
    iget-object v2, p0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 55
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 56
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "check ipc data"

    invoke-interface {v2, v3, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1a
    :goto_d
    if-eqz v1, :cond_1b

    const-string v0, "K_DATA"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 58
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    .line 59
    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1b
    :goto_e
    if-eqz p2, :cond_1c

    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/p1;->h()Z

    move-result p1

    if-eqz p1, :cond_1c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/bytedance/bdtracker/e0;->w:J

    sub-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    iput-wide p1, p0, Lcom/bytedance/bdtracker/e0;->w:J

    .line 60
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->l:Lcom/bytedance/bdtracker/i0;

    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/e0;->a(Lcom/bytedance/bdtracker/c0;)V

    :cond_1c
    return-void

    :catchall_1
    move-exception p1

    .line 61
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_1d
    :goto_f
    return-void
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "ssid"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/bdtracker/l0$b;->d(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    return v4

    .line 4
    :cond_1
    iget-object v3, p0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 5
    iget-object v3, v3, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 6
    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "Register to get ssid by temp header..."

    invoke-interface {v3, v6, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v3, p1}, Lcom/bytedance/bdtracker/l0$b;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/bytedance/bdtracker/e0;->k:Lcom/bytedance/bdtracker/h0;

    invoke-virtual {v5, v3}, Lcom/bytedance/bdtracker/h0;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/bdtracker/l0$b;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_0
    const/4 v2, 0x0

    .line 8
    :cond_3
    invoke-static {v2}, Lcom/bytedance/bdtracker/l0$b;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 9
    iget-object v3, p0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 10
    iget-object v3, v3, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "Register to get ssid by header success."

    .line 11
    :try_start_1
    new-array v6, v0, [Ljava/lang/Object;

    invoke-interface {v3, v5, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v4

    :catchall_0
    move-exception p1

    .line 12
    iget-object v1, p0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 13
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 14
    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "JSON handle failed"

    invoke-interface {v1, v3, p1, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_4
    return v0
.end method

.method public a(Z)Z
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/bytedance/bdtracker/e0;->c:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->j:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/bdtracker/e0;->c:Z

    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->j:Landroid/os/Handler;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->j:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    iget-boolean p1, p0, Lcom/bytedance/bdtracker/e0;->c:Z

    return p1
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 3
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    return-object v0
.end method

.method public b(Lcom/bytedance/bdtracker/u3;)V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->t:Lcom/bytedance/bdtracker/g0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/bytedance/bdtracker/b4;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/bytedance/bdtracker/e4;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/e0;->g()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    instance-of v0, p1, Lcom/bytedance/bdtracker/x3;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/bytedance/bdtracker/f4;

    if-eqz v0, :cond_6

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/bdtracker/u3;->h()Lorg/json/JSONObject;

    move-result-object v0

    instance-of v1, p1, Lcom/bytedance/bdtracker/e4;

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Lcom/bytedance/bdtracker/e4;

    invoke-virtual {v1}, Lcom/bytedance/bdtracker/e4;->k()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    const-string v1, "params"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4

    :try_start_0
    const-string v3, "duration"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    instance-of v1, p1, Lcom/bytedance/bdtracker/x3;

    if-eqz v1, :cond_5

    const-string v1, "event"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "log_type"

    :try_start_1
    check-cast p1, Lcom/bytedance/bdtracker/x3;

    .line 4
    iget-object p1, p1, Lcom/bytedance/bdtracker/x3;->s:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :catchall_1
    :cond_5
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 7
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->k:Lcom/bytedance/bdtracker/p3;

    .line 8
    iget-object v1, p0, Lcom/bytedance/bdtracker/e0;->t:Lcom/bytedance/bdtracker/g0;

    .line 9
    iget-object v1, v1, Lcom/bytedance/bdtracker/g0;->g:Ljava/lang/String;

    .line 10
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/bdtracker/p3;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    :cond_6
    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->A:Lcom/bytedance/bdtracker/k3;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/k3;->a(Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()Lcom/bytedance/bdtracker/a4;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->h:Lcom/bytedance/bdtracker/a4;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->h:Lcom/bytedance/bdtracker/a4;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/bdtracker/a4;

    .line 2
    iget-object v1, p0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 3
    iget-object v1, v1, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 4
    invoke-virtual {v1}, Lcom/bytedance/applog/InitConfig;->getDbName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bytedance/bdtracker/a4;-><init>(Lcom/bytedance/bdtracker/e0;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/bytedance/bdtracker/e0;->h:Lcom/bytedance/bdtracker/a4;

    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->h:Lcom/bytedance/bdtracker/a4;

    return-object v0
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->A:Lcom/bytedance/bdtracker/k3;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/k3;->b(Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lcom/bytedance/bdtracker/u3;

    .line 2
    .line 3
    check-cast p2, Lcom/bytedance/bdtracker/u3;

    .line 4
    .line 5
    iget-wide v0, p1, Lcom/bytedance/bdtracker/u3;->c:J

    .line 6
    .line 7
    iget-wide p1, p2, Lcom/bytedance/bdtracker/u3;->c:J

    .line 8
    .line 9
    sub-long/2addr v0, p1

    .line 10
    const-wide/16 p1, 0x0

    .line 11
    .line 12
    cmp-long p1, v0, p1

    .line 13
    .line 14
    if-gez p1, :cond_0

    .line 15
    .line 16
    const/4 p1, -0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    if-lez p1, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    :goto_0
    return p1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->n:Lcom/bytedance/bdtracker/j0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/bytedance/bdtracker/j0;->e:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->A:Lcom/bytedance/bdtracker/k3;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/k3;->c(Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e()Lcom/bytedance/applog/UriConfig;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->o:Lcom/bytedance/applog/UriConfig;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 3
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 4
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/bdtracker/e0;->o:Lcom/bytedance/applog/UriConfig;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/bytedance/applog/util/UriConstants;->createUriConfig(I)Lcom/bytedance/applog/UriConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/bdtracker/e0;->o:Lcom/bytedance/applog/UriConfig;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->o:Lcom/bytedance/applog/UriConfig;

    return-object v0
.end method

.method public e(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->A:Lcom/bytedance/bdtracker/k3;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/k3;->d(Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public f(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->A:Lcom/bytedance/bdtracker/k3;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/k3;->e(Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final f()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/p1;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/e0;->e()Lcom/bytedance/applog/UriConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/applog/UriConfig;->getAbUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 2
    .line 3
    iget v1, v0, Lcom/bytedance/bdtracker/p1;->s:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isAutoTrackEnabled()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    :goto_0
    return v2
.end method

.method public h()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/bdtracker/r1;->g:Landroid/content/SharedPreferences;

    .line 4
    .line 5
    const-string v1, "version_code"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/r1;->m()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 23
    .line 24
    const-string v1, "channel"

    .line 25
    .line 26
    const-string v3, ""

    .line 27
    .line 28
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/p1;->b()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    :cond_0
    const/4 v2, 0x1

    .line 45
    :cond_1
    return v2
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 12

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    :pswitch_0
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 13
    .line 14
    new-array v0, v4, [Ljava/lang/Object;

    .line 15
    .line 16
    const-string v1, "Unknown handler message type"

    .line 17
    .line 18
    invoke-interface {p1, v1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto/16 :goto_13

    .line 22
    .line 23
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 24
    .line 25
    instance-of v1, v0, Lcom/bytedance/applog/IPullAbTestConfigCallback;

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 30
    .line 31
    check-cast v0, Lcom/bytedance/applog/IPullAbTestConfigCallback;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/e0;->f()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 42
    .line 43
    new-array v0, v4, [Ljava/lang/Object;

    .line 44
    .line 45
    const-string v1, "ABTest is not enabled"

    .line 46
    .line 47
    invoke-interface {p1, v1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_13

    .line 51
    .line 52
    :cond_0
    iget-object v1, p0, Lcom/bytedance/bdtracker/e0;->m:Lcom/bytedance/bdtracker/a0;

    .line 53
    .line 54
    if-nez v1, :cond_1

    .line 55
    .line 56
    new-instance v1, Lcom/bytedance/bdtracker/a0;

    .line 57
    .line 58
    invoke-direct {v1, p0}, Lcom/bytedance/bdtracker/a0;-><init>(Lcom/bytedance/bdtracker/e0;)V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lcom/bytedance/bdtracker/e0;->m:Lcom/bytedance/bdtracker/a0;

    .line 62
    .line 63
    :cond_1
    iget-object v1, p0, Lcom/bytedance/bdtracker/e0;->m:Lcom/bytedance/bdtracker/a0;

    .line 64
    .line 65
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/bytedance/bdtracker/a0;->a(I)Lorg/json/JSONObject;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-eqz v0, :cond_28

    .line 70
    .line 71
    invoke-interface {v0, p1}, Lcom/bytedance/applog/IPullAbTestConfigCallback;->onRemoteConfig(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lcom/bytedance/bdtracker/d3; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    goto/16 :goto_13

    .line 75
    .line 76
    :catch_0
    if-eqz v0, :cond_28

    .line 77
    .line 78
    invoke-interface {v0}, Lcom/bytedance/applog/IPullAbTestConfigCallback;->onTimeoutError()V

    .line 79
    .line 80
    .line 81
    goto/16 :goto_13

    .line 82
    .line 83
    :cond_2
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->m:Lcom/bytedance/bdtracker/a0;

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/e0;->a(Lcom/bytedance/bdtracker/c0;)V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_13

    .line 89
    .line 90
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast p1, Ljava/util/Map;

    .line 93
    .line 94
    new-instance v0, Lorg/json/JSONObject;

    .line 95
    .line 96
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v1, "oaid"

    .line 100
    .line 101
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    .line 102
    .line 103
    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/bytedance/bdtracker/r1;->c()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    iget-object v1, p0, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 116
    .line 117
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/r1;->f()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    const-string v3, "bd_did"

    .line 122
    .line 123
    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    .line 125
    .line 126
    const-string p1, "install_id"

    .line 127
    .line 128
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    .line 130
    .line 131
    sget-object p1, Lcom/bytedance/bdtracker/y4;->c:Lcom/bytedance/bdtracker/j4;

    .line 132
    .line 133
    new-array v1, v4, [Ljava/lang/Object;

    .line 134
    .line 135
    invoke-virtual {p1, v1}, Lcom/bytedance/bdtracker/j4;->b([Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    check-cast p1, Ljava/lang/Boolean;

    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-eqz p1, :cond_3

    .line 146
    .line 147
    const-string p1, "os"

    .line 148
    .line 149
    const-string v1, "Harmony"

    .line 150
    .line 151
    :goto_0
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :catchall_0
    move-exception p1

    .line 156
    goto :goto_2

    .line 157
    :cond_3
    const-string p1, "os"

    .line 158
    .line 159
    const-string v1, "Android"

    .line 160
    .line 161
    goto :goto_0

    .line 162
    :goto_1
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 163
    .line 164
    invoke-virtual {p1}, Lcom/bytedance/bdtracker/r1;->b()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    const-string v1, "aid"

    .line 169
    .line 170
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    .line 172
    .line 173
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->k:Lcom/bytedance/bdtracker/h0;

    .line 174
    .line 175
    invoke-virtual {p1, v0}, Lcom/bytedance/bdtracker/h0;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 180
    .line 181
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    .line 183
    const-string v1, "Report oaid success: {}"

    .line 184
    .line 185
    :try_start_2
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-interface {v0, v1, p1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    .line 191
    .line 192
    goto/16 :goto_13

    .line 193
    .line 194
    :goto_2
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 195
    .line 196
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 197
    .line 198
    new-array v1, v4, [Ljava/lang/Object;

    .line 199
    .line 200
    const-string v3, "Report oaid failed"

    .line 201
    .line 202
    invoke-interface {v0, v3, p1, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    goto/16 :goto_13

    .line 206
    .line 207
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast p1, Lcom/bytedance/bdtracker/u3;

    .line 210
    .line 211
    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/e0;->b(Lcom/bytedance/bdtracker/u3;)V

    .line 212
    .line 213
    .line 214
    goto/16 :goto_13

    .line 215
    .line 216
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast p1, [Ljava/lang/Object;

    .line 219
    .line 220
    aget-object v0, p1, v4

    .line 221
    .line 222
    check-cast v0, Ljava/lang/Boolean;

    .line 223
    .line 224
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    aget-object p1, p1, v2

    .line 229
    .line 230
    check-cast p1, Ljava/lang/String;

    .line 231
    .line 232
    iget-object v4, p0, Lcom/bytedance/bdtracker/e0;->t:Lcom/bytedance/bdtracker/g0;

    .line 233
    .line 234
    if-eqz v4, :cond_4

    .line 235
    .line 236
    iget-object v4, p0, Lcom/bytedance/bdtracker/e0;->t:Lcom/bytedance/bdtracker/g0;

    .line 237
    .line 238
    iput-boolean v2, v4, Lcom/bytedance/bdtracker/c0;->d:Z

    .line 239
    .line 240
    iget-object v4, p0, Lcom/bytedance/bdtracker/e0;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 241
    .line 242
    iget-object v5, p0, Lcom/bytedance/bdtracker/e0;->t:Lcom/bytedance/bdtracker/g0;

    .line 243
    .line 244
    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    iput-object v3, p0, Lcom/bytedance/bdtracker/e0;->t:Lcom/bytedance/bdtracker/g0;

    .line 248
    .line 249
    :cond_4
    if-eqz v0, :cond_28

    .line 250
    .line 251
    new-instance v0, Lcom/bytedance/bdtracker/g0;

    .line 252
    .line 253
    invoke-direct {v0, p0, p1}, Lcom/bytedance/bdtracker/g0;-><init>(Lcom/bytedance/bdtracker/e0;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    iput-object v0, p0, Lcom/bytedance/bdtracker/e0;->t:Lcom/bytedance/bdtracker/g0;

    .line 257
    .line 258
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 259
    .line 260
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->t:Lcom/bytedance/bdtracker/g0;

    .line 261
    .line 262
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->j:Landroid/os/Handler;

    .line 266
    .line 267
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 268
    .line 269
    .line 270
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->j:Landroid/os/Handler;

    .line 271
    .line 272
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 273
    .line 274
    .line 275
    goto/16 :goto_13

    .line 276
    .line 277
    :pswitch_5
    invoke-virtual {p0, v3, v2}, Lcom/bytedance/bdtracker/e0;->a([Ljava/lang/String;Z)V

    .line 278
    .line 279
    .line 280
    goto/16 :goto_13

    .line 281
    .line 282
    :pswitch_6
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/e0;->f()Z

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    if-eqz p1, :cond_7

    .line 287
    .line 288
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->m:Lcom/bytedance/bdtracker/a0;

    .line 289
    .line 290
    if-nez p1, :cond_5

    .line 291
    .line 292
    new-instance p1, Lcom/bytedance/bdtracker/a0;

    .line 293
    .line 294
    invoke-direct {p1, p0}, Lcom/bytedance/bdtracker/a0;-><init>(Lcom/bytedance/bdtracker/e0;)V

    .line 295
    .line 296
    .line 297
    iput-object p1, p0, Lcom/bytedance/bdtracker/e0;->m:Lcom/bytedance/bdtracker/a0;

    .line 298
    .line 299
    :cond_5
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 300
    .line 301
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->m:Lcom/bytedance/bdtracker/a0;

    .line 302
    .line 303
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result p1

    .line 307
    if-nez p1, :cond_6

    .line 308
    .line 309
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 310
    .line 311
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->m:Lcom/bytedance/bdtracker/a0;

    .line 312
    .line 313
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    :cond_6
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->m:Lcom/bytedance/bdtracker/a0;

    .line 317
    .line 318
    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/e0;->a(Lcom/bytedance/bdtracker/c0;)V

    .line 319
    .line 320
    .line 321
    goto/16 :goto_13

    .line 322
    .line 323
    :cond_7
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->m:Lcom/bytedance/bdtracker/a0;

    .line 324
    .line 325
    if-eqz p1, :cond_8

    .line 326
    .line 327
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->m:Lcom/bytedance/bdtracker/a0;

    .line 328
    .line 329
    iput-boolean v2, p1, Lcom/bytedance/bdtracker/c0;->d:Z

    .line 330
    .line 331
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 332
    .line 333
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->m:Lcom/bytedance/bdtracker/a0;

    .line 334
    .line 335
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    iput-object v3, p0, Lcom/bytedance/bdtracker/e0;->m:Lcom/bytedance/bdtracker/a0;

    .line 339
    .line 340
    :cond_8
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 341
    .line 342
    invoke-virtual {p1, v3}, Lcom/bytedance/bdtracker/r1;->e(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    const-string v0, ""

    .line 346
    .line 347
    invoke-virtual {p1, v0}, Lcom/bytedance/bdtracker/r1;->f(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p1, v3}, Lcom/bytedance/bdtracker/r1;->a(Lorg/json/JSONObject;)V

    .line 351
    .line 352
    .line 353
    goto/16 :goto_13

    .line 354
    .line 355
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 356
    .line 357
    if-eqz p1, :cond_9

    .line 358
    .line 359
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    :cond_9
    invoke-virtual {p0, v3}, Lcom/bytedance/bdtracker/e0;->a(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    goto/16 :goto_13

    .line 367
    .line 368
    :pswitch_8
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->b:Lcom/bytedance/bdtracker/b0;

    .line 369
    .line 370
    if-nez p1, :cond_a

    .line 371
    .line 372
    new-instance p1, Lcom/bytedance/bdtracker/b0;

    .line 373
    .line 374
    invoke-direct {p1, p0}, Lcom/bytedance/bdtracker/b0;-><init>(Lcom/bytedance/bdtracker/e0;)V

    .line 375
    .line 376
    .line 377
    iput-object p1, p0, Lcom/bytedance/bdtracker/e0;->b:Lcom/bytedance/bdtracker/b0;

    .line 378
    .line 379
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 380
    .line 381
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    goto :goto_3

    .line 385
    :cond_a
    iput-boolean v4, p1, Lcom/bytedance/bdtracker/c0;->d:Z

    .line 386
    .line 387
    :goto_3
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->b:Lcom/bytedance/bdtracker/b0;

    .line 388
    .line 389
    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/e0;->a(Lcom/bytedance/bdtracker/c0;)V

    .line 390
    .line 391
    .line 392
    goto/16 :goto_13

    .line 393
    .line 394
    :pswitch_9
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->g:Ljava/util/ArrayList;

    .line 395
    .line 396
    monitor-enter p1

    .line 397
    :try_start_3
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->C:Lcom/bytedance/bdtracker/j1;

    .line 398
    .line 399
    iget-object v1, p0, Lcom/bytedance/bdtracker/e0;->g:Ljava/util/ArrayList;

    .line 400
    .line 401
    invoke-virtual {v0, v1}, Lcom/bytedance/bdtracker/j1;->a(Ljava/util/ArrayList;)I

    .line 402
    .line 403
    .line 404
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 405
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->C:Lcom/bytedance/bdtracker/j1;

    .line 406
    .line 407
    iget-object v0, p1, Lcom/bytedance/bdtracker/j1;->b:Ljava/util/LinkedList;

    .line 408
    .line 409
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 410
    .line 411
    .line 412
    move-result v0

    .line 413
    if-lez v0, :cond_b

    .line 414
    .line 415
    new-array v3, v0, [Ljava/lang/String;

    .line 416
    .line 417
    iget-object v0, p1, Lcom/bytedance/bdtracker/j1;->b:Ljava/util/LinkedList;

    .line 418
    .line 419
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    iget-object p1, p1, Lcom/bytedance/bdtracker/j1;->b:Ljava/util/LinkedList;

    .line 423
    .line 424
    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 425
    .line 426
    .line 427
    :cond_b
    invoke-virtual {p0, v3, v4}, Lcom/bytedance/bdtracker/e0;->a([Ljava/lang/String;Z)V

    .line 428
    .line 429
    .line 430
    goto/16 :goto_13

    .line 431
    .line 432
    :catchall_1
    move-exception v0

    .line 433
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 434
    throw v0

    .line 435
    :pswitch_a
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->s:Lcom/bytedance/bdtracker/c0;

    .line 436
    .line 437
    iget-boolean v0, p1, Lcom/bytedance/bdtracker/c0;->d:Z

    .line 438
    .line 439
    if-nez v0, :cond_28

    .line 440
    .line 441
    invoke-virtual {p1}, Lcom/bytedance/bdtracker/c0;->a()J

    .line 442
    .line 443
    .line 444
    move-result-wide v0

    .line 445
    iget-boolean p1, p1, Lcom/bytedance/bdtracker/c0;->d:Z

    .line 446
    .line 447
    if-nez p1, :cond_28

    .line 448
    .line 449
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->j:Landroid/os/Handler;

    .line 450
    .line 451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 452
    .line 453
    .line 454
    move-result-wide v3

    .line 455
    sub-long/2addr v0, v3

    .line 456
    const/16 v3, 0x9

    .line 457
    .line 458
    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 459
    .line 460
    .line 461
    goto/16 :goto_13

    .line 462
    .line 463
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 464
    .line 465
    check-cast p1, Ljava/util/ArrayList;

    .line 466
    .line 467
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/e0;->c()Lcom/bytedance/bdtracker/a4;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    iget-object v0, v0, Lcom/bytedance/bdtracker/a4;->c:Lcom/bytedance/bdtracker/z3;

    .line 472
    .line 473
    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/z3;->b(Ljava/util/List;)V

    .line 474
    .line 475
    .line 476
    goto/16 :goto_13

    .line 477
    .line 478
    :pswitch_c
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->g:Ljava/util/ArrayList;

    .line 479
    .line 480
    monitor-enter p1

    .line 481
    :try_start_5
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->g:Ljava/util/ArrayList;

    .line 482
    .line 483
    sget-object v1, Lcom/bytedance/bdtracker/j0;->p:Lcom/bytedance/bdtracker/j0$b;

    .line 484
    .line 485
    if-nez v1, :cond_c

    .line 486
    .line 487
    new-instance v1, Lcom/bytedance/bdtracker/j0$b;

    .line 488
    .line 489
    invoke-direct {v1, v3}, Lcom/bytedance/bdtracker/j0$b;-><init>(Lcom/bytedance/bdtracker/j0$a;)V

    .line 490
    .line 491
    .line 492
    sput-object v1, Lcom/bytedance/bdtracker/j0;->p:Lcom/bytedance/bdtracker/j0$b;

    .line 493
    .line 494
    goto :goto_4

    .line 495
    :catchall_2
    move-exception v0

    .line 496
    goto :goto_5

    .line 497
    :cond_c
    :goto_4
    sget-object v1, Lcom/bytedance/bdtracker/j0;->p:Lcom/bytedance/bdtracker/j0$b;

    .line 498
    .line 499
    const-wide/16 v5, 0x0

    .line 500
    .line 501
    invoke-virtual {v1, v5, v6}, Lcom/bytedance/bdtracker/u3;->a(J)V

    .line 502
    .line 503
    .line 504
    sget-object v1, Lcom/bytedance/bdtracker/j0;->p:Lcom/bytedance/bdtracker/j0$b;

    .line 505
    .line 506
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    .line 508
    .line 509
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 510
    invoke-virtual {p0, v3, v4}, Lcom/bytedance/bdtracker/e0;->a([Ljava/lang/String;Z)V

    .line 511
    .line 512
    .line 513
    goto/16 :goto_13

    .line 514
    .line 515
    :goto_5
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 516
    throw v0

    .line 517
    :pswitch_d
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->j:Landroid/os/Handler;

    .line 518
    .line 519
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 520
    .line 521
    .line 522
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 523
    .line 524
    iget-boolean p1, p1, Lcom/bytedance/bdtracker/d;->x:Z

    .line 525
    .line 526
    const-wide/16 v3, 0x1388

    .line 527
    .line 528
    if-nez p1, :cond_11

    .line 529
    .line 530
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 531
    .line 532
    iget-object p1, p1, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 533
    .line 534
    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->isSilenceInBackground()Z

    .line 535
    .line 536
    .line 537
    move-result p1

    .line 538
    if-eqz p1, :cond_d

    .line 539
    .line 540
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->n:Lcom/bytedance/bdtracker/j0;

    .line 541
    .line 542
    invoke-virtual {p1}, Lcom/bytedance/bdtracker/j0;->c()Z

    .line 543
    .line 544
    .line 545
    move-result p1

    .line 546
    if-eqz p1, :cond_11

    .line 547
    .line 548
    :cond_d
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 549
    .line 550
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 551
    .line 552
    .line 553
    move-result-object p1

    .line 554
    const-wide v5, 0x7fffffffffffffffL

    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    :cond_e
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 560
    .line 561
    .line 562
    move-result v0

    .line 563
    if-eqz v0, :cond_f

    .line 564
    .line 565
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    check-cast v0, Lcom/bytedance/bdtracker/c0;

    .line 570
    .line 571
    iget-boolean v7, v0, Lcom/bytedance/bdtracker/c0;->d:Z

    .line 572
    .line 573
    if-nez v7, :cond_e

    .line 574
    .line 575
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/c0;->a()J

    .line 576
    .line 577
    .line 578
    move-result-wide v7

    .line 579
    cmp-long v0, v7, v5

    .line 580
    .line 581
    if-gez v0, :cond_e

    .line 582
    .line 583
    move-wide v5, v7

    .line 584
    goto :goto_6

    .line 585
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 586
    .line 587
    .line 588
    move-result-wide v7

    .line 589
    sub-long/2addr v5, v7

    .line 590
    cmp-long p1, v5, v3

    .line 591
    .line 592
    if-lez p1, :cond_10

    .line 593
    .line 594
    goto :goto_7

    .line 595
    :cond_10
    move-wide v3, v5

    .line 596
    :cond_11
    :goto_7
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->j:Landroid/os/Handler;

    .line 597
    .line 598
    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 599
    .line 600
    .line 601
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->x:Ljava/util/List;

    .line 602
    .line 603
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 604
    .line 605
    .line 606
    move-result p1

    .line 607
    if-lez p1, :cond_28

    .line 608
    .line 609
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->x:Ljava/util/List;

    .line 610
    .line 611
    monitor-enter p1

    .line 612
    :try_start_7
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->x:Ljava/util/List;

    .line 613
    .line 614
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 615
    .line 616
    .line 617
    move-result-object v0

    .line 618
    :cond_12
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 619
    .line 620
    .line 621
    move-result v1

    .line 622
    if-eqz v1, :cond_13

    .line 623
    .line 624
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object v1

    .line 628
    check-cast v1, Lcom/bytedance/bdtracker/e0$d;

    .line 629
    .line 630
    if-eqz v1, :cond_12

    .line 631
    .line 632
    check-cast v1, Lcom/bytedance/bdtracker/e0$e;

    .line 633
    .line 634
    iget-object v3, v1, Lcom/bytedance/bdtracker/e0$e;->b:Lcom/bytedance/bdtracker/e0;

    .line 635
    .line 636
    iget-object v1, v1, Lcom/bytedance/bdtracker/e0$d;->a:Ljava/lang/Object;

    .line 637
    .line 638
    check-cast v1, Ljava/lang/String;

    .line 639
    .line 640
    invoke-virtual {v3, v1}, Lcom/bytedance/bdtracker/e0;->a(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    goto :goto_8

    .line 644
    :catchall_3
    move-exception v0

    .line 645
    goto :goto_9

    .line 646
    :cond_13
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->x:Ljava/util/List;

    .line 647
    .line 648
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 649
    .line 650
    .line 651
    monitor-exit p1

    .line 652
    goto/16 :goto_13

    .line 653
    .line 654
    :goto_9
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 655
    throw v0

    .line 656
    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 657
    .line 658
    check-cast p1, [Ljava/lang/String;

    .line 659
    .line 660
    invoke-virtual {p0, p1, v4}, Lcom/bytedance/bdtracker/e0;->a([Ljava/lang/String;Z)V

    .line 661
    .line 662
    .line 663
    goto/16 :goto_13

    .line 664
    .line 665
    :pswitch_f
    new-instance p1, Lcom/bytedance/bdtracker/h0;

    .line 666
    .line 667
    invoke-direct {p1, p0}, Lcom/bytedance/bdtracker/h0;-><init>(Lcom/bytedance/bdtracker/e0;)V

    .line 668
    .line 669
    .line 670
    iput-object p1, p0, Lcom/bytedance/bdtracker/e0;->k:Lcom/bytedance/bdtracker/h0;

    .line 671
    .line 672
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 673
    .line 674
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    .line 676
    .line 677
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 678
    .line 679
    iget-object p1, p1, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 680
    .line 681
    if-eqz p1, :cond_14

    .line 682
    .line 683
    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->isTrackEventEnabled()Z

    .line 684
    .line 685
    .line 686
    move-result p1

    .line 687
    if-nez p1, :cond_14

    .line 688
    .line 689
    goto :goto_a

    .line 690
    :cond_14
    new-instance p1, Lcom/bytedance/bdtracker/i0;

    .line 691
    .line 692
    invoke-direct {p1, p0}, Lcom/bytedance/bdtracker/i0;-><init>(Lcom/bytedance/bdtracker/e0;)V

    .line 693
    .line 694
    .line 695
    iput-object p1, p0, Lcom/bytedance/bdtracker/e0;->l:Lcom/bytedance/bdtracker/i0;

    .line 696
    .line 697
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 698
    .line 699
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    .line 701
    .line 702
    :goto_a
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/e0;->e()Lcom/bytedance/applog/UriConfig;

    .line 703
    .line 704
    .line 705
    move-result-object p1

    .line 706
    invoke-virtual {p1}, Lcom/bytedance/applog/UriConfig;->getSettingUri()Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object v0

    .line 710
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 711
    .line 712
    .line 713
    move-result v0

    .line 714
    if-nez v0, :cond_15

    .line 715
    .line 716
    new-instance v0, Lcom/bytedance/bdtracker/d0;

    .line 717
    .line 718
    invoke-direct {v0, p0}, Lcom/bytedance/bdtracker/d0;-><init>(Lcom/bytedance/bdtracker/e0;)V

    .line 719
    .line 720
    .line 721
    iput-object v0, p0, Lcom/bytedance/bdtracker/e0;->f:Lcom/bytedance/bdtracker/d0;

    .line 722
    .line 723
    iget-object v5, p0, Lcom/bytedance/bdtracker/e0;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 724
    .line 725
    invoke-virtual {v5, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    .line 727
    .line 728
    :cond_15
    invoke-virtual {p1}, Lcom/bytedance/applog/UriConfig;->getProfileUri()Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object p1

    .line 732
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 733
    .line 734
    .line 735
    move-result p1

    .line 736
    if-nez p1, :cond_16

    .line 737
    .line 738
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->A:Lcom/bytedance/bdtracker/k3;

    .line 739
    .line 740
    iget-object p1, p1, Lcom/bytedance/bdtracker/k3;->b:Landroid/os/Handler;

    .line 741
    .line 742
    const/16 v0, 0x6a

    .line 743
    .line 744
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 745
    .line 746
    .line 747
    move-result-object v0

    .line 748
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 749
    .line 750
    .line 751
    :cond_16
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->j:Landroid/os/Handler;

    .line 752
    .line 753
    const/16 v0, 0xd

    .line 754
    .line 755
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 756
    .line 757
    .line 758
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->j:Landroid/os/Handler;

    .line 759
    .line 760
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 761
    .line 762
    .line 763
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 764
    .line 765
    const-string v0, "sp_filter_name"

    .line 766
    .line 767
    invoke-static {p1, v0}, Lcom/bytedance/bdtracker/b;->a(Lcom/bytedance/applog/IAppLogInstance;Ljava/lang/String;)Ljava/lang/String;

    .line 768
    .line 769
    .line 770
    move-result-object p1

    .line 771
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/e0;->h()Z

    .line 772
    .line 773
    .line 774
    move-result v0

    .line 775
    if-eqz v0, :cond_19

    .line 776
    .line 777
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->k:Lcom/bytedance/bdtracker/h0;

    .line 778
    .line 779
    if-eqz v0, :cond_17

    .line 780
    .line 781
    iput-boolean v2, v0, Lcom/bytedance/bdtracker/c0;->b:Z

    .line 782
    .line 783
    :cond_17
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->f:Lcom/bytedance/bdtracker/d0;

    .line 784
    .line 785
    if-eqz v0, :cond_18

    .line 786
    .line 787
    iput-boolean v2, v0, Lcom/bytedance/bdtracker/c0;->b:Z

    .line 788
    .line 789
    :cond_18
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 790
    .line 791
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 792
    .line 793
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isEventFilterEnable()Z

    .line 794
    .line 795
    .line 796
    move-result v0

    .line 797
    if-eqz v0, :cond_23

    .line 798
    .line 799
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 800
    .line 801
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    .line 802
    .line 803
    invoke-static {v0, p1, v3}, Lcom/bytedance/bdtracker/a1;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/bytedance/bdtracker/a1;

    .line 804
    .line 805
    .line 806
    move-result-object p1

    .line 807
    iput-object p1, p0, Lcom/bytedance/bdtracker/e0;->y:Lcom/bytedance/bdtracker/a1;

    .line 808
    .line 809
    goto/16 :goto_11

    .line 810
    .line 811
    :cond_19
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 812
    .line 813
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 814
    .line 815
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isEventFilterEnable()Z

    .line 816
    .line 817
    .line 818
    move-result v0

    .line 819
    if-eqz v0, :cond_23

    .line 820
    .line 821
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 822
    .line 823
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    .line 824
    .line 825
    :try_start_8
    invoke-static {v0, p1, v4}, Lcom/bytedance/bdtracker/g4;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 826
    .line 827
    .line 828
    move-result-object p1

    .line 829
    new-instance v0, Ljava/util/HashSet;

    .line 830
    .line 831
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 832
    .line 833
    .line 834
    new-instance v5, Ljava/util/HashMap;

    .line 835
    .line 836
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 837
    .line 838
    .line 839
    :try_start_9
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 840
    .line 841
    .line 842
    move-result-object v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 843
    goto :goto_b

    .line 844
    :catchall_4
    move-object v6, v3

    .line 845
    :goto_b
    if-eqz v6, :cond_22

    .line 846
    .line 847
    :try_start_a
    invoke-interface {v6}, Ljava/util/Map;->size()I

    .line 848
    .line 849
    .line 850
    move-result v7

    .line 851
    if-gtz v7, :cond_1a

    .line 852
    .line 853
    goto/16 :goto_10

    .line 854
    .line 855
    :cond_1a
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 856
    .line 857
    .line 858
    move-result-object v6

    .line 859
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 860
    .line 861
    .line 862
    move-result-object v6

    .line 863
    move v7, v4

    .line 864
    :cond_1b
    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 865
    .line 866
    .line 867
    move-result v8

    .line 868
    if-eqz v8, :cond_20

    .line 869
    .line 870
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 871
    .line 872
    .line 873
    move-result-object v8

    .line 874
    check-cast v8, Ljava/util/Map$Entry;

    .line 875
    .line 876
    if-nez v8, :cond_1c

    .line 877
    .line 878
    goto :goto_c

    .line 879
    :cond_1c
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 880
    .line 881
    .line 882
    move-result-object v9

    .line 883
    check-cast v9, Ljava/lang/String;

    .line 884
    .line 885
    const-string v10, "is_block"

    .line 886
    .line 887
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 888
    .line 889
    .line 890
    move-result v10

    .line 891
    if-eqz v10, :cond_1d

    .line 892
    .line 893
    const-string v7, "is_block"

    .line 894
    .line 895
    invoke-interface {p1, v7, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 896
    .line 897
    .line 898
    move-result v7

    .line 899
    goto :goto_c

    .line 900
    :cond_1d
    const-string v10, "events"

    .line 901
    .line 902
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 903
    .line 904
    .line 905
    move-result v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 906
    if-eqz v10, :cond_1e

    .line 907
    .line 908
    :try_start_b
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 909
    .line 910
    .line 911
    move-result-object v8

    .line 912
    check-cast v8, Ljava/util/Set;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 913
    .line 914
    goto :goto_d

    .line 915
    :catchall_5
    move-object v8, v3

    .line 916
    :goto_d
    if-eqz v8, :cond_1b

    .line 917
    .line 918
    :try_start_c
    invoke-interface {v8}, Ljava/util/Set;->size()I

    .line 919
    .line 920
    .line 921
    move-result v9

    .line 922
    if-lez v9, :cond_1b

    .line 923
    .line 924
    invoke-virtual {v0, v8}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 925
    .line 926
    .line 927
    goto :goto_c

    .line 928
    :cond_1e
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 929
    .line 930
    .line 931
    move-result v10

    .line 932
    if-nez v10, :cond_1b

    .line 933
    .line 934
    new-instance v10, Ljava/util/HashSet;

    .line 935
    .line 936
    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 937
    .line 938
    .line 939
    :try_start_d
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 940
    .line 941
    .line 942
    move-result-object v8

    .line 943
    check-cast v8, Ljava/util/Set;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 944
    .line 945
    goto :goto_e

    .line 946
    :catchall_6
    move-object v8, v3

    .line 947
    :goto_e
    if-eqz v8, :cond_1f

    .line 948
    .line 949
    :try_start_e
    invoke-interface {v8}, Ljava/util/Set;->size()I

    .line 950
    .line 951
    .line 952
    move-result v11

    .line 953
    if-lez v11, :cond_1f

    .line 954
    .line 955
    invoke-virtual {v10, v8}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 956
    .line 957
    .line 958
    :cond_1f
    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    .line 959
    .line 960
    .line 961
    move-result v8

    .line 962
    if-lez v8, :cond_1b

    .line 963
    .line 964
    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    .line 966
    .line 967
    goto :goto_c

    .line 968
    :cond_20
    if-lez v7, :cond_21

    .line 969
    .line 970
    new-instance p1, Lcom/bytedance/bdtracker/c1;

    .line 971
    .line 972
    invoke-direct {p1, v0, v5}, Lcom/bytedance/bdtracker/c1;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;)V

    .line 973
    .line 974
    .line 975
    :goto_f
    move-object v3, p1

    .line 976
    goto :goto_10

    .line 977
    :cond_21
    new-instance p1, Lcom/bytedance/bdtracker/b1;

    .line 978
    .line 979
    invoke-direct {p1, v0, v5}, Lcom/bytedance/bdtracker/b1;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 980
    .line 981
    .line 982
    goto :goto_f

    .line 983
    :catchall_7
    :cond_22
    :goto_10
    iput-object v3, p0, Lcom/bytedance/bdtracker/e0;->y:Lcom/bytedance/bdtracker/a1;

    .line 984
    .line 985
    :cond_23
    :goto_11
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->j:Landroid/os/Handler;

    .line 986
    .line 987
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 988
    .line 989
    .line 990
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->j:Landroid/os/Handler;

    .line 991
    .line 992
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 993
    .line 994
    .line 995
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->q:Lcom/bytedance/bdtracker/h2;

    .line 996
    .line 997
    if-eqz p1, :cond_28

    .line 998
    .line 999
    check-cast p1, Lcom/bytedance/bdtracker/m2;

    .line 1000
    .line 1001
    iget-object v0, p1, Lcom/bytedance/bdtracker/m2;->c:Lcom/bytedance/bdtracker/e0;

    .line 1002
    .line 1003
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 1004
    .line 1005
    const-string v1, "mEngine.config"

    .line 1006
    .line 1007
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1008
    .line 1009
    .line 1010
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/p1;->i()Z

    .line 1011
    .line 1012
    .line 1013
    move-result v0

    .line 1014
    if-nez v0, :cond_24

    .line 1015
    .line 1016
    goto/16 :goto_13

    .line 1017
    .line 1018
    :cond_24
    iget-object v0, p1, Lcom/bytedance/bdtracker/m2;->b:Lcom/bytedance/bdtracker/i2;

    .line 1019
    .line 1020
    new-instance v1, Lcom/bytedance/bdtracker/l2;

    .line 1021
    .line 1022
    invoke-direct {v1, p1}, Lcom/bytedance/bdtracker/l2;-><init>(Lcom/bytedance/bdtracker/m2;)V

    .line 1023
    .line 1024
    .line 1025
    invoke-virtual {v0, v1}, Lcom/bytedance/bdtracker/i2;->a(Lkotlin/jvm/functions/Function1;)V

    .line 1026
    .line 1027
    .line 1028
    goto/16 :goto_13

    .line 1029
    .line 1030
    :pswitch_10
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 1031
    .line 1032
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 1033
    .line 1034
    new-array v0, v4, [Ljava/lang/Object;

    .line 1035
    .line 1036
    const-string v1, "AppLog is starting..."

    .line 1037
    .line 1038
    invoke-interface {p1, v1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1039
    .line 1040
    .line 1041
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 1042
    .line 1043
    iget-object v0, p1, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 1044
    .line 1045
    iget-object v1, p1, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 1046
    .line 1047
    invoke-virtual {v1}, Lcom/bytedance/applog/InitConfig;->isAutoTrackEnabled()Z

    .line 1048
    .line 1049
    .line 1050
    move-result v1

    .line 1051
    const-string v3, "bav_log_collect"

    .line 1052
    .line 1053
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 1054
    .line 1055
    .line 1056
    move-result v0

    .line 1057
    iput v0, p1, Lcom/bytedance/bdtracker/p1;->s:I

    .line 1058
    .line 1059
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 1060
    .line 1061
    invoke-virtual {p1}, Lcom/bytedance/bdtracker/r1;->q()Z

    .line 1062
    .line 1063
    .line 1064
    move-result p1

    .line 1065
    const-wide/16 v0, 0x3e8

    .line 1066
    .line 1067
    if-eqz p1, :cond_27

    .line 1068
    .line 1069
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 1070
    .line 1071
    invoke-virtual {p1}, Lcom/bytedance/bdtracker/p1;->h()Z

    .line 1072
    .line 1073
    .line 1074
    move-result p1

    .line 1075
    if-eqz p1, :cond_26

    .line 1076
    .line 1077
    new-instance p1, Landroid/os/HandlerThread;

    .line 1078
    .line 1079
    const-string v3, "bd_tracker_n:"

    .line 1080
    .line 1081
    invoke-static {v3}, Lcom/bytedance/bdtracker/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v3

    .line 1085
    iget-object v5, p0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 1086
    .line 1087
    iget-object v5, v5, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 1088
    .line 1089
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v3

    .line 1096
    invoke-direct {p1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1097
    .line 1098
    .line 1099
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 1100
    .line 1101
    .line 1102
    new-instance v3, Landroid/os/Handler;

    .line 1103
    .line 1104
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 1105
    .line 1106
    .line 1107
    move-result-object p1

    .line 1108
    invoke-direct {v3, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 1109
    .line 1110
    .line 1111
    iput-object v3, p0, Lcom/bytedance/bdtracker/e0;->j:Landroid/os/Handler;

    .line 1112
    .line 1113
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->j:Landroid/os/Handler;

    .line 1114
    .line 1115
    const/4 v3, 0x2

    .line 1116
    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1117
    .line 1118
    .line 1119
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->g:Ljava/util/ArrayList;

    .line 1120
    .line 1121
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 1122
    .line 1123
    .line 1124
    move-result p1

    .line 1125
    if-lez p1, :cond_25

    .line 1126
    .line 1127
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->p:Landroid/os/Handler;

    .line 1128
    .line 1129
    const/4 v3, 0x4

    .line 1130
    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1131
    .line 1132
    .line 1133
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->p:Landroid/os/Handler;

    .line 1134
    .line 1135
    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1136
    .line 1137
    .line 1138
    :cond_25
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 1139
    .line 1140
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    .line 1141
    .line 1142
    invoke-static {p1}, Lcom/bytedance/bdtracker/w4;->a(Landroid/content/Context;)V

    .line 1143
    .line 1144
    .line 1145
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 1146
    .line 1147
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 1148
    .line 1149
    new-array v0, v4, [Ljava/lang/Object;

    .line 1150
    .line 1151
    const-string v1, "AppLog started on main process."

    .line 1152
    .line 1153
    invoke-interface {p1, v1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1154
    .line 1155
    .line 1156
    goto :goto_12

    .line 1157
    :cond_26
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 1158
    .line 1159
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 1160
    .line 1161
    new-array v0, v4, [Ljava/lang/Object;

    .line 1162
    .line 1163
    const-string v1, "AppLog started on secondary process."

    .line 1164
    .line 1165
    invoke-interface {p1, v1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1166
    .line 1167
    .line 1168
    :goto_12
    new-instance p1, Lcom/bytedance/bdtracker/e0$a;

    .line 1169
    .line 1170
    invoke-direct {p1, p0}, Lcom/bytedance/bdtracker/e0$a;-><init>(Lcom/bytedance/bdtracker/e0;)V

    .line 1171
    .line 1172
    .line 1173
    const-string v0, "start_end"

    .line 1174
    .line 1175
    invoke-static {v0, p1}, Lcom/bytedance/applog/log/LogUtils;->sendJsonFetcher(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V

    .line 1176
    .line 1177
    .line 1178
    goto :goto_13

    .line 1179
    :cond_27
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 1180
    .line 1181
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 1182
    .line 1183
    new-array v3, v4, [Ljava/lang/Object;

    .line 1184
    .line 1185
    const-string v4, "AppLog is not ready, will try start again after 1 second..."

    .line 1186
    .line 1187
    invoke-interface {p1, v4, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1188
    .line 1189
    .line 1190
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->p:Landroid/os/Handler;

    .line 1191
    .line 1192
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1193
    .line 1194
    .line 1195
    iget-object p1, p0, Lcom/bytedance/bdtracker/e0;->p:Landroid/os/Handler;

    .line 1196
    .line 1197
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1198
    .line 1199
    .line 1200
    :cond_28
    :goto_13
    return v2

    .line 1201
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final i()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/bdtracker/e0;->r:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 5
    .line 6
    iget-object v2, v1, Lcom/bytedance/bdtracker/r1;->c:Lcom/bytedance/bdtracker/p1;

    .line 7
    .line 8
    invoke-virtual {v2}, Lcom/bytedance/bdtracker/p1;->j()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget-object v1, v1, Lcom/bytedance/bdtracker/r1;->b:Landroid/content/Context;

    .line 15
    .line 16
    sget-object v2, Lcom/bytedance/bdtracker/h5;->a:Lcom/bytedance/bdtracker/f5;

    .line 17
    .line 18
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v2, v1}, Lcom/bytedance/bdtracker/f5;->b([Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/bytedance/bdtracker/j5;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/j5;->a()V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v1, p0, Lcom/bytedance/bdtracker/e0;->p:Landroid/os/Handler;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method
