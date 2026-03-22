.class public final Lcom/bytedance/bdtracker/m0;
.super Ljava/lang/Throwable;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public printStackTrace()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "AppLog assert failed: "

    .line 6
    .line 7
    invoke-static {v1}, Lcom/bytedance/bdtracker/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string v4, "stackTrace"

    .line 30
    .line 31
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    array-length v2, v2

    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v2, v3

    .line 40
    :goto_0
    if-nez v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    aget-object v2, v2, v3

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    const-string v2, "function interrupt"

    .line 54
    .line 55
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    new-array v3, v3, [Ljava/lang/Object;

    .line 67
    .line 68
    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->ast(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method
