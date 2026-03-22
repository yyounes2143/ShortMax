.class public final Lcom/facebook/GraphRequest$c;
.super Ljava/lang/Object;
.source "GraphRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/GraphRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGraphRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GraphRequest.kt\ncom/facebook/GraphRequest$Companion\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,1995:1\n215#2,2:1996\n*S KotlinDebug\n*F\n+ 1 GraphRequest.kt\ncom/facebook/GraphRequest$Companion\n*L\n1312#1:1996,2\n*E\n"
    }
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
    invoke-direct {p0}, Lcom/facebook/GraphRequest$c;-><init>()V

    return-void
.end method

.method private final C(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 9
    .line 10
    if-nez v0, :cond_3

    .line 11
    .line 12
    instance-of v0, p1, Ljava/lang/Number;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    instance-of v0, p1, Ljava/util/Date;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 22
    .line 23
    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    .line 24
    .line 25
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 26
    .line 27
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 28
    .line 29
    .line 30
    check-cast p1, Ljava/util/Date;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v0, "iso8601DateFormat.format(value)"

    .line 37
    .line 38
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object p1

    .line 42
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    const-string v0, "Unsupported parameter type."

    .line 45
    .line 46
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    return-object p1
.end method

.method private final D(Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/GraphRequest$e;)V
    .locals 9

    .line 1
    invoke-direct {p0, p2}, Lcom/facebook/GraphRequest$c;->u(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const/4 v7, 0x6

    .line 10
    const/4 v8, 0x0

    .line 11
    const-string v4, ":"

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    move-object v3, p2

    .line 16
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const-string v4, "?"

    .line 21
    .line 22
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    const/4 v3, 0x3

    .line 27
    if-le v0, v3, :cond_1

    .line 28
    .line 29
    const/4 v3, -0x1

    .line 30
    if-eq p2, v3, :cond_0

    .line 31
    .line 32
    if-ge v0, p2, :cond_1

    .line 33
    .line 34
    :cond_0
    move p2, v1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move p2, v2

    .line 37
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    if-eqz p2, :cond_2

    .line 58
    .line 59
    const-string v5, "image"

    .line 60
    .line 61
    invoke-static {v3, v5, v1}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_2

    .line 66
    .line 67
    move v5, v1

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    move v5, v2

    .line 70
    :goto_2
    const-string v6, "key"

    .line 71
    .line 72
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v6, "value"

    .line 76
    .line 77
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, v3, v4, p3, v5}, Lcom/facebook/GraphRequest$c;->E(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$e;Z)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    return-void
.end method

.method private final E(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$e;Z)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x2

    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    const-string v0, "null cannot be cast to non-null type org.json.JSONObject"

    .line 15
    .line 16
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    check-cast p2, Lorg/json/JSONObject;

    .line 20
    .line 21
    if-eqz p4, :cond_0

    .line 22
    .line 23
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_8

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/lang/String;

    .line 38
    .line 39
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 40
    .line 41
    filled-new-array {p1, v1}, [Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const-string v4, "%s[%s]"

    .line 50
    .line 51
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    const-string v4, "format(format, *args)"

    .line 56
    .line 57
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const-string v4, "jsonObject.opt(propertyName)"

    .line 65
    .line 66
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-direct {p0, v3, v1, p3, p4}, Lcom/facebook/GraphRequest$c;->E(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$e;Z)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    const-string v0, "id"

    .line 74
    .line 75
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_1

    .line 80
    .line 81
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    const-string v0, "jsonObject.optString(\"id\")"

    .line 86
    .line 87
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/GraphRequest$c;->E(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$e;Z)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_3

    .line 94
    .line 95
    :cond_1
    const-string v0, "url"

    .line 96
    .line 97
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_2

    .line 102
    .line 103
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    const-string v0, "jsonObject.optString(\"url\")"

    .line 108
    .line 109
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/GraphRequest$c;->E(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$e;Z)V

    .line 113
    .line 114
    .line 115
    goto/16 :goto_3

    .line 116
    .line 117
    :cond_2
    const-string v0, "fbsdk:create_object"

    .line 118
    .line 119
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_8

    .line 124
    .line 125
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    const-string v0, "jsonObject.toString()"

    .line 130
    .line 131
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/GraphRequest$c;->E(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$e;Z)V

    .line 135
    .line 136
    .line 137
    goto/16 :goto_3

    .line 138
    .line 139
    :cond_3
    const-class v1, Lorg/json/JSONArray;

    .line 140
    .line 141
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_4

    .line 146
    .line 147
    const-string v0, "null cannot be cast to non-null type org.json.JSONArray"

    .line 148
    .line 149
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    check-cast p2, Lorg/json/JSONArray;

    .line 153
    .line 154
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    const/4 v1, 0x0

    .line 159
    :goto_1
    if-ge v1, v0, :cond_8

    .line 160
    .line 161
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 162
    .line 163
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 164
    .line 165
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    filled-new-array {p1, v4}, [Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    const-string v5, "%s[%d]"

    .line 178
    .line 179
    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    const-string v4, "format(locale, format, *args)"

    .line 184
    .line 185
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    const-string v5, "jsonArray.opt(i)"

    .line 193
    .line 194
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-direct {p0, v3, v4, p3, p4}, Lcom/facebook/GraphRequest$c;->E(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$e;Z)V

    .line 198
    .line 199
    .line 200
    add-int/lit8 v1, v1, 0x1

    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_4
    const-class p4, Ljava/lang/String;

    .line 204
    .line 205
    invoke-virtual {p4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 206
    .line 207
    .line 208
    move-result p4

    .line 209
    if-nez p4, :cond_7

    .line 210
    .line 211
    const-class p4, Ljava/lang/Number;

    .line 212
    .line 213
    invoke-virtual {p4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 214
    .line 215
    .line 216
    move-result p4

    .line 217
    if-nez p4, :cond_7

    .line 218
    .line 219
    const-class p4, Ljava/lang/Boolean;

    .line 220
    .line 221
    invoke-virtual {p4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 222
    .line 223
    .line 224
    move-result p4

    .line 225
    if-eqz p4, :cond_5

    .line 226
    .line 227
    goto :goto_2

    .line 228
    :cond_5
    const-class p4, Ljava/util/Date;

    .line 229
    .line 230
    invoke-virtual {p4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 231
    .line 232
    .line 233
    move-result p4

    .line 234
    if-eqz p4, :cond_6

    .line 235
    .line 236
    const-string p4, "null cannot be cast to non-null type java.util.Date"

    .line 237
    .line 238
    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    check-cast p2, Ljava/util/Date;

    .line 242
    .line 243
    new-instance p4, Ljava/text/SimpleDateFormat;

    .line 244
    .line 245
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    .line 246
    .line 247
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 248
    .line 249
    invoke-direct {p4, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p4, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p2

    .line 256
    const-string p4, "iso8601DateFormat.format(date)"

    .line 257
    .line 258
    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-interface {p3, p1, p2}, Lcom/facebook/GraphRequest$e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    goto :goto_3

    .line 265
    :cond_6
    sget-object p2, Lcom/facebook/GraphRequest;->o:Ljava/lang/String;

    .line 266
    .line 267
    new-instance p3, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .line 271
    .line 272
    const-string p4, "The type of property "

    .line 273
    .line 274
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    const-string p1, " in the graph object is unknown. It won\'t be sent in the request."

    .line 281
    .line 282
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    invoke-static {p2, p1}, Lcom/facebook/internal/u0;->k0(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    goto :goto_3

    .line 293
    :cond_7
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p2

    .line 297
    invoke-interface {p3, p1, p2}, Lcom/facebook/GraphRequest$e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    :cond_8
    :goto_3
    return-void
.end method

.method private final F(Lcom/facebook/a0;Lcom/facebook/internal/i0;ILjava/net/URL;Ljava/io/OutputStream;Z)V
    .locals 4

    .line 1
    new-instance v0, Lcom/facebook/GraphRequest$g;

    .line 2
    .line 3
    invoke-direct {v0, p5, p2, p6}, Lcom/facebook/GraphRequest$g;-><init>(Ljava/io/OutputStream;Lcom/facebook/internal/i0;Z)V

    .line 4
    .line 5
    .line 6
    const/4 p5, 0x1

    .line 7
    const-string p6, "  Attachments:\n"

    .line 8
    .line 9
    if-ne p3, p5, :cond_4

    .line 10
    .line 11
    const/4 p3, 0x0

    .line 12
    invoke-virtual {p1, p3}, Lcom/facebook/a0;->j(I)Lcom/facebook/GraphRequest;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance p3, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->u()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object p5

    .line 25
    invoke-virtual {p5}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object p5

    .line 29
    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p5

    .line 33
    :cond_0
    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->u()Landroid/os/Bundle;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-direct {p0, v2}, Lcom/facebook/GraphRequest$c;->v(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_0

    .line 58
    .line 59
    const-string v3, "key"

    .line 60
    .line 61
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    new-instance v3, Lcom/facebook/GraphRequest$a;

    .line 65
    .line 66
    invoke-direct {v3, p1, v2}, Lcom/facebook/GraphRequest$a;-><init>(Lcom/facebook/GraphRequest;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {p3, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    if-eqz p2, :cond_2

    .line 74
    .line 75
    const-string p5, "  Parameters:\n"

    .line 76
    .line 77
    invoke-virtual {p2, p5}, Lcom/facebook/internal/i0;->b(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->u()Landroid/os/Bundle;

    .line 81
    .line 82
    .line 83
    move-result-object p5

    .line 84
    invoke-direct {p0, p5, v0, p1}, Lcom/facebook/GraphRequest$c;->J(Landroid/os/Bundle;Lcom/facebook/GraphRequest$g;Lcom/facebook/GraphRequest;)V

    .line 85
    .line 86
    .line 87
    if-eqz p2, :cond_3

    .line 88
    .line 89
    invoke-virtual {p2, p6}, Lcom/facebook/internal/i0;->b(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    invoke-direct {p0, p3, v0}, Lcom/facebook/GraphRequest$c;->I(Ljava/util/Map;Lcom/facebook/GraphRequest$g;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->q()Lorg/json/JSONObject;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-eqz p1, :cond_6

    .line 100
    .line 101
    invoke-virtual {p4}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    const-string p3, "url.path"

    .line 106
    .line 107
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/GraphRequest$c;->D(Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/GraphRequest$e;)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_4
    invoke-direct {p0, p1}, Lcom/facebook/GraphRequest$c;->p(Lcom/facebook/a0;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p3

    .line 118
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 119
    .line 120
    .line 121
    move-result p4

    .line 122
    if-eqz p4, :cond_7

    .line 123
    .line 124
    const-string p4, "batch_app_id"

    .line 125
    .line 126
    invoke-virtual {v0, p4, p3}, Lcom/facebook/GraphRequest$g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    new-instance p3, Ljava/util/HashMap;

    .line 130
    .line 131
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-direct {p0, v0, p1, p3}, Lcom/facebook/GraphRequest$c;->K(Lcom/facebook/GraphRequest$g;Ljava/util/Collection;Ljava/util/Map;)V

    .line 135
    .line 136
    .line 137
    if-eqz p2, :cond_5

    .line 138
    .line 139
    invoke-virtual {p2, p6}, Lcom/facebook/internal/i0;->b(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :cond_5
    invoke-direct {p0, p3, v0}, Lcom/facebook/GraphRequest$c;->I(Ljava/util/Map;Lcom/facebook/GraphRequest$g;)V

    .line 143
    .line 144
    .line 145
    :cond_6
    :goto_1
    return-void

    .line 146
    :cond_7
    new-instance p1, Lcom/facebook/FacebookException;

    .line 147
    .line 148
    const-string p2, "App ID was not specified at the request or Settings."

    .line 149
    .line 150
    invoke-direct {p1, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p1
.end method

.method private static final H(Ljava/util/ArrayList;Lcom/facebook/a0;)V
    .locals 3

    .line 1
    const-string v0, "$callbacks"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$requests"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/util/Pair;

    .line 26
    .line 27
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Lcom/facebook/GraphRequest$b;

    .line 30
    .line 31
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 32
    .line 33
    const-string v2, "pair.second"

    .line 34
    .line 35
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    check-cast v0, Lcom/facebook/b0;

    .line 39
    .line 40
    invoke-interface {v1, v0}, Lcom/facebook/GraphRequest$b;->a(Lcom/facebook/b0;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/a0;->n()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lcom/facebook/a0$a;

    .line 63
    .line 64
    invoke-interface {v0, p1}, Lcom/facebook/a0$a;->a(Lcom/facebook/a0;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    return-void
.end method

.method private final I(Ljava/util/Map;Lcom/facebook/GraphRequest$g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/GraphRequest$a;",
            ">;",
            "Lcom/facebook/GraphRequest$g;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/util/Map$Entry;

    .line 20
    .line 21
    sget-object v1, Lcom/facebook/GraphRequest;->n:Lcom/facebook/GraphRequest$c;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/facebook/GraphRequest$a;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/facebook/GraphRequest$a;->b()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-direct {v1, v2}, Lcom/facebook/GraphRequest$c;->v(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Ljava/lang/String;

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Lcom/facebook/GraphRequest$a;

    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/facebook/GraphRequest$a;->b()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lcom/facebook/GraphRequest$a;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/facebook/GraphRequest$a;->a()Lcom/facebook/GraphRequest;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p2, v1, v2, v0}, Lcom/facebook/GraphRequest$g;->j(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    return-void
.end method

.method private final J(Landroid/os/Bundle;Lcom/facebook/GraphRequest$g;Lcom/facebook/GraphRequest;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-direct {p0, v2}, Lcom/facebook/GraphRequest$c;->w(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    const-string v3, "key"

    .line 32
    .line 33
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v1, v2, p3}, Lcom/facebook/GraphRequest$g;->j(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-void
.end method

.method private final K(Lcom/facebook/GraphRequest$g;Ljava/util/Collection;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/GraphRequest$g;",
            "Ljava/util/Collection<",
            "Lcom/facebook/GraphRequest;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/GraphRequest$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/facebook/GraphRequest;

    .line 21
    .line 22
    invoke-static {v2, v0, p3}, Lcom/facebook/GraphRequest;->g(Lcom/facebook/GraphRequest;Lorg/json/JSONArray;Ljava/util/Map;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string p3, "batch"

    .line 27
    .line 28
    invoke-virtual {p1, p3, v0, p2}, Lcom/facebook/GraphRequest$g;->l(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/Collection;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private final M(Ljava/net/HttpURLConnection;Z)V
    .locals 1

    .line 1
    const-string v0, "Content-Type"

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const-string p2, "application/x-www-form-urlencoded"

    .line 6
    .line 7
    invoke-virtual {p1, v0, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string p2, "Content-Encoding"

    .line 11
    .line 12
    const-string v0, "gzip"

    .line 13
    .line 14
    invoke-virtual {p1, p2, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-direct {p0}, Lcom/facebook/GraphRequest$c;->q()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p1, v0, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public static synthetic a(Ljava/util/ArrayList;Lcom/facebook/a0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/facebook/GraphRequest$c;->H(Ljava/util/ArrayList;Lcom/facebook/a0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/facebook/GraphRequest$d;Lcom/facebook/b0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/facebook/GraphRequest$c;->z(Lcom/facebook/GraphRequest$d;Lcom/facebook/b0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic c(Lcom/facebook/GraphRequest$c;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/GraphRequest$c;->v(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic d(Lcom/facebook/GraphRequest$c;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/GraphRequest$c;->w(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic e(Lcom/facebook/GraphRequest$c;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/GraphRequest$c;->C(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Lcom/facebook/GraphRequest$c;Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/GraphRequest$e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/GraphRequest$c;->D(Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/GraphRequest$e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final g(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "null cannot be cast to non-null type java.net.HttpURLConnection"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 11
    .line 12
    const-string v0, "User-Agent"

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/facebook/GraphRequest$c;->r()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "Accept-Language"

    .line 30
    .line 31
    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 36
    .line 37
    .line 38
    return-object p1
.end method

.method private final p(Lcom/facebook/a0;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/facebook/a0;->l()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/facebook/GraphRequest;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->m()Lcom/facebook/AccessToken;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->c()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :cond_2
    invoke-static {}, Lcom/facebook/GraphRequest;->c()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_3

    .line 46
    .line 47
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-lez v0, :cond_3

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    invoke-static {}, Lcom/facebook/v;->m()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    :goto_0
    return-object p1
.end method

.method private final q()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 2
    .line 3
    invoke-static {}, Lcom/facebook/GraphRequest;->d()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "multipart/form-data; boundary=%s"

    .line 17
    .line 18
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "format(format, *args)"

    .line 23
    .line 24
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method private final r()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/facebook/GraphRequest;->e()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 8
    .line 9
    const-string v0, "FBAndroidSDK"

    .line 10
    .line 11
    const-string v1, "18.1.3"

    .line 12
    .line 13
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x2

    .line 18
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v2, "%s.%s"

    .line 23
    .line 24
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v2, "format(format, *args)"

    .line 29
    .line 30
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lcom/facebook/GraphRequest;->h(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/facebook/internal/f0;->a()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/facebook/internal/u0;->d0(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_0

    .line 45
    .line 46
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 47
    .line 48
    invoke-static {}, Lcom/facebook/GraphRequest;->e()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    filled-new-array {v3, v0}, [Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v1, "%s/%s"

    .line 61
    .line 62
    invoke-static {v2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v1, "format(locale, format, *args)"

    .line 67
    .line 68
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v0}, Lcom/facebook/GraphRequest;->h(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_0
    invoke-static {}, Lcom/facebook/GraphRequest;->e()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    return-object v0
.end method

.method private final s(Lcom/facebook/a0;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/facebook/a0;->n()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/facebook/a0$a;

    .line 21
    .line 22
    instance-of v1, v1, Lcom/facebook/a0$c;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    return v2

    .line 27
    :cond_1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/facebook/GraphRequest;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->o()Lcom/facebook/GraphRequest$b;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    instance-of v0, v0, Lcom/facebook/GraphRequest$f;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    return v2

    .line 52
    :cond_3
    const/4 p1, 0x0

    .line 53
    return p1
.end method

.method private final t(Lcom/facebook/a0;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/facebook/GraphRequest;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->u()Landroid/os/Bundle;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->u()Landroid/os/Bundle;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-direct {p0, v2}, Lcom/facebook/GraphRequest$c;->v(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    const/4 p1, 0x0

    .line 56
    return p1

    .line 57
    :cond_2
    const/4 p1, 0x1

    .line 58
    return p1
.end method

.method private final u(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/facebook/GraphRequest;->f()Ljava/util/regex/Pattern;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "matcher.group(1)"

    .line 21
    .line 22
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    const-string v0, "me/"

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    const/4 v3, 0x2

    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-static {p1, v0, v1, v3, v4}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    const-string v0, "/me/"

    .line 37
    .line 38
    invoke-static {p1, v0, v1, v3, v4}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move v2, v1

    .line 46
    :cond_2
    :goto_0
    return v2
.end method

.method private final v(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/graphics/Bitmap;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    instance-of v0, p1, [B

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    instance-of v0, p1, Landroid/net/Uri;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    instance-of v0, p1, Landroid/os/ParcelFileDescriptor;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    instance-of p1, p1, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 25
    :goto_1
    return p1
.end method

.method private final w(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    instance-of v0, p1, Ljava/lang/Number;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    instance-of p1, p1, Ljava/util/Date;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 21
    :goto_1
    return p1
.end method

.method private static final z(Lcom/facebook/GraphRequest$d;Lcom/facebook/b0;)V
    .locals 1

    .line 1
    const-string v0, "response"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/facebook/b0;->c()Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {p0, v0, p1}, Lcom/facebook/GraphRequest$d;->a(Lorg/json/JSONObject;Lcom/facebook/b0;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method


# virtual methods
.method public final A(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;
    .locals 10
    .param p1    # Lcom/facebook/AccessToken;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/GraphRequest$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v9, Lcom/facebook/GraphRequest;

    .line 2
    .line 3
    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    .line 4
    .line 5
    const/16 v7, 0x20

    .line 6
    .line 7
    const/4 v8, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v6, 0x0

    .line 10
    move-object v0, v9

    .line 11
    move-object v1, p1

    .line 12
    move-object v2, p2

    .line 13
    move-object v5, p4

    .line 14
    invoke-direct/range {v0 .. v8}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$b;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v9, p3}, Lcom/facebook/GraphRequest;->F(Lorg/json/JSONObject;)V

    .line 18
    .line 19
    .line 20
    return-object v9
.end method

.method public final B(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;
    .locals 10
    .param p1    # Lcom/facebook/AccessToken;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/GraphRequest$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v9, Lcom/facebook/GraphRequest;

    .line 2
    .line 3
    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    .line 4
    .line 5
    const/16 v7, 0x20

    .line 6
    .line 7
    const/4 v8, 0x0

    .line 8
    const/4 v6, 0x0

    .line 9
    move-object v0, v9

    .line 10
    move-object v1, p1

    .line 11
    move-object v2, p2

    .line 12
    move-object v3, p3

    .line 13
    move-object v5, p4

    .line 14
    invoke-direct/range {v0 .. v8}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$b;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    .line 16
    .line 17
    return-object v9
.end method

.method public final G(Lcom/facebook/a0;Ljava/util/List;)V
    .locals 6
    .param p1    # Lcom/facebook/a0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/a0;",
            "Ljava/util/List<",
            "Lcom/facebook/b0;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "requests"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "responses"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/facebook/a0;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-ge v2, v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1, v2}, Lcom/facebook/a0;->j(I)Lcom/facebook/GraphRequest;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Lcom/facebook/GraphRequest;->o()Lcom/facebook/GraphRequest$b;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    new-instance v4, Landroid/util/Pair;

    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/facebook/GraphRequest;->o()Lcom/facebook/GraphRequest$b;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-direct {v4, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-lez p2, :cond_3

    .line 57
    .line 58
    new-instance p2, Lcom/facebook/y;

    .line 59
    .line 60
    invoke-direct {p2, v1, p1}, Lcom/facebook/y;-><init>(Ljava/util/ArrayList;Lcom/facebook/a0;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/facebook/a0;->m()Landroid/os/Handler;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 74
    .line 75
    .line 76
    :cond_3
    :goto_1
    return-void
.end method

.method public final L(Lcom/facebook/a0;Ljava/net/HttpURLConnection;)V
    .locals 13
    .param p1    # Lcom/facebook/a0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/net/HttpURLConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    const-string v0, "requests"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "connection"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/facebook/internal/i0;

    .line 12
    .line 13
    sget-object v1, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    .line 14
    .line 15
    const-string v2, "Request"

    .line 16
    .line 17
    invoke-direct {v0, v1, v2}, Lcom/facebook/internal/i0;-><init>(Lcom/facebook/LoggingBehavior;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/facebook/a0;->size()I

    .line 21
    .line 22
    .line 23
    move-result v10

    .line 24
    invoke-direct {p0, p1}, Lcom/facebook/GraphRequest$c;->t(Lcom/facebook/a0;)Z

    .line 25
    .line 26
    .line 27
    move-result v11

    .line 28
    const/4 v1, 0x0

    .line 29
    const/4 v2, 0x1

    .line 30
    if-ne v10, v2, :cond_0

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-virtual {p1, v3}, Lcom/facebook/a0;->j(I)Lcom/facebook/GraphRequest;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Lcom/facebook/GraphRequest;->t()Lcom/facebook/HttpMethod;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move-object v3, v1

    .line 43
    :goto_0
    if-nez v3, :cond_1

    .line 44
    .line 45
    sget-object v3, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    .line 46
    .line 47
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {p2, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, p2, v11}, Lcom/facebook/GraphRequest$c;->M(Ljava/net/HttpURLConnection;Z)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    .line 58
    .line 59
    .line 60
    move-result-object v12

    .line 61
    const-string v4, "Request:\n"

    .line 62
    .line 63
    invoke-virtual {v0, v4}, Lcom/facebook/internal/i0;->b(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v4, "Id"

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/facebook/a0;->o()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v0, v4, v5}, Lcom/facebook/internal/i0;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    const-string v4, "url"

    .line 76
    .line 77
    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string v4, "URL"

    .line 81
    .line 82
    invoke-virtual {v0, v4, v12}, Lcom/facebook/internal/i0;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    const-string v5, "connection.requestMethod"

    .line 90
    .line 91
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const-string v5, "Method"

    .line 95
    .line 96
    invoke-virtual {v0, v5, v4}, Lcom/facebook/internal/i0;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    const-string v4, "User-Agent"

    .line 100
    .line 101
    invoke-virtual {p2, v4}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    const-string v6, "connection.getRequestProperty(\"User-Agent\")"

    .line 106
    .line 107
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v4, v5}, Lcom/facebook/internal/i0;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    const-string v4, "Content-Type"

    .line 114
    .line 115
    invoke-virtual {p2, v4}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    const-string v6, "connection.getRequestProperty(\"Content-Type\")"

    .line 120
    .line 121
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v4, v5}, Lcom/facebook/internal/i0;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/facebook/a0;->r()I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    invoke-virtual {p2, v4}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/facebook/a0;->r()I

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    invoke-virtual {p2, v4}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 139
    .line 140
    .line 141
    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    .line 142
    .line 143
    if-ne v3, v4, :cond_5

    .line 144
    .line 145
    invoke-virtual {p2, v2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 146
    .line 147
    .line 148
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    .line 149
    .line 150
    invoke-virtual {p2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-direct {v2, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 155
    .line 156
    .line 157
    if-eqz v11, :cond_2

    .line 158
    .line 159
    :try_start_1
    new-instance p2, Ljava/util/zip/GZIPOutputStream;

    .line 160
    .line 161
    invoke-direct {p2, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    .line 163
    .line 164
    move-object v1, p2

    .line 165
    goto :goto_1

    .line 166
    :catchall_0
    move-exception p1

    .line 167
    move-object v1, v2

    .line 168
    goto :goto_3

    .line 169
    :cond_2
    move-object v1, v2

    .line 170
    :goto_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/facebook/GraphRequest$c;->s(Lcom/facebook/a0;)Z

    .line 171
    .line 172
    .line 173
    move-result p2

    .line 174
    if-eqz p2, :cond_3

    .line 175
    .line 176
    new-instance p2, Lcom/facebook/g0;

    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/facebook/a0;->m()Landroid/os/Handler;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-direct {p2, v2}, Lcom/facebook/g0;-><init>(Landroid/os/Handler;)V

    .line 183
    .line 184
    .line 185
    const/4 v5, 0x0

    .line 186
    move-object v3, p0

    .line 187
    move-object v4, p1

    .line 188
    move v6, v10

    .line 189
    move-object v7, v12

    .line 190
    move-object v8, p2

    .line 191
    move v9, v11

    .line 192
    invoke-direct/range {v3 .. v9}, Lcom/facebook/GraphRequest$c;->F(Lcom/facebook/a0;Lcom/facebook/internal/i0;ILjava/net/URL;Ljava/io/OutputStream;Z)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p2}, Lcom/facebook/g0;->k()I

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    invoke-virtual {p2}, Lcom/facebook/g0;->l()Ljava/util/Map;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    new-instance p2, Lcom/facebook/i0;

    .line 204
    .line 205
    int-to-long v7, v2

    .line 206
    move-object v3, p2

    .line 207
    move-object v4, v1

    .line 208
    move-object v5, p1

    .line 209
    invoke-direct/range {v3 .. v8}, Lcom/facebook/i0;-><init>(Ljava/io/OutputStream;Lcom/facebook/a0;Ljava/util/Map;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 210
    .line 211
    .line 212
    goto :goto_2

    .line 213
    :catchall_1
    move-exception p1

    .line 214
    goto :goto_3

    .line 215
    :cond_3
    move-object p2, v1

    .line 216
    :goto_2
    move-object v1, p0

    .line 217
    move-object v2, p1

    .line 218
    move-object v3, v0

    .line 219
    move v4, v10

    .line 220
    move-object v5, v12

    .line 221
    move-object v6, p2

    .line 222
    move v7, v11

    .line 223
    :try_start_3
    invoke-direct/range {v1 .. v7}, Lcom/facebook/GraphRequest$c;->F(Lcom/facebook/a0;Lcom/facebook/internal/i0;ILjava/net/URL;Ljava/io/OutputStream;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 224
    .line 225
    .line 226
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0}, Lcom/facebook/internal/i0;->e()V

    .line 230
    .line 231
    .line 232
    return-void

    .line 233
    :catchall_2
    move-exception p1

    .line 234
    move-object v1, p2

    .line 235
    :goto_3
    if-eqz v1, :cond_4

    .line 236
    .line 237
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 238
    .line 239
    .line 240
    :cond_4
    throw p1

    .line 241
    :cond_5
    invoke-virtual {v0}, Lcom/facebook/internal/i0;->e()V

    .line 242
    .line 243
    .line 244
    return-void
.end method

.method public final N(Lcom/facebook/a0;)Ljava/net/HttpURLConnection;
    .locals 3
    .param p1    # Lcom/facebook/a0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "could not construct request body"

    .line 2
    .line 3
    const-string v1, "requests"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/facebook/GraphRequest$c;->O(Lcom/facebook/a0;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/a0;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p1, v1}, Lcom/facebook/a0;->j(I)Lcom/facebook/GraphRequest;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Ljava/net/URL;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->x()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p1

    .line 34
    goto :goto_3

    .line 35
    :cond_0
    new-instance v2, Ljava/net/URL;

    .line 36
    .line 37
    invoke-static {}, Lcom/facebook/internal/o0;->h()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    :goto_0
    const/4 v1, 0x0

    .line 45
    :try_start_1
    invoke-direct {p0, v2}, Lcom/facebook/GraphRequest$c;->g(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p0, p1, v1}, Lcom/facebook/GraphRequest$c;->L(Lcom/facebook/a0;Ljava/net/HttpURLConnection;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 50
    .line 51
    .line 52
    return-object v1

    .line 53
    :catch_1
    move-exception p1

    .line 54
    goto :goto_1

    .line 55
    :catch_2
    move-exception p1

    .line 56
    goto :goto_2

    .line 57
    :goto_1
    invoke-static {v1}, Lcom/facebook/internal/u0;->r(Ljava/net/URLConnection;)V

    .line 58
    .line 59
    .line 60
    new-instance v1, Lcom/facebook/FacebookException;

    .line 61
    .line 62
    invoke-direct {v1, v0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    throw v1

    .line 66
    :goto_2
    invoke-static {v1}, Lcom/facebook/internal/u0;->r(Ljava/net/URLConnection;)V

    .line 67
    .line 68
    .line 69
    new-instance v1, Lcom/facebook/FacebookException;

    .line 70
    .line 71
    invoke-direct {v1, v0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    throw v1

    .line 75
    :goto_3
    new-instance v0, Lcom/facebook/FacebookException;

    .line 76
    .line 77
    const-string v1, "could not construct URL for request"

    .line 78
    .line 79
    invoke-direct {v0, v1, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    throw v0
.end method

.method public final O(Lcom/facebook/a0;)V
    .locals 5
    .param p1    # Lcom/facebook/a0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "requests"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/facebook/GraphRequest;

    .line 21
    .line 22
    sget-object v1, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->t()Lcom/facebook/HttpMethod;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-ne v1, v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->u()Landroid/os/Bundle;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "fields"

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v1}, Lcom/facebook/internal/u0;->d0(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    sget-object v1, Lcom/facebook/internal/i0;->e:Lcom/facebook/internal/i0$a;

    .line 47
    .line 48
    sget-object v2, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    .line 49
    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v4, "GET requests for /"

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->r()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-nez v0, :cond_1

    .line 65
    .line 66
    const-string v0, ""

    .line 67
    .line 68
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v0, " should contain an explicit \"fields\" parameter."

    .line 72
    .line 73
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const/4 v3, 0x5

    .line 81
    const-string v4, "Request"

    .line 82
    .line 83
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/facebook/internal/i0$a;->a(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    return-void
.end method

.method public final h(Lcom/facebook/GraphRequest;)Lcom/facebook/b0;
    .locals 2
    .param p1    # Lcom/facebook/GraphRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    filled-new-array {p1}, [Lcom/facebook/GraphRequest;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/facebook/GraphRequest$c;->k([Lcom/facebook/GraphRequest;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/facebook/b0;

    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_0
    new-instance p1, Lcom/facebook/FacebookException;

    .line 30
    .line 31
    const-string v0, "invalid state: expected a single response"

    .line 32
    .line 33
    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1
.end method

.method public final i(Lcom/facebook/a0;)Ljava/util/List;
    .locals 6
    .param p1    # Lcom/facebook/a0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/a0;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/b0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "requests"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/facebook/internal/v0;->i(Ljava/util/Collection;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/GraphRequest$c;->N(Lcom/facebook/a0;)Ljava/net/HttpURLConnection;

    .line 11
    .line 12
    .line 13
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    move-object v2, v0

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_2

    .line 18
    :catch_0
    move-exception v1

    .line 19
    move-object v2, v1

    .line 20
    move-object v1, v0

    .line 21
    :goto_0
    if-eqz v1, :cond_0

    .line 22
    .line 23
    :try_start_1
    invoke-virtual {p0, v1, p1}, Lcom/facebook/GraphRequest$c;->o(Ljava/net/HttpURLConnection;Lcom/facebook/a0;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_1

    .line 28
    :catchall_1
    move-exception p1

    .line 29
    move-object v0, v1

    .line 30
    goto :goto_2

    .line 31
    :cond_0
    sget-object v3, Lcom/facebook/b0;->i:Lcom/facebook/b0$a;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/facebook/a0;->p()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    new-instance v5, Lcom/facebook/FacebookException;

    .line 38
    .line 39
    invoke-direct {v5, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v4, v0, v5}, Lcom/facebook/b0$a;->a(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p0, p1, v0}, Lcom/facebook/GraphRequest$c;->G(Lcom/facebook/a0;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    .line 48
    .line 49
    move-object p1, v0

    .line 50
    :goto_1
    invoke-static {v1}, Lcom/facebook/internal/u0;->r(Ljava/net/URLConnection;)V

    .line 51
    .line 52
    .line 53
    return-object p1

    .line 54
    :goto_2
    invoke-static {v0}, Lcom/facebook/internal/u0;->r(Ljava/net/URLConnection;)V

    .line 55
    .line 56
    .line 57
    throw p1
.end method

.method public final j(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/facebook/GraphRequest;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/facebook/b0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "requests"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/facebook/a0;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/facebook/a0;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/facebook/GraphRequest$c;->i(Lcom/facebook/a0;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final varargs k([Lcom/facebook/GraphRequest;)Ljava/util/List;
    .locals 1
    .param p1    # [Lcom/facebook/GraphRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/facebook/GraphRequest;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/b0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "requests"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lkotlin/collections/n;->x1([Ljava/lang/Object;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/util/Collection;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/facebook/GraphRequest$c;->j(Ljava/util/Collection;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public final l(Lcom/facebook/a0;)Lcom/facebook/z;
    .locals 2
    .param p1    # Lcom/facebook/a0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "requests"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/facebook/internal/v0;->i(Ljava/util/Collection;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/facebook/z;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Lcom/facebook/z;-><init>(Lcom/facebook/a0;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/facebook/v;->u()Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v1, 0x0

    .line 19
    new-array v1, v1, [Ljava/lang/Void;

    .line 20
    .line 21
    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public final m(Ljava/util/Collection;)Lcom/facebook/z;
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/facebook/GraphRequest;",
            ">;)",
            "Lcom/facebook/z;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "requests"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/facebook/a0;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/facebook/a0;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/facebook/GraphRequest$c;->l(Lcom/facebook/a0;)Lcom/facebook/z;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final varargs n([Lcom/facebook/GraphRequest;)Lcom/facebook/z;
    .locals 1
    .param p1    # [Lcom/facebook/GraphRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "requests"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lkotlin/collections/n;->x1([Ljava/lang/Object;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/util/Collection;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/facebook/GraphRequest$c;->m(Ljava/util/Collection;)Lcom/facebook/z;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public final o(Ljava/net/HttpURLConnection;Lcom/facebook/a0;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/net/HttpURLConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/a0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/a0;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/b0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "connection"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "requests"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/facebook/b0;->i:Lcom/facebook/b0$a;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Lcom/facebook/b0$a;->f(Ljava/net/HttpURLConnection;Lcom/facebook/a0;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p1}, Lcom/facebook/internal/u0;->r(Ljava/net/URLConnection;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/facebook/a0;->size()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-ne p1, v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0, p2, v0}, Lcom/facebook/GraphRequest$c;->G(Lcom/facebook/a0;Ljava/util/List;)V

    .line 31
    .line 32
    .line 33
    sget-object p1, Lcom/facebook/f;->f:Lcom/facebook/f$a;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/facebook/f$a;->e()Lcom/facebook/f;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/facebook/f;->h()V

    .line 40
    .line 41
    .line 42
    return-object v0

    .line 43
    :cond_0
    new-instance p2, Lcom/facebook/FacebookException;

    .line 44
    .line 45
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 46
    .line 47
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const/4 v0, 0x2

    .line 66
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string v0, "Received %d responses while expecting %d"

    .line 71
    .line 72
    invoke-static {v1, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const-string v0, "format(locale, format, *args)"

    .line 77
    .line 78
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {p2, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p2
.end method

.method public final x(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;
    .locals 10
    .param p1    # Lcom/facebook/AccessToken;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/GraphRequest$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v9, Lcom/facebook/GraphRequest;

    .line 2
    .line 3
    const/16 v7, 0x20

    .line 4
    .line 5
    const/4 v8, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v6, 0x0

    .line 9
    move-object v0, v9

    .line 10
    move-object v1, p1

    .line 11
    move-object v2, p2

    .line 12
    move-object v5, p3

    .line 13
    invoke-direct/range {v0 .. v8}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$b;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    .line 15
    .line 16
    return-object v9
.end method

.method public final y(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$d;)Lcom/facebook/GraphRequest;
    .locals 9
    .param p1    # Lcom/facebook/AccessToken;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/GraphRequest$d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v5, Lcom/facebook/x;

    .line 2
    .line 3
    invoke-direct {v5, p2}, Lcom/facebook/x;-><init>(Lcom/facebook/GraphRequest$d;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lcom/facebook/GraphRequest;

    .line 7
    .line 8
    const/16 v7, 0x20

    .line 9
    .line 10
    const/4 v8, 0x0

    .line 11
    const-string v2, "me"

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    move-object v0, p2

    .line 17
    move-object v1, p1

    .line 18
    invoke-direct/range {v0 .. v8}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$b;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 19
    .line 20
    .line 21
    return-object p2
.end method
