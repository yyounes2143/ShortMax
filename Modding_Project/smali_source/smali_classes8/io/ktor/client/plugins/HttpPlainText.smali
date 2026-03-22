.class public final Lio/ktor/client/plugins/HttpPlainText;
.super Ljava/lang/Object;
.source "HttpPlainText.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/plugins/HttpPlainText$a;,
        Lio/ktor/client/plugins/HttpPlainText$Plugin;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHttpPlainText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpPlainText.kt\nio/ktor/client/plugins/HttpPlainText\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,181:1\n1054#2:182\n766#2:183\n857#2,2:184\n1045#2:186\n1855#2,2:187\n1855#2,2:189\n*S KotlinDebug\n*F\n+ 1 HttpPlainText.kt\nio/ktor/client/plugins/HttpPlainText\n*L\n38#1:182\n39#1:183\n39#1:184,2\n39#1:186\n42#1:187,2\n47#1:189,2\n*E\n"
    }
.end annotation


# static fields
.field public static final d:Lio/ktor/client/plugins/HttpPlainText$Plugin;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final e:Lyr/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyr/a<",
            "Lio/ktor/client/plugins/HttpPlainText;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Ljava/nio/charset/Charset;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Ljava/nio/charset/Charset;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/ktor/client/plugins/HttpPlainText$Plugin;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lio/ktor/client/plugins/HttpPlainText$Plugin;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lio/ktor/client/plugins/HttpPlainText;->d:Lio/ktor/client/plugins/HttpPlainText$Plugin;

    .line 8
    .line 9
    new-instance v0, Lyr/a;

    .line 10
    .line 11
    const-string v1, "HttpPlainText"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lyr/a;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lio/ktor/client/plugins/HttpPlainText;->e:Lyr/a;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Map;Ljava/nio/charset/Charset;Ljava/nio/charset/Charset;)V
    .locals 8
    .param p1    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/nio/charset/Charset;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/nio/charset/Charset;",
            "Ljava/nio/charset/Charset;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "charsets"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "charsetQuality"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "responseCharsetFallback"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p4, p0, Lio/ktor/client/plugins/HttpPlainText;->a:Ljava/nio/charset/Charset;

    .line 20
    .line 21
    invoke-static {p2}, Lkotlin/collections/p0;->C(Ljava/util/Map;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p4

    .line 25
    check-cast p4, Ljava/lang/Iterable;

    .line 26
    .line 27
    new-instance v0, Lio/ktor/client/plugins/HttpPlainText$c;

    .line 28
    .line 29
    invoke-direct {v0}, Lio/ktor/client/plugins/HttpPlainText$c;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-static {p4, v0}, Lkotlin/collections/CollectionsKt;->U0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p4

    .line 36
    check-cast p1, Ljava/lang/Iterable;

    .line 37
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    move-object v2, v1

    .line 58
    check-cast v2, Ljava/nio/charset/Charset;

    .line 59
    .line 60
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-nez v2, :cond_0

    .line 65
    .line 66
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    new-instance p1, Lio/ktor/client/plugins/HttpPlainText$b;

    .line 71
    .line 72
    invoke-direct {p1}, Lio/ktor/client/plugins/HttpPlainText$b;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    new-instance p2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    move-object v0, p1

    .line 85
    check-cast v0, Ljava/lang/Iterable;

    .line 86
    .line 87
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    const-string v2, ","

    .line 96
    .line 97
    if-eqz v1, :cond_3

    .line 98
    .line 99
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    check-cast v1, Ljava/nio/charset/Charset;

    .line 104
    .line 105
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-lez v3, :cond_2

    .line 110
    .line 111
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    :cond_2
    invoke-static {v1}, Lgs/a;->i(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_3
    move-object v0, p4

    .line 123
    check-cast v0, Ljava/lang/Iterable;

    .line 124
    .line 125
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_6

    .line 134
    .line 135
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    check-cast v1, Lkotlin/Pair;

    .line 140
    .line 141
    invoke-virtual {v1}, Lkotlin/Pair;->b()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    check-cast v3, Ljava/nio/charset/Charset;

    .line 146
    .line 147
    invoke-virtual {v1}, Lkotlin/Pair;->d()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    check-cast v1, Ljava/lang/Number;

    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-lez v4, :cond_4

    .line 162
    .line 163
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    :cond_4
    float-to-double v4, v1

    .line 167
    const-wide/16 v6, 0x0

    .line 168
    .line 169
    cmpg-double v6, v6, v4

    .line 170
    .line 171
    if-gtz v6, :cond_5

    .line 172
    .line 173
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 174
    .line 175
    cmpg-double v4, v4, v6

    .line 176
    .line 177
    if-gtz v4, :cond_5

    .line 178
    .line 179
    const/16 v4, 0x64

    .line 180
    .line 181
    int-to-float v4, v4

    .line 182
    mul-float/2addr v4, v1

    .line 183
    invoke-static {v4}, Lbt/a;->c(F)I

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    int-to-double v4, v1

    .line 188
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 189
    .line 190
    div-double/2addr v4, v6

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    invoke-static {v3}, Lgs/a;->i(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v3, ";q="

    .line 204
    .line 205
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 220
    .line 221
    const-string p2, "Check failed."

    .line 222
    .line 223
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw p1

    .line 227
    :cond_6
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-nez v0, :cond_7

    .line 232
    .line 233
    iget-object v0, p0, Lio/ktor/client/plugins/HttpPlainText;->a:Ljava/nio/charset/Charset;

    .line 234
    .line 235
    invoke-static {v0}, Lgs/a;->i(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    :cond_7
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    const-string v0, "StringBuilder().apply(builderAction).toString()"

    .line 247
    .line 248
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    iput-object p2, p0, Lio/ktor/client/plugins/HttpPlainText;->c:Ljava/lang/String;

    .line 252
    .line 253
    if-nez p3, :cond_9

    .line 254
    .line 255
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    move-object p3, p1

    .line 260
    check-cast p3, Ljava/nio/charset/Charset;

    .line 261
    .line 262
    if-nez p3, :cond_9

    .line 263
    .line 264
    invoke-static {p4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    check-cast p1, Lkotlin/Pair;

    .line 269
    .line 270
    if-eqz p1, :cond_8

    .line 271
    .line 272
    invoke-virtual {p1}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    check-cast p1, Ljava/nio/charset/Charset;

    .line 277
    .line 278
    :goto_3
    move-object p3, p1

    .line 279
    goto :goto_4

    .line 280
    :cond_8
    const/4 p1, 0x0

    .line 281
    goto :goto_3

    .line 282
    :goto_4
    if-nez p3, :cond_9

    .line 283
    .line 284
    sget-object p3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 285
    .line 286
    :cond_9
    iput-object p3, p0, Lio/ktor/client/plugins/HttpPlainText;->b:Ljava/nio/charset/Charset;

    .line 287
    .line 288
    return-void
.end method

.method public static final synthetic a()Lyr/a;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/HttpPlainText;->e:Lyr/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic b(Lio/ktor/client/plugins/HttpPlainText;Lio/ktor/client/request/HttpRequestBuilder;Ljava/lang/String;Lio/ktor/http/a;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/client/plugins/HttpPlainText;->e(Lio/ktor/client/request/HttpRequestBuilder;Ljava/lang/String;Lio/ktor/http/a;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final e(Lio/ktor/client/request/HttpRequestBuilder;Ljava/lang/String;Lio/ktor/http/a;)Ljava/lang/Object;
    .locals 8

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    sget-object v0, Lio/ktor/http/a$c;->a:Lio/ktor/http/a$c;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/ktor/http/a$c;->a()Lio/ktor/http/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v0, p3

    .line 11
    :goto_0
    if-eqz p3, :cond_1

    .line 12
    .line 13
    invoke-static {p3}, Lwr/a;->a(Lio/ktor/http/c;)Ljava/nio/charset/Charset;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    if-nez p3, :cond_2

    .line 18
    .line 19
    :cond_1
    iget-object p3, p0, Lio/ktor/client/plugins/HttpPlainText;->b:Ljava/nio/charset/Charset;

    .line 20
    .line 21
    :cond_2
    invoke-static {}, Lio/ktor/client/plugins/b;->a()Ldu/a;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v3, "Sending request body to "

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lio/ktor/client/request/HttpRequestBuilder;->i()Lio/ktor/http/h;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p1, " as text/plain with charset "

    .line 43
    .line 44
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-interface {v1, p1}, Ldu/a;->b(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance p1, Lxr/c;

    .line 58
    .line 59
    invoke-static {v0, p3}, Lwr/a;->b(Lio/ktor/http/a;Ljava/nio/charset/Charset;)Lio/ktor/http/a;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    const/4 v6, 0x4

    .line 64
    const/4 v7, 0x0

    .line 65
    const/4 v5, 0x0

    .line 66
    move-object v2, p1

    .line 67
    move-object v3, p2

    .line 68
    invoke-direct/range {v2 .. v7}, Lxr/c;-><init>(Ljava/lang/String;Lio/ktor/http/a;Lwr/o;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 69
    .line 70
    .line 71
    return-object p1
.end method


# virtual methods
.method public final c(Lio/ktor/client/request/HttpRequestBuilder;)V
    .locals 4
    .param p1    # Lio/ktor/client/request/HttpRequestBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lio/ktor/client/request/HttpRequestBuilder;->a()Lwr/g;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lwr/i;->a:Lwr/i;

    .line 11
    .line 12
    invoke-virtual {v1}, Lwr/i;->d()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v0, v2}, Lio/ktor/util/StringValuesBuilderImpl;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-static {}, Lio/ktor/client/plugins/b;->a()Ldu/a;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v3, "Adding Accept-Charset="

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v3, p0, Lio/ktor/client/plugins/HttpPlainText;->c:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v3, " to "

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lio/ktor/client/request/HttpRequestBuilder;->i()Lio/ktor/http/h;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-interface {v0, v2}, Ldu/a;->b(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lio/ktor/client/request/HttpRequestBuilder;->a()Lwr/g;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {v1}, Lwr/i;->d()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object v1, p0, Lio/ktor/client/plugins/HttpPlainText;->c:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {p1, v0, v1}, Lio/ktor/util/StringValuesBuilderImpl;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final d(Lio/ktor/client/call/HttpClientCall;Lhs/l;)Ljava/lang/String;
    .locals 4
    .param p1    # Lio/ktor/client/call/HttpClientCall;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lhs/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "body"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lio/ktor/client/call/HttpClientCall;->e()Ltr/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lio/ktor/http/d;->a(Lwr/k;)Ljava/nio/charset/Charset;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lio/ktor/client/plugins/HttpPlainText;->a:Ljava/nio/charset/Charset;

    .line 22
    .line 23
    :cond_0
    invoke-static {}, Lio/ktor/client/plugins/b;->a()Ldu/a;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v3, "Reading response body for "

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lio/ktor/client/call/HttpClientCall;->d()Lsr/b;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p1}, Lsr/b;->getUrl()Lio/ktor/http/Url;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p1, " as String with charset "

    .line 49
    .line 50
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-interface {v1, p1}, Ldu/a;->b(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const/4 p1, 0x2

    .line 64
    const/4 v1, 0x0

    .line 65
    const/4 v2, 0x0

    .line 66
    invoke-static {p2, v0, v2, p1, v1}, Lhs/q;->e(Lhs/l;Ljava/nio/charset/Charset;IILjava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    return-object p1
.end method
