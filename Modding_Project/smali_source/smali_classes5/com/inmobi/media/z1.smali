.class public final Lcom/inmobi/media/z1;
.super Lcom/inmobi/media/M1;
.source "SourceFile"


# instance fields
.field public final S:Lcom/inmobi/media/B1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/media/Z;Lcom/inmobi/media/F0;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "placement"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/media/M1;-><init>(Landroid/content/Context;Lcom/inmobi/media/Z;Lcom/inmobi/media/F0;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Lcom/inmobi/media/B1;

    .line 15
    .line 16
    invoke-direct {p1}, Lcom/inmobi/media/B1;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/inmobi/media/z1;->S:Lcom/inmobi/media/B1;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final D0()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 2
    .line 3
    const-string v1, "<get-TAG>(...)"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    check-cast v0, Lcom/inmobi/media/A5;

    .line 15
    .line 16
    const-string v3, "canProceedToLoad"

    .line 17
    .line 18
    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/M1;->f0()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x1

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    check-cast v0, Lcom/inmobi/media/A5;

    .line 41
    .line 42
    const-string v1, "Some of the dependency libraries for Banner not found"

    .line 43
    .line 44
    invoke-virtual {v0, v4, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 48
    .line 49
    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->MISSING_REQUIRED_DEPENDENCIES:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    .line 50
    .line 51
    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 52
    .line 53
    .line 54
    const/16 v1, 0x7d7

    .line 55
    .line 56
    invoke-virtual {p0, v0, v3, v1}, Lcom/inmobi/media/S0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    .line 57
    .line 58
    .line 59
    return v2

    .line 60
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eq v3, v0, :cond_e

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    const/4 v4, 0x2

    .line 71
    if-ne v4, v0, :cond_3

    .line 72
    .line 73
    goto/16 :goto_2

    .line 74
    .line 75
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    const/4 v5, 0x7

    .line 80
    const-string v6, "InMobi"

    .line 81
    .line 82
    if-ne v5, v0, :cond_5

    .line 83
    .line 84
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 85
    .line 86
    sget-object v4, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->AD_ACTIVE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    .line 87
    .line 88
    invoke-direct {v0, v4}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 89
    .line 90
    .line 91
    const/16 v4, 0xf

    .line 92
    .line 93
    invoke-virtual {p0, v0, v2, v4}, Lcom/inmobi/media/S0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    .line 94
    .line 95
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v4, "An ad is currently being viewed by the user. Please wait for the user to close the ad before requesting for another ad for placement id: "

    .line 99
    .line 100
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v4}, Lcom/inmobi/media/Z;->l()J

    .line 108
    .line 109
    .line 110
    move-result-wide v4

    .line 111
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-static {v3, v6, v0}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 122
    .line 123
    if-eqz v0, :cond_4

    .line 124
    .line 125
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    check-cast v0, Lcom/inmobi/media/A5;

    .line 133
    .line 134
    const-string v1, "Ad is active. ignore load"

    .line 135
    .line 136
    invoke-virtual {v0, v3, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :cond_4
    return v2

    .line 140
    :cond_5
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    const/4 v5, 0x4

    .line 145
    if-ne v0, v5, :cond_d

    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->W()Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_7

    .line 152
    .line 153
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 154
    .line 155
    if-eqz v0, :cond_6

    .line 156
    .line 157
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    check-cast v0, Lcom/inmobi/media/A5;

    .line 165
    .line 166
    const-string v1, "ad is expired, clearing"

    .line 167
    .line 168
    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    :cond_6
    invoke-virtual {p0}, Lcom/inmobi/media/M1;->g()V

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_7
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 176
    .line 177
    if-eqz v0, :cond_8

    .line 178
    .line 179
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    check-cast v0, Lcom/inmobi/media/A5;

    .line 187
    .line 188
    const-string v5, "signalCanShowForStateReady"

    .line 189
    .line 190
    invoke-virtual {v0, v3, v5}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    :cond_8
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 194
    .line 195
    if-eqz v0, :cond_9

    .line 196
    .line 197
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    check-cast v0, Lcom/inmobi/media/A5;

    .line 205
    .line 206
    const-string v5, "An ad is ready with the ad unit. Signaling ad load success ..."

    .line 207
    .line 208
    invoke-virtual {v0, v3, v5}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    :cond_9
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->r()Lcom/inmobi/media/F0;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    if-nez v0, :cond_a

    .line 216
    .line 217
    const-string v0, "Listener was garbage collected. Unable to give callback"

    .line 218
    .line 219
    invoke-static {v4, v6, v0}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 223
    .line 224
    if-eqz v0, :cond_c

    .line 225
    .line 226
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    check-cast v0, Lcom/inmobi/media/A5;

    .line 234
    .line 235
    const-string v1, "listener is null. load show callback missed"

    .line 236
    .line 237
    invoke-virtual {v0, v3, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    goto :goto_0

    .line 241
    :cond_a
    iget-object v3, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 242
    .line 243
    if-eqz v3, :cond_b

    .line 244
    .line 245
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    check-cast v3, Lcom/inmobi/media/A5;

    .line 253
    .line 254
    const-string v1, "callback - onLoadSuccess"

    .line 255
    .line 256
    invoke-virtual {v3, v4, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    :cond_b
    invoke-virtual {p0, v0}, Lcom/inmobi/media/S0;->f(Lcom/inmobi/media/F0;)V

    .line 260
    .line 261
    .line 262
    :cond_c
    :goto_0
    return v2

    .line 263
    :cond_d
    :goto_1
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->e0()V

    .line 264
    .line 265
    .line 266
    return v3

    .line 267
    :cond_e
    :goto_2
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    const-string v4, "An ad load is already in progress. Please wait for the load to complete before requesting for another ad"

    .line 275
    .line 276
    invoke-static {v3, v0, v4}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 280
    .line 281
    if-eqz v0, :cond_f

    .line 282
    .line 283
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    check-cast v0, Lcom/inmobi/media/A5;

    .line 291
    .line 292
    const-string v1, "ad load in progress. ignore load"

    .line 293
    .line 294
    invoke-virtual {v0, v3, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    :cond_f
    const/16 v0, 0x35

    .line 298
    .line 299
    invoke-virtual {p0, v0}, Lcom/inmobi/media/S0;->a(S)V

    .line 300
    .line 301
    .line 302
    return v2
.end method

.method public final a(Lcom/inmobi/media/D1;)V
    .locals 3

    const-string v0, "audioStatusInternal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->r()Lcom/inmobi/media/F0;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/inmobi/media/F0;->a(Lcom/inmobi/media/D1;)V

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/inmobi/media/z1;->S:Lcom/inmobi/media/B1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-boolean v0, v1, Lcom/inmobi/media/B1;->a:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/inmobi/media/D1;->e:Lcom/inmobi/media/D1;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, v1, Lcom/inmobi/media/B1;->a:Z

    .line 7
    sget-object v0, Lcom/inmobi/media/r5;->c:Lcom/inmobi/media/r5;

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/inmobi/media/S1;->a:J

    .line 9
    iget v1, v0, Lcom/inmobi/media/S1;->b:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/inmobi/media/S1;->b:I

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Z)V
    .locals 8

    .line 10
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    sget-object v1, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "audio_pref_file"

    invoke-static {v0, v1}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    move-result-object v2

    .line 12
    const-string v0, "key"

    const-string v1, "user_mute_count"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v0, v2, Lcom/inmobi/media/C6;->a:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz p1, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 14
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    move v4, p1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v4, v0

    :goto_0
    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 15
    const-string v3, "user_mute_count"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/inmobi/media/C6;->a(Lcom/inmobi/media/C6;Ljava/lang/String;IZILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final d(S)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 2
    .line 3
    const-string v1, "<get-TAG>(...)"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    check-cast v0, Lcom/inmobi/media/A5;

    .line 15
    .line 16
    const-string v3, "onShowFailure"

    .line 17
    .line 18
    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->r()Lcom/inmobi/media/F0;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    const-string v0, "InMobi"

    .line 28
    .line 29
    const-string v2, "Listener was garbage collected. Unable to give callback"

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    invoke-static {v3, v0, v2}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    check-cast v0, Lcom/inmobi/media/A5;

    .line 47
    .line 48
    const-string v3, "listener is null. show fail callback missed. "

    .line 49
    .line 50
    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v2, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 55
    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    check-cast v2, Lcom/inmobi/media/A5;

    .line 66
    .line 67
    const-string v4, "callback - onAdShowFailed"

    .line 68
    .line 69
    invoke-virtual {v2, v3, v4}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    invoke-virtual {v0}, Lcom/inmobi/media/F0;->d()V

    .line 73
    .line 74
    .line 75
    :cond_3
    :goto_0
    if-eqz p1, :cond_5

    .line 76
    .line 77
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 78
    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    const-string v3, "show failed - "

    .line 86
    .line 87
    invoke-static {v2, v1, v3, p1}, Lcom/inmobi/media/X8;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v0, Lcom/inmobi/media/A5;

    .line 92
    .line 93
    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_4
    invoke-virtual {p0, p1}, Lcom/inmobi/media/S0;->c(S)V

    .line 97
    .line 98
    .line 99
    :cond_5
    return-void
.end method

.method public final i(Lcom/inmobi/media/ec;)V
    .locals 4

    .line 1
    const-string v0, "renderView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 7
    .line 8
    const-string v1, "<get-TAG>(...)"

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    check-cast v0, Lcom/inmobi/media/A5;

    .line 20
    .line 21
    const-string v3, "onRenderViewVisible"

    .line 22
    .line 23
    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v2, 0x4

    .line 31
    if-ne v0, v2, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->r()Lcom/inmobi/media/F0;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v2, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 40
    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    check-cast v2, Lcom/inmobi/media/A5;

    .line 51
    .line 52
    const-string v1, "callback - onAdDisplayed"

    .line 53
    .line 54
    invoke-virtual {v2, v3, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-virtual {p0, v0}, Lcom/inmobi/media/S0;->d(Lcom/inmobi/media/F0;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-super {p0, p1}, Lcom/inmobi/media/M1;->i(Lcom/inmobi/media/ec;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "audio"

    .line 2
    .line 3
    return-object v0
.end method
