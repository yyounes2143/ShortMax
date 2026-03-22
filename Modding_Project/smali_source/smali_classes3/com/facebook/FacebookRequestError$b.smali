.class public final Lcom/facebook/FacebookRequestError$b;
.super Ljava/lang/Object;
.source "FacebookRequestError.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/FacebookRequestError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/FacebookRequestError$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)Lcom/facebook/FacebookRequestError;
    .locals 19
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/net/HttpURLConnection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v9, p1

    .line 2
    .line 3
    const-string v0, "error_code"

    .line 4
    .line 5
    const-string v1, "error"

    .line 6
    .line 7
    const-string v2, "FACEBOOK_NON_JSON_RESULT"

    .line 8
    .line 9
    const-string v3, "body"

    .line 10
    .line 11
    const-string v4, "code"

    .line 12
    .line 13
    const-string v5, "singleResult"

    .line 14
    .line 15
    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 v15, 0x0

    .line 19
    :try_start_0
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-eqz v5, :cond_c

    .line 24
    .line 25
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    invoke-static {v9, v3, v2}, Lcom/facebook/internal/u0;->P(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    if-eqz v6, :cond_a

    .line 34
    .line 35
    instance-of v7, v6, Lorg/json/JSONObject;

    .line 36
    .line 37
    if-eqz v7, :cond_a

    .line 38
    .line 39
    move-object v7, v6

    .line 40
    check-cast v7, Lorg/json/JSONObject;

    .line 41
    .line 42
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    const/4 v8, 0x1

    .line 47
    const-string v10, "error_subcode"

    .line 48
    .line 49
    const/4 v11, 0x0

    .line 50
    const/4 v12, -0x1

    .line 51
    if-eqz v7, :cond_7

    .line 52
    .line 53
    :try_start_1
    move-object v0, v6

    .line 54
    check-cast v0, Lorg/json/JSONObject;

    .line 55
    .line 56
    invoke-static {v0, v1, v15}, Lcom/facebook/internal/u0;->P(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lorg/json/JSONObject;

    .line 61
    .line 62
    if-eqz v0, :cond_0

    .line 63
    .line 64
    const-string v1, "type"

    .line 65
    .line 66
    invoke-virtual {v0, v1, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    move-object v1, v15

    .line 72
    :goto_0
    if-eqz v0, :cond_1

    .line 73
    .line 74
    const-string v7, "message"

    .line 75
    .line 76
    invoke-virtual {v0, v7, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    move-object v7, v15

    .line 82
    :goto_1
    if-eqz v0, :cond_2

    .line 83
    .line 84
    invoke-virtual {v0, v4, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    goto :goto_2

    .line 89
    :cond_2
    move v4, v12

    .line 90
    :goto_2
    if-eqz v0, :cond_3

    .line 91
    .line 92
    invoke-virtual {v0, v10, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 93
    .line 94
    .line 95
    move-result v12

    .line 96
    :cond_3
    if-eqz v0, :cond_4

    .line 97
    .line 98
    const-string v10, "error_user_msg"

    .line 99
    .line 100
    invoke-virtual {v0, v10, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    goto :goto_3

    .line 105
    :cond_4
    move-object v10, v15

    .line 106
    :goto_3
    if-eqz v0, :cond_5

    .line 107
    .line 108
    const-string v13, "error_user_title"

    .line 109
    .line 110
    invoke-virtual {v0, v13, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v13

    .line 114
    goto :goto_4

    .line 115
    :cond_5
    move-object v13, v15

    .line 116
    :goto_4
    if-eqz v0, :cond_6

    .line 117
    .line 118
    const-string v14, "is_transient"

    .line 119
    .line 120
    invoke-virtual {v0, v14, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 121
    .line 122
    .line 123
    move-result v11

    .line 124
    :cond_6
    move v14, v11

    .line 125
    move v11, v8

    .line 126
    move-object v8, v7

    .line 127
    move v7, v12

    .line 128
    move v12, v4

    .line 129
    :goto_5
    move-object v4, v1

    .line 130
    goto :goto_7

    .line 131
    :cond_7
    move-object v1, v6

    .line 132
    check-cast v1, Lorg/json/JSONObject;

    .line 133
    .line 134
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 135
    .line 136
    .line 137
    move-result v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    const-string v4, "error_reason"

    .line 139
    .line 140
    const-string v7, "error_msg"

    .line 141
    .line 142
    if-nez v1, :cond_9

    .line 143
    .line 144
    :try_start_2
    move-object v1, v6

    .line 145
    check-cast v1, Lorg/json/JSONObject;

    .line 146
    .line 147
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-nez v1, :cond_9

    .line 152
    .line 153
    move-object v1, v6

    .line 154
    check-cast v1, Lorg/json/JSONObject;

    .line 155
    .line 156
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_8

    .line 161
    .line 162
    goto :goto_6

    .line 163
    :cond_8
    move v14, v11

    .line 164
    move v7, v12

    .line 165
    move-object v4, v15

    .line 166
    move-object v8, v4

    .line 167
    move-object v10, v8

    .line 168
    move-object v13, v10

    .line 169
    goto :goto_7

    .line 170
    :cond_9
    :goto_6
    move-object v1, v6

    .line 171
    check-cast v1, Lorg/json/JSONObject;

    .line 172
    .line 173
    invoke-virtual {v1, v4, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    move-object v4, v6

    .line 178
    check-cast v4, Lorg/json/JSONObject;

    .line 179
    .line 180
    invoke-virtual {v4, v7, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    move-object v7, v6

    .line 185
    check-cast v7, Lorg/json/JSONObject;

    .line 186
    .line 187
    invoke-virtual {v7, v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    move-object v7, v6

    .line 192
    check-cast v7, Lorg/json/JSONObject;

    .line 193
    .line 194
    invoke-virtual {v7, v10, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 195
    .line 196
    .line 197
    move-result v7

    .line 198
    move v12, v0

    .line 199
    move v14, v11

    .line 200
    move-object v10, v15

    .line 201
    move-object v13, v10

    .line 202
    move v11, v8

    .line 203
    move-object v8, v4

    .line 204
    goto :goto_5

    .line 205
    :goto_7
    if-eqz v11, :cond_a

    .line 206
    .line 207
    new-instance v16, Lcom/facebook/FacebookRequestError;

    .line 208
    .line 209
    move-object v11, v6

    .line 210
    check-cast v11, Lorg/json/JSONObject;

    .line 211
    .line 212
    const/16 v17, 0x0

    .line 213
    .line 214
    const/16 v18, 0x0

    .line 215
    .line 216
    move-object/from16 v0, v16

    .line 217
    .line 218
    move v1, v5

    .line 219
    move v2, v12

    .line 220
    move v3, v7

    .line 221
    move-object v5, v8

    .line 222
    move-object v6, v13

    .line 223
    move-object v7, v10

    .line 224
    move-object v8, v11

    .line 225
    move-object/from16 v9, p1

    .line 226
    .line 227
    move-object/from16 v10, p2

    .line 228
    .line 229
    move-object/from16 v11, p3

    .line 230
    .line 231
    move-object/from16 v12, v17

    .line 232
    .line 233
    move v13, v14

    .line 234
    move-object/from16 v14, v18

    .line 235
    .line 236
    invoke-direct/range {v0 .. v14}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 237
    .line 238
    .line 239
    return-object v16

    .line 240
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/FacebookRequestError$b;->c()Lcom/facebook/FacebookRequestError$c;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {v0, v5}, Lcom/facebook/FacebookRequestError$c;->a(I)Z

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-nez v0, :cond_c

    .line 249
    .line 250
    new-instance v16, Lcom/facebook/FacebookRequestError;

    .line 251
    .line 252
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    if-eqz v0, :cond_b

    .line 257
    .line 258
    invoke-static {v9, v3, v2}, Lcom/facebook/internal/u0;->P(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    check-cast v0, Lorg/json/JSONObject;

    .line 263
    .line 264
    move-object v8, v0

    .line 265
    goto :goto_8

    .line 266
    :cond_b
    move-object v8, v15

    .line 267
    :goto_8
    const/4 v13, 0x0

    .line 268
    const/4 v14, 0x0

    .line 269
    const/4 v2, -0x1

    .line 270
    const/4 v3, -0x1

    .line 271
    const/4 v4, 0x0

    .line 272
    const/4 v6, 0x0

    .line 273
    const/4 v7, 0x0

    .line 274
    const/4 v10, 0x0

    .line 275
    const/4 v12, 0x0

    .line 276
    move-object/from16 v0, v16

    .line 277
    .line 278
    move v1, v5

    .line 279
    move-object v5, v6

    .line 280
    move-object v6, v7

    .line 281
    move-object v7, v10

    .line 282
    move-object/from16 v9, p1

    .line 283
    .line 284
    move-object/from16 v10, p2

    .line 285
    .line 286
    move-object/from16 v11, p3

    .line 287
    .line 288
    invoke-direct/range {v0 .. v14}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 289
    .line 290
    .line 291
    return-object v16

    .line 292
    :catch_0
    :cond_c
    return-object v15
.end method

.method public final declared-synchronized b()Lcom/facebook/internal/i;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/facebook/v;->m()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/facebook/internal/FetchedAppSettingsManager;->f(Ljava/lang/String;)Lcom/facebook/internal/p;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lcom/facebook/internal/i;->g:Lcom/facebook/internal/i$a;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/facebook/internal/i$a;->b()Lcom/facebook/internal/i;

    .line 15
    .line 16
    .line 17
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    .line 19
    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/facebook/internal/p;->g()Lcom/facebook/internal/i;

    .line 23
    .line 24
    .line 25
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    monitor-exit p0

    .line 27
    return-object v0

    .line 28
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    throw v0
.end method

.method public final c()Lcom/facebook/FacebookRequestError$c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/FacebookRequestError;->a()Lcom/facebook/FacebookRequestError$c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
