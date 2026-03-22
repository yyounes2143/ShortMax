.class public Lcom/bytedance/bdtracker/n5$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/bdtracker/n5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/CountDownLatch;

.field public final b:Lcom/bytedance/bdtracker/n5$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/bdtracker/n5$b<",
            "TSERVICE;TRESU",
            "LT;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSERVICE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/n5;Ljava/util/concurrent/CountDownLatch;Lcom/bytedance/bdtracker/n5$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountDownLatch;",
            "Lcom/bytedance/bdtracker/n5$b<",
            "TSERVICE;TRESU",
            "LT;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/bytedance/bdtracker/n5$a;->a:Ljava/util/concurrent/CountDownLatch;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/bytedance/bdtracker/n5$a;->b:Lcom/bytedance/bdtracker/n5$b;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .line 1
    const-string v0, "count down failed"

    .line 2
    .line 3
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "ServiceBlockBinder#onServiceConnected "

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 v2, 0x0

    .line 25
    new-array v3, v2, [Ljava/lang/Object;

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    invoke-interface {v1, v4, p1, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/bdtracker/n5$a;->b:Lcom/bytedance/bdtracker/n5$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    check-cast p1, Lcom/bytedance/dr/impl/a;

    .line 34
    .line 35
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/bytedance/dr/impl/a;->a(Landroid/os/IBinder;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/bytedance/bdtracker/n5$a;->c:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    :try_start_2
    iget-object p1, p0, Lcom/bytedance/bdtracker/n5$a;->a:Ljava/util/concurrent/CountDownLatch;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception p1

    .line 48
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    new-array v1, v2, [Ljava/lang/Object;

    .line 53
    .line 54
    invoke-interface {p2, v4, v0, p1, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    :try_start_3
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 60
    .line 61
    .line 62
    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 63
    const-string v1, "ServiceBlockBinder#onServiceConnected"

    .line 64
    .line 65
    :try_start_4
    new-array v3, v2, [Ljava/lang/Object;

    .line 66
    .line 67
    invoke-interface {p2, v4, v1, p1, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 68
    .line 69
    .line 70
    :try_start_5
    iget-object p1, p0, Lcom/bytedance/bdtracker/n5$a;->a:Ljava/util/concurrent/CountDownLatch;

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_1
    move-exception p1

    .line 77
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    new-array v1, v2, [Ljava/lang/Object;

    .line 82
    .line 83
    invoke-interface {p2, v4, v0, p1, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    return-void

    .line 87
    :catchall_1
    move-exception p1

    .line 88
    :try_start_6
    iget-object p2, p0, Lcom/bytedance/bdtracker/n5$a;->a:Ljava/util/concurrent/CountDownLatch;

    .line 89
    .line 90
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :catch_2
    move-exception p2

    .line 95
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    new-array v2, v2, [Ljava/lang/Object;

    .line 100
    .line 101
    invoke-interface {v1, v4, v0, p2, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :goto_1
    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "ServiceBlockBinder#onServiceDisconnected"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 v1, 0x0

    .line 23
    new-array v2, v1, [Ljava/lang/Object;

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    invoke-interface {v0, v3, p1, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/bdtracker/n5$a;->a:Ljava/util/concurrent/CountDownLatch;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p1

    .line 36
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-array v1, v1, [Ljava/lang/Object;

    .line 41
    .line 42
    const-string v2, "countDown failed"

    .line 43
    .line 44
    invoke-interface {v0, v3, v2, p1, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method
