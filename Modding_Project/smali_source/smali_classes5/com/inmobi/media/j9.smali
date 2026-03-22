.class public final Lcom/inmobi/media/j9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/l9;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/l9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/j9;->a:Lcom/inmobi/media/l9;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6

    .line 1
    const-string v0, "mp"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/inmobi/media/j9;->a:Lcom/inmobi/media/l9;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/inmobi/media/l9;->getMediaPlayer()Lcom/inmobi/media/G8;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/j9;->a:Lcom/inmobi/media/l9;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/inmobi/media/l9;->getMediaPlayer()Lcom/inmobi/media/G8;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, 0x2

    .line 25
    iput v1, v0, Lcom/inmobi/media/G8;->a:I

    .line 26
    .line 27
    :goto_0
    iget-object v0, p0, Lcom/inmobi/media/j9;->a:Lcom/inmobi/media/l9;

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    iput-boolean v1, v0, Lcom/inmobi/media/l9;->r:Z

    .line 31
    .line 32
    iput-boolean v1, v0, Lcom/inmobi/media/l9;->q:Z

    .line 33
    .line 34
    iput-boolean v1, v0, Lcom/inmobi/media/l9;->p:Z

    .line 35
    .line 36
    iget-object v0, v0, Lcom/inmobi/media/l9;->n:Lcom/inmobi/media/e9;

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 42
    .line 43
    .line 44
    :goto_1
    iget-object v0, p0, Lcom/inmobi/media/j9;->a:Lcom/inmobi/media/l9;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    iput v2, v0, Lcom/inmobi/media/l9;->e:I

    .line 51
    .line 52
    iget-object v0, p0, Lcom/inmobi/media/j9;->a:Lcom/inmobi/media/l9;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    iput p1, v0, Lcom/inmobi/media/l9;->f:I

    .line 59
    .line 60
    iget-object p1, p0, Lcom/inmobi/media/j9;->a:Lcom/inmobi/media/l9;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    instance-of v0, p1, Lcom/inmobi/media/c9;

    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    check-cast p1, Lcom/inmobi/media/c9;

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_3
    move-object p1, v2

    .line 75
    :goto_2
    const-string v0, "didCompleteQ4"

    .line 76
    .line 77
    const/4 v3, 0x0

    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    iget-object v4, p1, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 81
    .line 82
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    const-string v5, "null cannot be cast to non-null type kotlin.Boolean"

    .line 87
    .line 88
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    check-cast v4, Ljava/lang/Boolean;

    .line 92
    .line 93
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-eqz v4, :cond_4

    .line 98
    .line 99
    iget-object v4, p0, Lcom/inmobi/media/j9;->a:Lcom/inmobi/media/l9;

    .line 100
    .line 101
    const/16 v5, 0x8

    .line 102
    .line 103
    invoke-virtual {v4, v5, v3}, Lcom/inmobi/media/l9;->a(II)V

    .line 104
    .line 105
    .line 106
    iget-object v4, p1, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 107
    .line 108
    const-string v5, "placementType"

    .line 109
    .line 110
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    const-string v5, "null cannot be cast to non-null type kotlin.Byte"

    .line 115
    .line 116
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    check-cast v4, Ljava/lang/Byte;

    .line 120
    .line 121
    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    if-ne v4, v1, :cond_4

    .line 126
    .line 127
    return-void

    .line 128
    :cond_4
    iget-object v1, p0, Lcom/inmobi/media/j9;->a:Lcom/inmobi/media/l9;

    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/inmobi/media/l9;->getPlaybackEventListener()Lcom/inmobi/media/g9;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    if-eqz v1, :cond_5

    .line 135
    .line 136
    check-cast v1, Lcom/inmobi/media/A8;

    .line 137
    .line 138
    invoke-virtual {v1, v3}, Lcom/inmobi/media/A8;->a(B)V

    .line 139
    .line 140
    .line 141
    :cond_5
    if-eqz p1, :cond_6

    .line 142
    .line 143
    iget-object v1, p1, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 144
    .line 145
    if-eqz v1, :cond_6

    .line 146
    .line 147
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    goto :goto_3

    .line 152
    :cond_6
    move-object v0, v2

    .line 153
    :goto_3
    instance-of v1, v0, Ljava/lang/Boolean;

    .line 154
    .line 155
    if-eqz v1, :cond_7

    .line 156
    .line 157
    check-cast v0, Ljava/lang/Boolean;

    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_7
    move-object v0, v2

    .line 161
    :goto_4
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 162
    .line 163
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_8

    .line 168
    .line 169
    iget-object v0, p1, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 170
    .line 171
    const-string v1, "seekPosition"

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    .line 178
    .line 179
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    check-cast v0, Ljava/lang/Integer;

    .line 183
    .line 184
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    :cond_8
    iget-object v0, p0, Lcom/inmobi/media/j9;->a:Lcom/inmobi/media/l9;

    .line 189
    .line 190
    iget v1, v0, Lcom/inmobi/media/l9;->e:I

    .line 191
    .line 192
    const-string v4, "isFullScreen"

    .line 193
    .line 194
    const/4 v5, 0x3

    .line 195
    if-eqz v1, :cond_e

    .line 196
    .line 197
    iget v1, v0, Lcom/inmobi/media/l9;->f:I

    .line 198
    .line 199
    if-eqz v1, :cond_e

    .line 200
    .line 201
    invoke-virtual {v0}, Lcom/inmobi/media/l9;->getMediaPlayer()Lcom/inmobi/media/G8;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    if-eqz v0, :cond_c

    .line 206
    .line 207
    iget v0, v0, Lcom/inmobi/media/G8;->b:I

    .line 208
    .line 209
    if-ne v5, v0, :cond_c

    .line 210
    .line 211
    if-eqz p1, :cond_9

    .line 212
    .line 213
    iget-object p1, p1, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 214
    .line 215
    if-eqz p1, :cond_9

    .line 216
    .line 217
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    goto :goto_5

    .line 222
    :cond_9
    move-object p1, v2

    .line 223
    :goto_5
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 224
    .line 225
    if-eqz v0, :cond_a

    .line 226
    .line 227
    move-object v2, p1

    .line 228
    check-cast v2, Ljava/lang/Boolean;

    .line 229
    .line 230
    :cond_a
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 231
    .line 232
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result p1

    .line 236
    if-eqz p1, :cond_b

    .line 237
    .line 238
    iget-object p1, p0, Lcom/inmobi/media/j9;->a:Lcom/inmobi/media/l9;

    .line 239
    .line 240
    invoke-virtual {p1}, Lcom/inmobi/media/l9;->start()V

    .line 241
    .line 242
    .line 243
    :cond_b
    iget-object p1, p0, Lcom/inmobi/media/j9;->a:Lcom/inmobi/media/l9;

    .line 244
    .line 245
    iget-object p1, p1, Lcom/inmobi/media/l9;->n:Lcom/inmobi/media/e9;

    .line 246
    .line 247
    if-eqz p1, :cond_11

    .line 248
    .line 249
    invoke-virtual {p1}, Lcom/inmobi/media/e9;->d()V

    .line 250
    .line 251
    .line 252
    goto :goto_7

    .line 253
    :cond_c
    iget-object p1, p0, Lcom/inmobi/media/j9;->a:Lcom/inmobi/media/l9;

    .line 254
    .line 255
    invoke-virtual {p1}, Lcom/inmobi/media/l9;->isPlaying()Z

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    if-nez p1, :cond_11

    .line 260
    .line 261
    if-nez v3, :cond_d

    .line 262
    .line 263
    iget-object p1, p0, Lcom/inmobi/media/j9;->a:Lcom/inmobi/media/l9;

    .line 264
    .line 265
    invoke-virtual {p1}, Lcom/inmobi/media/l9;->getCurrentPosition()I

    .line 266
    .line 267
    .line 268
    move-result p1

    .line 269
    if-lez p1, :cond_11

    .line 270
    .line 271
    :cond_d
    iget-object p1, p0, Lcom/inmobi/media/j9;->a:Lcom/inmobi/media/l9;

    .line 272
    .line 273
    iget-object p1, p1, Lcom/inmobi/media/l9;->n:Lcom/inmobi/media/e9;

    .line 274
    .line 275
    if-eqz p1, :cond_11

    .line 276
    .line 277
    invoke-virtual {p1}, Lcom/inmobi/media/e9;->d()V

    .line 278
    .line 279
    .line 280
    goto :goto_7

    .line 281
    :cond_e
    invoke-virtual {v0}, Lcom/inmobi/media/l9;->getMediaPlayer()Lcom/inmobi/media/G8;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    if-eqz v0, :cond_11

    .line 286
    .line 287
    iget v0, v0, Lcom/inmobi/media/G8;->b:I

    .line 288
    .line 289
    if-ne v5, v0, :cond_11

    .line 290
    .line 291
    if-eqz p1, :cond_f

    .line 292
    .line 293
    iget-object p1, p1, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 294
    .line 295
    if-eqz p1, :cond_f

    .line 296
    .line 297
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    goto :goto_6

    .line 302
    :cond_f
    move-object p1, v2

    .line 303
    :goto_6
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 304
    .line 305
    if-eqz v0, :cond_10

    .line 306
    .line 307
    move-object v2, p1

    .line 308
    check-cast v2, Ljava/lang/Boolean;

    .line 309
    .line 310
    :cond_10
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 311
    .line 312
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result p1

    .line 316
    if-eqz p1, :cond_11

    .line 317
    .line 318
    iget-object p1, p0, Lcom/inmobi/media/j9;->a:Lcom/inmobi/media/l9;

    .line 319
    .line 320
    invoke-virtual {p1}, Lcom/inmobi/media/l9;->start()V

    .line 321
    .line 322
    .line 323
    :cond_11
    :goto_7
    return-void
.end method
