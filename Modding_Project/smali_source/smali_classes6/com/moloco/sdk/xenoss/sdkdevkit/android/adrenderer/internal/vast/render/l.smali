.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a0;II)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j;
    .locals 2
    .param p0    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a0$c;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a0$c;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a0$c;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/w;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/w;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/i;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/i;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/i;

    .line 21
    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j$b;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a0$c;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/w;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/w;->b()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-direct {v0, p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j$b;-><init>(Ljava/lang/String;II)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0
.end method

.method public static final b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a0;Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;IILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLrs/c;)Ljava/lang/Object;
    .locals 27
    .param p0    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a0;",
            "Landroid/content/Context;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;",
            "II",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;",
            "Lkotlin/Unit;",
            ">;Z",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/k;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p9

    .line 4
    .line 5
    instance-of v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$a;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$a;

    .line 11
    .line 12
    iget v3, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$a;->q:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$a;->q:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$a;

    .line 25
    .line 26
    invoke-direct {v2, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$a;-><init>(Lrs/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v1, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$a;->p:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v4, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$a;->q:I

    .line 36
    .line 37
    const/4 v5, 0x2

    .line 38
    const/4 v6, 0x1

    .line 39
    const/4 v7, 0x0

    .line 40
    if-eqz v4, :cond_3

    .line 41
    .line 42
    if-eq v4, v6, :cond_2

    .line 43
    .line 44
    if-ne v4, v5, :cond_1

    .line 45
    .line 46
    iget-object v0, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$a;->j:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 49
    .line 50
    iget-object v3, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$a;->i:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 53
    .line 54
    iget-object v2, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$a;->h:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 57
    .line 58
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_2

    .line 62
    .line 63
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 64
    .line 65
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 66
    .line 67
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v0

    .line 71
    :cond_2
    iget-boolean v0, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$a;->o:Z

    .line 72
    .line 73
    iget-object v4, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$a;->n:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 76
    .line 77
    iget-object v6, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$a;->m:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 80
    .line 81
    iget-object v8, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$a;->l:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 84
    .line 85
    iget-object v9, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$a;->k:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v9, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;

    .line 88
    .line 89
    iget-object v10, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$a;->j:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v10, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;

    .line 92
    .line 93
    iget-object v11, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$a;->i:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v11, Landroid/content/Context;

    .line 96
    .line 97
    iget-object v12, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$a;->h:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v12, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a0;

    .line 100
    .line 101
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    move v14, v0

    .line 105
    move-object/from16 v26, v11

    .line 106
    .line 107
    move-object v11, v9

    .line 108
    move-object/from16 v9, v26

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_3
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    move/from16 v1, p4

    .line 115
    .line 116
    move/from16 v4, p5

    .line 117
    .line 118
    invoke-static {v0, v1, v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l;->a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a0;II)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    if-eqz v1, :cond_4

    .line 123
    .line 124
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/k;

    .line 125
    .line 126
    invoke-direct {v0, v1, v7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/k;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/t;)V

    .line 127
    .line 128
    .line 129
    return-object v0

    .line 130
    :cond_4
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 131
    .line 132
    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-static {}, Lcom/moloco/sdk/internal/scheduling/c;->a()Lcom/moloco/sdk/internal/scheduling/a;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-interface {v1}, Lcom/moloco/sdk/internal/scheduling/a;->getDefault()Lkotlin/coroutines/CoroutineContext;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    new-instance v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$b;

    .line 144
    .line 145
    invoke-direct {v8, v4, v0, v7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$b;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a0;Lrs/c;)V

    .line 146
    .line 147
    .line 148
    iput-object v0, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$a;->h:Ljava/lang/Object;

    .line 149
    .line 150
    move-object/from16 v9, p1

    .line 151
    .line 152
    iput-object v9, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$a;->i:Ljava/lang/Object;

    .line 153
    .line 154
    move-object/from16 v10, p2

    .line 155
    .line 156
    iput-object v10, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$a;->j:Ljava/lang/Object;

    .line 157
    .line 158
    move-object/from16 v11, p3

    .line 159
    .line 160
    iput-object v11, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$a;->k:Ljava/lang/Object;

    .line 161
    .line 162
    move-object/from16 v12, p6

    .line 163
    .line 164
    iput-object v12, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$a;->l:Ljava/lang/Object;

    .line 165
    .line 166
    move-object/from16 v13, p7

    .line 167
    .line 168
    iput-object v13, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$a;->m:Ljava/lang/Object;

    .line 169
    .line 170
    iput-object v4, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$a;->n:Ljava/lang/Object;

    .line 171
    .line 172
    move/from16 v14, p8

    .line 173
    .line 174
    iput-boolean v14, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$a;->o:Z

    .line 175
    .line 176
    iput v6, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$a;->q:I

    .line 177
    .line 178
    invoke-static {v1, v8, v2}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    if-ne v1, v3, :cond_5

    .line 183
    .line 184
    return-object v3

    .line 185
    :cond_5
    move-object v8, v12

    .line 186
    move-object v6, v13

    .line 187
    move-object v12, v0

    .line 188
    :goto_1
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 189
    .line 190
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 191
    .line 192
    .line 193
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 194
    .line 195
    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 196
    .line 197
    .line 198
    new-instance v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 199
    .line 200
    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 201
    .line 202
    .line 203
    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 204
    .line 205
    check-cast v4, Ljava/lang/String;

    .line 206
    .line 207
    if-nez v4, :cond_6

    .line 208
    .line 209
    new-instance v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/staticrenderer/a;

    .line 210
    .line 211
    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    const-string v4, "getApplicationContext(...)"

    .line 216
    .line 217
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    new-instance v4, Lcom/moloco/sdk/internal/services/t;

    .line 221
    .line 222
    invoke-direct {v4, v11, v10}, Lcom/moloco/sdk/internal/services/t;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;)V

    .line 223
    .line 224
    .line 225
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/w;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/r;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    const/16 v9, 0x32

    .line 230
    .line 231
    const/4 v10, 0x0

    .line 232
    const/4 v11, 0x0

    .line 233
    const/4 v13, 0x0

    .line 234
    const/4 v14, 0x0

    .line 235
    move-object/from16 p0, v2

    .line 236
    .line 237
    move-object/from16 p1, v3

    .line 238
    .line 239
    move-object/from16 p2, v11

    .line 240
    .line 241
    move-object/from16 p3, v4

    .line 242
    .line 243
    move-object/from16 p4, v5

    .line 244
    .line 245
    move/from16 p5, v13

    .line 246
    .line 247
    move-object/from16 p6, v14

    .line 248
    .line 249
    move/from16 p7, v9

    .line 250
    .line 251
    move-object/from16 p8, v10

    .line 252
    .line 253
    invoke-direct/range {p0 .. p8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/staticrenderer/a;-><init>(Landroid/content/Context;Lgt/g0;Lcom/moloco/sdk/internal/services/f0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/r;ZLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/staticrenderer/c;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 254
    .line 255
    .line 256
    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 257
    .line 258
    invoke-static {}, Lcom/moloco/sdk/internal/scheduling/c;->a()Lcom/moloco/sdk/internal/scheduling/a;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    invoke-interface {v3}, Lcom/moloco/sdk/internal/scheduling/a;->getMain()Lkotlin/coroutines/CoroutineContext;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-static {v3}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    iput-object v3, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 271
    .line 272
    invoke-virtual {v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/staticrenderer/a;->getClickthroughEvent()Lkt/f;

    .line 273
    .line 274
    .line 275
    move-result-object v4

    .line 276
    new-instance v5, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$d;

    .line 277
    .line 278
    invoke-direct {v5, v8, v7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$d;-><init>(Lkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 279
    .line 280
    .line 281
    invoke-static {v4, v5}, Lkotlinx/coroutines/flow/c;->O(Lkt/b;Lkotlin/jvm/functions/Function2;)Lkt/b;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    invoke-static {v4, v3}, Lkotlinx/coroutines/flow/c;->J(Lkt/b;Lgt/g0;)Lkotlinx/coroutines/r;

    .line 286
    .line 287
    .line 288
    new-instance v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$e;

    .line 289
    .line 290
    invoke-direct {v4, v2, v6, v7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$e;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/staticrenderer/a;Lkotlin/jvm/functions/Function1;Lrs/c;)V

    .line 291
    .line 292
    .line 293
    const/4 v5, 0x3

    .line 294
    const/4 v6, 0x0

    .line 295
    const/4 v8, 0x0

    .line 296
    const/4 v9, 0x0

    .line 297
    move-object/from16 p0, v3

    .line 298
    .line 299
    move-object/from16 p1, v8

    .line 300
    .line 301
    move-object/from16 p2, v9

    .line 302
    .line 303
    move-object/from16 p3, v4

    .line 304
    .line 305
    move/from16 p4, v5

    .line 306
    .line 307
    move-object/from16 p5, v6

    .line 308
    .line 309
    invoke-static/range {p0 .. p5}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 310
    .line 311
    .line 312
    invoke-static {v2, v12}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/u;->a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/d;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a0;)V

    .line 313
    .line 314
    .line 315
    goto/16 :goto_3

    .line 316
    .line 317
    :cond_6
    new-instance v10, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/m;

    .line 318
    .line 319
    const-string v12, "null cannot be cast to non-null type android.app.Activity"

    .line 320
    .line 321
    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    move-object v12, v9

    .line 325
    check-cast v12, Landroid/app/Activity;

    .line 326
    .line 327
    new-instance v16, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/m;

    .line 328
    .line 329
    invoke-direct/range {v16 .. v16}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/m;-><init>()V

    .line 330
    .line 331
    .line 332
    new-instance v17, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/n;

    .line 333
    .line 334
    invoke-direct/range {v17 .. v17}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/n;-><init>()V

    .line 335
    .line 336
    .line 337
    invoke-static {}, Lcom/moloco/sdk/internal/scheduling/c;->a()Lcom/moloco/sdk/internal/scheduling/a;

    .line 338
    .line 339
    .line 340
    move-result-object v13

    .line 341
    invoke-interface {v13}, Lcom/moloco/sdk/internal/scheduling/a;->getMain()Lkotlin/coroutines/CoroutineContext;

    .line 342
    .line 343
    .line 344
    move-result-object v13

    .line 345
    invoke-static {v13}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 346
    .line 347
    .line 348
    move-result-object v13

    .line 349
    invoke-static {v9, v13, v14}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/o;->a(Landroid/content/Context;Lgt/g0;Z)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/n;

    .line 350
    .line 351
    .line 352
    move-result-object v22

    .line 353
    const/16 v24, 0x200

    .line 354
    .line 355
    const/16 v25, 0x0

    .line 356
    .line 357
    const/16 v20, 0x1

    .line 358
    .line 359
    const/16 v23, 0x0

    .line 360
    .line 361
    move-object v13, v10

    .line 362
    move-object v14, v12

    .line 363
    move-object v9, v15

    .line 364
    move-object v15, v4

    .line 365
    move-object/from16 v18, v8

    .line 366
    .line 367
    move-object/from16 v19, v6

    .line 368
    .line 369
    move-object/from16 v21, v11

    .line 370
    .line 371
    invoke-direct/range {v13 .. v25}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/m;-><init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/n;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/r;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 372
    .line 373
    .line 374
    iput-object v10, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 375
    .line 376
    iput-object v0, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$a;->h:Ljava/lang/Object;

    .line 377
    .line 378
    iput-object v1, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$a;->i:Ljava/lang/Object;

    .line 379
    .line 380
    iput-object v9, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$a;->j:Ljava/lang/Object;

    .line 381
    .line 382
    iput-object v7, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$a;->k:Ljava/lang/Object;

    .line 383
    .line 384
    iput-object v7, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$a;->l:Ljava/lang/Object;

    .line 385
    .line 386
    iput-object v7, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$a;->m:Ljava/lang/Object;

    .line 387
    .line 388
    iput-object v7, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$a;->n:Ljava/lang/Object;

    .line 389
    .line 390
    iput v5, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$a;->q:I

    .line 391
    .line 392
    invoke-virtual {v10, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/m;->q0(Lrs/c;)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    if-ne v2, v3, :cond_7

    .line 397
    .line 398
    return-object v3

    .line 399
    :cond_7
    move-object v3, v1

    .line 400
    move-object v1, v2

    .line 401
    move-object v2, v0

    .line 402
    move-object v0, v9

    .line 403
    :goto_2
    instance-of v4, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/d;

    .line 404
    .line 405
    if-eqz v4, :cond_8

    .line 406
    .line 407
    check-cast v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/d;

    .line 408
    .line 409
    move-object v15, v0

    .line 410
    move-object v0, v2

    .line 411
    move-object v2, v1

    .line 412
    move-object v1, v3

    .line 413
    goto :goto_3

    .line 414
    :cond_8
    move-object v15, v0

    .line 415
    move-object v0, v2

    .line 416
    move-object v1, v3

    .line 417
    move-object v2, v7

    .line 418
    :goto_3
    if-eqz v2, :cond_9

    .line 419
    .line 420
    sget-object v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/e0;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/e0;

    .line 421
    .line 422
    invoke-virtual {v3, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/e0;->a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/d;)I

    .line 423
    .line 424
    .line 425
    move-result v2

    .line 426
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    goto :goto_4

    .line 431
    :cond_9
    move-object v2, v7

    .line 432
    :goto_4
    new-instance v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$c;

    .line 433
    .line 434
    invoke-direct {v3, v2, v0, v1, v15}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l$c;-><init>(Ljava/lang/Integer;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 435
    .line 436
    .line 437
    if-eqz v2, :cond_a

    .line 438
    .line 439
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 440
    .line 441
    .line 442
    move-result v0

    .line 443
    new-instance v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/k;

    .line 444
    .line 445
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j$a;

    .line 446
    .line 447
    invoke-direct {v1, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j$a;-><init>(I)V

    .line 448
    .line 449
    .line 450
    invoke-direct {v7, v1, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/k;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/t;)V

    .line 451
    .line 452
    .line 453
    :cond_a
    return-object v7
.end method

.method public static synthetic c(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a0;Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;IILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLrs/c;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    move/from16 v0, p10

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x80

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    move v9, v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move/from16 v9, p8

    .line 11
    .line 12
    :goto_0
    move-object v1, p0

    .line 13
    move-object v2, p1

    .line 14
    move-object v3, p2

    .line 15
    move-object v4, p3

    .line 16
    move v5, p4

    .line 17
    move/from16 v6, p5

    .line 18
    .line 19
    move-object/from16 v7, p6

    .line 20
    .line 21
    move-object/from16 v8, p7

    .line 22
    .line 23
    move-object/from16 v10, p9

    .line 24
    .line 25
    invoke-static/range {v1 .. v10}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/l;->b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a0;Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;IILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLrs/c;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public static final d(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a0;)Ljava/lang/String;
    .locals 2
    .param p0    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a0$a;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/j0;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/j0;

    .line 11
    .line 12
    check-cast p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a0$a;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a0$a;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/l;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/l;->a()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/j0;->a(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a0$a;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/l;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/l;->a()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    instance-of v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a0$b;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/j0;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/j0;

    .line 42
    .line 43
    check-cast p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a0$b;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a0$b;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/m;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/m;->a()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/j0;->a(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a0$b;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/m;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/m;->a()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    instance-of v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a0$c;

    .line 69
    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    check-cast p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a0$c;

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a0$c;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/w;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/w;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/i;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sget-object v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/i;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/i;

    .line 83
    .line 84
    if-ne v0, v1, :cond_2

    .line 85
    .line 86
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/j0;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/j0;

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a0$c;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/w;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/w;->b()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/j0;->a(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_2

    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a0$c;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/w;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/w;->b()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    goto :goto_0

    .line 111
    :cond_2
    const/4 p0, 0x0

    .line 112
    :goto_0
    return-object p0

    .line 113
    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 114
    .line 115
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 116
    .line 117
    .line 118
    throw p0
.end method

.method public static final e()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final f()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method
