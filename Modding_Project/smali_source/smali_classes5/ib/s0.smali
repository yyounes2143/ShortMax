.class public Lib/s0;
.super Lcom/huawei/hms/common/internal/TaskApiCall;
.source "HuaweiIdCancelAuthorizationTaskApiCall.java"


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


# virtual methods
.method protected synthetic a(Lcom/huawei/hms/common/internal/AnyClient;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lua/g;)V
    .locals 0

    .line 1
    check-cast p1, Lib/n0;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lib/s0;->b(Lib/n0;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lua/g;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected b(Lib/n0;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lua/g;)V
    .locals 6
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
    const-string v0, "HuaweiIdCancelAuthorizationTaskApiCall"

    .line 2
    .line 3
    const-string v1, "HuaweiIdCancelAuthorizationTaskApiCall doExecute"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lib/q0;->d()V

    .line 10
    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    const-string p1, "response is null."

    .line 15
    .line 16
    invoke-static {v0, p1, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    new-instance p2, Lcom/huawei/hms/support/api/client/Status;

    .line 20
    .line 21
    const/16 p3, 0x7d3

    .line 22
    .line 23
    invoke-direct {p2, p3, p1}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance p1, Lcom/huawei/hms/common/ApiException;

    .line 27
    .line 28
    invoke-direct {p1, p2}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p4, p1}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorCode()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    const-string v3, "hasContextResolution"

    .line 42
    .line 43
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getResolution()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    const-string p1, "apk version is low or is not exist."

    .line 54
    .line 55
    invoke-static {v0, p1, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    new-instance p1, Lcom/huawei/hms/support/api/client/Status;

    .line 59
    .line 60
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorReason()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    invoke-direct {p1, v1, p3}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {p2, p1}, Lib/p;->c(Lcom/huawei/hms/common/internal/ResponseErrorCode;Lcom/huawei/hms/support/api/client/Status;)V

    .line 68
    .line 69
    .line 70
    new-instance p2, Lcom/huawei/hms/common/ResolvableApiException;

    .line 71
    .line 72
    invoke-direct {p2, p1}, Lcom/huawei/hms/common/ResolvableApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p4, p2}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-nez v3, :cond_4

    .line 84
    .line 85
    const-string v3, "{}"

    .line 86
    .line 87
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_2

    .line 92
    .line 93
    const-string p1, "CancelAuthorization complete, body is null"

    .line 94
    .line 95
    invoke-static {v0, p1, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 96
    .line 97
    .line 98
    new-instance p1, Lcom/huawei/hms/common/ApiException;

    .line 99
    .line 100
    new-instance p3, Lcom/huawei/hms/support/api/client/Status;

    .line 101
    .line 102
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorReason()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-direct {p3, v1, p2}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-direct {p1, p3}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p4, p1}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_2
    :try_start_0
    new-instance v3, Lcom/huawei/hms/support/api/hwid/RevokeAccessResult;

    .line 117
    .line 118
    invoke-direct {v3}, Lcom/huawei/hms/support/api/hwid/RevokeAccessResult;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3, p3}, Lcom/huawei/hms/support/api/hwid/RevokeAccessResult;->fromJson(Ljava/lang/String;)Lcom/huawei/hms/support/api/hwid/RevokeAccessResult;

    .line 122
    .line 123
    .line 124
    move-result-object p3

    .line 125
    invoke-virtual {p3}, Lcom/huawei/hms/support/api/hwid/RevokeAccessResult;->isSuccess()Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-nez v3, :cond_3

    .line 130
    .line 131
    invoke-virtual {p3}, Lcom/huawei/hms/support/api/client/Result;->getStatus()Lcom/huawei/hms/support/api/client/Status;

    .line 132
    .line 133
    .line 134
    move-result-object p3

    .line 135
    new-instance v3, Lcom/huawei/hms/common/ApiException;

    .line 136
    .line 137
    new-instance v4, Lcom/huawei/hms/support/api/client/Status;

    .line 138
    .line 139
    invoke-virtual {p3}, Lcom/huawei/hms/support/api/client/Status;->getStatusCode()I

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    invoke-virtual {p3}, Lcom/huawei/hms/support/api/client/Status;->getStatusMessage()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p3

    .line 147
    invoke-direct {v4, v5, p3}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-direct {v3, v4}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p4, v3}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :catch_0
    move-exception p3

    .line 158
    goto :goto_0

    .line 159
    :cond_3
    const/4 p3, 0x0

    .line 160
    invoke-virtual {p4, p3}, Lua/g;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    const-string v4, "JSONException:"

    .line 170
    .line 171
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    move-result-object p3

    .line 178
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p3

    .line 182
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p3

    .line 189
    invoke-static {v0, p3, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 190
    .line 191
    .line 192
    new-instance p3, Lcom/huawei/hms/support/api/client/Status;

    .line 193
    .line 194
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorReason()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    invoke-direct {p3, v1, p2}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 199
    .line 200
    .line 201
    new-instance p2, Lcom/huawei/hms/common/ApiException;

    .line 202
    .line 203
    invoke-direct {p2, p3}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p4, p2}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 207
    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_4
    new-instance p3, Lcom/huawei/hms/common/ApiException;

    .line 211
    .line 212
    new-instance v0, Lcom/huawei/hms/support/api/client/Status;

    .line 213
    .line 214
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorReason()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p2

    .line 218
    invoke-direct {v0, v1, p2}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-direct {p3, v0}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p4, p3}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 225
    .line 226
    .line 227
    :goto_1
    if-eqz p1, :cond_5

    .line 228
    .line 229
    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/BaseHmsClient;->getContext()Landroid/content/Context;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/TaskApiCall;->getTransactionId()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p2

    .line 237
    invoke-static {v1}, Lib/s;->a(I)I

    .line 238
    .line 239
    .line 240
    move-result p3

    .line 241
    const-string p4, "hwid.revokeAccess"

    .line 242
    .line 243
    invoke-static {p1, p4, p2, p3, v1}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsClient;->reportExit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 244
    .line 245
    .line 246
    :cond_5
    return-void
.end method

.method public getApiLevel()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
