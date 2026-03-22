.class public final Lhe/f;
.super Lcom/startshorts/androidplayer/manager/attribution/parser/BaseCampaignParser;
.source "GPInstallReferrerParser.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhe/f$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final d:Lhe/f$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lhe/f$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lhe/f$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lhe/f;->d:Lhe/f$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/parser/BaseCampaignParser;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Lcom/startshorts/androidplayer/manager/attribution/CampaignType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->GP_INSTALL_REFERRER:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 2
    .line 3
    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "info"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string/jumbo v2, "utm_content"

    .line 9
    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-static {p1, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method protected k(Ljava/lang/String;Z)Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string p2, "info"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "GPInstallReferrerParser decodedInfo -> "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v6, "CampaignNewTag"

    .line 30
    .line 31
    invoke-virtual {p2, v6, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const-string p2, "&"

    .line 38
    .line 39
    filled-new-array {p2}, [Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const/4 v4, 0x6

    .line 44
    const/4 v5, 0x0

    .line 45
    const/4 v2, 0x0

    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    check-cast p2, Ljava/lang/Iterable;

    .line 52
    .line 53
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/4 v1, 0x2

    .line 62
    const/4 v2, 0x0

    .line 63
    const/4 v3, 0x0

    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    move-object v4, v0

    .line 71
    check-cast v4, Ljava/lang/String;

    .line 72
    .line 73
    const-string/jumbo v5, "utm_content"

    .line 74
    .line 75
    .line 76
    invoke-static {v4, v5, v2, v1, v3}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_0

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    move-object v0, v3

    .line 84
    :goto_0
    move-object v7, v0

    .line 85
    check-cast v7, Ljava/lang/String;

    .line 86
    .line 87
    if-eqz v7, :cond_9

    .line 88
    .line 89
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    if-nez p2, :cond_2

    .line 94
    .line 95
    goto/16 :goto_3

    .line 96
    .line 97
    :cond_2
    const-string p2, "="

    .line 98
    .line 99
    filled-new-array {p2}, [Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    const/4 v11, 0x6

    .line 104
    const/4 v12, 0x0

    .line 105
    const/4 v9, 0x0

    .line 106
    const/4 v10, 0x0

    .line 107
    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    const/4 v0, 0x1

    .line 112
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    move-object v7, p2

    .line 117
    check-cast v7, Ljava/lang/String;

    .line 118
    .line 119
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 120
    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string/jumbo v5, "utmContentInfo -> "

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-virtual {p2, v6, v4}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const-string p2, "_"

    .line 143
    .line 144
    filled-new-array {p2}, [Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    check-cast p2, Ljava/lang/Iterable;

    .line 153
    .line 154
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    const-string/jumbo v5, "shortid"

    .line 163
    .line 164
    .line 165
    if-eqz v4, :cond_4

    .line 166
    .line 167
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    move-object v7, v4

    .line 172
    check-cast v7, Ljava/lang/String;

    .line 173
    .line 174
    invoke-static {v7, v5, v2, v1, v3}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    if-eqz v7, :cond_3

    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_4
    move-object v4, v3

    .line 182
    :goto_1
    move-object v7, v4

    .line 183
    check-cast v7, Ljava/lang/String;

    .line 184
    .line 185
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 186
    .line 187
    new-instance v4, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    const-string/jumbo v8, "shortIdInfo -> "

    .line 193
    .line 194
    .line 195
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    invoke-virtual {p2, v6, v4}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    if-eqz v7, :cond_7

    .line 209
    .line 210
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 211
    .line 212
    .line 213
    move-result p2

    .line 214
    if-nez p2, :cond_5

    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_5
    invoke-static {p1}, Ljk/v;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-virtual {p0, p1, v7}, Lcom/startshorts/androidplayer/manager/attribution/parser/BaseCampaignParser;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    const-string p1, "-"

    .line 225
    .line 226
    filled-new-array {p1}, [Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v8

    .line 230
    const/4 v11, 0x6

    .line 231
    const/4 v12, 0x0

    .line 232
    const/4 v9, 0x0

    .line 233
    const/4 v10, 0x0

    .line 234
    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result p2

    .line 246
    if-eqz p2, :cond_6

    .line 247
    .line 248
    new-instance v3, Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;

    .line 249
    .line 250
    invoke-virtual {p0}, Lhe/f;->a()Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 251
    .line 252
    .line 253
    move-result-object p2

    .line 254
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->getValue()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    check-cast p1, Ljava/lang/String;

    .line 263
    .line 264
    invoke-static {p1}, Lkotlin/text/StringsKt;->v1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    move-result v9

    .line 276
    const-string v6, ""

    .line 277
    .line 278
    const/4 v7, -0x1

    .line 279
    const-string v8, ""

    .line 280
    .line 281
    move-object v4, v3

    .line 282
    invoke-direct/range {v4 .. v9}, Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 283
    .line 284
    .line 285
    :cond_6
    return-object v3

    .line 286
    :cond_7
    :goto_2
    const-string p2, "fb"

    .line 287
    .line 288
    invoke-static {p1, p2, v2, v1, v3}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result p2

    .line 292
    if-nez p2, :cond_8

    .line 293
    .line 294
    const-string p2, "facebook"

    .line 295
    .line 296
    invoke-static {p1, p2, v2, v1, v3}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result p1

    .line 300
    if-nez p1, :cond_8

    .line 301
    .line 302
    const-string/jumbo p1, "shortIdInfo is null"

    .line 303
    .line 304
    .line 305
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/attribution/parser/BaseCampaignParser;->h(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    :cond_8
    return-object v3

    .line 309
    :cond_9
    :goto_3
    const-string p1, "keyValue is null"

    .line 310
    .line 311
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/attribution/parser/BaseCampaignParser;->h(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    return-object v3
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "GPInstallReferrerParser"

    .line 2
    .line 3
    return-object v0
.end method

.method public priority()Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;->GP_INSTALL_REFERRER:Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

    .line 2
    .line 3
    return-object v0
.end method
