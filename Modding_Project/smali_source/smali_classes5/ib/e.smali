.class public Lib/e;
.super Lcom/huawei/hms/common/internal/TaskApiCall;
.source "HuaweiIdSignOutTaskApiCall.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hms/common/internal/TaskApiCall<",
        "Lib/n0;",
        "Ljava/lang/Void;",
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

.method private b(Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "headerErrorCode:"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorCode()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const/4 p2, 0x1

    .line 35
    const-string v0, "[HUAWEIIDSDK]HuaweiIdSignOutTaskApiCall"

    .line 36
    .line 37
    invoke-static {v0, p1, p2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method protected synthetic a(Lcom/huawei/hms/common/internal/AnyClient;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lua/g;)V
    .locals 0

    .line 1
    check-cast p1, Lib/n0;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lib/e;->c(Lib/n0;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lua/g;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected c(Lib/n0;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lua/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lib/n0;",
            "Lcom/huawei/hms/common/internal/ResponseErrorCode;",
            "Ljava/lang/String;",
            "Lua/g<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const-string p1, "[HUAWEIIDSDK]HuaweiIdSignOutTaskApiCall"

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    const-string p3, "response is null."

    .line 7
    .line 8
    invoke-static {p1, p3, p2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lcom/huawei/hms/support/api/client/Status;

    .line 12
    .line 13
    const/16 p2, 0x7d3

    .line 14
    .line 15
    invoke-direct {p1, p2, p3}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance p2, Lcom/huawei/hms/common/ApiException;

    .line 19
    .line 20
    invoke-direct {p2, p1}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p4, p2}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-direct {p0, p2, p3}, Lib/e;->b(Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorCode()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    :try_start_0
    new-instance v1, Lcom/huawei/hms/support/api/hwid/SignOutResult;

    .line 41
    .line 42
    invoke-direct {v1}, Lcom/huawei/hms/support/api/hwid/SignOutResult;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p3}, Lcom/huawei/hms/support/api/hwid/SignOutResult;->fromJson(Ljava/lang/String;)Lcom/huawei/hms/support/api/hwid/SignOutResult;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    invoke-virtual {p3}, Lcom/huawei/hms/support/api/client/Result;->getStatus()Lcom/huawei/hms/support/api/client/Status;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lcom/huawei/hms/support/api/client/Status;->getStatusCode()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-virtual {p3}, Lcom/huawei/hms/support/api/hwid/SignOutResult;->isSuccess()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    const/4 p3, 0x0

    .line 64
    invoke-virtual {p4, p3}, Lua/g;->c(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    new-instance v1, Lcom/huawei/hms/common/ApiException;

    .line 69
    .line 70
    invoke-virtual {p3}, Lcom/huawei/hms/support/api/client/Result;->getStatus()Lcom/huawei/hms/support/api/client/Status;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    invoke-direct {v1, p3}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p4, v1}, Lua/g;->b(Ljava/lang/Exception;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catch_0
    new-instance p3, Lcom/huawei/hms/common/ApiException;

    .line 82
    .line 83
    new-instance v1, Lcom/huawei/hms/support/api/client/Status;

    .line 84
    .line 85
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorCode()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorReason()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-direct {v1, v2, p2}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-direct {p3, v1}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p4, p3}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    new-instance p3, Lcom/huawei/hms/common/ApiException;

    .line 104
    .line 105
    new-instance v1, Lcom/huawei/hms/support/api/client/Status;

    .line 106
    .line 107
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorCode()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorReason()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-direct {v1, v2, p2}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-direct {p3, v1}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p4, p3}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 122
    .line 123
    .line 124
    :goto_0
    if-eqz p1, :cond_3

    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/BaseHmsClient;->getContext()Landroid/content/Context;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/TaskApiCall;->getTransactionId()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-static {v0}, Lib/s;->a(I)I

    .line 135
    .line 136
    .line 137
    move-result p3

    .line 138
    const-string p4, "hwid.signout"

    .line 139
    .line 140
    invoke-static {p1, p4, p2, p3, v0}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsClient;->reportExit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 141
    .line 142
    .line 143
    :cond_3
    return-void
.end method

.method public getApiLevel()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
