.class final Lcom/bytedance/sdk/openadsdk/core/dLZ$1;
.super Lcom/bytedance/sdk/component/so/so;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/dLZ;->ZYk(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ$1;->oJ:Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/so/so;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->RZ()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/dLZ$1$1;

    .line 10
    .line 11
    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/dLZ$1;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/si/tB;->oJ(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, -0x2

    .line 22
    const-string v4, "ipv6"

    .line 23
    .line 24
    const/4 v5, -0x1

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    const-string v1, "url is null"

    .line 28
    .line 29
    invoke-static {v5, v0, v5, v1}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ(ILjava/lang/String;ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v0, ""

    .line 33
    .line 34
    invoke-static {v4, v0, v3, v1}, Lcom/bytedance/sdk/openadsdk/awB/oJ/Pfn;->oJ(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dLZ$1$2;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ$1$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/dLZ$1;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/si/tB;->tB(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->ZYk()Lcom/bytedance/sdk/openadsdk/Ry/ZYk;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->tB()Lcom/bytedance/sdk/component/cFZ/oJ;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/cFZ/oJ;->ZYk()Lcom/bytedance/sdk/component/cFZ/ZYk/ex;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    :try_start_0
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ZYk(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v6, Lorg/json/JSONObject;

    .line 62
    .line 63
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v7, "connect_type"

    .line 67
    .line 68
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    const-wide/16 v9, 0x0

    .line 73
    .line 74
    invoke-static {v8, v9, v10}, Lcom/bytedance/sdk/component/utils/HL;->oJ(Landroid/content/Context;J)I

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ$1;->oJ:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    if-nez v7, :cond_1

    .line 88
    .line 89
    const-string v7, "device_id"

    .line 90
    .line 91
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ$1;->oJ:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 94
    .line 95
    .line 96
    move-result-wide v8

    .line 97
    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catch_0
    move-exception v2

    .line 102
    goto/16 :goto_3

    .line 103
    .line 104
    :cond_1
    :goto_0
    const-string v7, "header"

    .line 105
    .line 106
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ex/oJ/tB;->oJ()Lcom/bytedance/sdk/openadsdk/ex/oJ/tB;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/ex/oJ/tB;->ZYk()Lorg/json/JSONObject;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    .line 116
    .line 117
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ib()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    sget-object v8, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->APP_LOG:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    .line 122
    .line 123
    invoke-interface {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->oJ(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;)Z

    .line 124
    .line 125
    .line 126
    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    const-string v8, "application/json; charset=utf-8"

    .line 128
    .line 129
    const-string v9, "Content-Type"

    .line 130
    .line 131
    if-eqz v7, :cond_3

    .line 132
    .line 133
    :try_start_1
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/jr;

    .line 134
    .line 135
    sget-object v10, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->DUAL_EVENT:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    .line 136
    .line 137
    invoke-direct {v7, v10}, Lcom/bytedance/sdk/openadsdk/core/jr;-><init>(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v6, v7}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptManager;->encryptType4(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/embedapplog/IDefaultEncrypt;)Lorg/json/JSONObject;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    if-eqz v7, :cond_2

    .line 145
    .line 146
    const-string v10, "cypher"

    .line 147
    .line 148
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result v10

    .line 152
    const/4 v11, 0x4

    .line 153
    if-ne v10, v11, :cond_2

    .line 154
    .line 155
    const/4 v10, 0x1

    .line 156
    invoke-static {v10}, Lcom/bytedance/sdk/openadsdk/core/Xe;->ZYk(Z)V

    .line 157
    .line 158
    .line 159
    const-string v10, "x-pgli18n"

    .line 160
    .line 161
    const-string v11, "4"

    .line 162
    .line 163
    invoke-virtual {v2, v10, v11}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ZYk(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v9, v8}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ZYk(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_2
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/Xe;->ZYk(Z)V

    .line 171
    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_3
    invoke-static {v6}, Lcom/bytedance/sdk/component/utils/oJ;->oJ(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/dLZ;->oJ(Lorg/json/JSONObject;)Z

    .line 179
    .line 180
    .line 181
    move-result v10

    .line 182
    if-eqz v10, :cond_4

    .line 183
    .line 184
    const-string v10, "Content-Encoding"

    .line 185
    .line 186
    const-string v11, "union_sdk_encode"

    .line 187
    .line 188
    invoke-virtual {v2, v10, v11}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ZYk(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    :cond_4
    :goto_1
    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/dLZ;->oJ(Lorg/json/JSONObject;)Z

    .line 192
    .line 193
    .line 194
    move-result v10

    .line 195
    if-nez v10, :cond_5

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_5
    move-object v6, v7

    .line 199
    :goto_2
    invoke-virtual {v2, v9, v8}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ZYk(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    const-string v7, "User-Agent"

    .line 203
    .line 204
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ex()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v8

    .line 208
    invoke-virtual {v2, v7, v8}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ZYk(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v6}, Lcom/bytedance/sdk/component/cFZ/ZYk/ex;->oJ(Lorg/json/JSONObject;)V

    .line 212
    .line 213
    .line 214
    const/4 v6, 0x6

    .line 215
    invoke-virtual {v2, v6}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->oJ(I)V

    .line 216
    .line 217
    .line 218
    const-string v6, "send_i_p_v6"

    .line 219
    .line 220
    invoke-virtual {v2, v6}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->oJ(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/dLZ$1$3;

    .line 224
    .line 225
    invoke-direct {v6, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ$1$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/dLZ$1;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2, v6}, Lcom/bytedance/sdk/component/cFZ/ZYk/ex;->oJ(Lcom/bytedance/sdk/component/cFZ/oJ/oJ;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 229
    .line 230
    .line 231
    return-void

    .line 232
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    invoke-static {v5, v0, v3, v6}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ(ILjava/lang/String;ILjava/lang/String;)V

    .line 237
    .line 238
    .line 239
    const/4 v3, -0x3

    .line 240
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    invoke-static {v4, v0, v3, v5}, Lcom/bytedance/sdk/openadsdk/awB/oJ/Pfn;->oJ(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 245
    .line 246
    .line 247
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dLZ$1$4;

    .line 248
    .line 249
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ$1$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/dLZ$1;)V

    .line 250
    .line 251
    .line 252
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/si/tB;->tB(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    .line 253
    .line 254
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    const-string v3, "build ipv6 request failed:"

    .line 258
    .line 259
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    new-array v1, v1, [Ljava/lang/Object;

    .line 274
    .line 275
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    return-void
.end method
