.class public Lib/h0;
.super Lcom/huawei/hms/common/internal/TaskApiCall;
.source "AccountStartAssistLoginTaskApiCall.java"


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


# virtual methods
.method protected synthetic a(Lcom/huawei/hms/common/internal/AnyClient;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lua/g;)V
    .locals 0

    .line 1
    check-cast p1, Lib/v;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lib/h0;->b(Lib/v;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lua/g;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected b(Lib/v;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lua/g;)V
    .locals 5
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
    const-string v0, "AccountStartAssistLoginTaskApiCall"

    .line 2
    .line 3
    const-string v1, "AccountStartAssistLoginTaskApiCall doExecute"

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
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorCode()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    const-string v3, "hasContextResolution"

    .line 39
    .line 40
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getResolution()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    const-string p1, "apk version is low or is not exist."

    .line 51
    .line 52
    invoke-static {v0, p1, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 53
    .line 54
    .line 55
    new-instance p1, Lcom/huawei/hms/support/api/client/Status;

    .line 56
    .line 57
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorReason()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    invoke-direct {p1, v1, p3}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {p2, p1}, Lib/p;->c(Lcom/huawei/hms/common/internal/ResponseErrorCode;Lcom/huawei/hms/support/api/client/Status;)V

    .line 65
    .line 66
    .line 67
    new-instance p2, Lcom/huawei/hms/common/ResolvableApiException;

    .line 68
    .line 69
    invoke-direct {p2, p1}, Lcom/huawei/hms/common/ResolvableApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p4, p2}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-nez v3, :cond_4

    .line 81
    .line 82
    const-string v3, "{}"

    .line 83
    .line 84
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_2

    .line 89
    .line 90
    const-string p1, "signIn complete, body is null"

    .line 91
    .line 92
    invoke-static {v0, p1, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 93
    .line 94
    .line 95
    new-instance p1, Lcom/huawei/hms/common/ApiException;

    .line 96
    .line 97
    new-instance p3, Lcom/huawei/hms/support/api/client/Status;

    .line 98
    .line 99
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorReason()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-direct {p3, v1, p2}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-direct {p1, p3}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p4, p1}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_2
    :try_start_0
    new-instance v3, Lcom/huawei/hms/support/api/hwid/StartAssistLoginResult;

    .line 114
    .line 115
    invoke-direct {v3}, Lcom/huawei/hms/support/api/hwid/StartAssistLoginResult;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3, p3}, Lcom/huawei/hms/support/api/hwid/StartAssistLoginResult;->fromJson(Ljava/lang/String;)Lcom/huawei/hms/support/api/hwid/StartAssistLoginResult;

    .line 119
    .line 120
    .line 121
    move-result-object p3

    .line 122
    invoke-virtual {p3}, Lcom/huawei/hms/support/api/hwid/StartAssistLoginResult;->isSuccess()Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-eqz v3, :cond_3

    .line 127
    .line 128
    const/4 p3, 0x0

    .line 129
    invoke-virtual {p4, p3}, Lua/g;->c(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_3
    new-instance v3, Lcom/huawei/hms/common/ApiException;

    .line 134
    .line 135
    invoke-virtual {p3}, Lcom/huawei/hms/support/api/client/Result;->getStatus()Lcom/huawei/hms/support/api/client/Status;

    .line 136
    .line 137
    .line 138
    move-result-object p3

    .line 139
    invoke-direct {v3, p3}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p4, v3}, Lua/g;->b(Ljava/lang/Exception;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :catch_0
    const-string p3, "tartAssistLogin complete, but parser json exception"

    .line 147
    .line 148
    invoke-static {v0, p3, v2}, Lib/t;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 149
    .line 150
    .line 151
    new-instance p3, Lcom/huawei/hms/common/ApiException;

    .line 152
    .line 153
    new-instance v0, Lcom/huawei/hms/support/api/client/Status;

    .line 154
    .line 155
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorReason()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    invoke-direct {v0, v1, p2}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-direct {p3, v0}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p4, p3}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 166
    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_4
    new-instance p3, Lcom/huawei/hms/common/ApiException;

    .line 170
    .line 171
    new-instance v0, Lcom/huawei/hms/support/api/client/Status;

    .line 172
    .line 173
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorReason()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    invoke-direct {v0, v1, p2}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-direct {p3, v0}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p4, p3}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 184
    .line 185
    .line 186
    :goto_0
    if-eqz p1, :cond_5

    .line 187
    .line 188
    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/BaseHmsClient;->getContext()Landroid/content/Context;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/TaskApiCall;->getUri()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/TaskApiCall;->getTransactionId()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p3

    .line 200
    invoke-static {v1}, Lib/s;->a(I)I

    .line 201
    .line 202
    .line 203
    move-result p4

    .line 204
    invoke-static {p1, p2, p3, p4, v1}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsClient;->reportExit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 205
    .line 206
    .line 207
    :cond_5
    return-void
.end method

.method public getApiLevel()I
    .locals 1

    .line 1
    const/16 v0, 0xe

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
