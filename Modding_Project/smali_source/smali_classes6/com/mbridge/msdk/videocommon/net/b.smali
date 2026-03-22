.class public Lcom/mbridge/msdk/videocommon/net/b;
.super Lcom/mbridge/msdk/foundation/same/net/wrapper/c;
.source "RewardSettingRequest.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public addExtraParams(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/net/wrapper/e;)V
    .locals 4

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->addExtraParams(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/net/wrapper/e;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "platform"

    .line 7
    .line 8
    const-string v1, "1"

    .line 9
    .line 10
    invoke-virtual {p2, p1, v1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string p1, "os_version"

    .line 14
    .line 15
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p2, p1, v1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string p1, "package_name"

    .line 21
    .line 22
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/l0;->t(Landroid/content/Context;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p2, p1, v1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string p1, "app_version_name"

    .line 32
    .line 33
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/l0;->B(Landroid/content/Context;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p2, p1, v1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string p1, "app_version_code"

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/l0;->A(Landroid/content/Context;)I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p2, p1, v1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string p1, "orientation"

    .line 69
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->mContext:Landroid/content/Context;

    .line 76
    .line 77
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/l0;->F(Landroid/content/Context;)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {p2, p1, v1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const-string p1, "model"

    .line 95
    .line 96
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/l0;->n()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {p2, p1, v1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string p1, "brand"

    .line 104
    .line 105
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/l0;->s()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {p2, p1, v1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->mContext:Landroid/content/Context;

    .line 113
    .line 114
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/l0;->s(Landroid/content/Context;)I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    const-string v1, "network_type"

    .line 119
    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {p2, v1, v2}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const-string v1, "network_str"

    .line 139
    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->mContext:Landroid/content/Context;

    .line 146
    .line 147
    invoke-static {v3, p1}, Lcom/mbridge/msdk/foundation/tools/l0;->a(Landroid/content/Context;I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p2, v1, p1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    const-string p1, "language"

    .line 165
    .line 166
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->mContext:Landroid/content/Context;

    .line 167
    .line 168
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/l0;->p(Landroid/content/Context;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {p2, p1, v1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    const-string/jumbo p1, "timezone"

    .line 176
    .line 177
    .line 178
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/l0;->w()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {p2, p1, v1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    const-string/jumbo p1, "useragent"

    .line 186
    .line 187
    .line 188
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/l0;->i()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {p2, p1, v1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    const-string p1, "sdk_version"

    .line 196
    .line 197
    const-string v1, "MAL_16.9.91"

    .line 198
    .line 199
    invoke-virtual {p2, p1, v1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    const-string p1, "screen_size"

    .line 203
    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    iget-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->mContext:Landroid/content/Context;

    .line 210
    .line 211
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/l0;->n(Landroid/content/Context;)I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string/jumbo v2, "x"

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    iget-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->mContext:Landroid/content/Context;

    .line 225
    .line 226
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/l0;->m(Landroid/content/Context;)I

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-virtual {p2, p1, v1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    .line 241
    .line 242
    .line 243
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    const-string v1, "gaid"

    .line 245
    .line 246
    if-eqz p1, :cond_0

    .line 247
    .line 248
    :try_start_1
    invoke-virtual {p2, v1, v0}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    const-string p1, "gp_version"

    .line 252
    .line 253
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->mContext:Landroid/content/Context;

    .line 254
    .line 255
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/u;->d(Landroid/content/Context;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-virtual {p2, p1, v0}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    const-string p1, "is_clever"

    .line 263
    .line 264
    sget-object v0, Lcom/mbridge/msdk/foundation/same/a;->C:Ljava/lang/String;

    .line 265
    .line 266
    invoke-virtual {p2, p1, v0}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    goto :goto_0

    .line 270
    :catch_0
    move-exception p1

    .line 271
    goto :goto_1

    .line 272
    :cond_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/f;->d()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    invoke-virtual {p2, v1, p1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    :goto_0
    const-string p1, "gaid2"

    .line 280
    .line 281
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/f;->c()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-virtual {p2, p1, v0}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-static {p2}, Lcom/mbridge/msdk/foundation/same/net/wrapper/f;->h(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 289
    .line 290
    .line 291
    goto :goto_2

    .line 292
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 293
    .line 294
    .line 295
    :goto_2
    return-void
.end method
