.class public final Ls1/g$c$a;
.super Ljava/lang/Object;
.source "CodelessMatcher.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/g$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls1/g$c$a;-><init>()V

    return-void
.end method

.method private final b(Landroid/view/ViewGroup;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    const-string v4, "child"

    .line 24
    .line 25
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-object v0
.end method

.method private final c(Landroid/view/View;Lcom/facebook/appevents/codeless/internal/PathComponent;I)Z
    .locals 9

    .line 1
    invoke-virtual {p2}, Lcom/facebook/appevents/codeless/internal/PathComponent;->e()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/facebook/appevents/codeless/internal/PathComponent;->e()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eq p3, v0, :cond_0

    .line 14
    .line 15
    return v2

    .line 16
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    invoke-virtual {p2}, Lcom/facebook/appevents/codeless/internal/PathComponent;->a()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    const/4 v0, 0x1

    .line 33
    if-nez p3, :cond_2

    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/facebook/appevents/codeless/internal/PathComponent;->a()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    new-instance v1, Lkotlin/text/Regex;

    .line 40
    .line 41
    const-string v3, ".*android\\..*"

    .line 42
    .line 43
    invoke-direct {v1, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p3}, Lkotlin/text/Regex;->k(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    if-eqz p3, :cond_1

    .line 51
    .line 52
    invoke-virtual {p2}, Lcom/facebook/appevents/codeless/internal/PathComponent;->a()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const-string p3, "."

    .line 57
    .line 58
    filled-new-array {p3}, [Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    const/4 v7, 0x6

    .line 63
    const/4 v8, 0x0

    .line 64
    const/4 v5, 0x0

    .line 65
    const/4 v6, 0x0

    .line 66
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    move-object v1, p3

    .line 71
    check-cast v1, Ljava/util/Collection;

    .line 72
    .line 73
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_1

    .line 78
    .line 79
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    sub-int/2addr v1, v0

    .line 84
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p3

    .line 88
    check-cast p3, Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-static {v1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p3

    .line 102
    if-nez p3, :cond_2

    .line 103
    .line 104
    :cond_1
    return v2

    .line 105
    :cond_2
    invoke-virtual {p2}, Lcom/facebook/appevents/codeless/internal/PathComponent;->f()I

    .line 106
    .line 107
    .line 108
    move-result p3

    .line 109
    sget-object v1, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->ID:Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->getValue()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    and-int/2addr p3, v1

    .line 116
    if-lez p3, :cond_3

    .line 117
    .line 118
    invoke-virtual {p2}, Lcom/facebook/appevents/codeless/internal/PathComponent;->d()I

    .line 119
    .line 120
    .line 121
    move-result p3

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eq p3, v1, :cond_3

    .line 127
    .line 128
    return v2

    .line 129
    :cond_3
    invoke-virtual {p2}, Lcom/facebook/appevents/codeless/internal/PathComponent;->f()I

    .line 130
    .line 131
    .line 132
    move-result p3

    .line 133
    sget-object v1, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->TEXT:Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    .line 134
    .line 135
    invoke-virtual {v1}, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->getValue()I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    and-int/2addr p3, v1

    .line 140
    const-string v1, ""

    .line 141
    .line 142
    if-lez p3, :cond_4

    .line 143
    .line 144
    invoke-virtual {p2}, Lcom/facebook/appevents/codeless/internal/PathComponent;->h()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p3

    .line 148
    invoke-static {p1}, Lt1/d;->k(Landroid/view/View;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-static {v3}, Lcom/facebook/internal/u0;->G0(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-static {v4, v1}, Lcom/facebook/internal/u0;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    if-nez v3, :cond_4

    .line 165
    .line 166
    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result p3

    .line 170
    if-nez p3, :cond_4

    .line 171
    .line 172
    return v2

    .line 173
    :cond_4
    invoke-virtual {p2}, Lcom/facebook/appevents/codeless/internal/PathComponent;->f()I

    .line 174
    .line 175
    .line 176
    move-result p3

    .line 177
    sget-object v3, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->DESCRIPTION:Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    .line 178
    .line 179
    invoke-virtual {v3}, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->getValue()I

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    and-int/2addr p3, v3

    .line 184
    if-lez p3, :cond_6

    .line 185
    .line 186
    invoke-virtual {p2}, Lcom/facebook/appevents/codeless/internal/PathComponent;->b()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p3

    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    if-nez v3, :cond_5

    .line 195
    .line 196
    move-object v3, v1

    .line 197
    goto :goto_0

    .line 198
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    :goto_0
    invoke-static {v3}, Lcom/facebook/internal/u0;->G0(Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    invoke-static {v4, v1}, Lcom/facebook/internal/u0;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    if-nez v3, :cond_6

    .line 219
    .line 220
    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result p3

    .line 224
    if-nez p3, :cond_6

    .line 225
    .line 226
    return v2

    .line 227
    :cond_6
    invoke-virtual {p2}, Lcom/facebook/appevents/codeless/internal/PathComponent;->f()I

    .line 228
    .line 229
    .line 230
    move-result p3

    .line 231
    sget-object v3, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->HINT:Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    .line 232
    .line 233
    invoke-virtual {v3}, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->getValue()I

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    and-int/2addr p3, v3

    .line 238
    if-lez p3, :cond_7

    .line 239
    .line 240
    invoke-virtual {p2}, Lcom/facebook/appevents/codeless/internal/PathComponent;->c()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p3

    .line 244
    invoke-static {p1}, Lt1/d;->i(Landroid/view/View;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    invoke-static {v3}, Lcom/facebook/internal/u0;->G0(Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    invoke-static {v4, v1}, Lcom/facebook/internal/u0;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    if-nez v3, :cond_7

    .line 261
    .line 262
    invoke-static {p3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result p3

    .line 266
    if-nez p3, :cond_7

    .line 267
    .line 268
    return v2

    .line 269
    :cond_7
    invoke-virtual {p2}, Lcom/facebook/appevents/codeless/internal/PathComponent;->f()I

    .line 270
    .line 271
    .line 272
    move-result p3

    .line 273
    sget-object v3, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->TAG:Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    .line 274
    .line 275
    invoke-virtual {v3}, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->getValue()I

    .line 276
    .line 277
    .line 278
    move-result v3

    .line 279
    and-int/2addr p3, v3

    .line 280
    if-lez p3, :cond_9

    .line 281
    .line 282
    invoke-virtual {p2}, Lcom/facebook/appevents/codeless/internal/PathComponent;->g()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p2

    .line 286
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object p3

    .line 290
    if-nez p3, :cond_8

    .line 291
    .line 292
    move-object p1, v1

    .line 293
    goto :goto_1

    .line 294
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    :goto_1
    invoke-static {p1}, Lcom/facebook/internal/u0;->G0(Ljava/lang/String;)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object p3

    .line 306
    invoke-static {p3, v1}, Lcom/facebook/internal/u0;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p3

    .line 310
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result p1

    .line 314
    if-nez p1, :cond_9

    .line 315
    .line 316
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result p1

    .line 320
    if-nez p1, :cond_9

    .line 321
    .line 322
    return v2

    .line 323
    :cond_9
    return v0
.end method


# virtual methods
.method public final a(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1    # Lcom/facebook/appevents/codeless/internal/EventBinding;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/appevents/codeless/internal/EventBinding;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/facebook/appevents/codeless/internal/PathComponent;",
            ">;II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ls1/g$b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "mapKey"

    .line 7
    .line 8
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const/16 p6, 0x2e

    .line 20
    .line 21
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p6

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    if-nez p2, :cond_0

    .line 37
    .line 38
    return-object v0

    .line 39
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const/4 v2, 0x0

    .line 44
    if-lt p4, v1, :cond_1

    .line 45
    .line 46
    new-instance p5, Ls1/g$b;

    .line 47
    .line 48
    invoke-direct {p5, p2, p6}, Ls1/g$b;-><init>(Landroid/view/View;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto/16 :goto_1

    .line 55
    .line 56
    :cond_1
    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lcom/facebook/appevents/codeless/internal/PathComponent;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/facebook/appevents/codeless/internal/PathComponent;->a()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    const-string v4, ".."

    .line 67
    .line 68
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_3

    .line 73
    .line 74
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    instance-of p5, p2, Landroid/view/ViewGroup;

    .line 79
    .line 80
    if-eqz p5, :cond_2

    .line 81
    .line 82
    check-cast p2, Landroid/view/ViewGroup;

    .line 83
    .line 84
    invoke-direct {p0, p2}, Ls1/g$c$a;->b(Landroid/view/ViewGroup;)Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 89
    .line 90
    .line 91
    move-result p5

    .line 92
    move v8, v2

    .line 93
    :goto_0
    if-ge v8, p5, :cond_2

    .line 94
    .line 95
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    move-object v3, v1

    .line 100
    check-cast v3, Landroid/view/View;

    .line 101
    .line 102
    add-int/lit8 v5, p4, 0x1

    .line 103
    .line 104
    move-object v1, p0

    .line 105
    move-object v2, p1

    .line 106
    move-object v4, p3

    .line 107
    move v6, v8

    .line 108
    move-object v7, p6

    .line 109
    invoke-virtual/range {v1 .. v7}, Ls1/g$c$a;->a(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Ljava/util/Collection;

    .line 114
    .line 115
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    .line 117
    .line 118
    add-int/lit8 v8, v8, 0x1

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_2
    return-object v0

    .line 122
    :cond_3
    invoke-virtual {v1}, Lcom/facebook/appevents/codeless/internal/PathComponent;->a()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    const-string v4, "."

    .line 127
    .line 128
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_4

    .line 133
    .line 134
    new-instance p1, Ls1/g$b;

    .line 135
    .line 136
    invoke-direct {p1, p2, p6}, Ls1/g$b;-><init>(Landroid/view/View;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    return-object v0

    .line 143
    :cond_4
    invoke-direct {p0, p2, v1, p5}, Ls1/g$c$a;->c(Landroid/view/View;Lcom/facebook/appevents/codeless/internal/PathComponent;I)Z

    .line 144
    .line 145
    .line 146
    move-result p5

    .line 147
    if-nez p5, :cond_5

    .line 148
    .line 149
    return-object v0

    .line 150
    :cond_5
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 151
    .line 152
    .line 153
    move-result p5

    .line 154
    add-int/lit8 p5, p5, -0x1

    .line 155
    .line 156
    if-ne p4, p5, :cond_6

    .line 157
    .line 158
    new-instance p5, Ls1/g$b;

    .line 159
    .line 160
    invoke-direct {p5, p2, p6}, Ls1/g$b;-><init>(Landroid/view/View;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    :cond_6
    :goto_1
    instance-of p5, p2, Landroid/view/ViewGroup;

    .line 167
    .line 168
    if-eqz p5, :cond_7

    .line 169
    .line 170
    check-cast p2, Landroid/view/ViewGroup;

    .line 171
    .line 172
    invoke-direct {p0, p2}, Ls1/g$c$a;->b(Landroid/view/ViewGroup;)Ljava/util/List;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 177
    .line 178
    .line 179
    move-result p5

    .line 180
    move v8, v2

    .line 181
    :goto_2
    if-ge v8, p5, :cond_7

    .line 182
    .line 183
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    move-object v3, v1

    .line 188
    check-cast v3, Landroid/view/View;

    .line 189
    .line 190
    add-int/lit8 v5, p4, 0x1

    .line 191
    .line 192
    move-object v1, p0

    .line 193
    move-object v2, p1

    .line 194
    move-object v4, p3

    .line 195
    move v6, v8

    .line 196
    move-object v7, p6

    .line 197
    invoke-virtual/range {v1 .. v7}, Ls1/g$c$a;->a(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    check-cast v1, Ljava/util/Collection;

    .line 202
    .line 203
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 204
    .line 205
    .line 206
    add-int/lit8 v8, v8, 0x1

    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_7
    return-object v0
.end method
