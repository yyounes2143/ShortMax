.class public Lib/c0;
.super Lcom/huawei/hms/common/internal/TaskApiCall;
.source "AccountLogoutTaskApiCall.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hms/common/internal/TaskApiCall<",
        "Lib/v;",
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

.method private b(Lcom/huawei/hms/common/internal/ResponseErrorCode;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "headerErrorCode:"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorCode()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const/4 v0, 0x1

    .line 35
    const-string v1, "AccountLogoutTaskApiCall"

    .line 36
    .line 37
    invoke-static {v1, p1, v0}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private c(Lib/v;Lcom/huawei/hms/common/internal/ResponseErrorCode;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/BaseHmsClient;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/TaskApiCall;->getTransactionId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorCode()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {v1}, Lib/s;->a(I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorCode()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    const-string v2, "hwid.logout"

    .line 27
    .line 28
    invoke-static {p1, v2, v0, v1, p2}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsClient;->reportExit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected synthetic a(Lcom/huawei/hms/common/internal/AnyClient;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lua/g;)V
    .locals 0

    .line 1
    check-cast p1, Lib/v;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lib/c0;->d(Lib/v;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lua/g;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected d(Lib/v;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lua/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lib/v;",
            "Lcom/huawei/hms/common/internal/ResponseErrorCode;",
            "Ljava/lang/String;",
            "Lua/g<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "AccountLogoutTaskApiCall"

    .line 2
    .line 3
    const-string v1, "AccountLogoutTaskApiCall doExecute"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    const-string p1, "response is null."

    .line 12
    .line 13
    invoke-static {v0, p1, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    new-instance p2, Lcom/huawei/hms/support/api/client/Status;

    .line 17
    .line 18
    const/16 p3, 0x7d3

    .line 19
    .line 20
    invoke-direct {p2, p3, p1}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance p1, Lcom/huawei/hms/common/ApiException;

    .line 24
    .line 25
    invoke-direct {p1, p2}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p4, p1}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    invoke-direct {p0, p2}, Lib/c0;->b(Lcom/huawei/hms/common/internal/ResponseErrorCode;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorCode()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v3, 0x0

    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    const-string p3, "hasContextResolution"

    .line 43
    .line 44
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getResolution()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    if-eqz p3, :cond_1

    .line 53
    .line 54
    const-string p3, "hms apk version is low or is not exist."

    .line 55
    .line 56
    invoke-static {v0, p3, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getParcelable()Landroid/os/Parcelable;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    check-cast p3, Landroid/app/PendingIntent;

    .line 64
    .line 65
    new-instance v0, Lcom/huawei/hms/support/api/client/Status;

    .line 66
    .line 67
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorCode()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorReason()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-direct {v0, v1, v2, p3}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 76
    .line 77
    .line 78
    new-instance p3, Lcom/huawei/hms/common/ResolvableApiException;

    .line 79
    .line 80
    invoke-direct {p3, v0}, Lcom/huawei/hms/common/ResolvableApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p4, p3}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    const-string p3, "AccountLogoutTaskApiCall callback."

    .line 88
    .line 89
    invoke-static {v0, p3, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 90
    .line 91
    .line 92
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorCode()I

    .line 93
    .line 94
    .line 95
    move-result p3

    .line 96
    const/16 v0, 0x7ef

    .line 97
    .line 98
    if-eq p3, v0, :cond_2

    .line 99
    .line 100
    new-instance p3, Lcom/huawei/hms/common/ApiException;

    .line 101
    .line 102
    new-instance v0, Lcom/huawei/hms/support/api/client/Status;

    .line 103
    .line 104
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorCode()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorReason()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-direct {v0, v1, v2}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-direct {p3, v0}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p4, p3}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 119
    .line 120
    .line 121
    :cond_2
    :goto_0
    invoke-virtual {p4, v3}, Lua/g;->c(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-direct {p0, p1, p2}, Lib/c0;->c(Lib/v;Lcom/huawei/hms/common/internal/ResponseErrorCode;)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 129
    .line 130
    .line 131
    move-result p3

    .line 132
    if-eqz p3, :cond_4

    .line 133
    .line 134
    new-instance p3, Lcom/huawei/hms/common/ApiException;

    .line 135
    .line 136
    new-instance v0, Lcom/huawei/hms/support/api/client/Status;

    .line 137
    .line 138
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorCode()I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorReason()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-direct {v0, v1, v2}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-direct {p3, v0}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p4, p3}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 153
    .line 154
    .line 155
    invoke-direct {p0, p1, p2}, Lib/c0;->c(Lib/v;Lcom/huawei/hms/common/internal/ResponseErrorCode;)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_4
    invoke-virtual {p4, v3}, Lua/g;->c(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    invoke-direct {p0, p1, p2}, Lib/c0;->c(Lib/v;Lcom/huawei/hms/common/internal/ResponseErrorCode;)V

    .line 163
    .line 164
    .line 165
    return-void
.end method

.method public getApiLevel()I
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    return v0
.end method

.method public getMinApkVersion()I
    .locals 1

    .line 1
    const v0, 0x3938700

    .line 2
    .line 3
    .line 4
    return v0
.end method
