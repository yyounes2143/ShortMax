.class public final Lcom/bytedance/bdtracker/n5;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/bdtracker/n5$b;,
        Lcom/bytedance/bdtracker/n5$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SERVICE:",
        "Ljava/lang/Object;",
        "RESU",
        "LT:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/CountDownLatch;

.field public final b:Landroid/content/Intent;

.field public final c:Lcom/bytedance/bdtracker/n5$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/bdtracker/n5$b<",
            "TSERVICE;TRESU",
            "LT;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/bdtracker/n5$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
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
    iput-object p1, p0, Lcom/bytedance/bdtracker/n5;->d:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bytedance/bdtracker/n5;->b:Landroid/content/Intent;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/bytedance/bdtracker/n5;->c:Lcom/bytedance/bdtracker/n5$b;

    .line 9
    .line 10
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    .line 11
    .line 12
    const/4 p2, 0x1

    .line 13
    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/bytedance/bdtracker/n5;->a:Ljava/util/concurrent/CountDownLatch;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Lcom/bytedance/bdtracker/n5$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/bdtracker/n5<",
            "TSERVICE;TRESU",
            "LT;",
            ">.a;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/n5;->d:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    new-array v1, v1, [Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    const-string v3, "Release connection failed"

    .line 19
    .line 20
    invoke-interface {v0, v2, v3, p1, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    :goto_0
    return-void
.end method
