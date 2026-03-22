.class public final Landroidx/compose/ui/text/JvmAnnotatedString_jvmKt;
.super Ljava/lang/Object;
.source "JvmAnnotatedString.jvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private static final collectRangeTransitions(Ljava/util/List;Ljava/util/SortedSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "TT;>;>;",
            "Ljava/util/SortedSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    .line 8
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 13
    .line 14
    invoke-virtual {v2}, Landroidx/compose/ui/text/AnnotatedString$Range;->getStart()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Landroidx/compose/ui/text/AnnotatedString$Range;->getEnd()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method public static final transform(Landroidx/compose/ui/text/AnnotatedString;Lat/n;)Landroidx/compose/ui/text/AnnotatedString;
    .locals 11
    .param p0    # Landroidx/compose/ui/text/AnnotatedString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Lat/n<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/compose/ui/text/AnnotatedString;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "transform"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    filled-new-array {v1, v2}, [Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v2}, Lkotlin/collections/y0;->e([Ljava/lang/Object;)Ljava/util/TreeSet;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->getSpanStyles()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v2, v3}, Landroidx/compose/ui/text/JvmAnnotatedString_jvmKt;->collectRangeTransitions(Ljava/util/List;Ljava/util/SortedSet;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->getParagraphStyles()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v2, v3}, Landroidx/compose/ui/text/JvmAnnotatedString_jvmKt;->collectRangeTransitions(Ljava/util/List;Ljava/util/SortedSet;)V

    .line 48
    .line 49
    .line 50
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 51
    .line 52
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v4, ""

    .line 56
    .line 57
    iput-object v4, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 58
    .line 59
    invoke-static {v1, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    filled-new-array {v1}, [Lkotlin/Pair;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v1}, Lkotlin/collections/p0;->o([Lkotlin/Pair;)Ljava/util/Map;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    new-instance v7, Landroidx/compose/ui/text/JvmAnnotatedString_jvmKt$transform$1;

    .line 72
    .line 73
    invoke-direct {v7, v2, p1, p0, v1}, Landroidx/compose/ui/text/JvmAnnotatedString_jvmKt$transform$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lat/n;Landroidx/compose/ui/text/AnnotatedString;Ljava/util/Map;)V

    .line 74
    .line 75
    .line 76
    const/4 v8, 0x6

    .line 77
    const/4 v9, 0x0

    .line 78
    const/4 v4, 0x2

    .line 79
    const/4 v5, 0x0

    .line 80
    const/4 v6, 0x0

    .line 81
    invoke-static/range {v3 .. v9}, Lkotlin/collections/CollectionsKt;->l1(Ljava/lang/Iterable;IIZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/List;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->getSpanStyles()Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    new-instance v3, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 95
    .line 96
    .line 97
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    move v5, v0

    .line 102
    :goto_0
    if-ge v5, v4, :cond_0

    .line 103
    .line 104
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    check-cast v6, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 109
    .line 110
    new-instance v7, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 111
    .line 112
    invoke-virtual {v6}, Landroidx/compose/ui/text/AnnotatedString$Range;->getItem()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    invoke-virtual {v6}, Landroidx/compose/ui/text/AnnotatedString$Range;->getStart()I

    .line 117
    .line 118
    .line 119
    move-result v9

    .line 120
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    check-cast v9, Ljava/lang/Number;

    .line 132
    .line 133
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 134
    .line 135
    .line 136
    move-result v9

    .line 137
    invoke-virtual {v6}, Landroidx/compose/ui/text/AnnotatedString$Range;->getEnd()I

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    check-cast v6, Ljava/lang/Number;

    .line 153
    .line 154
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    invoke-direct {v7, v8, v9, v6}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    .line 159
    .line 160
    .line 161
    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    add-int/lit8 v5, v5, 0x1

    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->getParagraphStyles()Ljava/util/List;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    new-instance v4, Ljava/util/ArrayList;

    .line 172
    .line 173
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 178
    .line 179
    .line 180
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 181
    .line 182
    .line 183
    move-result v5

    .line 184
    move v6, v0

    .line 185
    :goto_1
    if-ge v6, v5, :cond_1

    .line 186
    .line 187
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    check-cast v7, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 192
    .line 193
    new-instance v8, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 194
    .line 195
    invoke-virtual {v7}, Landroidx/compose/ui/text/AnnotatedString$Range;->getItem()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v9

    .line 199
    invoke-virtual {v7}, Landroidx/compose/ui/text/AnnotatedString$Range;->getStart()I

    .line 200
    .line 201
    .line 202
    move-result v10

    .line 203
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object v10

    .line 207
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v10

    .line 211
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    check-cast v10, Ljava/lang/Number;

    .line 215
    .line 216
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    .line 217
    .line 218
    .line 219
    move-result v10

    .line 220
    invoke-virtual {v7}, Landroidx/compose/ui/text/AnnotatedString$Range;->getEnd()I

    .line 221
    .line 222
    .line 223
    move-result v7

    .line 224
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    .line 226
    .line 227
    move-result-object v7

    .line 228
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v7

    .line 232
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    check-cast v7, Ljava/lang/Number;

    .line 236
    .line 237
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 238
    .line 239
    .line 240
    move-result v7

    .line 241
    invoke-direct {v8, v9, v10, v7}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    .line 242
    .line 243
    .line 244
    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    add-int/lit8 v6, v6, 0x1

    .line 248
    .line 249
    goto :goto_1

    .line 250
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->getAnnotations$ui_text_release()Ljava/util/List;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    new-instance p1, Ljava/util/ArrayList;

    .line 255
    .line 256
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 257
    .line 258
    .line 259
    move-result v5

    .line 260
    invoke-direct {p1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 261
    .line 262
    .line 263
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 264
    .line 265
    .line 266
    move-result v5

    .line 267
    :goto_2
    if-ge v0, v5, :cond_2

    .line 268
    .line 269
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v6

    .line 273
    check-cast v6, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 274
    .line 275
    new-instance v7, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 276
    .line 277
    invoke-virtual {v6}, Landroidx/compose/ui/text/AnnotatedString$Range;->getItem()Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v8

    .line 281
    invoke-virtual {v6}, Landroidx/compose/ui/text/AnnotatedString$Range;->getStart()I

    .line 282
    .line 283
    .line 284
    move-result v9

    .line 285
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 286
    .line 287
    .line 288
    move-result-object v9

    .line 289
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v9

    .line 293
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    check-cast v9, Ljava/lang/Number;

    .line 297
    .line 298
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 299
    .line 300
    .line 301
    move-result v9

    .line 302
    invoke-virtual {v6}, Landroidx/compose/ui/text/AnnotatedString$Range;->getEnd()I

    .line 303
    .line 304
    .line 305
    move-result v6

    .line 306
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 307
    .line 308
    .line 309
    move-result-object v6

    .line 310
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v6

    .line 314
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    check-cast v6, Ljava/lang/Number;

    .line 318
    .line 319
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 320
    .line 321
    .line 322
    move-result v6

    .line 323
    invoke-direct {v7, v8, v9, v6}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    .line 324
    .line 325
    .line 326
    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    add-int/lit8 v0, v0, 0x1

    .line 330
    .line 331
    goto :goto_2

    .line 332
    :cond_2
    new-instance p0, Landroidx/compose/ui/text/AnnotatedString;

    .line 333
    .line 334
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 335
    .line 336
    check-cast v0, Ljava/lang/String;

    .line 337
    .line 338
    invoke-direct {p0, v0, v3, v4, p1}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 339
    .line 340
    .line 341
    return-object p0
.end method
