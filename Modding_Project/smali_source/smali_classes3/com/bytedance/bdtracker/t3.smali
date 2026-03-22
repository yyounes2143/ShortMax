.class public Lcom/bytedance/bdtracker/t3;
.super Lcom/bytedance/bdtracker/v3;
.source ""


# instance fields
.field public final c:Landroid/accounts/AccountManager;

.field public d:Landroid/accounts/Account;

.field public final e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lcom/bytedance/bdtracker/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/d;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bytedance/bdtracker/v3;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/bdtracker/t3;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/bytedance/bdtracker/t3;->f:Lcom/bytedance/bdtracker/d;

    .line 12
    .line 13
    invoke-static {p2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/bytedance/bdtracker/t3;->c:Landroid/accounts/AccountManager;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public a(Landroid/accounts/Account;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/bytedance/bdtracker/t3;->d:Landroid/accounts/Account;

    iget-object v0, p0, Lcom/bytedance/bdtracker/t3;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/v3;->b:Landroid/os/Handler;

    new-instance v1, Lcom/bytedance/bdtracker/t3$a;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/bdtracker/t3$a;-><init>(Lcom/bytedance/bdtracker/t3;Landroid/accounts/Account;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/bdtracker/t3;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/t3;->d:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/bdtracker/t3;->c:Landroid/accounts/AccountManager;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :catchall_0
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/v3;->a:Lcom/bytedance/bdtracker/v3;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/v3;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/bdtracker/t3;->d:Landroid/accounts/Account;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/bdtracker/t3;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/bdtracker/t3;->c:Landroid/accounts/AccountManager;

    invoke-virtual {v1, v0, p1, p2}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/bytedance/bdtracker/t3;->f:Lcom/bytedance/bdtracker/d;

    .line 2
    iget-object p2, p2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v0, "AccountCacheHelper"

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Set user data failed"

    invoke-interface {p2, v0, v2, p1, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/t3;->d:Landroid/accounts/Account;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/bdtracker/t3;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/bdtracker/t3;->c:Landroid/accounts/AccountManager;

    .line 15
    .line 16
    invoke-virtual {v1, v0, p1}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    return-object p1

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    iget-object v0, p0, Lcom/bytedance/bdtracker/t3;->f:Lcom/bytedance/bdtracker/d;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 25
    .line 26
    const-string v1, "AccountCacheHelper"

    .line 27
    .line 28
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const/4 v2, 0x0

    .line 33
    new-array v2, v2, [Ljava/lang/Object;

    .line 34
    .line 35
    const-string v3, "Get user data failed"

    .line 36
    .line 37
    invoke-interface {v0, v1, v3, p1, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    return-object p1
.end method
