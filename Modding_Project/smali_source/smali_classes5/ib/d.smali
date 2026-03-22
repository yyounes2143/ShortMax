.class public Lib/d;
.super Lcom/huawei/hms/common/internal/TaskApiCall;
.source "HuaweiIdSignInTaskApiCall.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hms/common/internal/TaskApiCall<",
        "Lib/n0;",
        "Lcom/huawei/hms/support/hwid/result/AuthHuaweiId;",
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
    invoke-virtual {p0, p1, p2, p3, p4}, Lib/d;->b(Lib/n0;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lua/g;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected b(Lib/n0;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lua/g;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lib/n0;",
            "Lcom/huawei/hms/common/internal/ResponseErrorCode;",
            "Ljava/lang/String;",
            "Lua/g<",
            "Lcom/huawei/hms/support/hwid/result/AuthHuaweiId;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p4

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "[HUAWEIIDSDK]SignInTaskApiCall"

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    const-string v3, "response is null."

    .line 9
    .line 10
    invoke-static {v2, v3, v1}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/huawei/hms/support/api/client/Status;

    .line 14
    .line 15
    const/16 v2, 0x7d3

    .line 16
    .line 17
    invoke-direct {v1, v2, v3}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lcom/huawei/hms/common/ApiException;

    .line 21
    .line 22
    invoke-direct {v2, v1}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v4, "ResponseErrorCode.status:"

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-interface/range {p2 .. p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorCode()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-static {v2, v3, v1}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    invoke-interface/range {p2 .. p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorCode()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    const/4 v5, 0x0

    .line 62
    if-nez v4, :cond_2

    .line 63
    .line 64
    :try_start_0
    new-instance v4, Lcom/huawei/hms/support/hwid/result/HuaweiIdAuthResult;

    .line 65
    .line 66
    invoke-direct {v4}, Lcom/huawei/hms/support/hwid/result/HuaweiIdAuthResult;-><init>()V

    .line 67
    .line 68
    .line 69
    move-object/from16 v6, p3

    .line 70
    .line 71
    invoke-virtual {v4, v6}, Lcom/huawei/hms/support/hwid/result/HuaweiIdAuthResult;->fromJson(Ljava/lang/String;)Lcom/huawei/hms/support/hwid/result/HuaweiIdAuthResult;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v4}, Lcom/huawei/hms/support/api/client/Result;->getStatus()Lcom/huawei/hms/support/api/client/Status;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    invoke-virtual {v6}, Lcom/huawei/hms/support/api/client/Status;->getStatusCode()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    invoke-virtual {v4}, Lcom/huawei/hms/support/feature/result/AbstractAuthResult;->isSuccess()Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-eqz v6, :cond_1

    .line 88
    .line 89
    const-string v6, "signIn success"

    .line 90
    .line 91
    invoke-static {v2, v6, v1}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 92
    .line 93
    .line 94
    new-instance v6, Lib/p0;

    .line 95
    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/common/internal/BaseHmsClient;->getContext()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    invoke-direct {v6, v7}, Lib/p0;-><init>(Landroid/content/Context;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v6}, Lib/p0;->d()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4}, Lcom/huawei/hms/support/hwid/result/HuaweiIdAuthResult;->getHuaweiId()Lcom/huawei/hms/support/hwid/result/AuthHuaweiId;

    .line 107
    .line 108
    .line 109
    move-result-object v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :try_start_1
    invoke-virtual {v4}, Lcom/huawei/hms/support/hwid/result/HuaweiIdAuthResult;->getHuaweiId()Lcom/huawei/hms/support/hwid/result/AuthHuaweiId;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-virtual {v0, v4}, Lua/g;->c(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :catch_0
    move-object v6, v5

    .line 119
    goto :goto_1

    .line 120
    :cond_1
    :try_start_2
    const-string v6, "signIn failed"

    .line 121
    .line 122
    invoke-static {v2, v6, v1}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 123
    .line 124
    .line 125
    new-instance v6, Lcom/huawei/hms/common/ApiException;

    .line 126
    .line 127
    invoke-virtual {v4}, Lcom/huawei/hms/support/api/client/Result;->getStatus()Lcom/huawei/hms/support/api/client/Status;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-direct {v6, v4}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v6}, Lua/g;->b(Ljava/lang/Exception;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 135
    .line 136
    .line 137
    move-object v6, v5

    .line 138
    :goto_0
    move v14, v3

    .line 139
    goto :goto_2

    .line 140
    :catch_1
    :goto_1
    const-string v4, "signIn complete, but parser json exception"

    .line 141
    .line 142
    invoke-static {v2, v4, v1}, Lib/t;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 143
    .line 144
    .line 145
    new-instance v4, Lcom/huawei/hms/common/ApiException;

    .line 146
    .line 147
    new-instance v7, Lcom/huawei/hms/support/api/client/Status;

    .line 148
    .line 149
    invoke-interface/range {p2 .. p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorCode()I

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    invoke-interface/range {p2 .. p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorReason()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v9

    .line 157
    invoke-direct {v7, v8, v9}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-direct {v4, v7}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v4}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 164
    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_2
    const-string v4, "signIn complete, response is null, failed"

    .line 168
    .line 169
    invoke-static {v2, v4, v1}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 170
    .line 171
    .line 172
    new-instance v4, Lcom/huawei/hms/common/ApiException;

    .line 173
    .line 174
    new-instance v6, Lcom/huawei/hms/support/api/client/Status;

    .line 175
    .line 176
    invoke-interface/range {p2 .. p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorCode()I

    .line 177
    .line 178
    .line 179
    move-result v7

    .line 180
    invoke-interface/range {p2 .. p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorReason()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v8

    .line 184
    invoke-direct {v6, v7, v8}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-direct {v4, v6}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v4}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 191
    .line 192
    .line 193
    move v14, v3

    .line 194
    move-object v6, v5

    .line 195
    :goto_2
    invoke-static {}, Lib/r0;->a()Lib/r0;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {v0, v6, v5}, Lib/r0;->b(Lcom/huawei/hms/support/hwid/result/AuthHuaweiId;Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;)V

    .line 200
    .line 201
    .line 202
    if-eqz p1, :cond_3

    .line 203
    .line 204
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/common/internal/BaseHmsClient;->getContext()Landroid/content/Context;

    .line 205
    .line 206
    .line 207
    move-result-object v9

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/common/internal/TaskApiCall;->getTransactionId()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v11

    .line 212
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/common/internal/BaseHmsClient;->getContext()Landroid/content/Context;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-static {v0}, Lcom/huawei/hms/utils/Util;->getAppId(Landroid/content/Context;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v12

    .line 220
    invoke-static {v14}, Lib/s;->a(I)I

    .line 221
    .line 222
    .line 223
    move-result v13

    .line 224
    const v15, 0x3a5d7ac

    .line 225
    .line 226
    .line 227
    const-string v10, "hwid.silentSignIn"

    .line 228
    .line 229
    invoke-static/range {v9 .. v15}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsClient;->reportExit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 230
    .line 231
    .line 232
    :cond_3
    const-string v0, "report: api=hwid.silentSignInversion=61200300"

    .line 233
    .line 234
    invoke-static {v2, v0, v1}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 235
    .line 236
    .line 237
    return-void
.end method

.method public getApiLevel()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
