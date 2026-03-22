.class public Lib/b0;
.super Lcom/huawei/hms/common/internal/TaskApiCall;
.source "AccountGetChannelTaskApiCall.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hms/common/internal/TaskApiCall<",
        "Lib/v;",
        "Lcom/huawei/hms/support/account/result/AccountIcon;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/hms/common/internal/TaskApiCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lib/b0;->f:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method private b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    const-string v0, "[AccountSDK]AccountGetChannelTaskApiCall"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    :try_start_0
    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    array-length v3, p1

    .line 10
    invoke-static {p1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 11
    .line 12
    .line 13
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_1

    .line 15
    :catch_0
    move-exception p1

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v3, "stringToBitmap Exception is "

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {v0, p1, v1}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_1
    const-string p1, "out of memory error "

    .line 46
    .line 47
    invoke-static {v0, p1, v1}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 48
    .line 49
    .line 50
    :goto_0
    const/4 p1, 0x0

    .line 51
    :goto_1
    return-object p1
.end method


# virtual methods
.method protected synthetic a(Lcom/huawei/hms/common/internal/AnyClient;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lua/g;)V
    .locals 0

    .line 1
    check-cast p1, Lib/v;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lib/b0;->c(Lib/v;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lua/g;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected c(Lib/v;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lua/g;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lib/v;",
            "Lcom/huawei/hms/common/internal/ResponseErrorCode;",
            "Ljava/lang/String;",
            "Lua/g<",
            "Lcom/huawei/hms/support/account/result/AccountIcon;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 p1, 0x1

    .line 2
    const-string v0, "[AccountSDK]AccountGetChannelTaskApiCall"

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    const-string p2, "response is null."

    .line 7
    .line 8
    invoke-static {v0, p2, p1}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lcom/huawei/hms/support/api/client/Status;

    .line 12
    .line 13
    const/16 p3, 0x7d3

    .line 14
    .line 15
    invoke-direct {p1, p3, p2}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

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
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorCode()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const-string v2, "hasContextResolution"

    .line 34
    .line 35
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getResolution()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    const-string p3, "apk version is low or is not exist."

    .line 46
    .line 47
    invoke-static {v0, p3, p1}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 48
    .line 49
    .line 50
    new-instance p1, Lcom/huawei/hms/support/api/client/Status;

    .line 51
    .line 52
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorReason()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    invoke-direct {p1, v1, p3}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p2, p1}, Lib/p;->c(Lcom/huawei/hms/common/internal/ResponseErrorCode;Lcom/huawei/hms/support/api/client/Status;)V

    .line 60
    .line 61
    .line 62
    new-instance p2, Lcom/huawei/hms/common/ResolvableApiException;

    .line 63
    .line 64
    invoke-direct {p2, p1}, Lcom/huawei/hms/common/ResolvableApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p4, p2}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v3, "ResponseErrorCode.status:"

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorCode()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-static {v0, v2, p1}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 93
    .line 94
    .line 95
    new-instance v2, Lcom/huawei/hms/support/account/result/AccountIcon;

    .line 96
    .line 97
    invoke-direct {v2}, Lcom/huawei/hms/support/account/result/AccountIcon;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-nez v3, :cond_4

    .line 105
    .line 106
    const-string v3, "{}"

    .line 107
    .line 108
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-eqz v3, :cond_2

    .line 113
    .line 114
    const-string p3, "getChannel complete, body is null"

    .line 115
    .line 116
    invoke-static {v0, p3, p1}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 117
    .line 118
    .line 119
    new-instance p1, Lcom/huawei/hms/common/ApiException;

    .line 120
    .line 121
    new-instance p3, Lcom/huawei/hms/support/api/client/Status;

    .line 122
    .line 123
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorCode()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorReason()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-direct {p3, v0, p2}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-direct {p1, p3}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p4, p1}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_2
    :try_start_0
    new-instance v3, Lcom/huawei/hms/support/account/result/GetChannelResult;

    .line 142
    .line 143
    invoke-direct {v3}, Lcom/huawei/hms/support/account/result/GetChannelResult;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3, p3}, Lcom/huawei/hms/support/account/result/GetChannelResult;->fromJson(Ljava/lang/String;)Lcom/huawei/hms/support/account/result/GetChannelResult;

    .line 147
    .line 148
    .line 149
    move-result-object p3

    .line 150
    invoke-virtual {p3}, Lcom/huawei/hms/support/feature/result/AbstractAuthResult;->isSuccess()Z

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    if-eqz v3, :cond_3

    .line 155
    .line 156
    const-string v3, "getChannel success"

    .line 157
    .line 158
    invoke-static {v0, v3, p1}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p3}, Lcom/huawei/hms/support/account/result/GetChannelResult;->getDescription()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    invoke-virtual {v2, v3}, Lcom/huawei/hms/support/account/result/AccountIcon;->setDescription(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p3}, Lcom/huawei/hms/support/account/result/GetChannelResult;->getIcon()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-direct {p0, v3}, Lib/b0;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-virtual {v2, v3}, Lcom/huawei/hms/support/account/result/AccountIcon;->setIcon(Landroid/graphics/Bitmap;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p4, v2}, Lua/g;->c(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    invoke-static {}, Lib/p;->a()J

    .line 183
    .line 184
    .line 185
    move-result-wide v2

    .line 186
    iget-object v4, p0, Lib/b0;->f:Landroid/content/Context;

    .line 187
    .line 188
    const-string v5, "ACCOUNT_CHANNEL_CACHE"

    .line 189
    .line 190
    const/4 v6, 0x0

    .line 191
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    const-string v5, "cache_time"

    .line 200
    .line 201
    invoke-interface {v4, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 202
    .line 203
    .line 204
    const-string v2, "desc"

    .line 205
    .line 206
    invoke-virtual {p3}, Lcom/huawei/hms/support/account/result/GetChannelResult;->getDescription()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 211
    .line 212
    .line 213
    const-string v2, "icon"

    .line 214
    .line 215
    invoke-virtual {p3}, Lcom/huawei/hms/support/account/result/GetChannelResult;->getIcon()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p3

    .line 219
    invoke-interface {v4, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 220
    .line 221
    .line 222
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 223
    .line 224
    .line 225
    goto :goto_0

    .line 226
    :cond_3
    const-string v2, "getChannel failed"

    .line 227
    .line 228
    invoke-static {v0, v2, p1}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 229
    .line 230
    .line 231
    new-instance v2, Lcom/huawei/hms/common/ApiException;

    .line 232
    .line 233
    invoke-virtual {p3}, Lcom/huawei/hms/support/api/client/Result;->getStatus()Lcom/huawei/hms/support/api/client/Status;

    .line 234
    .line 235
    .line 236
    move-result-object p3

    .line 237
    invoke-direct {v2, p3}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p4, v2}, Lua/g;->b(Ljava/lang/Exception;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .line 242
    .line 243
    goto :goto_0

    .line 244
    :catch_0
    const-string p3, "getChannel complete, but parser json exception"

    .line 245
    .line 246
    invoke-static {v0, p3, p1}, Lib/t;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 247
    .line 248
    .line 249
    new-instance p1, Lcom/huawei/hms/common/ApiException;

    .line 250
    .line 251
    new-instance p3, Lcom/huawei/hms/support/api/client/Status;

    .line 252
    .line 253
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorReason()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p2

    .line 257
    invoke-direct {p3, v1, p2}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-direct {p1, p3}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p4, p1}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 264
    .line 265
    .line 266
    goto :goto_0

    .line 267
    :cond_4
    const-string p3, "getChannel complete, response is null, failed"

    .line 268
    .line 269
    invoke-static {v0, p3, p1}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 270
    .line 271
    .line 272
    new-instance p1, Lcom/huawei/hms/common/ApiException;

    .line 273
    .line 274
    new-instance p3, Lcom/huawei/hms/support/api/client/Status;

    .line 275
    .line 276
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorReason()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p2

    .line 280
    invoke-direct {p3, v1, p2}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-direct {p1, p3}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {p4, p1}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 287
    .line 288
    .line 289
    :goto_0
    return-void
.end method

.method public getApiLevel()I
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    return v0
.end method
