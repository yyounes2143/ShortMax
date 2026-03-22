.class public Lcom/bytedance/bdtracker/q4;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static volatile a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/bdtracker/p1;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/bdtracker/x;->a:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    new-instance v1, Lcom/bytedance/bdtracker/q4$a;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/bytedance/bdtracker/q4$a;-><init>(Landroid/content/Context;Lcom/bytedance/bdtracker/p1;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    iget-object p1, p1, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->getGaidTimeOutMilliSeconds()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    int-to-long v0, p1

    .line 19
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 20
    .line 21
    invoke-interface {p0, v0, v1, p1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Ljava/lang/String;

    .line 26
    .line 27
    return-object p0
.end method
