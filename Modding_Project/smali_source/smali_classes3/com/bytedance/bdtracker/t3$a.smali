.class public Lcom/bytedance/bdtracker/t3$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/bdtracker/t3;->a(Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/accounts/Account;

.field public final synthetic b:Lcom/bytedance/bdtracker/t3;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/t3;Landroid/accounts/Account;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/bdtracker/t3$a;->b:Lcom/bytedance/bdtracker/t3;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/bdtracker/t3$a;->a:Landroid/accounts/Account;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/t3$a;->b:Lcom/bytedance/bdtracker/t3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/bdtracker/t3;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_3

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/bdtracker/t3$a;->b:Lcom/bytedance/bdtracker/t3;

    .line 12
    .line 13
    iget-object v1, v0, Lcom/bytedance/bdtracker/t3;->c:Landroid/accounts/AccountManager;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object v0, v0, Lcom/bytedance/bdtracker/t3;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/util/Map$Entry;

    .line 39
    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v2, p0, Lcom/bytedance/bdtracker/t3$a;->b:Lcom/bytedance/bdtracker/t3;

    .line 44
    .line 45
    iget-object v2, v2, Lcom/bytedance/bdtracker/t3;->c:Landroid/accounts/AccountManager;

    .line 46
    .line 47
    iget-object v3, p0, Lcom/bytedance/bdtracker/t3$a;->a:Landroid/accounts/Account;

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Ljava/lang/String;

    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v2, v3, v4, v1}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    goto :goto_2

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/bytedance/bdtracker/t3$a;->b:Lcom/bytedance/bdtracker/t3;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/bytedance/bdtracker/t3;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_3
    :goto_1
    return-void

    .line 76
    :goto_2
    iget-object v1, p0, Lcom/bytedance/bdtracker/t3$a;->b:Lcom/bytedance/bdtracker/t3;

    .line 77
    .line 78
    iget-object v1, v1, Lcom/bytedance/bdtracker/t3;->f:Lcom/bytedance/bdtracker/d;

    .line 79
    .line 80
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 81
    .line 82
    const-string v2, "AccountCacheHelper"

    .line 83
    .line 84
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    const/4 v3, 0x0

    .line 89
    new-array v3, v3, [Ljava/lang/Object;

    .line 90
    .line 91
    const-string v4, "Set account failed"

    .line 92
    .line 93
    invoke-interface {v1, v2, v4, v0, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :goto_3
    return-void
.end method
