.class public final Landroidx/room/util/SchemaInfoUtilKt;
.super Ljava/lang/Object;
.source "SchemaInfoUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSchemaInfoUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SchemaInfoUtil.kt\nandroidx/room/util/SchemaInfoUtilKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 4 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,378:1\n774#2:379\n865#2,2:380\n1869#2,2:382\n1056#2:384\n1563#2:385\n1634#2,3:386\n1056#2:389\n1563#2:390\n1634#2,3:391\n774#2:420\n865#2:421\n866#2:424\n1188#3,2:394\n1190#3:419\n108#4:396\n80#4,22:397\n12637#5,2:422\n*S KotlinDebug\n*F\n+ 1 SchemaInfoUtil.kt\nandroidx/room/util/SchemaInfoUtilKt\n*L\n94#1:379\n94#1:380,2\n95#1:382,2\n256#1:384\n256#1:385\n256#1:386,3\n257#1:389\n257#1:390\n257#1:391,3\n360#1:420\n360#1:421\n360#1:424\n328#1:394,2\n328#1:419\n348#1:396\n348#1:397,22\n360#1:422,2\n*E\n"
    }
.end annotation


# static fields
.field private static final FTS_OPTIONS:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const-string v7, "prefix="

    .line 2
    .line 3
    const-string/jumbo v8, "uncompress="

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "tokenize="

    .line 7
    .line 8
    .line 9
    const-string v1, "compress="

    .line 10
    .line 11
    const-string v2, "content="

    .line 12
    .line 13
    const-string v3, "languageid="

    .line 14
    .line 15
    const-string v4, "matchinfo="

    .line 16
    .line 17
    const-string v5, "notindexed="

    .line 18
    .line 19
    const-string v6, "order="

    .line 20
    .line 21
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Landroidx/room/util/SchemaInfoUtilKt;->FTS_OPTIONS:[Ljava/lang/String;

    .line 26
    .line 27
    return-void
.end method

.method public static final findAffinity(Ljava/lang/String;)I
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/room/ColumnInfo$SQLiteTypeAffinity;
    .end annotation

    .line 1
    const/4 v0, 0x5

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string/jumbo v1, "toUpperCase(...)"

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v1, "INT"

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x2

    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-static {p0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    const/4 p0, 0x3

    .line 29
    return p0

    .line 30
    :cond_1
    const-string v1, "CHAR"

    .line 31
    .line 32
    invoke-static {p0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_6

    .line 37
    .line 38
    const-string v1, "CLOB"

    .line 39
    .line 40
    invoke-static {p0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_6

    .line 45
    .line 46
    const-string v1, "TEXT"

    .line 47
    .line 48
    invoke-static {p0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    const-string v1, "BLOB"

    .line 56
    .line 57
    invoke-static {p0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    return v0

    .line 64
    :cond_3
    const-string v0, "REAL"

    .line 65
    .line 66
    invoke-static {p0, v0, v2, v3, v4}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_5

    .line 71
    .line 72
    const-string v0, "FLOA"

    .line 73
    .line 74
    invoke-static {p0, v0, v2, v3, v4}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_5

    .line 79
    .line 80
    const-string v0, "DOUB"

    .line 81
    .line 82
    invoke-static {p0, v0, v2, v3, v4}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    if-eqz p0, :cond_4

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_4
    const/4 p0, 0x1

    .line 90
    return p0

    .line 91
    :cond_5
    :goto_0
    const/4 p0, 0x4

    .line 92
    return p0

    .line 93
    :cond_6
    :goto_1
    return v3
.end method

.method public static final parseFtsOptions(Ljava/lang/String;)Ljava/util/Set;
    .locals 14
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "createStatement"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lkotlin/collections/y0;->f()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_0
    const/4 v4, 0x6

    .line 18
    const/4 v5, 0x0

    .line 19
    const/16 v1, 0x28

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    move-object v0, p0

    .line 24
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->p0(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x1

    .line 29
    add-int/2addr v0, v1

    .line 30
    const/4 v6, 0x6

    .line 31
    const/4 v7, 0x0

    .line 32
    const/16 v3, 0x29

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    move-object v2, p0

    .line 37
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->x0(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const-string v0, "substring(...)"

    .line 46
    .line 47
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance v2, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    new-instance v3, Lkotlin/collections/m;

    .line 56
    .line 57
    invoke-direct {v3}, Lkotlin/collections/m;-><init>()V

    .line 58
    .line 59
    .line 60
    const/4 v4, -0x1

    .line 61
    move v6, v5

    .line 62
    move v7, v6

    .line 63
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    if-ge v6, v8, :cond_f

    .line 68
    .line 69
    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    add-int/lit8 v9, v7, 0x1

    .line 74
    .line 75
    const/16 v10, 0x22

    .line 76
    .line 77
    if-eq v8, v10, :cond_b

    .line 78
    .line 79
    const/16 v10, 0x27

    .line 80
    .line 81
    if-eq v8, v10, :cond_b

    .line 82
    .line 83
    const/16 v10, 0x2c

    .line 84
    .line 85
    if-eq v8, v10, :cond_4

    .line 86
    .line 87
    const/16 v7, 0x5b

    .line 88
    .line 89
    if-eq v8, v7, :cond_3

    .line 90
    .line 91
    const/16 v10, 0x5d

    .line 92
    .line 93
    if-eq v8, v10, :cond_1

    .line 94
    .line 95
    const/16 v7, 0x60

    .line 96
    .line 97
    if-eq v8, v7, :cond_b

    .line 98
    .line 99
    goto/16 :goto_5

    .line 100
    .line 101
    :cond_1
    invoke-virtual {v3}, Lkotlin/collections/m;->isEmpty()Z

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    if-nez v8, :cond_e

    .line 106
    .line 107
    invoke-virtual {v3}, Lkotlin/collections/m;->i()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    check-cast v8, Ljava/lang/Character;

    .line 112
    .line 113
    if-nez v8, :cond_2

    .line 114
    .line 115
    goto/16 :goto_5

    .line 116
    .line 117
    :cond_2
    invoke-virtual {v8}, Ljava/lang/Character;->charValue()C

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    if-ne v8, v7, :cond_e

    .line 122
    .line 123
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->R(Ljava/util/List;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    goto/16 :goto_5

    .line 127
    .line 128
    :cond_3
    invoke-virtual {v3}, Lkotlin/collections/m;->isEmpty()Z

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    if-eqz v7, :cond_e

    .line 133
    .line 134
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    invoke-virtual {v3, v7}, Lkotlin/collections/m;->addFirst(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    goto/16 :goto_5

    .line 142
    .line 143
    :cond_4
    invoke-virtual {v3}, Lkotlin/collections/m;->isEmpty()Z

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    if-eqz v8, :cond_e

    .line 148
    .line 149
    add-int/lit8 v4, v4, 0x1

    .line 150
    .line 151
    invoke-virtual {p0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 159
    .line 160
    .line 161
    move-result v8

    .line 162
    sub-int/2addr v8, v1

    .line 163
    move v10, v5

    .line 164
    move v11, v10

    .line 165
    :goto_1
    if-gt v10, v8, :cond_a

    .line 166
    .line 167
    if-nez v11, :cond_5

    .line 168
    .line 169
    move v12, v10

    .line 170
    goto :goto_2

    .line 171
    :cond_5
    move v12, v8

    .line 172
    :goto_2
    invoke-interface {v4, v12}, Ljava/lang/CharSequence;->charAt(I)C

    .line 173
    .line 174
    .line 175
    move-result v12

    .line 176
    const/16 v13, 0x20

    .line 177
    .line 178
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 179
    .line 180
    .line 181
    move-result v12

    .line 182
    if-gtz v12, :cond_6

    .line 183
    .line 184
    move v12, v1

    .line 185
    goto :goto_3

    .line 186
    :cond_6
    move v12, v5

    .line 187
    :goto_3
    if-nez v11, :cond_8

    .line 188
    .line 189
    if-nez v12, :cond_7

    .line 190
    .line 191
    move v11, v1

    .line 192
    goto :goto_1

    .line 193
    :cond_7
    add-int/lit8 v10, v10, 0x1

    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_8
    if-nez v12, :cond_9

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_9
    add-int/lit8 v8, v8, -0x1

    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_a
    :goto_4
    add-int/lit8 v8, v8, 0x1

    .line 203
    .line 204
    invoke-interface {v4, v10, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move v4, v7

    .line 216
    goto :goto_5

    .line 217
    :cond_b
    invoke-virtual {v3}, Lkotlin/collections/m;->isEmpty()Z

    .line 218
    .line 219
    .line 220
    move-result v7

    .line 221
    if-eqz v7, :cond_c

    .line 222
    .line 223
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 224
    .line 225
    .line 226
    move-result-object v7

    .line 227
    invoke-virtual {v3, v7}, Lkotlin/collections/m;->addFirst(Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    goto :goto_5

    .line 231
    :cond_c
    invoke-virtual {v3}, Lkotlin/collections/m;->i()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v7

    .line 235
    check-cast v7, Ljava/lang/Character;

    .line 236
    .line 237
    if-nez v7, :cond_d

    .line 238
    .line 239
    goto :goto_5

    .line 240
    :cond_d
    invoke-virtual {v7}, Ljava/lang/Character;->charValue()C

    .line 241
    .line 242
    .line 243
    move-result v7

    .line 244
    if-ne v7, v8, :cond_e

    .line 245
    .line 246
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->R(Ljava/util/List;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    :cond_e
    :goto_5
    add-int/lit8 v6, v6, 0x1

    .line 250
    .line 251
    move v7, v9

    .line 252
    goto/16 :goto_0

    .line 253
    .line 254
    :cond_f
    add-int/2addr v4, v1

    .line 255
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p0

    .line 259
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-static {p0}, Lkotlin/text/StringsKt;->v1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    new-instance p0, Ljava/util/ArrayList;

    .line 274
    .line 275
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .line 277
    .line 278
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    :cond_10
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    if-eqz v1, :cond_12

    .line 287
    .line 288
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    move-object v2, v1

    .line 293
    check-cast v2, Ljava/lang/String;

    .line 294
    .line 295
    sget-object v3, Landroidx/room/util/SchemaInfoUtilKt;->FTS_OPTIONS:[Ljava/lang/String;

    .line 296
    .line 297
    array-length v4, v3

    .line 298
    move v6, v5

    .line 299
    :goto_7
    if-ge v6, v4, :cond_10

    .line 300
    .line 301
    aget-object v7, v3, v6

    .line 302
    .line 303
    const/4 v8, 0x2

    .line 304
    const/4 v9, 0x0

    .line 305
    invoke-static {v2, v7, v5, v8, v9}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v7

    .line 309
    if-eqz v7, :cond_11

    .line 310
    .line 311
    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    goto :goto_6

    .line 315
    :cond_11
    add-int/lit8 v6, v6, 0x1

    .line 316
    .line 317
    goto :goto_7

    .line 318
    :cond_12
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->i1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 319
    .line 320
    .line 321
    move-result-object p0

    .line 322
    return-object p0
.end method

.method private static final readColumns(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Ljava/util/Map;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/SQLiteConnection;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/room/util/TableInfo$Column;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "PRAGMA table_info(`"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    move-object/from16 v1, p1

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "`)"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move-object/from16 v1, p0

    .line 26
    .line 27
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :try_start_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v2, 0x0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    invoke-static {}, Lkotlin/collections/p0;->i()Ljava/util/Map;

    .line 39
    .line 40
    .line 41
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-static {v1, v2}, Lys/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    move-object v2, v0

    .line 48
    goto/16 :goto_4

    .line 49
    .line 50
    :cond_0
    :try_start_1
    const-string v0, "name"

    .line 51
    .line 52
    invoke-static {v1, v0}, Landroidx/room/util/SQLiteStatementUtil;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const-string/jumbo v3, "type"

    .line 57
    .line 58
    .line 59
    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    const-string v4, "notnull"

    .line 64
    .line 65
    invoke-static {v1, v4}, Landroidx/room/util/SQLiteStatementUtil;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    const-string v5, "pk"

    .line 70
    .line 71
    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    const-string v6, "dflt_value"

    .line 76
    .line 77
    invoke-static {v1, v6}, Landroidx/room/util/SQLiteStatementUtil;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    invoke-static {}, Lkotlin/collections/p0;->c()Ljava/util/Map;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    :goto_0
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v15

    .line 89
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v10

    .line 93
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 94
    .line 95
    .line 96
    move-result-wide v8

    .line 97
    const-wide/16 v11, 0x0

    .line 98
    .line 99
    cmp-long v8, v8, v11

    .line 100
    .line 101
    if-eqz v8, :cond_1

    .line 102
    .line 103
    const/4 v8, 0x1

    .line 104
    :goto_1
    move v11, v8

    .line 105
    goto :goto_2

    .line 106
    :cond_1
    const/4 v8, 0x0

    .line 107
    goto :goto_1

    .line 108
    :goto_2
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 109
    .line 110
    .line 111
    move-result-wide v8

    .line 112
    long-to-int v12, v8

    .line 113
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    if-eqz v8, :cond_2

    .line 118
    .line 119
    move-object v13, v2

    .line 120
    goto :goto_3

    .line 121
    :cond_2
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    move-object v13, v8

    .line 126
    :goto_3
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 127
    .line 128
    const/16 v16, 0x2

    .line 129
    .line 130
    move-object v8, v14

    .line 131
    move-object v9, v15

    .line 132
    move-object v2, v14

    .line 133
    move/from16 v14, v16

    .line 134
    .line 135
    invoke-direct/range {v8 .. v14}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 136
    .line 137
    .line 138
    invoke-interface {v7, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-nez v2, :cond_3

    .line 146
    .line 147
    invoke-static {v7}, Lkotlin/collections/p0;->b(Ljava/util/Map;)Ljava/util/Map;

    .line 148
    .line 149
    .line 150
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    const/4 v2, 0x0

    .line 152
    invoke-static {v1, v2}, Lys/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 153
    .line 154
    .line 155
    return-object v0

    .line 156
    :cond_3
    const/4 v2, 0x0

    .line 157
    goto :goto_0

    .line 158
    :goto_4
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 159
    :catchall_1
    move-exception v0

    .line 160
    move-object v3, v0

    .line 161
    invoke-static {v1, v2}, Lys/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 162
    .line 163
    .line 164
    throw v3
.end method

.method private static final readForeignKeyFieldMappings(Landroidx/sqlite/SQLiteStatement;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/SQLiteStatement;",
            ")",
            "Ljava/util/List<",
            "Landroidx/room/util/ForeignKeyWithSequence;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-static {p0, v0}, Landroidx/room/util/SQLiteStatementUtil;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "seq"

    .line 8
    .line 9
    invoke-static {p0, v1}, Landroidx/room/util/SQLiteStatementUtil;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-string v2, "from"

    .line 14
    .line 15
    invoke-static {p0, v2}, Landroidx/room/util/SQLiteStatementUtil;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const-string/jumbo v3, "to"

    .line 20
    .line 21
    .line 22
    invoke-static {p0, v3}, Landroidx/room/util/SQLiteStatementUtil;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-static {}, Lkotlin/collections/CollectionsKt;->c()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    :goto_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-eqz v5, :cond_0

    .line 35
    .line 36
    new-instance v5, Landroidx/room/util/ForeignKeyWithSequence;

    .line 37
    .line 38
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 39
    .line 40
    .line 41
    move-result-wide v6

    .line 42
    long-to-int v6, v6

    .line 43
    invoke-interface {p0, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 44
    .line 45
    .line 46
    move-result-wide v7

    .line 47
    long-to-int v7, v7

    .line 48
    invoke-interface {p0, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    invoke-interface {p0, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    invoke-direct {v5, v6, v7, v8, v9}, Landroidx/room/util/ForeignKeyWithSequence;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->a(Ljava/util/List;)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    check-cast p0, Ljava/lang/Iterable;

    .line 68
    .line 69
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->T0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0
.end method

.method private static final readForeignKeys(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Ljava/util/Set;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/SQLiteConnection;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Landroidx/room/util/TableInfo$ForeignKey;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "PRAGMA foreign_key_list(`"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, "`)"

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :try_start_0
    const-string p1, "id"

    .line 28
    .line 29
    invoke-static {p0, p1}, Landroidx/room/util/SQLiteStatementUtil;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const-string v0, "seq"

    .line 34
    .line 35
    invoke-static {p0, v0}, Landroidx/room/util/SQLiteStatementUtil;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const-string v1, "table"

    .line 40
    .line 41
    invoke-static {p0, v1}, Landroidx/room/util/SQLiteStatementUtil;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const-string v2, "on_delete"

    .line 46
    .line 47
    invoke-static {p0, v2}, Landroidx/room/util/SQLiteStatementUtil;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    const-string v3, "on_update"

    .line 52
    .line 53
    invoke-static {p0, v3}, Landroidx/room/util/SQLiteStatementUtil;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-static {p0}, Landroidx/room/util/SchemaInfoUtilKt;->readForeignKeyFieldMappings(Landroidx/sqlite/SQLiteStatement;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->reset()V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Lkotlin/collections/y0;->b()Ljava/util/Set;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    :goto_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-eqz v6, :cond_4

    .line 73
    .line 74
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 75
    .line 76
    .line 77
    move-result-wide v6

    .line 78
    const-wide/16 v8, 0x0

    .line 79
    .line 80
    cmp-long v6, v6, v8

    .line 81
    .line 82
    if-eqz v6, :cond_0

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 86
    .line 87
    .line 88
    move-result-wide v6

    .line 89
    long-to-int v6, v6

    .line 90
    new-instance v11, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    new-instance v12, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .line 99
    .line 100
    move-object v7, v4

    .line 101
    check-cast v7, Ljava/lang/Iterable;

    .line 102
    .line 103
    new-instance v8, Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v9

    .line 116
    if-eqz v9, :cond_2

    .line 117
    .line 118
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    move-object v10, v9

    .line 123
    check-cast v10, Landroidx/room/util/ForeignKeyWithSequence;

    .line 124
    .line 125
    invoke-virtual {v10}, Landroidx/room/util/ForeignKeyWithSequence;->getId()I

    .line 126
    .line 127
    .line 128
    move-result v10

    .line 129
    if-ne v10, v6, :cond_1

    .line 130
    .line 131
    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :catchall_0
    move-exception p1

    .line 136
    goto :goto_3

    .line 137
    :cond_2
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v7

    .line 145
    if-eqz v7, :cond_3

    .line 146
    .line 147
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    check-cast v7, Landroidx/room/util/ForeignKeyWithSequence;

    .line 152
    .line 153
    invoke-virtual {v7}, Landroidx/room/util/ForeignKeyWithSequence;->getFrom()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    invoke-virtual {v7}, Landroidx/room/util/ForeignKeyWithSequence;->getTo()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_3
    new-instance v6, Landroidx/room/util/TableInfo$ForeignKey;

    .line 169
    .line 170
    invoke-interface {p0, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    invoke-interface {p0, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v9

    .line 178
    invoke-interface {p0, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v10

    .line 182
    move-object v7, v6

    .line 183
    invoke-direct/range {v7 .. v12}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 184
    .line 185
    .line 186
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_4
    invoke-static {v5}, Lkotlin/collections/y0;->a(Ljava/util/Set;)Ljava/util/Set;

    .line 191
    .line 192
    .line 193
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    const/4 v0, 0x0

    .line 195
    invoke-static {p0, v0}, Lys/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 196
    .line 197
    .line 198
    return-object p1

    .line 199
    :goto_3
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 200
    :catchall_1
    move-exception v0

    .line 201
    invoke-static {p0, p1}, Lys/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 202
    .line 203
    .line 204
    throw v0
.end method

.method public static final readFtsColumns(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .param p0    # Landroidx/sqlite/SQLiteConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/SQLiteConnection;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "connection"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "tableName"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lkotlin/collections/y0;->b()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "PRAGMA table_info(`"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p1, "`)"

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    :try_start_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    const-string p1, "name"

    .line 48
    .line 49
    invoke-static {p0, p1}, Landroidx/room/util/SQLiteStatementUtil;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    :cond_0
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_0

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception p1

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    const/4 p1, 0x0

    .line 72
    invoke-static {p0, p1}, Lys/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v0}, Lkotlin/collections/y0;->a(Ljava/util/Set;)Ljava/util/Set;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0

    .line 80
    :goto_1
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 81
    :catchall_1
    move-exception v0

    .line 82
    invoke-static {p0, p1}, Lys/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    throw v0
.end method

.method public static final readFtsOptions(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .param p0    # Landroidx/sqlite/SQLiteConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/SQLiteConnection;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "connection"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "tableName"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "SELECT * FROM sqlite_master WHERE `name` = \'"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const/16 p1, 0x27

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :try_start_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    const-string p1, "sql"

    .line 44
    .line 45
    invoke-static {p0, p1}, Landroidx/room/util/SQLiteStatementUtil;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    const-string p1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    :goto_0
    const/4 v0, 0x0

    .line 59
    invoke-static {p0, v0}, Lys/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Landroidx/room/util/SchemaInfoUtilKt;->parseFtsOptions(Ljava/lang/String;)Ljava/util/Set;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :goto_1
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 68
    :catchall_1
    move-exception v0

    .line 69
    invoke-static {p0, p1}, Lys/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    throw v0
.end method

.method private static final readIndex(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;Z)Landroidx/room/util/TableInfo$Index;
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "PRAGMA index_xinfo(`"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, "`)"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :try_start_0
    const-string v0, "seqno"

    .line 28
    .line 29
    invoke-static {p0, v0}, Landroidx/room/util/SQLiteStatementUtil;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const-string v1, "cid"

    .line 34
    .line 35
    invoke-static {p0, v1}, Landroidx/room/util/SQLiteStatementUtil;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const-string v2, "name"

    .line 40
    .line 41
    invoke-static {p0, v2}, Landroidx/room/util/SQLiteStatementUtil;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const-string v3, "desc"

    .line 46
    .line 47
    invoke-static {p0, v3}, Landroidx/room/util/SQLiteStatementUtil;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    const/4 v4, -0x1

    .line 52
    const/4 v5, 0x0

    .line 53
    if-eq v0, v4, :cond_6

    .line 54
    .line 55
    if-eq v1, v4, :cond_6

    .line 56
    .line 57
    if-eq v2, v4, :cond_6

    .line 58
    .line 59
    if-ne v3, v4, :cond_0

    .line 60
    .line 61
    goto/16 :goto_4

    .line 62
    .line 63
    :cond_0
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 64
    .line 65
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 66
    .line 67
    .line 68
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 69
    .line 70
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 71
    .line 72
    .line 73
    :goto_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-eqz v7, :cond_3

    .line 78
    .line 79
    invoke-interface {p0, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 80
    .line 81
    .line 82
    move-result-wide v7

    .line 83
    long-to-int v7, v7

    .line 84
    if-gez v7, :cond_1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 88
    .line 89
    .line 90
    move-result-wide v7

    .line 91
    long-to-int v7, v7

    .line 92
    invoke-interface {p0, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    invoke-interface {p0, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 97
    .line 98
    .line 99
    move-result-wide v9

    .line 100
    const-wide/16 v11, 0x0

    .line 101
    .line 102
    cmp-long v9, v9, v11

    .line 103
    .line 104
    if-lez v9, :cond_2

    .line 105
    .line 106
    const-string v9, "DESC"

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :catchall_0
    move-exception p1

    .line 110
    goto/16 :goto_5

    .line 111
    .line 112
    :cond_2
    const-string v9, "ASC"

    .line 113
    .line 114
    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v10

    .line 118
    invoke-interface {v4, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    invoke-interface {v6, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_3
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Ljava/lang/Iterable;

    .line 134
    .line 135
    new-instance v1, Landroidx/room/util/SchemaInfoUtilKt$readIndex$lambda$13$$inlined$sortedBy$1;

    .line 136
    .line 137
    invoke-direct {v1}, Landroidx/room/util/SchemaInfoUtilKt$readIndex$lambda$13$$inlined$sortedBy$1;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Ljava/lang/Iterable;

    .line 145
    .line 146
    new-instance v1, Ljava/util/ArrayList;

    .line 147
    .line 148
    const/16 v2, 0xa

    .line 149
    .line 150
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    .line 156
    .line 157
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    if-eqz v3, :cond_4

    .line 166
    .line 167
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    check-cast v3, Ljava/util/Map$Entry;

    .line 172
    .line 173
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    check-cast v3, Ljava/lang/String;

    .line 178
    .line 179
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_4
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->d1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    check-cast v1, Ljava/lang/Iterable;

    .line 192
    .line 193
    new-instance v3, Landroidx/room/util/SchemaInfoUtilKt$readIndex$lambda$13$$inlined$sortedBy$2;

    .line 194
    .line 195
    invoke-direct {v3}, Landroidx/room/util/SchemaInfoUtilKt$readIndex$lambda$13$$inlined$sortedBy$2;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->U0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    check-cast v1, Ljava/lang/Iterable;

    .line 203
    .line 204
    new-instance v3, Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 211
    .line 212
    .line 213
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    if-eqz v2, :cond_5

    .line 222
    .line 223
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    check-cast v2, Ljava/util/Map$Entry;

    .line 228
    .line 229
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    check-cast v2, Ljava/lang/String;

    .line 234
    .line 235
    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_5
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->d1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    new-instance v2, Landroidx/room/util/TableInfo$Index;

    .line 244
    .line 245
    invoke-direct {v2, p1, p2, v0, v1}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    .line 247
    .line 248
    invoke-static {p0, v5}, Lys/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 249
    .line 250
    .line 251
    return-object v2

    .line 252
    :cond_6
    :goto_4
    invoke-static {p0, v5}, Lys/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 253
    .line 254
    .line 255
    return-object v5

    .line 256
    :goto_5
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 257
    :catchall_1
    move-exception p2

    .line 258
    invoke-static {p0, p1}, Lys/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 259
    .line 260
    .line 261
    throw p2
.end method

.method private static final readIndices(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/SQLiteConnection;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Landroidx/room/util/TableInfo$Index;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "PRAGMA index_list(`"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, "`)"

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :try_start_0
    const-string v0, "name"

    .line 28
    .line 29
    invoke-static {p1, v0}, Landroidx/room/util/SQLiteStatementUtil;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const-string v1, "origin"

    .line 34
    .line 35
    invoke-static {p1, v1}, Landroidx/room/util/SQLiteStatementUtil;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const-string/jumbo v2, "unique"

    .line 40
    .line 41
    .line 42
    invoke-static {p1, v2}, Landroidx/room/util/SQLiteStatementUtil;->columnIndexOf(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const/4 v3, -0x1

    .line 47
    const/4 v4, 0x0

    .line 48
    if-eq v0, v3, :cond_5

    .line 49
    .line 50
    if-eq v1, v3, :cond_5

    .line 51
    .line 52
    if-ne v2, v3, :cond_0

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_0
    invoke-static {}, Lkotlin/collections/y0;->b()Ljava/util/Set;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    :goto_0
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_4

    .line 64
    .line 65
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    const-string v6, "c"

    .line 70
    .line 71
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-nez v5, :cond_1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-interface {p1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 83
    .line 84
    .line 85
    move-result-wide v6

    .line 86
    const-wide/16 v8, 0x1

    .line 87
    .line 88
    cmp-long v6, v6, v8

    .line 89
    .line 90
    if-nez v6, :cond_2

    .line 91
    .line 92
    const/4 v6, 0x1

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    const/4 v6, 0x0

    .line 95
    :goto_1
    invoke-static {p0, v5, v6}, Landroidx/room/util/SchemaInfoUtilKt;->readIndex(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;Z)Landroidx/room/util/TableInfo$Index;

    .line 96
    .line 97
    .line 98
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    if-nez v5, :cond_3

    .line 100
    .line 101
    invoke-static {p1, v4}, Lys/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    return-object v4

    .line 105
    :cond_3
    :try_start_1
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :catchall_0
    move-exception p0

    .line 110
    goto :goto_3

    .line 111
    :cond_4
    invoke-static {v3}, Lkotlin/collections/y0;->a(Ljava/util/Set;)Ljava/util/Set;

    .line 112
    .line 113
    .line 114
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    invoke-static {p1, v4}, Lys/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    return-object p0

    .line 119
    :cond_5
    :goto_2
    invoke-static {p1, v4}, Lys/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 120
    .line 121
    .line 122
    return-object v4

    .line 123
    :goto_3
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 124
    :catchall_1
    move-exception v0

    .line 125
    invoke-static {p1, p0}, Lys/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 126
    .line 127
    .line 128
    throw v0
.end method

.method public static final readTableInfo(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;
    .locals 3
    .param p0    # Landroidx/sqlite/SQLiteConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "connection"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "tableName"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1}, Landroidx/room/util/SchemaInfoUtilKt;->readColumns(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p0, p1}, Landroidx/room/util/SchemaInfoUtilKt;->readForeignKeys(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {p0, p1}, Landroidx/room/util/SchemaInfoUtilKt;->readIndices(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    new-instance v2, Landroidx/room/util/TableInfo;

    .line 24
    .line 25
    invoke-direct {v2, p1, v0, v1, p0}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 26
    .line 27
    .line 28
    return-object v2
.end method

.method public static final readViewInfo(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/ViewInfo;
    .locals 3
    .param p0    # Landroidx/sqlite/SQLiteConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "connection"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "viewName"

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "SELECT name, sql FROM sqlite_master WHERE type = \'view\' AND name = \'"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const/16 v1, 0x27

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    :try_start_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v1, 0x0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    new-instance p1, Landroidx/room/util/ViewInfo;

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/4 v2, 0x1

    .line 53
    invoke-interface {p0, v2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-direct {p1, v0, v2}, Landroidx/room/util/ViewInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    new-instance v0, Landroidx/room/util/ViewInfo;

    .line 64
    .line 65
    invoke-direct {v0, p1, v1}, Landroidx/room/util/ViewInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    move-object p1, v0

    .line 69
    :goto_0
    invoke-static {p0, v1}, Lys/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    return-object p1

    .line 73
    :goto_1
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    :catchall_1
    move-exception v0

    .line 75
    invoke-static {p0, p1}, Lys/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    throw v0
.end method
