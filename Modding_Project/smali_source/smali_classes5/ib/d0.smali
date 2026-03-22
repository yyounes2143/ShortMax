.class public Lib/d0;
.super Lcom/huawei/hms/common/internal/TaskApiCall;
.source "AccountNoticeTaskApiCall.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hms/common/internal/TaskApiCall<",
        "Lib/v;",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/hms/common/internal/TaskApiCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private b(Landroid/os/Parcelable;Lib/v;Lcom/huawei/hms/common/internal/ResponseErrorCode;Lua/g;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Lib/v;",
            "Lcom/huawei/hms/common/internal/ResponseErrorCode;",
            "Lua/g<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/huawei/hms/support/common/ActivityMgr;->INST:Lcom/huawei/hms/support/common/ActivityMgr;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/huawei/hms/support/common/ActivityMgr;->getCurrentActivity()Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v0, 0x1

    .line 8
    const-string v7, "AccountNoticeTaskApiCall"

    .line 9
    .line 10
    if-eqz v1, :cond_4

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_4

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    instance-of v2, p1, Landroid/content/Intent;

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    :try_start_0
    check-cast p1, Landroid/content/Intent;

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    const-string p1, "Jos Notice startActivity meet exception"

    .line 36
    .line 37
    invoke-static {v7, p1, v0}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    instance-of v2, p1, Landroid/app/PendingIntent;

    .line 42
    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    check-cast p1, Landroid/app/PendingIntent;

    .line 46
    .line 47
    :try_start_1
    invoke-virtual {p2}, Lcom/huawei/hms/common/internal/BaseHmsClient;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-static {p2}, Lcom/huawei/hms/utils/UIUtil;->isBackground(Landroid/content/Context;)Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-eqz p2, :cond_2

    .line 56
    .line 57
    const-string p2, "ui isBackground."

    .line 58
    .line 59
    invoke-static {v7, p2, v0}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 60
    .line 61
    .line 62
    new-instance p2, Lcom/huawei/hms/support/api/client/Status;

    .line 63
    .line 64
    invoke-interface {p3}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorCode()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-interface {p3}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorReason()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    invoke-direct {p2, v1, p3, p1}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 73
    .line 74
    .line 75
    new-instance p1, Lcom/huawei/hms/common/ApiException;

    .line 76
    .line 77
    invoke-direct {p1, p2}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p4, p1}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    const/4 v5, 0x0

    .line 89
    const/4 v6, 0x0

    .line 90
    const/4 v3, 0x0

    .line 91
    const/4 v4, 0x0

    .line 92
    invoke-virtual/range {v1 .. v6}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catch_1
    const-string p1, "Jos Notice startIntentSender meet exception"

    .line 97
    .line 98
    invoke-static {v7, p1, v0}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 99
    .line 100
    .line 101
    :cond_3
    :goto_0
    return-void

    .line 102
    :cond_4
    :goto_1
    const-string p1, "launchNoticeActivity failed, launchActivity is invalid"

    .line 103
    .line 104
    invoke-static {v7, p1, v0}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 105
    .line 106
    .line 107
    return-void
.end method


# virtual methods
.method protected synthetic a(Lcom/huawei/hms/common/internal/AnyClient;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lua/g;)V
    .locals 0

    .line 1
    check-cast p1, Lib/v;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lib/d0;->c(Lib/v;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lua/g;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected c(Lib/v;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lua/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lib/v;",
            "Lcom/huawei/hms/common/internal/ResponseErrorCode;",
            "Ljava/lang/String;",
            "Lua/g<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 p3, 0x1

    .line 2
    const-string v0, "AccountNoticeTaskApiCall"

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    const-string p1, "header is null."

    .line 7
    .line 8
    invoke-static {v0, p1, p3}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lcom/huawei/hms/support/api/client/Status;

    .line 12
    .line 13
    const/16 p2, 0x7d3

    .line 14
    .line 15
    const-string p3, "response is null."

    .line 16
    .line 17
    invoke-direct {p1, p2, p3}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance p2, Lcom/huawei/hms/common/ApiException;

    .line 21
    .line 22
    invoke-direct {p2, p1}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p4, p2}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getStatusCode()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorCode()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    const-string v1, "Jos Notice onResult success."

    .line 42
    .line 43
    invoke-static {v0, v1, p3}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 44
    .line 45
    .line 46
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getParcelable()Landroid/os/Parcelable;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    invoke-direct {p0, p3, p1, p2, p4}, Lib/d0;->b(Landroid/os/Parcelable;Lib/v;Lcom/huawei/hms/common/internal/ResponseErrorCode;Lua/g;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    new-instance p4, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v1, "Jos Notice onResult failed:"

    .line 60
    .line 61
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorCode()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, ",ErrReason:"

    .line 72
    .line 73
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorReason()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p4

    .line 87
    invoke-static {v0, p4, p3}, Lib/t;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 88
    .line 89
    .line 90
    :goto_0
    if-eqz p1, :cond_2

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/BaseHmsClient;->getContext()Landroid/content/Context;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/TaskApiCall;->getUri()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/TaskApiCall;->getTransactionId()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p4

    .line 104
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getStatusCode()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorCode()I

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    invoke-static {p1, p3, p4, v0, p2}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsClient;->reportExit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 113
    .line 114
    .line 115
    :cond_2
    return-void
.end method

.method public getApiLevel()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
