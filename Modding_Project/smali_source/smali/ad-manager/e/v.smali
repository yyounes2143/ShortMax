.class public final Lad-manager/e/v;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public synthetic h:Ljava/lang/Object;

.field public final synthetic i:Lf/n;

.field public final synthetic j:Lca/f;

.field public final synthetic k:Ljava/util/List;

.field public final synthetic l:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Lf/n;Lca/f;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Lrs/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lad-manager/e/v;->i:Lf/n;

    .line 2
    .line 3
    iput-object p2, p0, Lad-manager/e/v;->j:Lca/f;

    .line 4
    .line 5
    iput-object p3, p0, Lad-manager/e/v;->k:Ljava/util/List;

    .line 6
    .line 7
    iput-object p4, p0, Lad-manager/e/v;->l:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 7

    .line 1
    new-instance v6, Lad-manager/e/v;

    .line 2
    .line 3
    iget-object v1, p0, Lad-manager/e/v;->i:Lf/n;

    .line 4
    .line 5
    iget-object v2, p0, Lad-manager/e/v;->j:Lca/f;

    .line 6
    .line 7
    iget-object v3, p0, Lad-manager/e/v;->k:Ljava/util/List;

    .line 8
    .line 9
    iget-object v4, p0, Lad-manager/e/v;->l:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 10
    .line 11
    move-object v0, v6

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lad-manager/e/v;-><init>(Lf/n;Lca/f;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Lrs/c;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, v6, Lad-manager/e/v;->h:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v6
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lgt/g0;

    .line 2
    .line 3
    check-cast p2, Lrs/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lad-manager/e/v;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lad-manager/e/v;

    .line 10
    .line 11
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lad-manager/e/v;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, v0, Lad-manager/e/v;->h:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Lgt/g0;

    .line 12
    .line 13
    iget-object v2, v0, Lad-manager/e/v;->i:Lf/n;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-static {v2}, Lf/n;->h(Z)V

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Lkotlinx/coroutines/i;->h(Lgt/g0;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    sget-object v2, Lca/k;->a:Lca/k;

    .line 29
    .line 30
    const/16 v7, 0xe

    .line 31
    .line 32
    const/4 v8, 0x0

    .line 33
    const-string v3, "show -> showCachedAD ignore, CoroutineScope is Canceled"

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x0

    .line 38
    invoke-static/range {v2 .. v8}, Lca/k;->m(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    :cond_0
    iget-object v1, v0, Lad-manager/e/v;->i:Lf/n;

    .line 44
    .line 45
    iget-object v2, v0, Lad-manager/e/v;->j:Lca/f;

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Lf/n;->e(Lca/f;)Lf/g;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v1, v1, Lf/g;->a:Ljava/util/ArrayList;

    .line 52
    .line 53
    sget-object v3, Lga/a;->a:Lga/a;

    .line 54
    .line 55
    const-string v4, "AdManager:ApplovinMax:Manager"

    .line 56
    .line 57
    invoke-static {v2, v4}, Ld/h;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v6, "showCachedAD:"

    .line 64
    .line 65
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v3, v4, v5}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    const/4 v5, 0x0

    .line 87
    if-nez v4, :cond_1

    .line 88
    .line 89
    move-object v4, v5

    .line 90
    goto :goto_0

    .line 91
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    if-nez v6, :cond_2

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    move-object v6, v4

    .line 103
    check-cast v6, Lca/d;

    .line 104
    .line 105
    invoke-virtual {v6}, Lca/d;->l()Lcom/hades/aar/admanager/core/AdPriority;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    invoke-virtual {v6}, Lcom/hades/aar/admanager/core/AdPriority;->getValue()I

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    move-object v8, v7

    .line 118
    check-cast v8, Lca/d;

    .line 119
    .line 120
    invoke-virtual {v8}, Lca/d;->l()Lcom/hades/aar/admanager/core/AdPriority;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    invoke-virtual {v8}, Lcom/hades/aar/admanager/core/AdPriority;->getValue()I

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    if-ge v6, v8, :cond_4

    .line 129
    .line 130
    move-object v4, v7

    .line 131
    move v6, v8

    .line 132
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    if-nez v7, :cond_3

    .line 137
    .line 138
    :goto_0
    check-cast v4, Lca/d;

    .line 139
    .line 140
    if-eqz v4, :cond_7

    .line 141
    .line 142
    invoke-virtual {v2}, Lca/f;->n()Lca/f$e;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    if-eqz v3, :cond_5

    .line 147
    .line 148
    invoke-interface {v3, v4}, Lca/f$e;->b(Lca/d;)Z

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    :cond_5
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 157
    .line 158
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    if-eqz v3, :cond_6

    .line 163
    .line 164
    sget-object v3, Lca/k;->a:Lca/k;

    .line 165
    .line 166
    new-instance v5, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string v6, "showCachedAD succeed -> compareResult="

    .line 169
    .line 170
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const/16 v6, 0xa

    .line 177
    .line 178
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    const/16 v11, 0xe

    .line 189
    .line 190
    const/4 v12, 0x0

    .line 191
    const/4 v8, 0x0

    .line 192
    const/4 v9, 0x0

    .line 193
    const/4 v10, 0x0

    .line 194
    move-object v6, v3

    .line 195
    invoke-static/range {v6 .. v12}, Lca/k;->p(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3, v4, v2}, Lca/k;->v(Lca/d;Lca/f;)V

    .line 199
    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_6
    sget-object v13, Lca/k;->a:Lca/k;

    .line 203
    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    const-string v2, "showCachedAD failed -> onPrepareShow="

    .line 207
    .line 208
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v14

    .line 218
    const/16 v18, 0xe

    .line 219
    .line 220
    const/16 v19, 0x0

    .line 221
    .line 222
    const/4 v15, 0x0

    .line 223
    const/16 v16, 0x0

    .line 224
    .line 225
    const/16 v17, 0x0

    .line 226
    .line 227
    invoke-static/range {v13 .. v19}, Lca/k;->m(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    goto :goto_1

    .line 231
    :cond_7
    sget-object v6, Lca/k;->a:Lca/k;

    .line 232
    .line 233
    const/16 v11, 0xe

    .line 234
    .line 235
    const/4 v12, 0x0

    .line 236
    const-string v1, "showCachedAD failed -> cacheAdInfos.isEmpty()"

    .line 237
    .line 238
    const/4 v8, 0x0

    .line 239
    const/4 v9, 0x0

    .line 240
    const/4 v10, 0x0

    .line 241
    move-object v7, v1

    .line 242
    invoke-static/range {v6 .. v12}, Lca/k;->m(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2}, Lca/f;->n()Lca/f$e;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    if-eqz v3, :cond_8

    .line 250
    .line 251
    invoke-interface {v3, v5, v1}, Lca/f$e;->a(Lca/d;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    :cond_8
    invoke-virtual {v2}, Lca/f;->p()V

    .line 255
    .line 256
    .line 257
    :goto_1
    iget-object v1, v0, Lad-manager/e/v;->l:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 258
    .line 259
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 260
    .line 261
    check-cast v1, Ljava/util/List;

    .line 262
    .line 263
    if-eqz v1, :cond_9

    .line 264
    .line 265
    iget-object v2, v0, Lad-manager/e/v;->j:Lca/f;

    .line 266
    .line 267
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 268
    .line 269
    .line 270
    move-result v3

    .line 271
    if-nez v3, :cond_9

    .line 272
    .line 273
    sget-object v4, Lca/k;->a:Lca/k;

    .line 274
    .line 275
    new-instance v3, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    const-string v5, "show -> Failed ("

    .line 278
    .line 279
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    const/16 v5, 0x29

    .line 286
    .line 287
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v5

    .line 294
    const/16 v9, 0xe

    .line 295
    .line 296
    const/4 v10, 0x0

    .line 297
    const/4 v6, 0x0

    .line 298
    const/4 v7, 0x0

    .line 299
    const/4 v8, 0x0

    .line 300
    invoke-static/range {v4 .. v10}, Lca/k;->m(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v2}, Lca/f;->d()Lca/f$a;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    if-eqz v2, :cond_9

    .line 308
    .line 309
    invoke-interface {v2, v1}, Lca/f$a;->a(Ljava/util/List;)V

    .line 310
    .line 311
    .line 312
    :cond_9
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 313
    .line 314
    return-object v1
.end method
