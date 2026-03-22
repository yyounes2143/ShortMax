.class public final Lcom/inmobi/media/u3;
.super Landroidx/browser/customtabs/CustomTabsCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/inmobi/media/v3;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/v3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/u3;->a:Lcom/inmobi/media/v3;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onActivityLayout(IIIIILandroid/os/Bundle;)V
    .locals 6

    .line 1
    const-string v0, "extras"

    .line 2
    .line 3
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super/range {p0 .. p6}, Landroidx/browser/customtabs/CustomTabsCallback;->onActivityLayout(IIIIILandroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    const-string p6, "v3"

    .line 10
    .line 11
    const-string v0, "access$getLOG_TAG$cp(...)"

    .line 12
    .line 13
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p6, p0, Lcom/inmobi/media/u3;->a:Lcom/inmobi/media/v3;

    .line 17
    .line 18
    iget-object p6, p6, Lcom/inmobi/media/v3;->c:Lcom/inmobi/media/k2;

    .line 19
    .line 20
    if-eqz p6, :cond_0

    .line 21
    .line 22
    iget-object p6, p6, Lcom/inmobi/media/k2;->i:Ljava/lang/ref/WeakReference;

    .line 23
    .line 24
    invoke-virtual {p6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p6

    .line 28
    move-object v0, p6

    .line 29
    check-cast v0, Lcom/inmobi/media/e2;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    move v1, p1

    .line 34
    move v2, p2

    .line 35
    move v3, p3

    .line 36
    move v4, p4

    .line 37
    move v5, p5

    .line 38
    invoke-interface/range {v0 .. v5}, Lcom/inmobi/media/e2;->a(IIIII)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public final onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/browser/customtabs/CustomTabsCallback;->onNavigationEvent(ILandroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string p2, "v3"

    .line 5
    .line 6
    const-string v0, "access$getLOG_TAG$cp(...)"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/inmobi/media/u3;->a:Lcom/inmobi/media/v3;

    .line 12
    .line 13
    iget-object p2, p2, Lcom/inmobi/media/v3;->c:Lcom/inmobi/media/k2;

    .line 14
    .line 15
    if-eqz p2, :cond_f

    .line 16
    .line 17
    iget-object v0, p2, Lcom/inmobi/media/k2;->g:Lcom/inmobi/media/w3;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x4

    .line 21
    const/4 v3, 0x6

    .line 22
    const/4 v4, 0x1

    .line 23
    if-eq p1, v4, :cond_7

    .line 24
    .line 25
    const/4 v5, 0x2

    .line 26
    if-eq p1, v5, :cond_5

    .line 27
    .line 28
    const/4 v1, 0x3

    .line 29
    if-eq p1, v1, :cond_4

    .line 30
    .line 31
    if-eq p1, v3, :cond_0

    .line 32
    .line 33
    goto/16 :goto_1

    .line 34
    .line 35
    :cond_0
    iget-object v1, v0, Lcom/inmobi/media/w3;->c:Ljava/lang/Boolean;

    .line 36
    .line 37
    if-nez v1, :cond_8

    .line 38
    .line 39
    iget v1, v0, Lcom/inmobi/media/w3;->d:I

    .line 40
    .line 41
    if-ne v1, v2, :cond_1

    .line 42
    .line 43
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 44
    .line 45
    iput-object v1, v0, Lcom/inmobi/media/w3;->c:Ljava/lang/Boolean;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 49
    .line 50
    iput-object v1, v0, Lcom/inmobi/media/w3;->c:Ljava/lang/Boolean;

    .line 51
    .line 52
    :goto_0
    iget-object v1, v0, Lcom/inmobi/media/w3;->c:Ljava/lang/Boolean;

    .line 53
    .line 54
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    iget-object v1, v0, Lcom/inmobi/media/w3;->e:Ljava/lang/ref/WeakReference;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Lcom/inmobi/media/e2;

    .line 69
    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    sget-object v5, Lcom/inmobi/media/F6;->i:Lcom/inmobi/media/F6;

    .line 73
    .line 74
    iget-object v6, v0, Lcom/inmobi/media/w3;->a:Lcom/inmobi/media/R6;

    .line 75
    .line 76
    const/16 v7, 0x1f43

    .line 77
    .line 78
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-interface {v1, v5, v6, v7}, Lcom/inmobi/media/e2;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    iget-object v1, v0, Lcom/inmobi/media/w3;->e:Ljava/lang/ref/WeakReference;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Lcom/inmobi/media/e2;

    .line 92
    .line 93
    if-eqz v1, :cond_8

    .line 94
    .line 95
    invoke-interface {v1}, Lcom/inmobi/media/e2;->c()V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_1

    .line 99
    .line 100
    :cond_3
    iget-object v1, v0, Lcom/inmobi/media/w3;->e:Ljava/lang/ref/WeakReference;

    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    check-cast v1, Lcom/inmobi/media/e2;

    .line 107
    .line 108
    if-eqz v1, :cond_8

    .line 109
    .line 110
    sget-object v5, Lcom/inmobi/media/F6;->j:Lcom/inmobi/media/F6;

    .line 111
    .line 112
    iget-object v6, v0, Lcom/inmobi/media/w3;->a:Lcom/inmobi/media/R6;

    .line 113
    .line 114
    const/16 v7, 0x1f45

    .line 115
    .line 116
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    invoke-interface {v1, v5, v6, v7}, Lcom/inmobi/media/e2;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_4
    iget-object v1, v0, Lcom/inmobi/media/w3;->c:Ljava/lang/Boolean;

    .line 125
    .line 126
    if-nez v1, :cond_8

    .line 127
    .line 128
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 129
    .line 130
    iput-object v1, v0, Lcom/inmobi/media/w3;->c:Ljava/lang/Boolean;

    .line 131
    .line 132
    iget-object v1, v0, Lcom/inmobi/media/w3;->e:Ljava/lang/ref/WeakReference;

    .line 133
    .line 134
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    check-cast v1, Lcom/inmobi/media/e2;

    .line 139
    .line 140
    if-eqz v1, :cond_8

    .line 141
    .line 142
    sget-object v5, Lcom/inmobi/media/F6;->j:Lcom/inmobi/media/F6;

    .line 143
    .line 144
    iget-object v6, v0, Lcom/inmobi/media/w3;->a:Lcom/inmobi/media/R6;

    .line 145
    .line 146
    const/16 v7, 0x1f44

    .line 147
    .line 148
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    invoke-interface {v1, v5, v6, v7}, Lcom/inmobi/media/e2;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;)V

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_5
    iget-object v5, v0, Lcom/inmobi/media/w3;->c:Ljava/lang/Boolean;

    .line 157
    .line 158
    if-nez v5, :cond_8

    .line 159
    .line 160
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 161
    .line 162
    iput-object v5, v0, Lcom/inmobi/media/w3;->c:Ljava/lang/Boolean;

    .line 163
    .line 164
    iget-object v5, v0, Lcom/inmobi/media/w3;->e:Ljava/lang/ref/WeakReference;

    .line 165
    .line 166
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    check-cast v5, Lcom/inmobi/media/e2;

    .line 171
    .line 172
    if-eqz v5, :cond_6

    .line 173
    .line 174
    sget-object v6, Lcom/inmobi/media/F6;->i:Lcom/inmobi/media/F6;

    .line 175
    .line 176
    iget-object v7, v0, Lcom/inmobi/media/w3;->a:Lcom/inmobi/media/R6;

    .line 177
    .line 178
    invoke-interface {v5, v6, v7, v1}, Lcom/inmobi/media/e2;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;)V

    .line 179
    .line 180
    .line 181
    :cond_6
    iget-object v1, v0, Lcom/inmobi/media/w3;->e:Ljava/lang/ref/WeakReference;

    .line 182
    .line 183
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    check-cast v1, Lcom/inmobi/media/e2;

    .line 188
    .line 189
    if-eqz v1, :cond_8

    .line 190
    .line 191
    invoke-interface {v1}, Lcom/inmobi/media/e2;->c()V

    .line 192
    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_7
    iget-boolean v5, v0, Lcom/inmobi/media/w3;->b:Z

    .line 196
    .line 197
    if-nez v5, :cond_8

    .line 198
    .line 199
    iput-boolean v4, v0, Lcom/inmobi/media/w3;->b:Z

    .line 200
    .line 201
    iget-object v5, v0, Lcom/inmobi/media/w3;->e:Ljava/lang/ref/WeakReference;

    .line 202
    .line 203
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    check-cast v5, Lcom/inmobi/media/e2;

    .line 208
    .line 209
    if-eqz v5, :cond_8

    .line 210
    .line 211
    sget-object v6, Lcom/inmobi/media/F6;->h:Lcom/inmobi/media/F6;

    .line 212
    .line 213
    iget-object v7, v0, Lcom/inmobi/media/w3;->a:Lcom/inmobi/media/R6;

    .line 214
    .line 215
    invoke-interface {v5, v6, v7, v1}, Lcom/inmobi/media/e2;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;)V

    .line 216
    .line 217
    .line 218
    :cond_8
    :goto_1
    iput p1, v0, Lcom/inmobi/media/w3;->d:I

    .line 219
    .line 220
    const-string v0, "IN_NATIVE_BROWSER"

    .line 221
    .line 222
    if-eq p1, v4, :cond_e

    .line 223
    .line 224
    if-eq p1, v2, :cond_d

    .line 225
    .line 226
    const/4 v1, 0x5

    .line 227
    if-eq p1, v1, :cond_b

    .line 228
    .line 229
    if-eq p1, v3, :cond_9

    .line 230
    .line 231
    goto/16 :goto_2

    .line 232
    .line 233
    :cond_9
    iget-object p1, p2, Lcom/inmobi/media/k2;->i:Ljava/lang/ref/WeakReference;

    .line 234
    .line 235
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    check-cast p1, Lcom/inmobi/media/e2;

    .line 240
    .line 241
    if-eqz p1, :cond_a

    .line 242
    .line 243
    sget-object v1, Lcom/inmobi/media/ec;->Y0:Lcom/inmobi/media/Gb;

    .line 244
    .line 245
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    const-string v1, "onHidden"

    .line 249
    .line 250
    invoke-static {v0, v1}, Lcom/inmobi/media/Gb;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-interface {p1, v0}, Lcom/inmobi/media/e2;->a(Lorg/json/JSONObject;)V

    .line 255
    .line 256
    .line 257
    :cond_a
    iget-object p1, p2, Lcom/inmobi/media/k2;->i:Ljava/lang/ref/WeakReference;

    .line 258
    .line 259
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    check-cast p1, Lcom/inmobi/media/e2;

    .line 264
    .line 265
    if-eqz p1, :cond_f

    .line 266
    .line 267
    invoke-interface {p1}, Lcom/inmobi/media/e2;->a()V

    .line 268
    .line 269
    .line 270
    goto :goto_2

    .line 271
    :cond_b
    iget-object p1, p2, Lcom/inmobi/media/k2;->i:Ljava/lang/ref/WeakReference;

    .line 272
    .line 273
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    check-cast p1, Lcom/inmobi/media/e2;

    .line 278
    .line 279
    if-eqz p1, :cond_c

    .line 280
    .line 281
    sget-object v1, Lcom/inmobi/media/ec;->Y0:Lcom/inmobi/media/Gb;

    .line 282
    .line 283
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    const-string v1, "onVisible"

    .line 287
    .line 288
    invoke-static {v0, v1}, Lcom/inmobi/media/Gb;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-interface {p1, v0}, Lcom/inmobi/media/e2;->a(Lorg/json/JSONObject;)V

    .line 293
    .line 294
    .line 295
    :cond_c
    iget-object p1, p2, Lcom/inmobi/media/k2;->i:Ljava/lang/ref/WeakReference;

    .line 296
    .line 297
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    check-cast p1, Lcom/inmobi/media/e2;

    .line 302
    .line 303
    if-eqz p1, :cond_f

    .line 304
    .line 305
    invoke-interface {p1}, Lcom/inmobi/media/e2;->b()V

    .line 306
    .line 307
    .line 308
    goto :goto_2

    .line 309
    :cond_d
    iget-object p1, p2, Lcom/inmobi/media/k2;->i:Ljava/lang/ref/WeakReference;

    .line 310
    .line 311
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    check-cast p1, Lcom/inmobi/media/e2;

    .line 316
    .line 317
    if-eqz p1, :cond_f

    .line 318
    .line 319
    sget-object p2, Lcom/inmobi/media/ec;->Y0:Lcom/inmobi/media/Gb;

    .line 320
    .line 321
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 322
    .line 323
    .line 324
    const-string p2, "onNavigatingAway"

    .line 325
    .line 326
    invoke-static {v0, p2}, Lcom/inmobi/media/Gb;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 327
    .line 328
    .line 329
    move-result-object p2

    .line 330
    invoke-interface {p1, p2}, Lcom/inmobi/media/e2;->a(Lorg/json/JSONObject;)V

    .line 331
    .line 332
    .line 333
    goto :goto_2

    .line 334
    :cond_e
    iget-object p1, p2, Lcom/inmobi/media/k2;->i:Ljava/lang/ref/WeakReference;

    .line 335
    .line 336
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    check-cast p1, Lcom/inmobi/media/e2;

    .line 341
    .line 342
    if-eqz p1, :cond_f

    .line 343
    .line 344
    sget-object p2, Lcom/inmobi/media/ec;->Y0:Lcom/inmobi/media/Gb;

    .line 345
    .line 346
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 347
    .line 348
    .line 349
    const-string p2, "onPageStart"

    .line 350
    .line 351
    invoke-static {v0, p2}, Lcom/inmobi/media/Gb;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 352
    .line 353
    .line 354
    move-result-object p2

    .line 355
    invoke-interface {p1, p2}, Lcom/inmobi/media/e2;->a(Lorg/json/JSONObject;)V

    .line 356
    .line 357
    .line 358
    :cond_f
    :goto_2
    return-void
.end method
