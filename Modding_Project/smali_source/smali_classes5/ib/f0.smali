.class public Lib/f0;
.super Lcom/huawei/hms/common/internal/TaskApiCall;
.source "AccountSignInTaskApiCall.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hms/common/internal/TaskApiCall<",
        "Lib/v;",
        "Lcom/huawei/hms/support/account/result/AuthAccount;",
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
    invoke-virtual {p0, p1, p2, p3, p4}, Lib/f0;->b(Lib/v;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lua/g;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected b(Lib/v;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lua/g;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lib/v;",
            "Lcom/huawei/hms/common/internal/ResponseErrorCode;",
            "Ljava/lang/String;",
            "Lua/g<",
            "Lcom/huawei/hms/support/account/result/AuthAccount;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "[AccountSDK]AccountSignInTaskApiCall"

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    const-string p1, "response is null."

    .line 7
    .line 8
    invoke-static {v1, p1, v0}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    new-instance p2, Lcom/huawei/hms/support/api/client/Status;

    .line 12
    .line 13
    const/16 p3, 0x7d3

    .line 14
    .line 15
    invoke-direct {p2, p3, p1}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Lcom/huawei/hms/common/ApiException;

    .line 19
    .line 20
    invoke-direct {p1, p2}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p4, p1}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v3, "ResponseErrorCode.status:"

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorCode()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {v1, v2, v0}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorCode()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    const-string v3, "hasContextResolution"

    .line 58
    .line 59
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getResolution()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_1

    .line 68
    .line 69
    const-string p1, "apk version is low or is not exist."

    .line 70
    .line 71
    invoke-static {v1, p1, v0}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 72
    .line 73
    .line 74
    new-instance p1, Lcom/huawei/hms/support/api/client/Status;

    .line 75
    .line 76
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorReason()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    invoke-direct {p1, v2, p3}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-static {p2, p1}, Lib/p;->c(Lcom/huawei/hms/common/internal/ResponseErrorCode;Lcom/huawei/hms/support/api/client/Status;)V

    .line 84
    .line 85
    .line 86
    new-instance p2, Lcom/huawei/hms/common/ResolvableApiException;

    .line 87
    .line 88
    invoke-direct {p2, p1}, Lcom/huawei/hms/common/ResolvableApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p4, p2}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    const/4 v4, 0x0

    .line 100
    if-nez v3, :cond_4

    .line 101
    .line 102
    const-string v3, "{}"

    .line 103
    .line 104
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-eqz v3, :cond_2

    .line 109
    .line 110
    const-string p1, "signIn complete, body is null"

    .line 111
    .line 112
    invoke-static {v1, p1, v0}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 113
    .line 114
    .line 115
    new-instance p1, Lcom/huawei/hms/common/ApiException;

    .line 116
    .line 117
    new-instance p3, Lcom/huawei/hms/support/api/client/Status;

    .line 118
    .line 119
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorCode()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorReason()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    invoke-direct {p3, v0, p2}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-direct {p1, p3}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p4, p1}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :cond_2
    :try_start_0
    new-instance v3, Lcom/huawei/hms/support/account/result/AccountAuthResult;

    .line 138
    .line 139
    invoke-direct {v3}, Lcom/huawei/hms/support/account/result/AccountAuthResult;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, p3}, Lcom/huawei/hms/support/account/result/AccountAuthResult;->fromJson(Ljava/lang/String;)Lcom/huawei/hms/support/account/result/AccountAuthResult;

    .line 143
    .line 144
    .line 145
    move-result-object p3

    .line 146
    invoke-virtual {p3}, Lcom/huawei/hms/support/api/client/Result;->getStatus()Lcom/huawei/hms/support/api/client/Status;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-virtual {v3}, Lcom/huawei/hms/support/api/client/Status;->getStatusCode()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    invoke-virtual {p3}, Lcom/huawei/hms/support/feature/result/AbstractAuthResult;->isSuccess()Z

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    if-eqz v3, :cond_3

    .line 159
    .line 160
    const-string v3, "signIn success"

    .line 161
    .line 162
    invoke-static {v1, v3, v0}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 163
    .line 164
    .line 165
    new-instance v3, Lib/x;

    .line 166
    .line 167
    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/BaseHmsClient;->getContext()Landroid/content/Context;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    invoke-direct {v3, v5}, Lib/x;-><init>(Landroid/content/Context;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3}, Lib/x;->d()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p3}, Lcom/huawei/hms/support/account/result/AccountAuthResult;->getAccount()Lcom/huawei/hms/support/account/result/AuthAccount;

    .line 178
    .line 179
    .line 180
    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :try_start_1
    invoke-virtual {p3}, Lcom/huawei/hms/support/account/result/AccountAuthResult;->getAccount()Lcom/huawei/hms/support/account/result/AuthAccount;

    .line 182
    .line 183
    .line 184
    move-result-object p3

    .line 185
    invoke-virtual {p4, p3}, Lua/g;->c(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :catch_0
    move-object v3, v4

    .line 190
    goto :goto_0

    .line 191
    :cond_3
    :try_start_2
    const-string v3, "signIn failed"

    .line 192
    .line 193
    invoke-static {v1, v3, v0}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 194
    .line 195
    .line 196
    new-instance v3, Lcom/huawei/hms/common/ApiException;

    .line 197
    .line 198
    invoke-virtual {p3}, Lcom/huawei/hms/support/api/client/Result;->getStatus()Lcom/huawei/hms/support/api/client/Status;

    .line 199
    .line 200
    .line 201
    move-result-object p3

    .line 202
    invoke-direct {v3, p3}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p4, v3}, Lua/g;->b(Ljava/lang/Exception;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 206
    .line 207
    .line 208
    goto :goto_1

    .line 209
    :catch_1
    :goto_0
    const-string p3, "signIn complete, but parser json exception"

    .line 210
    .line 211
    invoke-static {v1, p3, v0}, Lib/t;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 212
    .line 213
    .line 214
    new-instance p3, Lcom/huawei/hms/common/ApiException;

    .line 215
    .line 216
    new-instance v0, Lcom/huawei/hms/support/api/client/Status;

    .line 217
    .line 218
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorReason()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p2

    .line 222
    invoke-direct {v0, v2, p2}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-direct {p3, v0}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p4, p3}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 229
    .line 230
    .line 231
    goto :goto_2

    .line 232
    :cond_4
    const-string p3, "signIn complete, response is null, failed"

    .line 233
    .line 234
    invoke-static {v1, p3, v0}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 235
    .line 236
    .line 237
    new-instance p3, Lcom/huawei/hms/common/ApiException;

    .line 238
    .line 239
    new-instance v0, Lcom/huawei/hms/support/api/client/Status;

    .line 240
    .line 241
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorCode()I

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorReason()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    invoke-direct {v0, v1, p2}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-direct {p3, v0}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p4, p3}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 256
    .line 257
    .line 258
    :goto_1
    move-object v3, v4

    .line 259
    :goto_2
    invoke-static {}, Lib/z;->a()Lib/z;

    .line 260
    .line 261
    .line 262
    move-result-object p2

    .line 263
    invoke-virtual {p2, v3, v4}, Lib/z;->b(Lcom/huawei/hms/support/account/result/AuthAccount;Lcom/huawei/hms/support/account/request/AccountAuthParams;)V

    .line 264
    .line 265
    .line 266
    if-eqz p1, :cond_5

    .line 267
    .line 268
    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/BaseHmsClient;->getContext()Landroid/content/Context;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/TaskApiCall;->getUri()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p2

    .line 276
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/TaskApiCall;->getTransactionId()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p3

    .line 280
    invoke-static {v2}, Lib/s;->a(I)I

    .line 281
    .line 282
    .line 283
    move-result p4

    .line 284
    invoke-static {p1, p2, p3, p4, v2}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsClient;->reportExit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 285
    .line 286
    .line 287
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
