.class public Lcom/bytedance/bdtracker/h1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/log/ILogProcessor;


# instance fields
.field public final a:Lcom/bytedance/applog/ILogger;


# direct methods
.method public constructor <init>(Lcom/bytedance/applog/ILogger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/bdtracker/h1;->a:Lcom/bytedance/applog/ILogger;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onLog(Lcom/bytedance/applog/log/LogInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/h1;->a:Lcom/bytedance/applog/ILogger;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/bytedance/applog/log/LogInfo;->getMessage()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/bytedance/applog/log/LogInfo;->getThrowable()Ljava/lang/Throwable;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {v0, v1, p1}, Lcom/bytedance/applog/ILogger;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
