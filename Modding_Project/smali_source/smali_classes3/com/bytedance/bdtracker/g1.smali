.class public Lcom/bytedance/bdtracker/g1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/log/ILogProcessor;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/d;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/bytedance/applog/log/LogInfo;->builder()Lcom/bytedance/applog/log/LogInfoBuilder;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p1, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/bytedance/applog/log/LogInfoBuilder;->appId(Ljava/lang/String;)Lcom/bytedance/applog/log/LogInfoBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Lcom/bytedance/applog/log/LogInfoBuilder;->level(I)Lcom/bytedance/applog/log/LogInfoBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/bytedance/applog/log/LogInfoBuilder;->thread(Ljava/lang/String;)Lcom/bytedance/applog/log/LogInfoBuilder;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "Console logger debug is:"

    .line 32
    .line 33
    invoke-static {v1}, Lcom/bytedance/bdtracker/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-boolean p1, p1, Lcom/bytedance/bdtracker/d;->G:Z

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v0, p1}, Lcom/bytedance/applog/log/LogInfoBuilder;->message(Ljava/lang/String;)Lcom/bytedance/applog/log/LogInfoBuilder;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lcom/bytedance/applog/log/LogInfoBuilder;->build()Lcom/bytedance/applog/log/LogInfo;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/g1;->onLog(Lcom/bytedance/applog/log/LogInfo;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public onLog(Lcom/bytedance/applog/log/LogInfo;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/bytedance/applog/log/LogInfo;->getLevel()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const-string v2, "AppLog"

    .line 7
    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x5

    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/bytedance/applog/log/LogInfo;->toLiteString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/applog/log/LogInfo;->toLiteString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1}, Lcom/bytedance/applog/log/LogInfo;->getThrowable()Ljava/lang/Throwable;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/applog/log/LogInfo;->toLiteString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1}, Lcom/bytedance/applog/log/LogInfo;->getThrowable()Ljava/lang/Throwable;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {v2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/applog/log/LogInfo;->toLiteString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void
.end method
