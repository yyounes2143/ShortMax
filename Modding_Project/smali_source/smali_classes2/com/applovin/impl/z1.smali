.class public Lcom/applovin/impl/z1;
.super Lcom/applovin/impl/v1;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/z1$e;,
        Lcom/applovin/impl/z1$d;,
        Lcom/applovin/impl/z1$f;
    }
.end annotation


# instance fields
.field private final M:Lcom/applovin/impl/a2;

.field private N:Landroid/media/MediaPlayer;

.field private final O:Landroid/view/View;

.field protected final P:Lcom/applovin/impl/adview/AppLovinVideoView;

.field protected final Q:Lcom/applovin/impl/a;

.field protected final R:Lcom/applovin/impl/adview/g;

.field protected S:Lcom/applovin/impl/i0;

.field protected final T:Landroid/widget/ImageView;

.field protected U:Lcom/applovin/impl/adview/l;

.field protected final V:Landroid/widget/ProgressBar;

.field protected W:Landroid/widget/ProgressBar;

.field protected X:Landroid/widget/ImageView;

.field private final Y:Lcom/applovin/impl/z1$e;

.field private final Z:Lcom/applovin/impl/z1$d;

.field private final a0:Landroid/os/Handler;

.field private final b0:Landroid/os/Handler;

.field protected final c0:Lcom/applovin/impl/a1;

.field protected final d0:Lcom/applovin/impl/a1;

.field private final e0:Z

.field protected f0:Z

.field protected g0:J

.field private h0:I

.field private i0:I

.field protected j0:Z

.field private k0:Z

.field private final l0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final m0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private n0:J

.field private o0:J


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/ad/b;Landroid/app/Activity;Ljava/util/Map;Lcom/applovin/impl/sdk/k;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    .locals 8

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/applovin/impl/v1;-><init>(Lcom/applovin/impl/sdk/ad/b;Landroid/app/Activity;Ljava/util/Map;Lcom/applovin/impl/sdk/k;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    .line 2
    .line 3
    .line 4
    new-instance p3, Lcom/applovin/impl/a2;

    .line 5
    .line 6
    iget-object p5, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 7
    .line 8
    iget-object p6, p0, Lcom/applovin/impl/v1;->d:Landroid/app/Activity;

    .line 9
    .line 10
    iget-object p7, p0, Lcom/applovin/impl/v1;->b:Lcom/applovin/impl/sdk/k;

    .line 11
    .line 12
    invoke-direct {p3, p5, p6, p7}, Lcom/applovin/impl/a2;-><init>(Lcom/applovin/impl/sdk/ad/b;Landroid/app/Activity;Lcom/applovin/impl/sdk/k;)V

    .line 13
    .line 14
    .line 15
    iput-object p3, p0, Lcom/applovin/impl/z1;->M:Lcom/applovin/impl/a2;

    .line 16
    .line 17
    const/4 p3, 0x0

    .line 18
    iput-object p3, p0, Lcom/applovin/impl/z1;->X:Landroid/widget/ImageView;

    .line 19
    .line 20
    new-instance p5, Lcom/applovin/impl/z1$e;

    .line 21
    .line 22
    invoke-direct {p5, p0, p3}, Lcom/applovin/impl/z1$e;-><init>(Lcom/applovin/impl/z1;Lcom/applovin/impl/z1$a;)V

    .line 23
    .line 24
    .line 25
    iput-object p5, p0, Lcom/applovin/impl/z1;->Y:Lcom/applovin/impl/z1$e;

    .line 26
    .line 27
    new-instance p6, Lcom/applovin/impl/z1$d;

    .line 28
    .line 29
    invoke-direct {p6, p0, p3}, Lcom/applovin/impl/z1$d;-><init>(Lcom/applovin/impl/z1;Lcom/applovin/impl/z1$a;)V

    .line 30
    .line 31
    .line 32
    iput-object p6, p0, Lcom/applovin/impl/z1;->Z:Lcom/applovin/impl/z1$d;

    .line 33
    .line 34
    new-instance p7, Landroid/os/Handler;

    .line 35
    .line 36
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-direct {p7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 41
    .line 42
    .line 43
    iput-object p7, p0, Lcom/applovin/impl/z1;->a0:Landroid/os/Handler;

    .line 44
    .line 45
    new-instance v0, Landroid/os/Handler;

    .line 46
    .line 47
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/applovin/impl/z1;->b0:Landroid/os/Handler;

    .line 55
    .line 56
    new-instance v1, Lcom/applovin/impl/a1;

    .line 57
    .line 58
    iget-object v2, p0, Lcom/applovin/impl/v1;->b:Lcom/applovin/impl/sdk/k;

    .line 59
    .line 60
    invoke-direct {v1, p7, v2}, Lcom/applovin/impl/a1;-><init>(Landroid/os/Handler;Lcom/applovin/impl/sdk/k;)V

    .line 61
    .line 62
    .line 63
    iput-object v1, p0, Lcom/applovin/impl/z1;->c0:Lcom/applovin/impl/a1;

    .line 64
    .line 65
    new-instance p7, Lcom/applovin/impl/a1;

    .line 66
    .line 67
    iget-object v2, p0, Lcom/applovin/impl/v1;->b:Lcom/applovin/impl/sdk/k;

    .line 68
    .line 69
    invoke-direct {p7, v0, v2}, Lcom/applovin/impl/a1;-><init>(Landroid/os/Handler;Lcom/applovin/impl/sdk/k;)V

    .line 70
    .line 71
    .line 72
    iput-object p7, p0, Lcom/applovin/impl/z1;->d0:Lcom/applovin/impl/a1;

    .line 73
    .line 74
    iget-object p7, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 75
    .line 76
    invoke-virtual {p7}, Lcom/applovin/impl/sdk/ad/b;->O0()Z

    .line 77
    .line 78
    .line 79
    move-result p7

    .line 80
    iput-boolean p7, p0, Lcom/applovin/impl/z1;->e0:Z

    .line 81
    .line 82
    iget-object v0, p0, Lcom/applovin/impl/v1;->b:Lcom/applovin/impl/sdk/k;

    .line 83
    .line 84
    invoke-static {v0}, Lcom/applovin/impl/k7;->e(Lcom/applovin/impl/sdk/k;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    iput-boolean v0, p0, Lcom/applovin/impl/z1;->f0:Z

    .line 89
    .line 90
    const/4 v0, -0x1

    .line 91
    iput v0, p0, Lcom/applovin/impl/z1;->i0:I

    .line 92
    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    .line 95
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 96
    .line 97
    .line 98
    iput-object v0, p0, Lcom/applovin/impl/z1;->l0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 99
    .line 100
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 101
    .line 102
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 103
    .line 104
    .line 105
    iput-object v0, p0, Lcom/applovin/impl/z1;->m0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 106
    .line 107
    const-wide/16 v2, -0x2

    .line 108
    .line 109
    iput-wide v2, p0, Lcom/applovin/impl/z1;->n0:J

    .line 110
    .line 111
    const-wide/16 v2, 0x0

    .line 112
    .line 113
    iput-wide v2, p0, Lcom/applovin/impl/z1;->o0:J

    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->hasVideoUrl()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_8

    .line 120
    .line 121
    new-instance v0, Lcom/applovin/impl/adview/AppLovinVideoView;

    .line 122
    .line 123
    invoke-direct {v0, p2}, Lcom/applovin/impl/adview/AppLovinVideoView;-><init>(Landroid/content/Context;)V

    .line 124
    .line 125
    .line 126
    iput-object v0, p0, Lcom/applovin/impl/z1;->P:Lcom/applovin/impl/adview/AppLovinVideoView;

    .line 127
    .line 128
    invoke-virtual {v0, p5}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, p5}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, p5}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->h()Landroid/os/Bundle;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-static {v0}, Lcom/applovin/impl/b8;->a(Landroid/view/View;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    const-string/jumbo v6, "video_view_address"

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    new-instance v4, Landroid/view/View;

    .line 152
    .line 153
    invoke-direct {v4, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 154
    .line 155
    .line 156
    iput-object v4, p0, Lcom/applovin/impl/z1;->O:Landroid/view/View;

    .line 157
    .line 158
    const/16 v5, 0xfe

    .line 159
    .line 160
    const/4 v6, 0x0

    .line 161
    invoke-static {v5, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    .line 162
    .line 163
    .line 164
    move-result v5

    .line 165
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 166
    .line 167
    .line 168
    sget-object v5, Lcom/applovin/impl/v4;->k1:Lcom/applovin/impl/v4;

    .line 169
    .line 170
    invoke-virtual {p4, v5}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    check-cast v5, Ljava/lang/Boolean;

    .line 175
    .line 176
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    if-eqz v5, :cond_0

    .line 181
    .line 182
    new-instance v0, Lcom/applovin/impl/adview/AppLovinTouchToClickListener;

    .line 183
    .line 184
    sget-object v5, Lcom/applovin/impl/v4;->h0:Lcom/applovin/impl/v4;

    .line 185
    .line 186
    invoke-direct {v0, p4, v5, p2, p5}, Lcom/applovin/impl/adview/AppLovinTouchToClickListener;-><init>(Lcom/applovin/impl/sdk/k;Lcom/applovin/impl/v4;Landroid/content/Context;Lcom/applovin/impl/adview/AppLovinTouchToClickListener$OnClickListener;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 190
    .line 191
    .line 192
    goto :goto_0

    .line 193
    :cond_0
    new-instance v5, Lcom/applovin/impl/adview/AppLovinTouchToClickListener;

    .line 194
    .line 195
    sget-object v7, Lcom/applovin/impl/v4;->h0:Lcom/applovin/impl/v4;

    .line 196
    .line 197
    invoke-direct {v5, p4, v7, p2, p5}, Lcom/applovin/impl/adview/AppLovinTouchToClickListener;-><init>(Lcom/applovin/impl/sdk/k;Lcom/applovin/impl/v4;Landroid/content/Context;Lcom/applovin/impl/adview/AppLovinTouchToClickListener$OnClickListener;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 201
    .line 202
    .line 203
    new-instance p5, Lcom/applovin/impl/qg;

    .line 204
    .line 205
    invoke-direct {p5}, Lcom/applovin/impl/qg;-><init>()V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v4, p5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 209
    .line 210
    .line 211
    :goto_0
    new-instance p5, Lcom/applovin/impl/z1$f;

    .line 212
    .line 213
    invoke-direct {p5, p0, p3}, Lcom/applovin/impl/z1$f;-><init>(Lcom/applovin/impl/z1;Lcom/applovin/impl/z1$a;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->n0()J

    .line 217
    .line 218
    .line 219
    move-result-wide v4

    .line 220
    cmp-long v0, v4, v2

    .line 221
    .line 222
    const/16 v2, 0x8

    .line 223
    .line 224
    if-ltz v0, :cond_1

    .line 225
    .line 226
    new-instance v0, Lcom/applovin/impl/adview/g;

    .line 227
    .line 228
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->e0()Lcom/applovin/impl/adview/e$a;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-direct {v0, v3, p2}, Lcom/applovin/impl/adview/g;-><init>(Lcom/applovin/impl/adview/e$a;Landroid/app/Activity;)V

    .line 233
    .line 234
    .line 235
    iput-object v0, p0, Lcom/applovin/impl/z1;->R:Lcom/applovin/impl/adview/g;

    .line 236
    .line 237
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    .line 242
    .line 243
    goto :goto_1

    .line 244
    :cond_1
    iput-object p3, p0, Lcom/applovin/impl/z1;->R:Lcom/applovin/impl/adview/g;

    .line 245
    .line 246
    :goto_1
    iget-boolean v0, p0, Lcom/applovin/impl/z1;->f0:Z

    .line 247
    .line 248
    invoke-static {v0, p4}, Lcom/applovin/impl/z1;->a(ZLcom/applovin/impl/sdk/k;)Z

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    const/4 v3, 0x1

    .line 253
    if-eqz v0, :cond_2

    .line 254
    .line 255
    new-instance v0, Landroid/widget/ImageView;

    .line 256
    .line 257
    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 258
    .line 259
    .line 260
    iput-object v0, p0, Lcom/applovin/impl/z1;->T:Landroid/widget/ImageView;

    .line 261
    .line 262
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 263
    .line 264
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    .line 272
    .line 273
    iget-boolean p5, p0, Lcom/applovin/impl/z1;->f0:Z

    .line 274
    .line 275
    invoke-direct {p0, p5}, Lcom/applovin/impl/z1;->e(Z)V

    .line 276
    .line 277
    .line 278
    goto :goto_2

    .line 279
    :cond_2
    iput-object p3, p0, Lcom/applovin/impl/z1;->T:Landroid/widget/ImageView;

    .line 280
    .line 281
    :goto_2
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->k0()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p5

    .line 285
    invoke-static {p5}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    if-eqz v0, :cond_3

    .line 290
    .line 291
    new-instance v0, Lcom/applovin/impl/j8;

    .line 292
    .line 293
    invoke-direct {v0, p4}, Lcom/applovin/impl/j8;-><init>(Lcom/applovin/impl/sdk/k;)V

    .line 294
    .line 295
    .line 296
    new-instance v4, Ljava/lang/ref/WeakReference;

    .line 297
    .line 298
    invoke-direct {v4, p6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, v4}, Lcom/applovin/impl/j8;->a(Ljava/lang/ref/WeakReference;)V

    .line 302
    .line 303
    .line 304
    new-instance p6, Lcom/applovin/impl/adview/l;

    .line 305
    .line 306
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->j0()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v4

    .line 310
    invoke-direct {p6, v4, p1, v0, p2}, Lcom/applovin/impl/adview/l;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/impl/j8;Landroid/content/Context;)V

    .line 311
    .line 312
    .line 313
    iput-object p6, p0, Lcom/applovin/impl/z1;->U:Lcom/applovin/impl/adview/l;

    .line 314
    .line 315
    invoke-virtual {p6, p5}, Lcom/applovin/impl/adview/l;->a(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    goto :goto_3

    .line 319
    :cond_3
    iput-object p3, p0, Lcom/applovin/impl/z1;->U:Lcom/applovin/impl/adview/l;

    .line 320
    .line 321
    :goto_3
    if-eqz p7, :cond_4

    .line 322
    .line 323
    new-instance p5, Lcom/applovin/impl/a;

    .line 324
    .line 325
    sget-object p6, Lcom/applovin/impl/v4;->i2:Lcom/applovin/impl/v4;

    .line 326
    .line 327
    invoke-virtual {p4, p6}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object p6

    .line 331
    check-cast p6, Ljava/lang/Integer;

    .line 332
    .line 333
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    .line 334
    .line 335
    .line 336
    move-result p6

    .line 337
    const p7, 0x101007a

    .line 338
    .line 339
    .line 340
    invoke-direct {p5, p2, p6, p7}, Lcom/applovin/impl/a;-><init>(Landroid/content/Context;II)V

    .line 341
    .line 342
    .line 343
    iput-object p5, p0, Lcom/applovin/impl/z1;->Q:Lcom/applovin/impl/a;

    .line 344
    .line 345
    const-string p6, "#75FFFFFF"

    .line 346
    .line 347
    invoke-static {p6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 348
    .line 349
    .line 350
    move-result p6

    .line 351
    invoke-virtual {p5, p6}, Lcom/applovin/impl/a;->setColor(I)V

    .line 352
    .line 353
    .line 354
    const-string p6, "#00000000"

    .line 355
    .line 356
    invoke-static {p6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 357
    .line 358
    .line 359
    move-result p6

    .line 360
    invoke-virtual {p5, p6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {p5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 364
    .line 365
    .line 366
    invoke-static {p2}, Lcom/applovin/communicator/AppLovinCommunicator;->getInstance(Landroid/content/Context;)Lcom/applovin/communicator/AppLovinCommunicator;

    .line 367
    .line 368
    .line 369
    move-result-object p5

    .line 370
    const-string/jumbo p6, "video_caching_failed"

    .line 371
    .line 372
    .line 373
    invoke-virtual {p5, p0, p6}, Lcom/applovin/communicator/AppLovinCommunicator;->subscribe(Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    goto :goto_4

    .line 377
    :cond_4
    iput-object p3, p0, Lcom/applovin/impl/z1;->Q:Lcom/applovin/impl/a;

    .line 378
    .line 379
    :goto_4
    invoke-virtual {p0}, Lcom/applovin/impl/v1;->b()I

    .line 380
    .line 381
    .line 382
    move-result p5

    .line 383
    sget-object p6, Lcom/applovin/impl/v4;->S1:Lcom/applovin/impl/v4;

    .line 384
    .line 385
    invoke-virtual {p4, p6}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object p6

    .line 389
    check-cast p6, Ljava/lang/Boolean;

    .line 390
    .line 391
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 392
    .line 393
    .line 394
    move-result p6

    .line 395
    if-eqz p6, :cond_5

    .line 396
    .line 397
    if-lez p5, :cond_5

    .line 398
    .line 399
    move v6, v3

    .line 400
    :cond_5
    iget-object p6, p0, Lcom/applovin/impl/z1;->S:Lcom/applovin/impl/i0;

    .line 401
    .line 402
    if-nez p6, :cond_6

    .line 403
    .line 404
    if-eqz v6, :cond_6

    .line 405
    .line 406
    new-instance p6, Lcom/applovin/impl/i0;

    .line 407
    .line 408
    invoke-direct {p6, p2}, Lcom/applovin/impl/i0;-><init>(Landroid/content/Context;)V

    .line 409
    .line 410
    .line 411
    iput-object p6, p0, Lcom/applovin/impl/z1;->S:Lcom/applovin/impl/i0;

    .line 412
    .line 413
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->t()I

    .line 414
    .line 415
    .line 416
    move-result p6

    .line 417
    iget-object p7, p0, Lcom/applovin/impl/z1;->S:Lcom/applovin/impl/i0;

    .line 418
    .line 419
    invoke-virtual {p7, p6}, Lcom/applovin/impl/i0;->setTextColor(I)V

    .line 420
    .line 421
    .line 422
    iget-object p7, p0, Lcom/applovin/impl/z1;->S:Lcom/applovin/impl/i0;

    .line 423
    .line 424
    sget-object v0, Lcom/applovin/impl/v4;->R1:Lcom/applovin/impl/v4;

    .line 425
    .line 426
    invoke-virtual {p4, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    check-cast v0, Ljava/lang/Integer;

    .line 431
    .line 432
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 433
    .line 434
    .line 435
    move-result v0

    .line 436
    int-to-float v0, v0

    .line 437
    invoke-virtual {p7, v0}, Lcom/applovin/impl/i0;->setTextSize(F)V

    .line 438
    .line 439
    .line 440
    iget-object p7, p0, Lcom/applovin/impl/z1;->S:Lcom/applovin/impl/i0;

    .line 441
    .line 442
    invoke-virtual {p7, p6}, Lcom/applovin/impl/i0;->setFinishedStrokeColor(I)V

    .line 443
    .line 444
    .line 445
    iget-object p6, p0, Lcom/applovin/impl/z1;->S:Lcom/applovin/impl/i0;

    .line 446
    .line 447
    sget-object p7, Lcom/applovin/impl/v4;->Q1:Lcom/applovin/impl/v4;

    .line 448
    .line 449
    invoke-virtual {p4, p7}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object p7

    .line 453
    check-cast p7, Ljava/lang/Integer;

    .line 454
    .line 455
    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    .line 456
    .line 457
    .line 458
    move-result p7

    .line 459
    int-to-float p7, p7

    .line 460
    invoke-virtual {p6, p7}, Lcom/applovin/impl/i0;->setFinishedStrokeWidth(F)V

    .line 461
    .line 462
    .line 463
    iget-object p6, p0, Lcom/applovin/impl/z1;->S:Lcom/applovin/impl/i0;

    .line 464
    .line 465
    invoke-virtual {p6, p5}, Lcom/applovin/impl/i0;->setMax(I)V

    .line 466
    .line 467
    .line 468
    iget-object p6, p0, Lcom/applovin/impl/z1;->S:Lcom/applovin/impl/i0;

    .line 469
    .line 470
    invoke-virtual {p6, p5}, Lcom/applovin/impl/i0;->setProgress(I)V

    .line 471
    .line 472
    .line 473
    sget-object p6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 474
    .line 475
    const-wide/16 v2, 0x1

    .line 476
    .line 477
    invoke-virtual {p6, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 478
    .line 479
    .line 480
    move-result-wide p6

    .line 481
    new-instance v0, Lcom/applovin/impl/z1$a;

    .line 482
    .line 483
    invoke-direct {v0, p0, p5}, Lcom/applovin/impl/z1$a;-><init>(Lcom/applovin/impl/z1;I)V

    .line 484
    .line 485
    .line 486
    const-string p5, "COUNTDOWN_CLOCK"

    .line 487
    .line 488
    invoke-virtual {v1, p5, p6, p7, v0}, Lcom/applovin/impl/a1;->a(Ljava/lang/String;JLcom/applovin/impl/a1$b;)V

    .line 489
    .line 490
    .line 491
    :cond_6
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->u0()Z

    .line 492
    .line 493
    .line 494
    move-result p5

    .line 495
    if-eqz p5, :cond_7

    .line 496
    .line 497
    sget-object p5, Lcom/applovin/impl/v4;->f2:Lcom/applovin/impl/v4;

    .line 498
    .line 499
    invoke-virtual {p4, p5}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object p5

    .line 503
    check-cast p5, Ljava/lang/Long;

    .line 504
    .line 505
    sget-object p6, Lcom/applovin/impl/v4;->g2:Lcom/applovin/impl/v4;

    .line 506
    .line 507
    invoke-virtual {p4, p6}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    move-result-object p4

    .line 511
    check-cast p4, Ljava/lang/Integer;

    .line 512
    .line 513
    new-instance p6, Landroid/widget/ProgressBar;

    .line 514
    .line 515
    const p7, 0x1010078

    .line 516
    .line 517
    .line 518
    invoke-direct {p6, p2, p3, p7}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 519
    .line 520
    .line 521
    iput-object p6, p0, Lcom/applovin/impl/z1;->V:Landroid/widget/ProgressBar;

    .line 522
    .line 523
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->t0()I

    .line 524
    .line 525
    .line 526
    move-result p1

    .line 527
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 528
    .line 529
    .line 530
    move-result p2

    .line 531
    invoke-direct {p0, p6, p1, p2}, Lcom/applovin/impl/z1;->a(Landroid/widget/ProgressBar;II)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    .line 535
    .line 536
    .line 537
    move-result-wide p1

    .line 538
    new-instance p3, Lcom/applovin/impl/z1$b;

    .line 539
    .line 540
    invoke-direct {p3, p0, p4}, Lcom/applovin/impl/z1$b;-><init>(Lcom/applovin/impl/z1;Ljava/lang/Integer;)V

    .line 541
    .line 542
    .line 543
    const-string p4, "PROGRESS_BAR"

    .line 544
    .line 545
    invoke-virtual {v1, p4, p1, p2, p3}, Lcom/applovin/impl/a1;->a(Ljava/lang/String;JLcom/applovin/impl/a1$b;)V

    .line 546
    .line 547
    .line 548
    goto :goto_5

    .line 549
    :cond_7
    iput-object p3, p0, Lcom/applovin/impl/z1;->V:Landroid/widget/ProgressBar;

    .line 550
    .line 551
    :goto_5
    return-void

    .line 552
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 553
    .line 554
    const-string p2, "Attempting to use fullscreen video ad presenter for non-video ad"

    .line 555
    .line 556
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    throw p1
.end method

.method public static synthetic B(Lcom/applovin/impl/z1;ZJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/z1;->b(ZJ)V

    return-void
.end method

.method public static synthetic C(Lcom/applovin/impl/z1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/applovin/impl/z1;->h(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic D(Lcom/applovin/impl/z1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/z1;->J()V

    return-void
.end method

.method public static synthetic E(Lcom/applovin/impl/z1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/z1;->M()V

    return-void
.end method

.method public static synthetic F(Lcom/applovin/impl/z1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/z1;->I()V

    return-void
.end method

.method private synthetic G()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/z1;->Q:Lcom/applovin/impl/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/a;->b()V

    :cond_0
    return-void
.end method

.method public static synthetic G(Lcom/applovin/impl/z1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/z1;->H()V

    return-void
.end method

.method private synthetic H()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/z1;->Q:Lcom/applovin/impl/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/a;->a()V

    .line 4
    iget-object v0, p0, Lcom/applovin/impl/z1;->Q:Lcom/applovin/impl/a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/applovin/impl/ig;

    invoke-direct {v1, v0}, Lcom/applovin/impl/ig;-><init>(Lcom/applovin/impl/a;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2, v3}, Lcom/applovin/impl/v1;->a(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public static synthetic H(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/applovin/impl/z1;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private synthetic I()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/applovin/impl/z1;->n0:J

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/z1;->o0:J

    return-void
.end method

.method public static synthetic I(Lcom/applovin/impl/z1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/z1;->G()V

    return-void
.end method

.method private synthetic J()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/z1;->Q:Lcom/applovin/impl/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/a;->a()V

    :cond_0
    return-void
.end method

.method public static synthetic J(Lcom/applovin/impl/z1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/z1;->K()V

    return-void
.end method

.method private synthetic K()V
    .locals 2

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/v1;->q:J

    return-void
.end method

.method public static synthetic K(Lcom/applovin/impl/z1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/z1;->O()V

    return-void
.end method

.method private L()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->l0()Lcom/applovin/impl/a8;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/applovin/impl/a8;->j()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/applovin/impl/z1;->j0:Z

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lcom/applovin/impl/z1;->U:Lcom/applovin/impl/adview/l;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x4

    .line 28
    if-ne v1, v2, :cond_0

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 33
    :goto_0
    invoke-virtual {v0}, Lcom/applovin/impl/a8;->h()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    new-instance v0, Lcom/applovin/impl/hg;

    .line 38
    .line 39
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/applovin/impl/hg;-><init>(Lcom/applovin/impl/z1;ZJ)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method private M()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/z1;->j0:Z

    .line 2
    .line 3
    const-string v1, "AppLovinFullscreenActivity"

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/applovin/impl/v1;->c:Lcom/applovin/impl/sdk/o;

    .line 14
    .line 15
    const-string v2, "Skip video resume - postitial shown"

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/v1;->b:Lcom/applovin/impl/sdk/k;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->n0()Lcom/applovin/impl/sdk/SessionTracker;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/SessionTracker;->isApplicationPaused()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/applovin/impl/v1;->c:Lcom/applovin/impl/sdk/o;

    .line 40
    .line 41
    const-string v2, "Skip video resume - app paused"

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void

    .line 47
    :cond_3
    iget v0, p0, Lcom/applovin/impl/z1;->i0:I

    .line 48
    .line 49
    if-ltz v0, :cond_5

    .line 50
    .line 51
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    iget-object v0, p0, Lcom/applovin/impl/v1;->c:Lcom/applovin/impl/sdk/o;

    .line 58
    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v3, "Resuming video at position "

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget v3, p0, Lcom/applovin/impl/z1;->i0:I

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v3, "ms for MediaPlayer: "

    .line 75
    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v3, p0, Lcom/applovin/impl/z1;->N:Landroid/media/MediaPlayer;

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_4
    iget-object v0, p0, Lcom/applovin/impl/z1;->P:Lcom/applovin/impl/adview/AppLovinVideoView;

    .line 92
    .line 93
    iget v1, p0, Lcom/applovin/impl/z1;->i0:I

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/applovin/impl/z1;->P:Lcom/applovin/impl/adview/AppLovinVideoView;

    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/applovin/impl/z1;->c0:Lcom/applovin/impl/a1;

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/applovin/impl/a1;->b()V

    .line 106
    .line 107
    .line 108
    const/4 v0, -0x1

    .line 109
    iput v0, p0, Lcom/applovin/impl/z1;->i0:I

    .line 110
    .line 111
    new-instance v0, Lcom/applovin/impl/jg;

    .line 112
    .line 113
    invoke-direct {v0, p0}, Lcom/applovin/impl/jg;-><init>(Lcom/applovin/impl/z1;)V

    .line 114
    .line 115
    .line 116
    const-wide/16 v1, 0xfa

    .line 117
    .line 118
    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/v1;->a(Ljava/lang/Runnable;J)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_5
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_6

    .line 127
    .line 128
    iget-object v0, p0, Lcom/applovin/impl/v1;->c:Lcom/applovin/impl/sdk/o;

    .line 129
    .line 130
    const-string v2, "Invalid last video position"

    .line 131
    .line 132
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :cond_6
    :goto_0
    return-void
.end method

.method private O()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/z1;->m0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/applovin/impl/z1;->R:Lcom/applovin/impl/adview/g;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/b;->n0()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    new-instance v3, Lcom/applovin/impl/kg;

    .line 20
    .line 21
    invoke-direct {v3, p0}, Lcom/applovin/impl/kg;-><init>(Lcom/applovin/impl/z1;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/applovin/impl/v1;->a(Lcom/applovin/impl/adview/g;JLjava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/z1;)Landroid/media/MediaPlayer;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/applovin/impl/z1;->N:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/z1;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/applovin/impl/z1;->N:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private a(Landroid/widget/ProgressBar;II)V
    .locals 0

    .line 27
    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setMax(I)V

    const/4 p3, 0x0

    .line 28
    invoke-virtual {p1, p3, p3, p3, p3}, Landroid/view/View;->setPadding(IIII)V

    .line 29
    invoke-static {}, Lcom/applovin/impl/o0;->e()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 30
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 31
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method private static synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic a(Lcom/applovin/impl/z1;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/applovin/impl/z1;->k0:Z

    return p1
.end method

.method private static a(ZLcom/applovin/impl/sdk/k;)Z
    .locals 2

    .line 50
    sget-object v0, Lcom/applovin/impl/v4;->X1:Lcom/applovin/impl/v4;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 51
    :cond_0
    sget-object v0, Lcom/applovin/impl/v4;->Y1:Lcom/applovin/impl/v4;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eqz p0, :cond_1

    return v1

    .line 52
    :cond_1
    sget-object p0, Lcom/applovin/impl/v4;->a2:Lcom/applovin/impl/v4;

    invoke-virtual {p1, p0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method static synthetic b(Lcom/applovin/impl/z1;)Lcom/applovin/impl/z1$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/z1;->Y:Lcom/applovin/impl/z1$e;

    return-object p0
.end method

.method private synthetic b(ZJ)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/applovin/impl/z1;->U:Lcom/applovin/impl/adview/l;

    invoke-static {p1, p2, p3, v0}, Lcom/applovin/impl/b8;->a(Landroid/view/View;JLjava/lang/Runnable;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/z1;->U:Lcom/applovin/impl/adview/l;

    invoke-static {p1, p2, p3, v0}, Lcom/applovin/impl/b8;->b(Landroid/view/View;JLjava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/z1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/z1;->O()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private e(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/applovin/impl/o0;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/v1;->d:Landroid/app/Activity;

    if-eqz p1, :cond_0

    sget v1, Lcom/applovin/sdk/R$drawable;->applovin_ic_unmute_to_mute:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/applovin/sdk/R$drawable;->applovin_ic_mute_to_unmute:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/applovin/impl/z1;->T:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 4
    iget-object p1, p0, Lcom/applovin/impl/z1;->T:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->Q()Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->i0()Landroid/net/Uri;

    move-result-object p1

    .line 7
    :goto_1
    iget-object v0, p0, Lcom/applovin/impl/z1;->T:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/applovin/impl/v1;->b:Lcom/applovin/impl/sdk/k;

    invoke-static {v0, p1, v1}, Lcom/applovin/impl/sdk/utils/ImageViewUtils;->setImageUri(Landroid/widget/ImageView;Landroid/net/Uri;Lcom/applovin/impl/sdk/k;)V

    return-void
.end method

.method private f(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/applovin/impl/z1;->B()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/applovin/impl/z1;->h0:I

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/applovin/impl/z1;->P:Lcom/applovin/impl/adview/AppLovinVideoView;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/widget/VideoView;->pause()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/z1;->P:Lcom/applovin/impl/adview/AppLovinVideoView;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/widget/VideoView;->stopPlayback()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method private synthetic h(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/z1;->U:Lcom/applovin/impl/adview/l;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/impl/v1;->b:Lcom/applovin/impl/sdk/k;

    .line 4
    .line 5
    const-string v2, "AppLovinFullscreenActivity"

    .line 6
    .line 7
    invoke-static {v0, p1, v2, v1}, Lcom/applovin/impl/l8;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/k;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method protected B()I
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/z1;->P:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    .line 3
    iget-boolean v2, p0, Lcom/applovin/impl/z1;->k0:Z

    if-eqz v2, :cond_0

    const/16 v0, 0x64

    return v0

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    long-to-float v0, v0

    .line 4
    iget-wide v1, p0, Lcom/applovin/impl/z1;->g0:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 5
    :cond_1
    iget v0, p0, Lcom/applovin/impl/z1;->h0:I

    return v0
.end method

.method public C()V
    .locals 3

    .line 2
    iget v0, p0, Lcom/applovin/impl/v1;->y:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/applovin/impl/v1;->y:I

    .line 3
    iget-object v0, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->E()Z

    move-result v0

    const-string v1, "AppLovinFullscreenActivity"

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/v1;->c:Lcom/applovin/impl/sdk/o;

    const-string v2, "Dismissing ad on video skip..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    const-string/jumbo v0, "video_skip"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/z1;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/v1;->c:Lcom/applovin/impl/sdk/o;

    const-string v2, "Skipping video..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/applovin/impl/z1;->R()V

    :goto_0
    return-void
.end method

.method protected D()V
    .locals 1

    .line 2
    new-instance v0, Lcom/applovin/impl/og;

    invoke-direct {v0, p0}, Lcom/applovin/impl/og;-><init>(Lcom/applovin/impl/z1;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected E()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/applovin/impl/v1;->J:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->n1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/impl/z1;->F()Z

    move-result v0

    return v0
.end method

.method protected F()Z
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/applovin/impl/z1;->B()I

    move-result v0

    iget-object v1, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/b;->p0()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected N()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->Y()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-gez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->Z()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ltz v0, :cond_5

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->Y()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    cmp-long v0, v0, v2

    .line 28
    .line 29
    if-ltz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->Y()J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    goto :goto_2

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 39
    .line 40
    check-cast v0, Lcom/applovin/impl/sdk/ad/a;

    .line 41
    .line 42
    iget-wide v4, p0, Lcom/applovin/impl/z1;->g0:J

    .line 43
    .line 44
    cmp-long v1, v4, v2

    .line 45
    .line 46
    if-lez v1, :cond_2

    .line 47
    .line 48
    move-wide v2, v4

    .line 49
    :cond_2
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->j1()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    iget-object v1, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 56
    .line 57
    check-cast v1, Lcom/applovin/impl/sdk/ad/a;

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/a;->t1()F

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    float-to-int v1, v1

    .line 64
    if-lez v1, :cond_3

    .line 65
    .line 66
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 67
    .line 68
    int-to-long v4, v1

    .line 69
    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 70
    .line 71
    .line 72
    move-result-wide v0

    .line 73
    :goto_0
    add-long/2addr v2, v0

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->s()J

    .line 76
    .line 77
    .line 78
    move-result-wide v0

    .line 79
    long-to-int v0, v0

    .line 80
    if-lez v0, :cond_4

    .line 81
    .line 82
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 83
    .line 84
    int-to-long v4, v0

    .line 85
    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 86
    .line 87
    .line 88
    move-result-wide v0

    .line 89
    goto :goto_0

    .line 90
    :cond_4
    :goto_1
    long-to-double v0, v2

    .line 91
    iget-object v2, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 92
    .line 93
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/b;->Z()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    int-to-double v2, v2

    .line 98
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 99
    .line 100
    div-double/2addr v2, v4

    .line 101
    mul-double/2addr v0, v2

    .line 102
    double-to-long v0, v0

    .line 103
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/v1;->c(J)V

    .line 104
    .line 105
    .line 106
    :cond_5
    return-void
.end method

.method protected P()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/v1;->v:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/applovin/impl/z1;->j0:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/applovin/impl/z1;->P:Lcom/applovin/impl/adview/AppLovinVideoView;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method protected Q()V
    .locals 1

    .line 1
    new-instance v0, Lcom/applovin/impl/ng;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/applovin/impl/ng;-><init>(Lcom/applovin/impl/z1;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public R()V
    .locals 12

    .line 1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/applovin/impl/v1;->c:Lcom/applovin/impl/sdk/o;

    .line 8
    .line 9
    const-string v1, "AppLovinFullscreenActivity"

    .line 10
    .line 11
    const-string v2, "Showing postitial..."

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->q1()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-direct {p0, v0}, Lcom/applovin/impl/z1;->f(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->W()J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    const-wide/16 v7, 0x0

    .line 32
    .line 33
    cmp-long v0, v3, v7

    .line 34
    .line 35
    if-lez v0, :cond_1

    .line 36
    .line 37
    iput-wide v7, p0, Lcom/applovin/impl/v1;->r:J

    .line 38
    .line 39
    iget-object v0, p0, Lcom/applovin/impl/v1;->b:Lcom/applovin/impl/sdk/k;

    .line 40
    .line 41
    sget-object v1, Lcom/applovin/impl/v4;->n2:Lcom/applovin/impl/v4;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    move-object v6, v0

    .line 48
    check-cast v6, Ljava/lang/Long;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/applovin/impl/v1;->b:Lcom/applovin/impl/sdk/k;

    .line 51
    .line 52
    sget-object v1, Lcom/applovin/impl/v4;->q2:Lcom/applovin/impl/v4;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    move-object v5, v0

    .line 59
    check-cast v5, Ljava/lang/Integer;

    .line 60
    .line 61
    new-instance v0, Landroid/widget/ProgressBar;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/applovin/impl/v1;->d:Landroid/app/Activity;

    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    const v9, 0x1010078

    .line 67
    .line 68
    .line 69
    invoke-direct {v0, v1, v2, v9}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/applovin/impl/z1;->W:Landroid/widget/ProgressBar;

    .line 73
    .line 74
    iget-object v1, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/b;->V()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    invoke-direct {p0, v0, v1, v2}, Lcom/applovin/impl/z1;->a(Landroid/widget/ProgressBar;II)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/applovin/impl/z1;->d0:Lcom/applovin/impl/a1;

    .line 88
    .line 89
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 90
    .line 91
    .line 92
    move-result-wide v9

    .line 93
    new-instance v11, Lcom/applovin/impl/z1$c;

    .line 94
    .line 95
    move-object v1, v11

    .line 96
    move-object v2, p0

    .line 97
    invoke-direct/range {v1 .. v6}, Lcom/applovin/impl/z1$c;-><init>(Lcom/applovin/impl/z1;JLjava/lang/Integer;Ljava/lang/Long;)V

    .line 98
    .line 99
    .line 100
    const-string v1, "POSTITIAL_PROGRESS_BAR"

    .line 101
    .line 102
    invoke-virtual {v0, v1, v9, v10, v11}, Lcom/applovin/impl/a1;->a(Ljava/lang/String;JLcom/applovin/impl/a1$b;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/applovin/impl/z1;->d0:Lcom/applovin/impl/a1;

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/applovin/impl/a1;->b()V

    .line 108
    .line 109
    .line 110
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/z1;->M:Lcom/applovin/impl/a2;

    .line 111
    .line 112
    iget-object v1, p0, Lcom/applovin/impl/v1;->k:Lcom/applovin/impl/adview/g;

    .line 113
    .line 114
    iget-object v2, p0, Lcom/applovin/impl/v1;->j:Lcom/applovin/impl/adview/k;

    .line 115
    .line 116
    iget-object v3, p0, Lcom/applovin/impl/v1;->i:Lcom/applovin/adview/AppLovinAdView;

    .line 117
    .line 118
    iget-object v4, p0, Lcom/applovin/impl/z1;->W:Landroid/widget/ProgressBar;

    .line 119
    .line 120
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/applovin/impl/a2;->a(Lcom/applovin/impl/adview/g;Lcom/applovin/impl/adview/k;Landroid/view/View;Landroid/widget/ProgressBar;)V

    .line 121
    .line 122
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    const-string v1, "javascript:al_onPoststitialShow("

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    iget v1, p0, Lcom/applovin/impl/v1;->y:I

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v1, ","

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    iget v1, p0, Lcom/applovin/impl/v1;->z:I

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v1, ");"

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 158
    .line 159
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/b;->H()I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    int-to-long v1, v1

    .line 164
    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/z1;->a(Ljava/lang/String;J)V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/applovin/impl/v1;->k:Lcom/applovin/impl/adview/g;

    .line 168
    .line 169
    if-eqz v0, :cond_3

    .line 170
    .line 171
    iget-object v0, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 172
    .line 173
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->s()J

    .line 174
    .line 175
    .line 176
    move-result-wide v0

    .line 177
    cmp-long v0, v0, v7

    .line 178
    .line 179
    if-ltz v0, :cond_2

    .line 180
    .line 181
    iget-object v0, p0, Lcom/applovin/impl/v1;->k:Lcom/applovin/impl/adview/g;

    .line 182
    .line 183
    iget-object v1, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 184
    .line 185
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/b;->s()J

    .line 186
    .line 187
    .line 188
    move-result-wide v1

    .line 189
    new-instance v3, Lcom/applovin/impl/mg;

    .line 190
    .line 191
    invoke-direct {v3, p0}, Lcom/applovin/impl/mg;-><init>(Lcom/applovin/impl/z1;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/applovin/impl/v1;->a(Lcom/applovin/impl/adview/g;JLjava/lang/Runnable;)V

    .line 195
    .line 196
    .line 197
    goto :goto_0

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/v1;->k:Lcom/applovin/impl/adview/g;

    .line 199
    .line 200
    const/4 v1, 0x0

    .line 201
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 202
    .line 203
    .line 204
    :cond_3
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .line 208
    .line 209
    iget-object v1, p0, Lcom/applovin/impl/v1;->k:Lcom/applovin/impl/adview/g;

    .line 210
    .line 211
    if-eqz v1, :cond_4

    .line 212
    .line 213
    new-instance v2, Lcom/applovin/impl/e4;

    .line 214
    .line 215
    sget-object v3, Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;->CLOSE_AD:Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;

    .line 216
    .line 217
    const-string v4, "close button"

    .line 218
    .line 219
    invoke-direct {v2, v1, v3, v4}, Lcom/applovin/impl/e4;-><init>(Landroid/view/View;Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    :cond_4
    iget-object v1, p0, Lcom/applovin/impl/v1;->j:Lcom/applovin/impl/adview/k;

    .line 226
    .line 227
    if-eqz v1, :cond_5

    .line 228
    .line 229
    invoke-virtual {v1}, Lcom/applovin/impl/adview/k;->a()Z

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    if-eqz v1, :cond_5

    .line 234
    .line 235
    new-instance v1, Lcom/applovin/impl/e4;

    .line 236
    .line 237
    iget-object v2, p0, Lcom/applovin/impl/v1;->j:Lcom/applovin/impl/adview/k;

    .line 238
    .line 239
    sget-object v3, Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;->NOT_VISIBLE:Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;

    .line 240
    .line 241
    invoke-virtual {v2}, Lcom/applovin/impl/adview/k;->getIdentifier()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    invoke-direct {v1, v2, v3, v4}, Lcom/applovin/impl/e4;-><init>(Landroid/view/View;Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    :cond_5
    iget-object v1, p0, Lcom/applovin/impl/z1;->W:Landroid/widget/ProgressBar;

    .line 252
    .line 253
    if-eqz v1, :cond_6

    .line 254
    .line 255
    new-instance v2, Lcom/applovin/impl/e4;

    .line 256
    .line 257
    sget-object v3, Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;

    .line 258
    .line 259
    const-string v4, "postitial progress bar"

    .line 260
    .line 261
    invoke-direct {v2, v1, v3, v4}, Lcom/applovin/impl/e4;-><init>(Landroid/view/View;Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    :cond_6
    iget-object v1, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 268
    .line 269
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/b;->getAdEventTracker()Lcom/applovin/impl/c4;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    iget-object v2, p0, Lcom/applovin/impl/v1;->i:Lcom/applovin/adview/AppLovinAdView;

    .line 274
    .line 275
    invoke-virtual {v1, v2, v0}, Lcom/applovin/impl/c4;->b(Landroid/view/View;Ljava/util/List;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p0}, Lcom/applovin/impl/v1;->o()V

    .line 279
    .line 280
    .line 281
    const/4 v0, 0x1

    .line 282
    iput-boolean v0, p0, Lcom/applovin/impl/z1;->j0:Z

    .line 283
    .line 284
    return-void
.end method

.method public S()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/applovin/impl/z1;->o0:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    iput-wide v0, p0, Lcom/applovin/impl/z1;->n0:J

    .line 9
    .line 10
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/applovin/impl/v1;->c:Lcom/applovin/impl/sdk/o;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "Attempting to skip video with skip time: "

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-wide v2, p0, Lcom/applovin/impl/z1;->n0:J

    .line 29
    .line 30
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, "ms"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, "AppLovinFullscreenActivity"

    .line 43
    .line 44
    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/impl/z1;->C()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method protected T()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/z1;->N:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/applovin/impl/z1;->f0:Z

    .line 7
    .line 8
    int-to-float v1, v1

    .line 9
    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 10
    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/applovin/impl/z1;->f0:Z

    .line 13
    .line 14
    xor-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/applovin/impl/z1;->f0:Z

    .line 17
    .line 18
    invoke-direct {p0, v0}, Lcom/applovin/impl/z1;->e(Z)V

    .line 19
    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/applovin/impl/z1;->f0:Z

    .line 22
    .line 23
    const-wide/16 v1, 0x0

    .line 24
    .line 25
    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/v1;->a(ZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    :catchall_0
    return-void
.end method

.method protected a(Landroid/view/MotionEvent;Landroid/os/Bundle;)V
    .locals 8

    .line 41
    iget-object v0, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->N0()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 42
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/v1;->c:Lcom/applovin/impl/sdk/o;

    const-string v1, "AppLovinFullscreenActivity"

    const-string v2, "Clicking through video"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->m0()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 44
    iget-object v0, p0, Lcom/applovin/impl/v1;->b:Lcom/applovin/impl/sdk/k;

    sget-object v1, Lcom/applovin/impl/v4;->x:Lcom/applovin/impl/v4;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/v1;->d:Landroid/app/Activity;

    if-eqz v0, :cond_1

    :goto_0
    move-object v7, v0

    goto :goto_1

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/v1;->i:Lcom/applovin/adview/AppLovinAdView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/applovin/impl/sdk/k;->o()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 46
    :goto_1
    iget-object v0, p0, Lcom/applovin/impl/v1;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->k()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p0

    invoke-virtual/range {v1 .. v7}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackAndLaunchVideoClick(Lcom/applovin/impl/sdk/ad/b;Landroid/net/Uri;Landroid/view/MotionEvent;Landroid/os/Bundle;Lcom/applovin/impl/v1;Landroid/content/Context;)V

    .line 47
    iget-object p1, p0, Lcom/applovin/impl/v1;->E:Lcom/applovin/sdk/AppLovinAdClickListener;

    iget-object p2, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-static {p1, p2}, Lcom/applovin/impl/q2;->a(Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAd;)V

    .line 48
    iget p1, p0, Lcom/applovin/impl/v1;->z:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/applovin/impl/v1;->z:I

    goto :goto_2

    .line 49
    :cond_3
    invoke-direct {p0}, Lcom/applovin/impl/z1;->L()V

    :cond_4
    :goto_2
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 13

    .line 5
    iget-object v0, p0, Lcom/applovin/impl/z1;->M:Lcom/applovin/impl/a2;

    iget-object v1, p0, Lcom/applovin/impl/z1;->T:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/applovin/impl/z1;->R:Lcom/applovin/impl/adview/g;

    iget-object v3, p0, Lcom/applovin/impl/z1;->U:Lcom/applovin/impl/adview/l;

    iget-object v4, p0, Lcom/applovin/impl/z1;->Q:Lcom/applovin/impl/a;

    iget-object v5, p0, Lcom/applovin/impl/z1;->V:Landroid/widget/ProgressBar;

    iget-object v6, p0, Lcom/applovin/impl/z1;->S:Lcom/applovin/impl/i0;

    iget-object v7, p0, Lcom/applovin/impl/z1;->P:Lcom/applovin/impl/adview/AppLovinVideoView;

    iget-object v8, p0, Lcom/applovin/impl/z1;->O:Landroid/view/View;

    iget-object v9, p0, Lcom/applovin/impl/v1;->i:Lcom/applovin/adview/AppLovinAdView;

    iget-object v10, p0, Lcom/applovin/impl/v1;->j:Lcom/applovin/impl/adview/k;

    iget-object v11, p0, Lcom/applovin/impl/z1;->X:Landroid/widget/ImageView;

    move-object v12, p1

    invoke-virtual/range {v0 .. v12}, Lcom/applovin/impl/a2;->a(Landroid/widget/ImageView;Lcom/applovin/impl/adview/g;Lcom/applovin/impl/adview/l;Lcom/applovin/impl/a;Landroid/widget/ProgressBar;Lcom/applovin/impl/i0;Landroid/view/View;Landroid/view/View;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/adview/k;Landroid/widget/ImageView;Landroid/view/ViewGroup;)V

    .line 6
    invoke-static {}, Lcom/applovin/impl/o0;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/applovin/impl/v1;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->o0()Lcom/applovin/sdk/AppLovinSdkSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinSdkSettings;->getExtraParameters()Ljava/util/Map;

    move-result-object p1

    const-string v0, "audio_focus_request"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 8
    iget-object v0, p0, Lcom/applovin/impl/z1;->P:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Lcom/applovin/impl/fg;->a(Landroid/widget/VideoView;I)V

    .line 9
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/applovin/impl/v1;->b:Lcom/applovin/impl/sdk/k;

    sget-object v1, Lcom/applovin/impl/v4;->L5:Lcom/applovin/impl/v4;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/applovin/impl/z1;->e0:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/applovin/impl/v1;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/z1;->P:Lcom/applovin/impl/adview/AppLovinVideoView;

    iget-object v1, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/b;->v0()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 12
    invoke-static {p1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 13
    iget-object p1, p0, Lcom/applovin/impl/v1;->j:Lcom/applovin/impl/adview/k;

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/applovin/impl/adview/k;->b()V

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/z1;->P:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    .line 16
    iget-boolean p1, p0, Lcom/applovin/impl/z1;->e0:Z

    if-eqz p1, :cond_3

    .line 17
    invoke-virtual {p0}, Lcom/applovin/impl/z1;->Q()V

    .line 18
    :cond_3
    iget-object p1, p0, Lcom/applovin/impl/v1;->i:Lcom/applovin/adview/AppLovinAdView;

    iget-object v0, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {p1, v0}, Lcom/applovin/adview/AppLovinAdView;->renderAd(Lcom/applovin/sdk/AppLovinAd;)V

    .line 19
    iget-object p1, p0, Lcom/applovin/impl/z1;->R:Lcom/applovin/impl/adview/g;

    if-eqz p1, :cond_4

    .line 20
    iget-object p1, p0, Lcom/applovin/impl/v1;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->r0()Lcom/applovin/impl/b6;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/p6;

    iget-object p1, p0, Lcom/applovin/impl/v1;->b:Lcom/applovin/impl/sdk/k;

    new-instance v2, Lcom/applovin/impl/lg;

    invoke-direct {v2, p0}, Lcom/applovin/impl/lg;-><init>(Lcom/applovin/impl/z1;)V

    const-string v3, "scheduleSkipButton"

    invoke-direct {v1, p1, v3, v2}, Lcom/applovin/impl/p6;-><init>(Lcom/applovin/impl/sdk/k;Ljava/lang/String;Ljava/lang/Runnable;)V

    sget-object v2, Lcom/applovin/impl/b6$b;->d:Lcom/applovin/impl/b6$b;

    iget-object p1, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 21
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->o0()J

    move-result-wide v3

    const/4 v5, 0x1

    .line 22
    invoke-virtual/range {v0 .. v5}, Lcom/applovin/impl/b6;->a(Lcom/applovin/impl/g5;Lcom/applovin/impl/b6$b;JZ)V

    .line 23
    :cond_4
    iget-boolean p1, p0, Lcom/applovin/impl/z1;->f0:Z

    invoke-super {p0, p1}, Lcom/applovin/impl/v1;->c(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/applovin/impl/z1;->c0:Lcom/applovin/impl/a1;

    invoke-virtual {v0}, Lcom/applovin/impl/a1;->a()V

    .line 33
    iget-object v0, p0, Lcom/applovin/impl/z1;->d0:Lcom/applovin/impl/a1;

    invoke-virtual {v0}, Lcom/applovin/impl/a1;->a()V

    .line 34
    iget-object v0, p0, Lcom/applovin/impl/z1;->a0:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/applovin/impl/z1;->b0:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lcom/applovin/impl/v1;->b:Lcom/applovin/impl/sdk/k;

    sget-object v1, Lcom/applovin/impl/v4;->D6:Lcom/applovin/impl/v4;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/ad/b;->a(Ljava/lang/String;)V

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/impl/z1;->l()V

    .line 40
    :cond_1
    invoke-super {p0, p1}, Lcom/applovin/impl/v1;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;J)V
    .locals 2

    .line 24
    invoke-super {p0, p1, p2, p3}, Lcom/applovin/impl/v1;->a(Ljava/lang/String;J)V

    .line 25
    iget-object v0, p0, Lcom/applovin/impl/z1;->U:Lcom/applovin/impl/adview/l;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Lcom/applovin/impl/pg;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/pg;-><init>(Lcom/applovin/impl/z1;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/applovin/impl/v1;->a(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public b(J)V
    .locals 1

    .line 10
    new-instance v0, Lcom/applovin/impl/gg;

    invoke-direct {v0, p0}, Lcom/applovin/impl/gg;-><init>(Lcom/applovin/impl/z1;)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/applovin/impl/v1;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 2
    invoke-super {p0, p1}, Lcom/applovin/impl/v1;->b(Z)V

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/z1;->b(J)V

    .line 4
    iget-boolean p1, p0, Lcom/applovin/impl/z1;->j0:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/applovin/impl/z1;->d0:Lcom/applovin/impl/a1;

    invoke-virtual {p1}, Lcom/applovin/impl/a1;->b()V

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean p1, p0, Lcom/applovin/impl/z1;->j0:Z

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/applovin/impl/z1;->d0:Lcom/applovin/impl/a1;

    invoke-virtual {p1}, Lcom/applovin/impl/a1;->c()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/applovin/impl/z1;->u()V

    :cond_2
    :goto_0
    return-void
.end method

.method public d()V
    .locals 0

    .line 2
    invoke-super {p0}, Lcom/applovin/impl/v1;->d()V

    .line 3
    invoke-virtual {p0}, Lcom/applovin/impl/z1;->z()V

    return-void
.end method

.method protected d(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/applovin/impl/z1;->g0:J

    return-void
.end method

.method public e()V
    .locals 2

    .line 8
    invoke-super {p0}, Lcom/applovin/impl/v1;->e()V

    .line 9
    iget-object v0, p0, Lcom/applovin/impl/z1;->M:Lcom/applovin/impl/a2;

    iget-object v1, p0, Lcom/applovin/impl/z1;->U:Lcom/applovin/impl/adview/l;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/a2;->a(Landroid/view/View;)V

    .line 10
    iget-object v0, p0, Lcom/applovin/impl/z1;->M:Lcom/applovin/impl/a2;

    iget-object v1, p0, Lcom/applovin/impl/z1;->R:Lcom/applovin/impl/adview/g;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/a2;->a(Landroid/view/View;)V

    .line 11
    invoke-virtual {p0}, Lcom/applovin/impl/v1;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/applovin/impl/z1;->j0:Z

    if-eqz v0, :cond_1

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/impl/z1;->z()V

    :cond_1
    return-void
.end method

.method protected g(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/applovin/impl/v1;->c:Lcom/applovin/impl/sdk/o;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "Encountered media error: "

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, " for ad: "

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "AppLovinFullscreenActivity"

    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/z1;->l0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    const/4 v2, 0x1

    .line 45
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    iget-object v0, p0, Lcom/applovin/impl/v1;->b:Lcom/applovin/impl/sdk/k;

    .line 52
    .line 53
    sget-object v1, Lcom/applovin/impl/v4;->O0:Lcom/applovin/impl/v4;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    iget-object v0, p0, Lcom/applovin/impl/v1;->b:Lcom/applovin/impl/sdk/k;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->H()Lcom/applovin/impl/sdk/m;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 74
    .line 75
    invoke-static {}, Lcom/applovin/impl/sdk/k;->o()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/m;->d(Lcom/applovin/impl/sdk/ad/b;Landroid/content/Context;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/v1;->F:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    .line 83
    .line 84
    instance-of v1, v0, Lcom/applovin/impl/k2;

    .line 85
    .line 86
    if-eqz v1, :cond_2

    .line 87
    .line 88
    check-cast v0, Lcom/applovin/impl/k2;

    .line 89
    .line 90
    invoke-interface {v0, p1}, Lcom/applovin/impl/k2;->onAdDisplayFailed(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 94
    .line 95
    instance-of v0, v0, Lcom/applovin/impl/l7;

    .line 96
    .line 97
    if-eqz v0, :cond_3

    .line 98
    .line 99
    const-string v0, "handleVastVideoError"

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    const-string v0, "handleVideoError"

    .line 103
    .line 104
    :goto_0
    iget-object v1, p0, Lcom/applovin/impl/v1;->b:Lcom/applovin/impl/sdk/k;

    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    iget-object v2, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 111
    .line 112
    invoke-virtual {v1, v0, p1, v2}, Lcom/applovin/impl/q1;->a(Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/ad/b;)V

    .line 113
    .line 114
    .line 115
    const-string v1, "source"

    .line 116
    .line 117
    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    const-string v1, "error_message"

    .line 122
    .line 123
    invoke-static {v1, p1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lcom/applovin/impl/v1;->b:Lcom/applovin/impl/sdk/k;

    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->g()Lcom/applovin/impl/f;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    sget-object v1, Lcom/applovin/impl/c2;->s:Lcom/applovin/impl/c2;

    .line 133
    .line 134
    iget-object v2, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 135
    .line 136
    invoke-virtual {p1, v1, v2, v0}, Lcom/applovin/impl/f;->a(Lcom/applovin/impl/c2;Lcom/applovin/impl/sdk/ad/b;Ljava/util/Map;)V

    .line 137
    .line 138
    .line 139
    const-string p1, "media_error"

    .line 140
    .line 141
    invoke-virtual {p0, p1}, Lcom/applovin/impl/z1;->a(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :cond_4
    return-void
.end method

.method public getCommunicatorId()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "FullscreenVideoAdPresenter"

    .line 2
    .line 3
    return-object v0
.end method

.method protected l()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/applovin/impl/z1;->B()I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    iget-boolean v2, p0, Lcom/applovin/impl/z1;->e0:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/applovin/impl/z1;->E()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    iget-wide v4, p0, Lcom/applovin/impl/z1;->n0:J

    .line 12
    .line 13
    move-object v0, p0

    .line 14
    invoke-super/range {v0 .. v5}, Lcom/applovin/impl/v1;->a(IZZJ)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onMessageReceived(Lcom/applovin/communicator/AppLovinCommunicatorMessage;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessage;->getTopic()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "video_caching_failed"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessage;->getMessageData()Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "ad_id"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    iget-object v2, p0, Lcom/applovin/impl/v1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdIdNumber()J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    cmp-long v0, v0, v2

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    iget-boolean v0, p0, Lcom/applovin/impl/z1;->e0:Z

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    const-string v0, "load_response_code"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const-string v1, "load_exception_message"

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-nez p1, :cond_0

    .line 51
    .line 52
    invoke-static {v0}, Lcom/applovin/impl/r0;->a(I)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    :cond_0
    iget-boolean v1, p0, Lcom/applovin/impl/z1;->k0:Z

    .line 59
    .line 60
    if-nez v1, :cond_1

    .line 61
    .line 62
    iget-object v1, p0, Lcom/applovin/impl/z1;->P:Lcom/applovin/impl/adview/AppLovinVideoView;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_1

    .line 69
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v2, "Video cache error during stream. ResponseCode="

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v0, ", exception="

    .line 84
    .line 85
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p0, p1}, Lcom/applovin/impl/z1;->g(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_1
    return-void
.end method

.method public q()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "AppLovinFullscreenActivity"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/applovin/impl/v1;->c:Lcom/applovin/impl/sdk/o;

    .line 10
    .line 11
    const-string v2, "Destroying video components"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/v1;->b:Lcom/applovin/impl/sdk/k;

    .line 17
    .line 18
    sget-object v2, Lcom/applovin/impl/v4;->j6:Lcom/applovin/impl/v4;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/applovin/impl/z1;->U:Lcom/applovin/impl/adview/l;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/applovin/impl/l8;->b(Landroid/webkit/WebView;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/applovin/impl/z1;->U:Lcom/applovin/impl/adview/l;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/applovin/impl/z1;->e0:Z

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    iget-object v0, p0, Lcom/applovin/impl/v1;->d:Landroid/app/Activity;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/applovin/communicator/AppLovinCommunicator;->getInstance(Landroid/content/Context;)Lcom/applovin/communicator/AppLovinCommunicator;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string/jumbo v2, "video_caching_failed"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p0, v2}, Lcom/applovin/communicator/AppLovinCommunicator;->unsubscribe(Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/z1;->P:Lcom/applovin/impl/adview/AppLovinVideoView;

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/applovin/impl/z1;->P:Lcom/applovin/impl/adview/AppLovinVideoView;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 69
    .line 70
    .line 71
    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/z1;->N:Landroid/media/MediaPlayer;

    .line 72
    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :goto_1
    const-string v2, "Unable to destroy presenter"

    .line 80
    .line 81
    invoke-static {v1, v2, v0}, Lcom/applovin/impl/sdk/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    :cond_4
    :goto_2
    invoke-super {p0}, Lcom/applovin/impl/v1;->q()V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public u()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "AppLovinFullscreenActivity"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/applovin/impl/v1;->c:Lcom/applovin/impl/sdk/o;

    .line 10
    .line 11
    const-string v2, "Pausing video"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/z1;->P:Lcom/applovin/impl/adview/AppLovinVideoView;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lcom/applovin/impl/z1;->i0:I

    .line 23
    .line 24
    iget-object v0, p0, Lcom/applovin/impl/z1;->P:Lcom/applovin/impl/adview/AppLovinVideoView;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/applovin/impl/z1;->c0:Lcom/applovin/impl/a1;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/applovin/impl/a1;->c()V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/applovin/impl/v1;->c:Lcom/applovin/impl/sdk/o;

    .line 41
    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v3, "Paused video at position "

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget v3, p0, Lcom/applovin/impl/z1;->i0:I

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v3, "ms"

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    return-void
.end method

.method public v()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/applovin/impl/z1;->a(Landroid/view/ViewGroup;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method protected z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/z1;->M:Lcom/applovin/impl/a2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/impl/v1;->l:Lcom/applovin/impl/adview/g;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/applovin/impl/a2;->a(Lcom/applovin/impl/adview/g;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iput-wide v0, p0, Lcom/applovin/impl/v1;->q:J

    .line 13
    .line 14
    return-void
.end method
