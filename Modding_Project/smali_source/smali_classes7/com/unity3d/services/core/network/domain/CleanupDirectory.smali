.class public final Lcom/unity3d/services/core/network/domain/CleanupDirectory;
.super Ljava/lang/Object;
.source "CleanupDirectory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCleanupDirectory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CleanupDirectory.kt\ncom/unity3d/services/core/network/domain/CleanupDirectory\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,39:1\n1#2:40\n2689#3,10:41\n603#3:53\n179#3,2:54\n1855#4,2:51\n1855#4,2:56\n*S KotlinDebug\n*F\n+ 1 CleanupDirectory.kt\ncom/unity3d/services/core/network/domain/CleanupDirectory\n*L\n15#1:41,10\n28#1:53\n32#1:54,2\n21#1:51,2\n36#1:56,2\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/io/File;IJ)V
    .locals 13
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object v0, p1

    .line 2
    const-string v1, "directory"

    .line 3
    .line 4
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_9

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_9

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-static {p1, v2, v1, v2}, Lws/f;->s(Ljava/io/File;Lkotlin/io/FileWalkDirection;ILjava/lang/Object;)Lws/e;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Lcom/unity3d/services/core/network/domain/CleanupDirectory$invoke$cachedFiles$1;->INSTANCE:Lcom/unity3d/services/core/network/domain/CleanupDirectory$invoke$cachedFiles$1;

    .line 26
    .line 27
    invoke-static {v0, v1}, Lkotlin/sequences/j;->t(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-wide/16 v3, 0x0

    .line 36
    .line 37
    move-wide v5, v3

    .line 38
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-eqz v7, :cond_0

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    check-cast v7, Ljava/io/File;

    .line 49
    .line 50
    invoke-virtual {v7}, Ljava/io/File;->length()J

    .line 51
    .line 52
    .line 53
    move-result-wide v7

    .line 54
    add-long/2addr v5, v7

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 57
    .line 58
    .line 59
    move-result-wide v7

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    new-instance v9, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    if-eqz v10, :cond_2

    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v10

    .line 84
    move-object v11, v10

    .line 85
    check-cast v11, Ljava/io/File;

    .line 86
    .line 87
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    .line 88
    .line 89
    .line 90
    move-result-wide v11

    .line 91
    add-long v11, v11, p3

    .line 92
    .line 93
    cmp-long v11, v11, v7

    .line 94
    .line 95
    if-gez v11, :cond_1

    .line 96
    .line 97
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_1
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    new-instance v0, Lkotlin/Pair;

    .line 106
    .line 107
    invoke-direct {v0, v1, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Lkotlin/Pair;->b()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Ljava/util/List;

    .line 115
    .line 116
    invoke-virtual {v0}, Lkotlin/Pair;->d()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Ljava/util/List;

    .line 121
    .line 122
    check-cast v1, Ljava/lang/Iterable;

    .line 123
    .line 124
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    if-eqz v8, :cond_3

    .line 133
    .line 134
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    check-cast v8, Ljava/io/File;

    .line 139
    .line 140
    invoke-virtual {v8}, Ljava/io/File;->length()J

    .line 141
    .line 142
    .line 143
    move-result-wide v8

    .line 144
    add-long/2addr v3, v8

    .line 145
    goto :goto_2

    .line 146
    :cond_3
    sub-long/2addr v5, v3

    .line 147
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    if-eqz v3, :cond_4

    .line 156
    .line 157
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    check-cast v3, Ljava/io/File;

    .line 162
    .line 163
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 164
    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_4
    const/high16 v1, 0x100000

    .line 168
    .line 169
    mul-int/2addr v1, p2

    .line 170
    int-to-long v3, v1

    .line 171
    cmp-long v1, v5, v3

    .line 172
    .line 173
    if-lez v1, :cond_8

    .line 174
    .line 175
    move-object v1, v0

    .line 176
    check-cast v1, Ljava/lang/Iterable;

    .line 177
    .line 178
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->e0(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    new-instance v7, Lcom/unity3d/services/core/network/domain/CleanupDirectory$invoke$$inlined$sortedBy$1;

    .line 183
    .line 184
    invoke-direct {v7}, Lcom/unity3d/services/core/network/domain/CleanupDirectory$invoke$$inlined$sortedBy$1;-><init>()V

    .line 185
    .line 186
    .line 187
    invoke-static {v1, v7}, Lkotlin/sequences/j;->L(Lkotlin/sequences/Sequence;Ljava/util/Comparator;)Lkotlin/sequences/Sequence;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    invoke-static {v5, v6}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    sget-object v6, Lcom/unity3d/services/core/network/domain/CleanupDirectory$invoke$additionalFiles$2;->INSTANCE:Lcom/unity3d/services/core/network/domain/CleanupDirectory$invoke$additionalFiles$2;

    .line 204
    .line 205
    invoke-static {v1, v5, v6}, Lkotlin/sequences/j;->K(Lkotlin/sequences/Sequence;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/Sequence;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    if-eqz v5, :cond_6

    .line 218
    .line 219
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    move-object v6, v5

    .line 224
    check-cast v6, Lkotlin/Pair;

    .line 225
    .line 226
    invoke-virtual {v6}, Lkotlin/Pair;->b()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    check-cast v6, Ljava/lang/Number;

    .line 231
    .line 232
    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    .line 233
    .line 234
    .line 235
    move-result-wide v6

    .line 236
    cmp-long v6, v6, v3

    .line 237
    .line 238
    if-gtz v6, :cond_5

    .line 239
    .line 240
    move-object v2, v5

    .line 241
    :cond_6
    check-cast v2, Lkotlin/Pair;

    .line 242
    .line 243
    if-eqz v2, :cond_7

    .line 244
    .line 245
    invoke-virtual {v2}, Lkotlin/Pair;->d()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    check-cast v1, Ljava/util/List;

    .line 250
    .line 251
    if-eqz v1, :cond_7

    .line 252
    .line 253
    move-object v0, v1

    .line 254
    :cond_7
    check-cast v0, Ljava/lang/Iterable;

    .line 255
    .line 256
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    if-eqz v1, :cond_8

    .line 265
    .line 266
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    check-cast v1, Ljava/io/File;

    .line 271
    .line 272
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 273
    .line 274
    .line 275
    goto :goto_4

    .line 276
    :cond_8
    return-void

    .line 277
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .line 281
    .line 282
    const-string v2, "Directory does not exist or is not a directory: "

    .line 283
    .line 284
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 295
    .line 296
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    throw v1
.end method
