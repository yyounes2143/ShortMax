.class public final Lcom/inmobi/media/p2;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public a:Lcom/inmobi/media/z5;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 1
    const-string v0, "looper"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/l2;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/p2;->a:Lcom/inmobi/media/z5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/inmobi/media/x2;->f()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "access$getTAG$p(...)"

    .line 10
    .line 11
    const-string v3, "Retry attemps exhausted for click ("

    .line 12
    .line 13
    invoke-static {v1, v2, v3}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v3, p1, Lcom/inmobi/media/l2;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const/16 v3, 0x29

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v0, Lcom/inmobi/media/A5;

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p0, p1}, Lcom/inmobi/media/p2;->b(Lcom/inmobi/media/l2;)V

    .line 37
    .line 38
    .line 39
    sget-object v0, Lcom/inmobi/media/x2;->a:Lcom/inmobi/media/x2;

    .line 40
    .line 41
    const-string v1, "RETRY_EXHAUSTED"

    .line 42
    .line 43
    invoke-virtual {v0, p1, v1}, Lcom/inmobi/media/x2;->a(Lcom/inmobi/media/l2;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lcom/inmobi/media/Nc;->b()Lcom/inmobi/media/m2;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    const-string v1, "click"

    .line 54
    .line 55
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget v1, p1, Lcom/inmobi/media/l2;->a:I

    .line 59
    .line 60
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    filled-new-array {v1}, [Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const-string v2, "id = ?"

    .line 69
    .line 70
    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/T1;->a(Ljava/lang/String;[Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    invoke-static {}, Lcom/inmobi/media/x2;->b()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public final b(Lcom/inmobi/media/l2;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/inmobi/media/x2;->b()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->v0(Ljava/util/List;Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, -0x1

    .line 10
    if-eq v0, p1, :cond_4

    .line 11
    .line 12
    invoke-static {}, Lcom/inmobi/media/x2;->b()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    add-int/lit8 v0, v0, -0x1

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    if-ne p1, v0, :cond_0

    .line 24
    .line 25
    move p1, v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 28
    .line 29
    :goto_0
    invoke-static {}, Lcom/inmobi/media/x2;->b()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lcom/inmobi/media/l2;

    .line 38
    .line 39
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-boolean v2, p1, Lcom/inmobi/media/l2;->e:Z

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    const/4 v2, 0x3

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const/4 v2, 0x2

    .line 50
    :goto_1
    iput v2, v0, Landroid/os/Message;->what:I

    .line 51
    .line 52
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 53
    .line 54
    invoke-static {}, Lcom/inmobi/media/x2;->c()Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;->getPingInterval()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 65
    .line 66
    .line 67
    move-result-wide v2

    .line 68
    iget-wide v4, p1, Lcom/inmobi/media/l2;->g:J

    .line 69
    .line 70
    sub-long/2addr v2, v4

    .line 71
    mul-int/lit16 v1, v1, 0x3e8

    .line 72
    .line 73
    int-to-long v4, v1

    .line 74
    cmp-long p1, v2, v4

    .line 75
    .line 76
    if-gez p1, :cond_3

    .line 77
    .line 78
    invoke-virtual {p0, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 83
    .line 84
    .line 85
    :cond_4
    :goto_2
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "access$getTAG$p(...)"

    .line 6
    .line 7
    const-string v3, "Unhandled message ( "

    .line 8
    .line 9
    const-string v4, "Processing click ("

    .line 10
    .line 11
    const-string v5, "msg"

    .line 12
    .line 13
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/inmobi/media/x2;->e()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-nez v5, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    :try_start_0
    iget v5, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    const/16 v6, 0x3f

    .line 30
    .line 31
    const-string v7, "Unhandled message due to ImaiConfig Null"

    .line 32
    .line 33
    const/4 v8, 0x3

    .line 34
    const/4 v9, 0x2

    .line 35
    const/4 v10, 0x0

    .line 36
    const/4 v12, 0x1

    .line 37
    const/4 v13, 0x0

    .line 38
    if-eq v5, v12, :cond_19

    .line 39
    .line 40
    const-string v14, " for click ("

    .line 41
    .line 42
    const-string v15, "Retry attempt #"

    .line 43
    .line 44
    const-string v11, "Pinging click ("

    .line 45
    .line 46
    if-eq v5, v9, :cond_10

    .line 47
    .line 48
    if-eq v5, v8, :cond_7

    .line 49
    .line 50
    const/4 v7, 0x4

    .line 51
    if-eq v5, v7, :cond_1

    .line 52
    .line 53
    :try_start_1
    iget-object v4, v1, Lcom/inmobi/media/p2;->a:Lcom/inmobi/media/z5;

    .line 54
    .line 55
    if-eqz v4, :cond_23

    .line 56
    .line 57
    invoke-static {}, Lcom/inmobi/media/x2;->f()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    new-instance v6, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget v0, v0, Landroid/os/Message;->what:I

    .line 70
    .line 71
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v0, " ) in pingHandler"

    .line 75
    .line 76
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v4, Lcom/inmobi/media/A5;

    .line 84
    .line 85
    invoke-virtual {v4, v5, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_a

    .line 89
    .line 90
    :catch_0
    move-exception v0

    .line 91
    goto/16 :goto_9

    .line 92
    .line 93
    :cond_1
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 94
    .line 95
    const-string v3, "null cannot be cast to non-null type com.inmobi.ads.core.Click"

    .line 96
    .line 97
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    check-cast v0, Lcom/inmobi/media/l2;

    .line 101
    .line 102
    iget-object v3, v1, Lcom/inmobi/media/p2;->a:Lcom/inmobi/media/z5;

    .line 103
    .line 104
    if-eqz v3, :cond_2

    .line 105
    .line 106
    invoke-static {}, Lcom/inmobi/media/x2;->f()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    new-instance v7, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object v4, v0, Lcom/inmobi/media/l2;->b:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v4, ") completed"

    .line 124
    .line 125
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    check-cast v3, Lcom/inmobi/media/A5;

    .line 133
    .line 134
    invoke-virtual {v3, v5, v4}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :cond_2
    sget-object v3, Lcom/inmobi/media/x2;->a:Lcom/inmobi/media/x2;

    .line 138
    .line 139
    invoke-static {v3, v0}, Lcom/inmobi/media/x2;->b(Lcom/inmobi/media/x2;Lcom/inmobi/media/l2;)V

    .line 140
    .line 141
    .line 142
    invoke-static {}, Lcom/inmobi/media/Nc;->b()Lcom/inmobi/media/m2;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    const-string v4, "click"

    .line 150
    .line 151
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iget v4, v0, Lcom/inmobi/media/l2;->a:I

    .line 155
    .line 156
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    filled-new-array {v4}, [Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    const-string v5, "id = ?"

    .line 165
    .line 166
    invoke-virtual {v3, v5, v4}, Lcom/inmobi/media/T1;->a(Ljava/lang/String;[Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    invoke-static {}, Lcom/inmobi/media/x2;->b()Ljava/util/List;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    invoke-static {}, Lcom/inmobi/media/x2;->b()Ljava/util/List;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_5

    .line 185
    .line 186
    invoke-static {}, Lcom/inmobi/media/Nc;->b()Lcom/inmobi/media/m2;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    invoke-static {v0, v10, v10, v6}, Lcom/inmobi/media/T1;->a(Lcom/inmobi/media/T1;Ljava/lang/String;[Ljava/lang/String;I)I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-nez v0, :cond_4

    .line 198
    .line 199
    iget-object v0, v1, Lcom/inmobi/media/p2;->a:Lcom/inmobi/media/z5;

    .line 200
    .line 201
    if-eqz v0, :cond_3

    .line 202
    .line 203
    invoke-static {}, Lcom/inmobi/media/x2;->f()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    const-string v4, "Done processing all clicks!"

    .line 211
    .line 212
    check-cast v0, Lcom/inmobi/media/A5;

    .line 213
    .line 214
    invoke-virtual {v0, v3, v4}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    :cond_3
    invoke-static {}, Lcom/inmobi/media/x2;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 222
    .line 223
    .line 224
    goto/16 :goto_a

    .line 225
    .line 226
    :cond_4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    iput v12, v0, Landroid/os/Message;->what:I

    .line 231
    .line 232
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 233
    .line 234
    .line 235
    goto/16 :goto_a

    .line 236
    .line 237
    :cond_5
    invoke-static {}, Lcom/inmobi/media/x2;->b()Ljava/util/List;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    check-cast v0, Lcom/inmobi/media/l2;

    .line 246
    .line 247
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    if-eqz v0, :cond_6

    .line 252
    .line 253
    iget-boolean v4, v0, Lcom/inmobi/media/l2;->e:Z

    .line 254
    .line 255
    if-ne v4, v12, :cond_6

    .line 256
    .line 257
    goto :goto_0

    .line 258
    :cond_6
    move v8, v9

    .line 259
    :goto_0
    iput v8, v3, Landroid/os/Message;->what:I

    .line 260
    .line 261
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 262
    .line 263
    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 264
    .line 265
    .line 266
    goto/16 :goto_a

    .line 267
    .line 268
    :cond_7
    invoke-static {v13}, Lcom/inmobi/media/T9;->a(Z)Lcom/inmobi/media/o4;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    if-eqz v3, :cond_8

    .line 273
    .line 274
    invoke-static {}, Lcom/inmobi/media/x2;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 279
    .line 280
    .line 281
    sget-object v0, Lcom/inmobi/media/x2;->a:Lcom/inmobi/media/x2;

    .line 282
    .line 283
    invoke-static {v0}, Lcom/inmobi/media/x2;->a(Lcom/inmobi/media/x2;)V

    .line 284
    .line 285
    .line 286
    return-void

    .line 287
    :cond_8
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 288
    .line 289
    invoke-static {}, Lcom/inmobi/media/x2;->c()Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    instance-of v4, v0, Lcom/inmobi/media/l2;

    .line 294
    .line 295
    if-eqz v4, :cond_e

    .line 296
    .line 297
    if-nez v3, :cond_9

    .line 298
    .line 299
    goto/16 :goto_3

    .line 300
    .line 301
    :cond_9
    move-object v4, v0

    .line 302
    check-cast v4, Lcom/inmobi/media/l2;

    .line 303
    .line 304
    iget v4, v4, Lcom/inmobi/media/l2;->f:I

    .line 305
    .line 306
    if-eqz v4, :cond_d

    .line 307
    .line 308
    move-object v4, v0

    .line 309
    check-cast v4, Lcom/inmobi/media/l2;

    .line 310
    .line 311
    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;->getPingCacheExpiry()J

    .line 312
    .line 313
    .line 314
    move-result-wide v5

    .line 315
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 316
    .line 317
    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 319
    .line 320
    .line 321
    move-result-wide v7

    .line 322
    iget-wide v9, v4, Lcom/inmobi/media/l2;->h:J

    .line 323
    .line 324
    sub-long/2addr v7, v9

    .line 325
    const/16 v4, 0x3e8

    .line 326
    .line 327
    int-to-long v9, v4

    .line 328
    mul-long/2addr v5, v9

    .line 329
    cmp-long v4, v7, v5

    .line 330
    .line 331
    if-lez v4, :cond_a

    .line 332
    .line 333
    goto :goto_2

    .line 334
    :cond_a
    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;->getMaxRetries()I

    .line 335
    .line 336
    .line 337
    move-result v3

    .line 338
    move-object v4, v0

    .line 339
    check-cast v4, Lcom/inmobi/media/l2;

    .line 340
    .line 341
    iget v4, v4, Lcom/inmobi/media/l2;->f:I

    .line 342
    .line 343
    sub-int/2addr v3, v4

    .line 344
    add-int/2addr v3, v12

    .line 345
    if-nez v3, :cond_b

    .line 346
    .line 347
    iget-object v3, v1, Lcom/inmobi/media/p2;->a:Lcom/inmobi/media/z5;

    .line 348
    .line 349
    if-eqz v3, :cond_c

    .line 350
    .line 351
    invoke-static {}, Lcom/inmobi/media/x2;->f()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v4

    .line 355
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    new-instance v5, Ljava/lang/StringBuilder;

    .line 359
    .line 360
    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    move-object v6, v0

    .line 364
    check-cast v6, Lcom/inmobi/media/l2;

    .line 365
    .line 366
    iget-object v6, v6, Lcom/inmobi/media/l2;->b:Ljava/lang/String;

    .line 367
    .line 368
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    const-string v6, ") in WebView"

    .line 372
    .line 373
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v5

    .line 380
    check-cast v3, Lcom/inmobi/media/A5;

    .line 381
    .line 382
    invoke-virtual {v3, v4, v5}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    goto :goto_1

    .line 386
    :cond_b
    iget-object v4, v1, Lcom/inmobi/media/p2;->a:Lcom/inmobi/media/z5;

    .line 387
    .line 388
    if-eqz v4, :cond_c

    .line 389
    .line 390
    invoke-static {}, Lcom/inmobi/media/x2;->f()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v5

    .line 394
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    new-instance v6, Ljava/lang/StringBuilder;

    .line 398
    .line 399
    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    move-object v3, v0

    .line 409
    check-cast v3, Lcom/inmobi/media/l2;

    .line 410
    .line 411
    iget-object v3, v3, Lcom/inmobi/media/l2;->b:Ljava/lang/String;

    .line 412
    .line 413
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    const-string v3, ") using WebView"

    .line 417
    .line 418
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v3

    .line 425
    check-cast v4, Lcom/inmobi/media/A5;

    .line 426
    .line 427
    invoke-virtual {v4, v5, v3}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    :cond_c
    :goto_1
    new-instance v3, Lcom/inmobi/media/r2;

    .line 431
    .line 432
    new-instance v4, Lcom/inmobi/media/o2;

    .line 433
    .line 434
    invoke-direct {v4, v1}, Lcom/inmobi/media/o2;-><init>(Lcom/inmobi/media/p2;)V

    .line 435
    .line 436
    .line 437
    iget-object v5, v1, Lcom/inmobi/media/p2;->a:Lcom/inmobi/media/z5;

    .line 438
    .line 439
    invoke-direct {v3, v4, v5}, Lcom/inmobi/media/r2;-><init>(Lcom/inmobi/media/t2;Lcom/inmobi/media/z5;)V

    .line 440
    .line 441
    .line 442
    check-cast v0, Lcom/inmobi/media/l2;

    .line 443
    .line 444
    invoke-virtual {v3, v0}, Lcom/inmobi/media/r2;->a(Lcom/inmobi/media/l2;)V

    .line 445
    .line 446
    .line 447
    goto/16 :goto_a

    .line 448
    .line 449
    :cond_d
    :goto_2
    check-cast v0, Lcom/inmobi/media/l2;

    .line 450
    .line 451
    invoke-virtual {v1, v0}, Lcom/inmobi/media/p2;->a(Lcom/inmobi/media/l2;)V

    .line 452
    .line 453
    .line 454
    return-void

    .line 455
    :cond_e
    :goto_3
    iget-object v0, v1, Lcom/inmobi/media/p2;->a:Lcom/inmobi/media/z5;

    .line 456
    .line 457
    if-eqz v0, :cond_f

    .line 458
    .line 459
    invoke-static {}, Lcom/inmobi/media/x2;->f()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v3

    .line 463
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    check-cast v0, Lcom/inmobi/media/A5;

    .line 467
    .line 468
    invoke-virtual {v0, v3, v7}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    :cond_f
    return-void

    .line 472
    :cond_10
    invoke-static {v13}, Lcom/inmobi/media/T9;->a(Z)Lcom/inmobi/media/o4;

    .line 473
    .line 474
    .line 475
    move-result-object v3

    .line 476
    if-eqz v3, :cond_11

    .line 477
    .line 478
    invoke-static {}, Lcom/inmobi/media/x2;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 483
    .line 484
    .line 485
    sget-object v0, Lcom/inmobi/media/x2;->a:Lcom/inmobi/media/x2;

    .line 486
    .line 487
    invoke-static {v0}, Lcom/inmobi/media/x2;->a(Lcom/inmobi/media/x2;)V

    .line 488
    .line 489
    .line 490
    return-void

    .line 491
    :cond_11
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 492
    .line 493
    invoke-static {}, Lcom/inmobi/media/x2;->c()Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;

    .line 494
    .line 495
    .line 496
    move-result-object v3

    .line 497
    instance-of v4, v0, Lcom/inmobi/media/l2;

    .line 498
    .line 499
    if-eqz v4, :cond_17

    .line 500
    .line 501
    if-nez v3, :cond_12

    .line 502
    .line 503
    goto/16 :goto_6

    .line 504
    .line 505
    :cond_12
    move-object v4, v0

    .line 506
    check-cast v4, Lcom/inmobi/media/l2;

    .line 507
    .line 508
    iget v4, v4, Lcom/inmobi/media/l2;->f:I

    .line 509
    .line 510
    if-eqz v4, :cond_16

    .line 511
    .line 512
    move-object v4, v0

    .line 513
    check-cast v4, Lcom/inmobi/media/l2;

    .line 514
    .line 515
    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;->getPingCacheExpiry()J

    .line 516
    .line 517
    .line 518
    move-result-wide v5

    .line 519
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 520
    .line 521
    .line 522
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 523
    .line 524
    .line 525
    move-result-wide v7

    .line 526
    iget-wide v9, v4, Lcom/inmobi/media/l2;->h:J

    .line 527
    .line 528
    sub-long/2addr v7, v9

    .line 529
    const/16 v4, 0x3e8

    .line 530
    .line 531
    int-to-long v9, v4

    .line 532
    mul-long/2addr v5, v9

    .line 533
    cmp-long v4, v7, v5

    .line 534
    .line 535
    if-lez v4, :cond_13

    .line 536
    .line 537
    goto :goto_5

    .line 538
    :cond_13
    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;->getMaxRetries()I

    .line 539
    .line 540
    .line 541
    move-result v3

    .line 542
    move-object v4, v0

    .line 543
    check-cast v4, Lcom/inmobi/media/l2;

    .line 544
    .line 545
    iget v4, v4, Lcom/inmobi/media/l2;->f:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 546
    .line 547
    sub-int/2addr v3, v4

    .line 548
    add-int/2addr v3, v12

    .line 549
    const-string v4, ") over HTTP"

    .line 550
    .line 551
    if-nez v3, :cond_14

    .line 552
    .line 553
    :try_start_2
    iget-object v3, v1, Lcom/inmobi/media/p2;->a:Lcom/inmobi/media/z5;

    .line 554
    .line 555
    if-eqz v3, :cond_15

    .line 556
    .line 557
    invoke-static {}, Lcom/inmobi/media/x2;->f()Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v5

    .line 561
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    new-instance v6, Ljava/lang/StringBuilder;

    .line 565
    .line 566
    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    move-object v7, v0

    .line 570
    check-cast v7, Lcom/inmobi/media/l2;

    .line 571
    .line 572
    iget-object v7, v7, Lcom/inmobi/media/l2;->b:Ljava/lang/String;

    .line 573
    .line 574
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v4

    .line 584
    check-cast v3, Lcom/inmobi/media/A5;

    .line 585
    .line 586
    invoke-virtual {v3, v5, v4}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    .line 588
    .line 589
    goto :goto_4

    .line 590
    :cond_14
    iget-object v5, v1, Lcom/inmobi/media/p2;->a:Lcom/inmobi/media/z5;

    .line 591
    .line 592
    if-eqz v5, :cond_15

    .line 593
    .line 594
    invoke-static {}, Lcom/inmobi/media/x2;->f()Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v6

    .line 598
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    new-instance v7, Ljava/lang/StringBuilder;

    .line 602
    .line 603
    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    move-object v3, v0

    .line 613
    check-cast v3, Lcom/inmobi/media/l2;

    .line 614
    .line 615
    iget-object v3, v3, Lcom/inmobi/media/l2;->b:Ljava/lang/String;

    .line 616
    .line 617
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v3

    .line 627
    check-cast v5, Lcom/inmobi/media/A5;

    .line 628
    .line 629
    invoke-virtual {v5, v6, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    .line 631
    .line 632
    :cond_15
    :goto_4
    new-instance v3, Lcom/inmobi/media/s2;

    .line 633
    .line 634
    new-instance v4, Lcom/inmobi/media/n2;

    .line 635
    .line 636
    invoke-direct {v4, v1}, Lcom/inmobi/media/n2;-><init>(Lcom/inmobi/media/p2;)V

    .line 637
    .line 638
    .line 639
    iget-object v5, v1, Lcom/inmobi/media/p2;->a:Lcom/inmobi/media/z5;

    .line 640
    .line 641
    invoke-direct {v3, v4, v5}, Lcom/inmobi/media/s2;-><init>(Lcom/inmobi/media/t2;Lcom/inmobi/media/z5;)V

    .line 642
    .line 643
    .line 644
    check-cast v0, Lcom/inmobi/media/l2;

    .line 645
    .line 646
    invoke-virtual {v3, v0}, Lcom/inmobi/media/s2;->a(Lcom/inmobi/media/l2;)V

    .line 647
    .line 648
    .line 649
    goto/16 :goto_a

    .line 650
    .line 651
    :cond_16
    :goto_5
    check-cast v0, Lcom/inmobi/media/l2;

    .line 652
    .line 653
    invoke-virtual {v1, v0}, Lcom/inmobi/media/p2;->a(Lcom/inmobi/media/l2;)V

    .line 654
    .line 655
    .line 656
    return-void

    .line 657
    :cond_17
    :goto_6
    iget-object v0, v1, Lcom/inmobi/media/p2;->a:Lcom/inmobi/media/z5;

    .line 658
    .line 659
    if-eqz v0, :cond_18

    .line 660
    .line 661
    invoke-static {}, Lcom/inmobi/media/x2;->f()Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v3

    .line 665
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 666
    .line 667
    .line 668
    check-cast v0, Lcom/inmobi/media/A5;

    .line 669
    .line 670
    invoke-virtual {v0, v3, v7}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    :cond_18
    return-void

    .line 674
    :cond_19
    sget-object v0, Lcom/inmobi/media/x2;->a:Lcom/inmobi/media/x2;

    .line 675
    .line 676
    invoke-virtual {v0}, Lcom/inmobi/media/x2;->g()Z

    .line 677
    .line 678
    .line 679
    move-result v0

    .line 680
    if-nez v0, :cond_1a

    .line 681
    .line 682
    return-void

    .line 683
    :cond_1a
    invoke-static {}, Lcom/inmobi/media/x2;->c()Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;

    .line 684
    .line 685
    .line 686
    move-result-object v0

    .line 687
    invoke-static {}, Lcom/inmobi/media/Nc;->b()Lcom/inmobi/media/m2;

    .line 688
    .line 689
    .line 690
    move-result-object v3

    .line 691
    if-nez v0, :cond_1c

    .line 692
    .line 693
    iget-object v0, v1, Lcom/inmobi/media/p2;->a:Lcom/inmobi/media/z5;

    .line 694
    .line 695
    if-eqz v0, :cond_1b

    .line 696
    .line 697
    invoke-static {}, Lcom/inmobi/media/x2;->f()Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v3

    .line 701
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 702
    .line 703
    .line 704
    check-cast v0, Lcom/inmobi/media/A5;

    .line 705
    .line 706
    invoke-virtual {v0, v3, v7}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    .line 708
    .line 709
    :cond_1b
    return-void

    .line 710
    :cond_1c
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;->getMaxEventBatch()I

    .line 711
    .line 712
    .line 713
    move-result v4

    .line 714
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;->getPingInterval()I

    .line 715
    .line 716
    .line 717
    move-result v5

    .line 718
    invoke-virtual {v3, v4, v5}, Lcom/inmobi/media/m2;->a(II)Ljava/util/ArrayList;

    .line 719
    .line 720
    .line 721
    move-result-object v4

    .line 722
    invoke-static {v4}, Lcom/inmobi/media/x2;->a(Ljava/util/List;)V

    .line 723
    .line 724
    .line 725
    invoke-static {}, Lcom/inmobi/media/x2;->b()Ljava/util/List;

    .line 726
    .line 727
    .line 728
    move-result-object v4

    .line 729
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 730
    .line 731
    .line 732
    move-result v4

    .line 733
    if-eqz v4, :cond_1e

    .line 734
    .line 735
    invoke-static {v3, v10, v10, v6}, Lcom/inmobi/media/T1;->a(Lcom/inmobi/media/T1;Ljava/lang/String;[Ljava/lang/String;I)I

    .line 736
    .line 737
    .line 738
    move-result v3

    .line 739
    if-nez v3, :cond_1d

    .line 740
    .line 741
    invoke-static {}, Lcom/inmobi/media/x2;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 742
    .line 743
    .line 744
    move-result-object v0

    .line 745
    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 746
    .line 747
    .line 748
    goto/16 :goto_a

    .line 749
    .line 750
    :cond_1d
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 751
    .line 752
    .line 753
    move-result-object v3

    .line 754
    iput v12, v3, Landroid/os/Message;->what:I

    .line 755
    .line 756
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;->getPingInterval()I

    .line 757
    .line 758
    .line 759
    move-result v0

    .line 760
    const/16 v4, 0x3e8

    .line 761
    .line 762
    mul-int/2addr v0, v4

    .line 763
    int-to-long v4, v0

    .line 764
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 765
    .line 766
    .line 767
    goto/16 :goto_a

    .line 768
    .line 769
    :cond_1e
    iget-object v3, v1, Lcom/inmobi/media/p2;->a:Lcom/inmobi/media/z5;

    .line 770
    .line 771
    if-eqz v3, :cond_1f

    .line 772
    .line 773
    invoke-static {}, Lcom/inmobi/media/x2;->f()Ljava/lang/String;

    .line 774
    .line 775
    .line 776
    move-result-object v4

    .line 777
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 778
    .line 779
    .line 780
    const-string v5, "Processing following click batch"

    .line 781
    .line 782
    check-cast v3, Lcom/inmobi/media/A5;

    .line 783
    .line 784
    invoke-virtual {v3, v4, v5}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    .line 786
    .line 787
    :cond_1f
    invoke-static {}, Lcom/inmobi/media/x2;->b()Ljava/util/List;

    .line 788
    .line 789
    .line 790
    move-result-object v3

    .line 791
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 792
    .line 793
    .line 794
    move-result-object v3

    .line 795
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 796
    .line 797
    .line 798
    move-result v4

    .line 799
    if-eqz v4, :cond_20

    .line 800
    .line 801
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 802
    .line 803
    .line 804
    move-result-object v4

    .line 805
    check-cast v4, Lcom/inmobi/media/l2;

    .line 806
    .line 807
    invoke-static {}, Lcom/inmobi/media/x2;->f()Ljava/lang/String;

    .line 808
    .line 809
    .line 810
    move-result-object v5

    .line 811
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 812
    .line 813
    .line 814
    iget-object v4, v4, Lcom/inmobi/media/l2;->b:Ljava/lang/String;

    .line 815
    .line 816
    goto :goto_7

    .line 817
    :cond_20
    invoke-static {}, Lcom/inmobi/media/x2;->b()Ljava/util/List;

    .line 818
    .line 819
    .line 820
    move-result-object v3

    .line 821
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 822
    .line 823
    .line 824
    move-result-object v3

    .line 825
    check-cast v3, Lcom/inmobi/media/l2;

    .line 826
    .line 827
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 828
    .line 829
    .line 830
    move-result-object v4

    .line 831
    iget-boolean v5, v3, Lcom/inmobi/media/l2;->e:Z

    .line 832
    .line 833
    if-eqz v5, :cond_21

    .line 834
    .line 835
    goto :goto_8

    .line 836
    :cond_21
    move v8, v9

    .line 837
    :goto_8
    iput v8, v4, Landroid/os/Message;->what:I

    .line 838
    .line 839
    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 840
    .line 841
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 842
    .line 843
    .line 844
    move-result-wide v5

    .line 845
    iget-wide v7, v3, Lcom/inmobi/media/l2;->g:J

    .line 846
    .line 847
    sub-long/2addr v5, v7

    .line 848
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;->getPingInterval()I

    .line 849
    .line 850
    .line 851
    move-result v3

    .line 852
    const/16 v7, 0x3e8

    .line 853
    .line 854
    mul-int/2addr v3, v7

    .line 855
    int-to-long v8, v3

    .line 856
    cmp-long v3, v5, v8

    .line 857
    .line 858
    if-gez v3, :cond_22

    .line 859
    .line 860
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;->getPingInterval()I

    .line 861
    .line 862
    .line 863
    move-result v0

    .line 864
    mul-int/2addr v0, v7

    .line 865
    int-to-long v7, v0

    .line 866
    sub-long/2addr v7, v5

    .line 867
    invoke-virtual {v1, v4, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 868
    .line 869
    .line 870
    goto :goto_a

    .line 871
    :cond_22
    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 872
    .line 873
    .line 874
    goto :goto_a

    .line 875
    :goto_9
    iget-object v3, v1, Lcom/inmobi/media/p2;->a:Lcom/inmobi/media/z5;

    .line 876
    .line 877
    if-eqz v3, :cond_23

    .line 878
    .line 879
    invoke-static {}, Lcom/inmobi/media/x2;->f()Ljava/lang/String;

    .line 880
    .line 881
    .line 882
    move-result-object v4

    .line 883
    const-string v5, "SDK encountered unexpected error in processing ping; "

    .line 884
    .line 885
    invoke-static {v4, v2, v5}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    .line 887
    .line 888
    move-result-object v2

    .line 889
    invoke-static {v0, v2}, Lcom/inmobi/media/rf;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 890
    .line 891
    .line 892
    move-result-object v0

    .line 893
    check-cast v3, Lcom/inmobi/media/A5;

    .line 894
    .line 895
    invoke-virtual {v3, v4, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    .line 897
    .line 898
    :cond_23
    :goto_a
    return-void
.end method
