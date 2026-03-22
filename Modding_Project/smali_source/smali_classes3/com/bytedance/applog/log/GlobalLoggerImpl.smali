.class public final Lcom/bytedance/applog/log/GlobalLoggerImpl;
.super Lcom/bytedance/applog/log/LoggerImpl;
.source "GlobalLoggerImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/applog/log/LoggerImpl;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected varargs process(IILjava/util/List;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/bytedance/applog/log/LogProcessorHolder;->noAnyProcessor()Z

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
    invoke-static {}, Lcom/bytedance/applog/log/LogInfo;->builder()Lcom/bytedance/applog/log/LogInfoBuilder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Lcom/bytedance/applog/log/LogInfoBuilder;->category(I)Lcom/bytedance/applog/log/LogInfoBuilder;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1, p2}, Lcom/bytedance/applog/log/LogInfoBuilder;->level(I)Lcom/bytedance/applog/log/LogInfoBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p1, p2}, Lcom/bytedance/applog/log/LogInfoBuilder;->thread(Ljava/lang/String;)Lcom/bytedance/applog/log/LogInfoBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1, p4}, Lcom/bytedance/applog/log/LogInfoBuilder;->throwable(Ljava/lang/Throwable;)Lcom/bytedance/applog/log/LogInfoBuilder;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p0, p3}, Lcom/bytedance/applog/log/AbstractAppLogLogger;->getTags(Ljava/util/List;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p1, p2}, Lcom/bytedance/applog/log/LogInfoBuilder;->tags(Ljava/util/List;)Lcom/bytedance/applog/log/LogInfoBuilder;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p0, p5, p6}, Lcom/bytedance/applog/log/AbstractAppLogLogger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p1, p2}, Lcom/bytedance/applog/log/LogInfoBuilder;->message(Ljava/lang/String;)Lcom/bytedance/applog/log/LogInfoBuilder;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lcom/bytedance/applog/log/LogInfoBuilder;->build()Lcom/bytedance/applog/log/LogInfo;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p1}, Lcom/bytedance/applog/log/LogProcessorHolder;->commonProcess(Lcom/bytedance/applog/log/LogInfo;)V

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lcom/bytedance/applog/log/LogProcessorHolder;->getAppProcessors()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result p3

    .line 67
    if-eqz p3, :cond_1

    .line 68
    .line 69
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    check-cast p3, Lcom/bytedance/applog/log/ILogProcessor;

    .line 74
    .line 75
    invoke-interface {p3, p1}, Lcom/bytedance/applog/log/ILogProcessor;->onLog(Lcom/bytedance/applog/log/LogInfo;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v0, "You should not set appId on global logger instance"

    .line 5
    .line 6
    invoke-virtual {p0, v0, p1}, Lcom/bytedance/applog/log/LoggerImpl;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
