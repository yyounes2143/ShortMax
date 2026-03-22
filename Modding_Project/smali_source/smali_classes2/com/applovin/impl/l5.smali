.class Lcom/applovin/impl/l5;
.super Lcom/applovin/impl/j5;
.source "SourceFile"


# instance fields
.field private final q:Lcom/applovin/impl/l7;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/l7;Lcom/applovin/impl/sdk/k;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 1

    .line 1
    const-string v0, "TaskCacheVastAd"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/applovin/impl/j5;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/impl/sdk/k;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    .line 7
    .line 8
    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/l5;)Lcom/applovin/impl/l7;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    return-object p0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 2
    .line 3
    sget-object v1, Lcom/applovin/impl/v4;->X4:Lcom/applovin/impl/v4;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/StringUtils;->getRegexMatches(Ljava/util/regex/Matcher;I)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-virtual {p0, v1, v2, v3}, Lcom/applovin/impl/j5;->a(Ljava/lang/String;Ljava/util/List;Z)Landroid/net/Uri;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iget-object v1, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/ad/b;->a(Landroid/net/Uri;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_0

    .line 73
    .line 74
    iget-object v2, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 75
    .line 76
    iget-object v3, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 77
    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v5, "Failed to cache JavaScript resource: "

    .line 84
    .line 85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v2, v3, v1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_3
    return-object p1
.end method

.method private m()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/applovin/impl/j5;->l()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/applovin/impl/l7;->G1()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_10

    .line 15
    .line 16
    iget-object v0, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/applovin/impl/l7;->s1()Lcom/applovin/impl/o7;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_f

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/applovin/impl/o7;->e()Lcom/applovin/impl/t7;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_e

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/applovin/impl/t7;->c()Landroid/net/Uri;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const-string v1, ""

    .line 42
    .line 43
    :goto_0
    invoke-virtual {v0}, Lcom/applovin/impl/t7;->b()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_3

    .line 52
    .line 53
    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_11

    .line 65
    .line 66
    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 69
    .line 70
    const-string v2, "Companion ad does not have any resources attached. Skipping..."

    .line 71
    .line 72
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto/16 :goto_2

    .line 76
    .line 77
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/applovin/impl/t7;->d()Lcom/applovin/impl/t7$a;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    sget-object v4, Lcom/applovin/impl/t7$a;->b:Lcom/applovin/impl/t7$a;

    .line 82
    .line 83
    const/4 v5, 0x0

    .line 84
    const-string v6, "..."

    .line 85
    .line 86
    const/4 v7, 0x1

    .line 87
    if-ne v3, v4, :cond_6

    .line 88
    .line 89
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_4

    .line 94
    .line 95
    iget-object v2, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 96
    .line 97
    iget-object v3, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 98
    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v8, "Caching static companion ad at "

    .line 105
    .line 106
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {v2, v3, v4}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {p0, v1, v2, v5}, Lcom/applovin/impl/j5;->a(Ljava/lang/String;Ljava/util/List;Z)Landroid/net/Uri;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    if-eqz v1, :cond_5

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Lcom/applovin/impl/t7;->a(Landroid/net/Uri;)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    .line 136
    .line 137
    invoke-virtual {v0, v7}, Lcom/applovin/impl/sdk/ad/b;->b(Z)V

    .line 138
    .line 139
    .line 140
    goto/16 :goto_2

    .line 141
    .line 142
    :cond_5
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_11

    .line 147
    .line 148
    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 149
    .line 150
    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 151
    .line 152
    const-string v2, "Failed to cache static companion ad"

    .line 153
    .line 154
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    goto/16 :goto_2

    .line 158
    .line 159
    :cond_6
    invoke-virtual {v0}, Lcom/applovin/impl/t7;->d()Lcom/applovin/impl/t7$a;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    sget-object v4, Lcom/applovin/impl/t7$a;->d:Lcom/applovin/impl/t7$a;

    .line 164
    .line 165
    if-ne v3, v4, :cond_d

    .line 166
    .line 167
    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    if-eqz v3, :cond_a

    .line 172
    .line 173
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    if-eqz v2, :cond_7

    .line 178
    .line 179
    iget-object v2, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 180
    .line 181
    iget-object v3, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 182
    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    const-string v8, "Begin caching HTML companion ad. Fetching from "

    .line 189
    .line 190
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    invoke-virtual {v2, v3, v4}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    :cond_7
    const/4 v2, 0x0

    .line 207
    invoke-virtual {p0, v1, v2, v5}, Lcom/applovin/impl/j5;->c(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    if-eqz v3, :cond_9

    .line 216
    .line 217
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-eqz v1, :cond_8

    .line 222
    .line 223
    iget-object v1, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 224
    .line 225
    iget-object v3, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 226
    .line 227
    const-string v4, "HTML fetched. Caching HTML now..."

    .line 228
    .line 229
    invoke-virtual {v1, v3, v4}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    :cond_8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    iget-object v3, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    .line 237
    .line 238
    invoke-virtual {p0, v2, v1, v3}, Lcom/applovin/impl/j5;->a(Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/sdk/ad/b;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-virtual {v0, v1}, Lcom/applovin/impl/t7;->a(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    iget-object v0, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    .line 246
    .line 247
    invoke-virtual {v0, v7}, Lcom/applovin/impl/sdk/ad/b;->b(Z)V

    .line 248
    .line 249
    .line 250
    goto/16 :goto_2

    .line 251
    .line 252
    :cond_9
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    if-eqz v0, :cond_11

    .line 257
    .line 258
    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 259
    .line 260
    iget-object v2, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 261
    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .line 266
    .line 267
    const-string v4, "Unable to load companion ad resources from "

    .line 268
    .line 269
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    goto/16 :goto_2

    .line 283
    .line 284
    :cond_a
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    if-eqz v1, :cond_b

    .line 289
    .line 290
    iget-object v1, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 291
    .line 292
    iget-object v3, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 293
    .line 294
    new-instance v4, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .line 298
    .line 299
    const-string v5, "Caching provided HTML for companion ad. No fetch required. HTML: "

    .line 300
    .line 301
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    invoke-virtual {v1, v3, v4}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    :cond_b
    iget-object v1, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 315
    .line 316
    sget-object v3, Lcom/applovin/impl/v4;->W4:Lcom/applovin/impl/v4;

    .line 317
    .line 318
    invoke-virtual {v1, v3}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    check-cast v1, Ljava/lang/Boolean;

    .line 323
    .line 324
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    if-eqz v1, :cond_c

    .line 329
    .line 330
    invoke-direct {p0, v2}, Lcom/applovin/impl/l5;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    :cond_c
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    iget-object v3, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    .line 339
    .line 340
    invoke-virtual {p0, v2, v1, v3}, Lcom/applovin/impl/j5;->a(Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/sdk/ad/b;)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    invoke-virtual {v0, v1}, Lcom/applovin/impl/t7;->a(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    iget-object v0, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    .line 348
    .line 349
    invoke-virtual {v0, v7}, Lcom/applovin/impl/sdk/ad/b;->b(Z)V

    .line 350
    .line 351
    .line 352
    goto :goto_2

    .line 353
    :cond_d
    invoke-virtual {v0}, Lcom/applovin/impl/t7;->d()Lcom/applovin/impl/t7$a;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    sget-object v1, Lcom/applovin/impl/t7$a;->c:Lcom/applovin/impl/t7$a;

    .line 358
    .line 359
    if-ne v0, v1, :cond_11

    .line 360
    .line 361
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 362
    .line 363
    .line 364
    move-result v0

    .line 365
    if-eqz v0, :cond_11

    .line 366
    .line 367
    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 368
    .line 369
    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 370
    .line 371
    const-string v2, "Skip caching of iFrame resource..."

    .line 372
    .line 373
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    goto :goto_2

    .line 377
    :cond_e
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    if-eqz v0, :cond_11

    .line 382
    .line 383
    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 384
    .line 385
    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 386
    .line 387
    const-string v2, "Failed to retrieve non-video resources from companion ad. Skipping..."

    .line 388
    .line 389
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    goto :goto_2

    .line 393
    :cond_f
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 394
    .line 395
    .line 396
    move-result v0

    .line 397
    if-eqz v0, :cond_11

    .line 398
    .line 399
    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 400
    .line 401
    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 402
    .line 403
    const-string v2, "No companion ad provided. Skipping..."

    .line 404
    .line 405
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    goto :goto_2

    .line 409
    :cond_10
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 410
    .line 411
    .line 412
    move-result v0

    .line 413
    if-eqz v0, :cond_11

    .line 414
    .line 415
    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 416
    .line 417
    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 418
    .line 419
    const-string v2, "Companion ad caching disabled. Skipping..."

    .line 420
    .line 421
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    :cond_11
    :goto_2
    return-void
.end method

.method private n()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/applovin/impl/j5;->l()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/applovin/impl/x7;->a(Lcom/applovin/impl/l7;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/applovin/impl/l7;->u1()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    iget-object v1, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/b;->c0()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v2, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    .line 36
    .line 37
    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/j5;->a(Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/sdk/ad/b;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/applovin/impl/l7;->isOpenMeasurementEnabled()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    iget-object v1, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    .line 50
    .line 51
    invoke-static {v1}, Lcom/applovin/impl/e2;->a(Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;)Ljava/util/Map;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->e0()Lcom/applovin/impl/g4;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v2, v0, v1}, Lcom/applovin/impl/g4;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    .line 66
    .line 67
    invoke-virtual {v1, v0}, Lcom/applovin/impl/l7;->d(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 77
    .line 78
    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 79
    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v3, "Finish caching HTML template "

    .line 86
    .line 87
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object v3, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    .line 91
    .line 92
    invoke-virtual {v3}, Lcom/applovin/impl/l7;->u1()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v3, " for ad #"

    .line 100
    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object v3, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    .line 105
    .line 106
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdIdNumber()J

    .line 107
    .line 108
    .line 109
    move-result-wide v3

    .line 110
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_2
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_3

    .line 126
    .line 127
    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 128
    .line 129
    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 130
    .line 131
    const-string v2, "Unable to load HTML template"

    .line 132
    .line 133
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :cond_3
    :goto_0
    return-void
.end method

.method private o()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/applovin/impl/j5;->l()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/applovin/impl/l7;->H1()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    iget-object v0, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/applovin/impl/l7;->B1()Lcom/applovin/impl/y7;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_4

    .line 23
    .line 24
    iget-object v0, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/applovin/impl/l7;->C1()Lcom/applovin/impl/z7;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_4

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/applovin/impl/z7;->e()Landroid/net/Uri;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_4

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-virtual {p0, v1, v2, v3}, Lcom/applovin/impl/j5;->b(Ljava/lang/String;Ljava/util/List;Z)Landroid/net/Uri;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    iget-object v2, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 60
    .line 61
    iget-object v3, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 62
    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v5, "Video file successfully cached into: "

    .line 69
    .line 70
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v2, v3, v4}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    invoke-virtual {v0, v1}, Lcom/applovin/impl/z7;->a(Landroid/net/Uri;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_4

    .line 92
    .line 93
    iget-object v1, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 94
    .line 95
    iget-object v2, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 96
    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v4, "Failed to cache video file: "

    .line 103
    .line 104
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v1, v2, v0}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_3
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_4

    .line 123
    .line 124
    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 125
    .line 126
    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 127
    .line 128
    const-string v2, "Video caching disabled. Skipping..."

    .line 129
    .line 130
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :cond_4
    :goto_0
    return-void
.end method

.method private p()Lcom/applovin/impl/c0;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/l7;->G1()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 19
    .line 20
    const-string v3, "Companion ad caching disabled. Skipping..."

    .line 21
    .line 22
    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-object v1

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/applovin/impl/l7;->s1()Lcom/applovin/impl/o7;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-nez v0, :cond_3

    .line 33
    .line 34
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 43
    .line 44
    const-string v3, "No companion ad provided. Skipping..."

    .line 45
    .line 46
    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    return-object v1

    .line 50
    :cond_3
    invoke-virtual {v0}, Lcom/applovin/impl/o7;->e()Lcom/applovin/impl/t7;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-nez v0, :cond_5

    .line 55
    .line 56
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 63
    .line 64
    iget-object v2, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 65
    .line 66
    const-string v3, "Failed to retrieve non-video resources from companion ad. Skipping..."

    .line 67
    .line 68
    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_4
    return-object v1

    .line 72
    :cond_5
    invoke-virtual {v0}, Lcom/applovin/impl/t7;->c()Landroid/net/Uri;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    if-eqz v2, :cond_6

    .line 77
    .line 78
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    :goto_0
    move-object v4, v2

    .line 83
    goto :goto_1

    .line 84
    :cond_6
    const-string v2, ""

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :goto_1
    invoke-virtual {v0}, Lcom/applovin/impl/t7;->b()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-static {v4}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-nez v3, :cond_8

    .line 96
    .line 97
    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_7

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_7
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_11

    .line 109
    .line 110
    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 111
    .line 112
    iget-object v2, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 113
    .line 114
    const-string v3, "Companion ad does not have any resources attached. Skipping..."

    .line 115
    .line 116
    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/o;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    goto/16 :goto_3

    .line 120
    .line 121
    :cond_8
    :goto_2
    invoke-virtual {v0}, Lcom/applovin/impl/t7;->d()Lcom/applovin/impl/t7$a;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    sget-object v5, Lcom/applovin/impl/t7$a;->b:Lcom/applovin/impl/t7$a;

    .line 126
    .line 127
    const-string v6, "..."

    .line 128
    .line 129
    if-ne v3, v5, :cond_a

    .line 130
    .line 131
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_9

    .line 136
    .line 137
    iget-object v1, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 138
    .line 139
    iget-object v2, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 140
    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    const-string v5, "Caching static companion ad at "

    .line 147
    .line 148
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    :cond_9
    new-instance v1, Lcom/applovin/impl/e0;

    .line 165
    .line 166
    iget-object v5, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    .line 167
    .line 168
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    iget-object v8, p0, Lcom/applovin/impl/j5;->i:Ljava/lang/String;

    .line 173
    .line 174
    iget-object v9, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 175
    .line 176
    new-instance v10, Lcom/applovin/impl/l5$a;

    .line 177
    .line 178
    invoke-direct {v10, p0, v0}, Lcom/applovin/impl/l5$a;-><init>(Lcom/applovin/impl/l5;Lcom/applovin/impl/t7;)V

    .line 179
    .line 180
    .line 181
    const/4 v7, 0x0

    .line 182
    move-object v3, v1

    .line 183
    invoke-direct/range {v3 .. v10}, Lcom/applovin/impl/e0;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/ad/b;Ljava/util/List;ZLjava/lang/String;Lcom/applovin/impl/sdk/k;Lcom/applovin/impl/e0$a;)V

    .line 184
    .line 185
    .line 186
    return-object v1

    .line 187
    :cond_a
    invoke-virtual {v0}, Lcom/applovin/impl/t7;->d()Lcom/applovin/impl/t7$a;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    sget-object v5, Lcom/applovin/impl/t7$a;->d:Lcom/applovin/impl/t7$a;

    .line 192
    .line 193
    if-ne v3, v5, :cond_10

    .line 194
    .line 195
    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    if-eqz v3, :cond_e

    .line 200
    .line 201
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-eqz v2, :cond_b

    .line 206
    .line 207
    iget-object v2, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 208
    .line 209
    iget-object v3, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 210
    .line 211
    new-instance v5, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .line 215
    .line 216
    const-string v7, "Begin caching HTML companion ad. Fetching from "

    .line 217
    .line 218
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    invoke-virtual {v2, v3, v5}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    :cond_b
    const/4 v2, 0x0

    .line 235
    invoke-virtual {p0, v4, v1, v2}, Lcom/applovin/impl/j5;->c(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    if-eqz v3, :cond_d

    .line 244
    .line 245
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    if-eqz v1, :cond_c

    .line 250
    .line 251
    iget-object v1, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 252
    .line 253
    iget-object v3, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 254
    .line 255
    const-string v4, "HTML fetched. Caching HTML now..."

    .line 256
    .line 257
    invoke-virtual {v1, v3, v4}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    :cond_c
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    new-instance v3, Lcom/applovin/impl/l5$b;

    .line 265
    .line 266
    invoke-direct {v3, p0, v0}, Lcom/applovin/impl/l5$b;-><init>(Lcom/applovin/impl/l5;Lcom/applovin/impl/t7;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p0, v2, v1, v3}, Lcom/applovin/impl/j5;->a(Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/j5$e;)Lcom/applovin/impl/d0;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    return-object v0

    .line 274
    :cond_d
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    if-eqz v0, :cond_11

    .line 279
    .line 280
    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 281
    .line 282
    iget-object v2, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 283
    .line 284
    new-instance v3, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .line 288
    .line 289
    const-string v5, "Unable to load companion ad resources from "

    .line 290
    .line 291
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    goto :goto_3

    .line 305
    :cond_e
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    if-eqz v1, :cond_f

    .line 310
    .line 311
    iget-object v1, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 312
    .line 313
    iget-object v3, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 314
    .line 315
    new-instance v4, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    .line 319
    .line 320
    const-string v5, "Caching provided HTML for companion ad. No fetch required. HTML: "

    .line 321
    .line 322
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v4

    .line 332
    invoke-virtual {v1, v3, v4}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    :cond_f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    new-instance v3, Lcom/applovin/impl/l5$c;

    .line 340
    .line 341
    invoke-direct {v3, p0, v0}, Lcom/applovin/impl/l5$c;-><init>(Lcom/applovin/impl/l5;Lcom/applovin/impl/t7;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {p0, v2, v1, v3}, Lcom/applovin/impl/j5;->a(Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/j5$e;)Lcom/applovin/impl/d0;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    return-object v0

    .line 349
    :cond_10
    invoke-virtual {v0}, Lcom/applovin/impl/t7;->d()Lcom/applovin/impl/t7$a;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    sget-object v2, Lcom/applovin/impl/t7$a;->c:Lcom/applovin/impl/t7$a;

    .line 354
    .line 355
    if-ne v0, v2, :cond_11

    .line 356
    .line 357
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    if-eqz v0, :cond_11

    .line 362
    .line 363
    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 364
    .line 365
    iget-object v2, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 366
    .line 367
    const-string v3, "Skip caching of iFrame resource..."

    .line 368
    .line 369
    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    :cond_11
    :goto_3
    return-object v1
.end method


# virtual methods
.method a(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    invoke-virtual {v0}, Lcom/applovin/impl/l7;->getAdEventTracker()Lcom/applovin/impl/i4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/c4;->f()V

    .line 3
    invoke-super {p0, p1}, Lcom/applovin/impl/j5;->a(I)V

    return-void
.end method

.method f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/l7;->getAdEventTracker()Lcom/applovin/impl/i4;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/applovin/impl/i4;->h()V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lcom/applovin/impl/j5;->f()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method protected q()Lcom/applovin/impl/d0;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/l7;->u1()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 22
    .line 23
    const-string v2, "Unable to load HTML template"

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    return-object v0

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/applovin/impl/l7;->u1()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/b;->c0()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    new-instance v2, Lcom/applovin/impl/l5$e;

    .line 43
    .line 44
    invoke-direct {v2, p0}, Lcom/applovin/impl/l5$e;-><init>(Lcom/applovin/impl/l5;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/j5;->a(Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/j5$e;)Lcom/applovin/impl/d0;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    return-object v0
.end method

.method protected r()Lcom/applovin/impl/e0;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/l7;->H1()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 19
    .line 20
    const-string v3, "Video caching disabled. Skipping..."

    .line 21
    .line 22
    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-object v1

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/applovin/impl/l7;->B1()Lcom/applovin/impl/y7;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    return-object v1

    .line 35
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/applovin/impl/l7;->C1()Lcom/applovin/impl/z7;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-nez v0, :cond_3

    .line 42
    .line 43
    return-object v1

    .line 44
    :cond_3
    invoke-virtual {v0}, Lcom/applovin/impl/z7;->e()Landroid/net/Uri;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    if-nez v2, :cond_4

    .line 49
    .line 50
    return-object v1

    .line 51
    :cond_4
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_5

    .line 56
    .line 57
    iget-object v1, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 58
    .line 59
    iget-object v3, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 60
    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v5, "Caching video file "

    .line 67
    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v5, " creative..."

    .line 75
    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-virtual {v1, v3, v4}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_5
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    new-instance v3, Lcom/applovin/impl/l5$d;

    .line 95
    .line 96
    invoke-direct {v3, p0, v0}, Lcom/applovin/impl/l5$d;-><init>(Lcom/applovin/impl/l5;Lcom/applovin/impl/z7;)V

    .line 97
    .line 98
    .line 99
    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/applovin/impl/j5;->a(Ljava/lang/String;Ljava/util/List;ZLcom/applovin/impl/e0$a;)Lcom/applovin/impl/e0;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    return-object v0
.end method

.method public run()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/applovin/impl/j5;->run()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/applovin/impl/l7;->O0()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v4, "Begin caching for VAST "

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const-string v4, "streaming "

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string v4, ""

    .line 36
    .line 37
    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v4, "ad #"

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v4, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    .line 46
    .line 47
    invoke-virtual {v4}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdIdNumber()J

    .line 48
    .line 49
    .line 50
    move-result-wide v4

    .line 51
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v4, "..."

    .line 55
    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    if-eqz v0, :cond_13

    .line 67
    .line 68
    iget-object v0, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 69
    .line 70
    sget-object v1, Lcom/applovin/impl/v4;->I0:Lcom/applovin/impl/v4;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Ljava/lang/Boolean;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_e

    .line 83
    .line 84
    invoke-static {}, Lcom/applovin/impl/o0;->e()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_2

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/applovin/impl/j5;->e()Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p0, v0}, Lcom/applovin/impl/j5;->a(Ljava/util/List;)Ljava/util/List;

    .line 95
    .line 96
    .line 97
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/applovin/impl/l7;->E1()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_6

    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/applovin/impl/l5;->f()V

    .line 106
    .line 107
    .line 108
    new-instance v0, Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-direct {p0}, Lcom/applovin/impl/l5;->p()Lcom/applovin/impl/c0;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    if-eqz v1, :cond_3

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    :cond_3
    invoke-virtual {p0}, Lcom/applovin/impl/l5;->q()Lcom/applovin/impl/d0;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    if-eqz v1, :cond_4

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    :cond_4
    invoke-virtual {p0}, Lcom/applovin/impl/l5;->r()Lcom/applovin/impl/e0;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    if-eqz v1, :cond_5

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    :cond_5
    invoke-virtual {p0, v0}, Lcom/applovin/impl/j5;->a(Ljava/util/List;)Ljava/util/List;

    .line 141
    .line 142
    .line 143
    goto/16 :goto_2

    .line 144
    .line 145
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .line 149
    .line 150
    new-instance v1, Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .line 154
    .line 155
    iget-object v2, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    .line 156
    .line 157
    invoke-virtual {v2}, Lcom/applovin/impl/l7;->v1()Lcom/applovin/impl/l7$c;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    sget-object v3, Lcom/applovin/impl/l7$c;->a:Lcom/applovin/impl/l7$c;

    .line 162
    .line 163
    if-ne v2, v3, :cond_a

    .line 164
    .line 165
    invoke-direct {p0}, Lcom/applovin/impl/l5;->p()Lcom/applovin/impl/c0;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    if-eqz v2, :cond_7

    .line 170
    .line 171
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    :cond_7
    invoke-virtual {p0}, Lcom/applovin/impl/l5;->q()Lcom/applovin/impl/d0;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    if-eqz v2, :cond_8

    .line 179
    .line 180
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    :cond_8
    invoke-virtual {p0, v0}, Lcom/applovin/impl/j5;->a(Ljava/util/List;)Ljava/util/List;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0}, Lcom/applovin/impl/l5;->f()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0}, Lcom/applovin/impl/l5;->r()Lcom/applovin/impl/e0;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    if-eqz v0, :cond_9

    .line 194
    .line 195
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    :cond_9
    invoke-virtual {p0, v1}, Lcom/applovin/impl/j5;->a(Ljava/util/List;)Ljava/util/List;

    .line 199
    .line 200
    .line 201
    goto/16 :goto_2

    .line 202
    .line 203
    :cond_a
    invoke-virtual {p0}, Lcom/applovin/impl/l5;->r()Lcom/applovin/impl/e0;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    if-eqz v2, :cond_b

    .line 208
    .line 209
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    :cond_b
    invoke-virtual {p0, v0}, Lcom/applovin/impl/j5;->a(Ljava/util/List;)Ljava/util/List;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Lcom/applovin/impl/l5;->f()V

    .line 216
    .line 217
    .line 218
    invoke-direct {p0}, Lcom/applovin/impl/l5;->p()Lcom/applovin/impl/c0;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    if-eqz v0, :cond_c

    .line 223
    .line 224
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    :cond_c
    invoke-virtual {p0}, Lcom/applovin/impl/l5;->q()Lcom/applovin/impl/d0;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    if-eqz v0, :cond_d

    .line 232
    .line 233
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    :cond_d
    invoke-virtual {p0, v1}, Lcom/applovin/impl/j5;->a(Ljava/util/List;)Ljava/util/List;

    .line 237
    .line 238
    .line 239
    goto/16 :goto_2

    .line 240
    .line 241
    :cond_e
    invoke-virtual {p0}, Lcom/applovin/impl/j5;->j()V

    .line 242
    .line 243
    .line 244
    iget-object v0, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    .line 245
    .line 246
    invoke-virtual {v0}, Lcom/applovin/impl/l7;->E1()Z

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    if-eqz v0, :cond_f

    .line 251
    .line 252
    invoke-virtual {p0}, Lcom/applovin/impl/l5;->f()V

    .line 253
    .line 254
    .line 255
    :cond_f
    iget-object v0, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    .line 256
    .line 257
    invoke-virtual {v0}, Lcom/applovin/impl/l7;->v1()Lcom/applovin/impl/l7$c;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    sget-object v1, Lcom/applovin/impl/l7$c;->a:Lcom/applovin/impl/l7$c;

    .line 262
    .line 263
    if-ne v0, v1, :cond_10

    .line 264
    .line 265
    invoke-direct {p0}, Lcom/applovin/impl/l5;->m()V

    .line 266
    .line 267
    .line 268
    invoke-direct {p0}, Lcom/applovin/impl/l5;->n()V

    .line 269
    .line 270
    .line 271
    iget-object v0, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    .line 272
    .line 273
    invoke-virtual {p0, v0}, Lcom/applovin/impl/j5;->a(Lcom/applovin/impl/sdk/ad/b;)V

    .line 274
    .line 275
    .line 276
    goto :goto_1

    .line 277
    :cond_10
    invoke-direct {p0}, Lcom/applovin/impl/l5;->o()V

    .line 278
    .line 279
    .line 280
    :goto_1
    iget-object v0, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    .line 281
    .line 282
    invoke-virtual {v0}, Lcom/applovin/impl/l7;->E1()Z

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    if-nez v0, :cond_11

    .line 287
    .line 288
    invoke-virtual {p0}, Lcom/applovin/impl/l5;->f()V

    .line 289
    .line 290
    .line 291
    :cond_11
    iget-object v0, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    .line 292
    .line 293
    invoke-virtual {v0}, Lcom/applovin/impl/l7;->v1()Lcom/applovin/impl/l7$c;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    if-ne v0, v1, :cond_12

    .line 298
    .line 299
    invoke-direct {p0}, Lcom/applovin/impl/l5;->o()V

    .line 300
    .line 301
    .line 302
    goto :goto_2

    .line 303
    :cond_12
    invoke-direct {p0}, Lcom/applovin/impl/l5;->m()V

    .line 304
    .line 305
    .line 306
    invoke-direct {p0}, Lcom/applovin/impl/l5;->n()V

    .line 307
    .line 308
    .line 309
    iget-object v0, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    .line 310
    .line 311
    invoke-virtual {p0, v0}, Lcom/applovin/impl/j5;->a(Lcom/applovin/impl/sdk/ad/b;)V

    .line 312
    .line 313
    .line 314
    goto :goto_2

    .line 315
    :cond_13
    iget-object v0, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 316
    .line 317
    sget-object v1, Lcom/applovin/impl/v4;->I0:Lcom/applovin/impl/v4;

    .line 318
    .line 319
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    check-cast v0, Ljava/lang/Boolean;

    .line 324
    .line 325
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    if-eqz v0, :cond_18

    .line 330
    .line 331
    new-instance v0, Ljava/util/ArrayList;

    .line 332
    .line 333
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .line 335
    .line 336
    invoke-static {}, Lcom/applovin/impl/o0;->e()Z

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    if-nez v1, :cond_14

    .line 341
    .line 342
    invoke-virtual {p0}, Lcom/applovin/impl/j5;->e()Ljava/util/List;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 347
    .line 348
    .line 349
    :cond_14
    invoke-direct {p0}, Lcom/applovin/impl/l5;->p()Lcom/applovin/impl/c0;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    if-eqz v1, :cond_15

    .line 354
    .line 355
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    :cond_15
    invoke-virtual {p0}, Lcom/applovin/impl/l5;->r()Lcom/applovin/impl/e0;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    if-eqz v1, :cond_16

    .line 363
    .line 364
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    :cond_16
    invoke-virtual {p0}, Lcom/applovin/impl/l5;->q()Lcom/applovin/impl/d0;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    if-eqz v1, :cond_17

    .line 372
    .line 373
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    :cond_17
    invoke-virtual {p0, v0}, Lcom/applovin/impl/j5;->a(Ljava/util/List;)Ljava/util/List;

    .line 377
    .line 378
    .line 379
    invoke-virtual {p0}, Lcom/applovin/impl/l5;->f()V

    .line 380
    .line 381
    .line 382
    goto :goto_2

    .line 383
    :cond_18
    invoke-virtual {p0}, Lcom/applovin/impl/j5;->j()V

    .line 384
    .line 385
    .line 386
    invoke-direct {p0}, Lcom/applovin/impl/l5;->m()V

    .line 387
    .line 388
    .line 389
    invoke-direct {p0}, Lcom/applovin/impl/l5;->o()V

    .line 390
    .line 391
    .line 392
    invoke-direct {p0}, Lcom/applovin/impl/l5;->n()V

    .line 393
    .line 394
    .line 395
    iget-object v0, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    .line 396
    .line 397
    invoke-virtual {p0, v0}, Lcom/applovin/impl/j5;->a(Lcom/applovin/impl/sdk/ad/b;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {p0}, Lcom/applovin/impl/l5;->f()V

    .line 401
    .line 402
    .line 403
    :goto_2
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    if-eqz v0, :cond_19

    .line 408
    .line 409
    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 410
    .line 411
    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 412
    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    .line 414
    .line 415
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    .line 417
    .line 418
    const-string v3, "Finished caching VAST ad #"

    .line 419
    .line 420
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    iget-object v3, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    .line 424
    .line 425
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdIdNumber()J

    .line 426
    .line 427
    .line 428
    move-result-wide v3

    .line 429
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    :cond_19
    iget-object v0, p0, Lcom/applovin/impl/l5;->q:Lcom/applovin/impl/l7;

    .line 440
    .line 441
    invoke-virtual {v0}, Lcom/applovin/impl/l7;->F1()V

    .line 442
    .line 443
    .line 444
    invoke-virtual {p0}, Lcom/applovin/impl/j5;->k()V

    .line 445
    .line 446
    .line 447
    return-void
.end method
