.class public Lcom/bytedance/applog/log/NativeLoggerImpl;
.super Lcom/bytedance/applog/log/LoggerImpl;
.source "NativeLoggerImpl.java"


# instance fields
.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bytedance/applog/log/LoggerImpl;-><init>()V

    .line 2
    const-string v0, "NativeLoggerImpl"

    iput-object v0, p0, Lcom/bytedance/applog/log/NativeLoggerImpl;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/bytedance/applog/log/LoggerImpl;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/bytedance/applog/log/NativeLoggerImpl;->tag:Ljava/lang/String;

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
    invoke-static {}, Lcom/bytedance/applog/log/LogInfo;->builder()Lcom/bytedance/applog/log/LogInfoBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/bytedance/applog/log/LogInfoBuilder;->category(I)Lcom/bytedance/applog/log/LogInfoBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p2}, Lcom/bytedance/applog/log/LogInfoBuilder;->level(I)Lcom/bytedance/applog/log/LogInfoBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p1, p2}, Lcom/bytedance/applog/log/LogInfoBuilder;->thread(Ljava/lang/String;)Lcom/bytedance/applog/log/LogInfoBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1, p4}, Lcom/bytedance/applog/log/LogInfoBuilder;->throwable(Ljava/lang/Throwable;)Lcom/bytedance/applog/log/LogInfoBuilder;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p3}, Lcom/bytedance/applog/log/AbstractAppLogLogger;->getTags(Ljava/util/List;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p1, p2}, Lcom/bytedance/applog/log/LogInfoBuilder;->tags(Ljava/util/List;)Lcom/bytedance/applog/log/LogInfoBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, p5, p6}, Lcom/bytedance/applog/log/AbstractAppLogLogger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p1, p2}, Lcom/bytedance/applog/log/LogInfoBuilder;->message(Ljava/lang/String;)Lcom/bytedance/applog/log/LogInfoBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/bytedance/applog/log/LogInfoBuilder;->build()Lcom/bytedance/applog/log/LogInfo;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/bytedance/applog/log/LogInfo;->getLevel()I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-eqz p2, :cond_3

    .line 54
    .line 55
    const/4 p3, 0x2

    .line 56
    if-eq p2, p3, :cond_2

    .line 57
    .line 58
    const/4 p3, 0x3

    .line 59
    if-eq p2, p3, :cond_1

    .line 60
    .line 61
    const/4 p3, 0x4

    .line 62
    if-eq p2, p3, :cond_0

    .line 63
    .line 64
    const/4 p3, 0x5

    .line 65
    if-eq p2, p3, :cond_0

    .line 66
    .line 67
    iget-object p2, p0, Lcom/bytedance/applog/log/NativeLoggerImpl;->tag:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/bytedance/applog/log/LogInfo;->toMessage()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    invoke-virtual {p1}, Lcom/bytedance/applog/log/LogInfo;->getThrowable()Ljava/lang/Throwable;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {p2, p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    iget-object p2, p0, Lcom/bytedance/applog/log/NativeLoggerImpl;->tag:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/bytedance/applog/log/LogInfo;->toMessage()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    invoke-virtual {p1}, Lcom/bytedance/applog/log/LogInfo;->getThrowable()Ljava/lang/Throwable;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    iget-object p2, p0, Lcom/bytedance/applog/log/NativeLoggerImpl;->tag:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/bytedance/applog/log/LogInfo;->toMessage()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p3

    .line 101
    invoke-virtual {p1}, Lcom/bytedance/applog/log/LogInfo;->getThrowable()Ljava/lang/Throwable;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    iget-object p2, p0, Lcom/bytedance/applog/log/NativeLoggerImpl;->tag:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/bytedance/applog/log/LogInfo;->toMessage()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p3

    .line 115
    invoke-virtual {p1}, Lcom/bytedance/applog/log/LogInfo;->getThrowable()Ljava/lang/Throwable;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-static {p2, p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_3
    iget-object p2, p0, Lcom/bytedance/applog/log/NativeLoggerImpl;->tag:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/bytedance/applog/log/LogInfo;->toMessage()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p3

    .line 129
    invoke-virtual {p1}, Lcom/bytedance/applog/log/LogInfo;->getThrowable()Ljava/lang/Throwable;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-static {p2, p3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    .line 135
    .line 136
    :goto_0
    return-void
.end method
