.class public final Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;
.super Lyd/d;
.source "MiniWindowService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;->e:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    invoke-direct {p0, v1, v2, p1, v0}, Lyd/d;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 5

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;->e:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->e(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;)Landroid/os/Handler;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x2

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;->e:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->d:Landroid/widget/ImageView;

    .line 23
    .line 24
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;->e:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 31
    .line 32
    const-string v2, "close"

    .line 33
    .line 34
    invoke-static {v0, v2}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->i(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;->e:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;->e:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->h:Landroid/widget/ImageView;

    .line 51
    .line 52
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;->e:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 59
    .line 60
    const-string v2, "return_full_screen"

    .line 61
    .line 62
    invoke-static {v0, v2}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->i(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;->e:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->y()V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_1

    .line 71
    .line 72
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;->e:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->c:Landroid/widget/ImageView;

    .line 79
    .line 80
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    const/4 v2, 0x0

    .line 85
    const/4 v3, 0x1

    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;->e:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 89
    .line 90
    const-string v4, "fast_rewind"

    .line 91
    .line 92
    invoke-static {v0, v4}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->i(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;->e:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->s()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_2

    .line 102
    .line 103
    return-void

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;->e:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->j:Landroid/widget/ProgressBar;

    .line 111
    .line 112
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    add-int/lit16 v0, v0, -0x2710

    .line 117
    .line 118
    if-gez v0, :cond_3

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_3
    move v2, v0

    .line 122
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;->e:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 123
    .line 124
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->A(I)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;->e:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->t()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-nez v0, :cond_c

    .line 134
    .line 135
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;->e:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 136
    .line 137
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->z(Z)V

    .line 138
    .line 139
    .line 140
    goto/16 :goto_1

    .line 141
    .line 142
    :cond_4
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;->e:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->e:Landroid/widget/ImageView;

    .line 149
    .line 150
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_8

    .line 155
    .line 156
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;->e:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 157
    .line 158
    const-string v2, "fast_forward"

    .line 159
    .line 160
    invoke-static {v0, v2}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->i(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;->e:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 164
    .line 165
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->s()Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_5

    .line 170
    .line 171
    return-void

    .line 172
    :cond_5
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;->e:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 173
    .line 174
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->j:Landroid/widget/ProgressBar;

    .line 179
    .line 180
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    add-int/lit16 v0, v0, 0x2710

    .line 185
    .line 186
    iget-object v2, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;->e:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 187
    .line 188
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->j:Landroid/widget/ProgressBar;

    .line 193
    .line 194
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-le v0, v2, :cond_6

    .line 199
    .line 200
    move v0, v2

    .line 201
    :cond_6
    iget-object v2, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;->e:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 202
    .line 203
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->t()Z

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    if-nez v2, :cond_7

    .line 208
    .line 209
    iget-object v2, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;->e:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 210
    .line 211
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->z(Z)V

    .line 212
    .line 213
    .line 214
    :cond_7
    iget-object v2, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;->e:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 215
    .line 216
    invoke-virtual {v2, v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->A(I)V

    .line 217
    .line 218
    .line 219
    goto :goto_1

    .line 220
    :cond_8
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;->e:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 221
    .line 222
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->f:Landroid/widget/ImageView;

    .line 227
    .line 228
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-eqz v0, :cond_b

    .line 233
    .line 234
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;->e:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 235
    .line 236
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->s()Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-eqz v0, :cond_9

    .line 241
    .line 242
    iget-object p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;->e:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 243
    .line 244
    invoke-virtual {p1, v3}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->w(Z)V

    .line 245
    .line 246
    .line 247
    return-void

    .line 248
    :cond_9
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;->e:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 249
    .line 250
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->t()Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    if-nez v0, :cond_a

    .line 255
    .line 256
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;->e:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 257
    .line 258
    const-string v2, "play"

    .line 259
    .line 260
    invoke-static {v0, v2}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->i(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;->e:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 264
    .line 265
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->z(Z)V

    .line 266
    .line 267
    .line 268
    goto :goto_1

    .line 269
    :cond_a
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;->e:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 270
    .line 271
    const-string v2, "pause"

    .line 272
    .line 273
    invoke-static {v0, v2}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->i(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;->e:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 277
    .line 278
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->x(Z)V

    .line 279
    .line 280
    .line 281
    goto :goto_1

    .line 282
    :cond_b
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;->e:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 283
    .line 284
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->g:Landroid/widget/ImageView;

    .line 289
    .line 290
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    if-eqz v0, :cond_c

    .line 295
    .line 296
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;->e:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 297
    .line 298
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->M(Z)V

    .line 299
    .line 300
    .line 301
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;->e:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 302
    .line 303
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->w(Z)V

    .line 304
    .line 305
    .line 306
    :cond_c
    :goto_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;->e:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 307
    .line 308
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->d:Landroid/widget/ImageView;

    .line 313
    .line 314
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    if-eqz v0, :cond_d

    .line 319
    .line 320
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;->e:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 321
    .line 322
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->h:Landroid/widget/ImageView;

    .line 327
    .line 328
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result p1

    .line 332
    if-nez p1, :cond_e

    .line 333
    .line 334
    :cond_d
    iget-object p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;->e:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 335
    .line 336
    invoke-static {p1}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->e(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;)Landroid/os/Handler;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    const-wide/16 v2, 0xbb8

    .line 341
    .line 342
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 343
    .line 344
    .line 345
    :cond_e
    return-void
.end method
