.class public final Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$f;
.super Lad/m;
.source "BillingRemoteDS.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->A()Lzc/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$f;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 2
    .line 3
    invoke-direct {p0}, Lad/m;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/String;Lzc/a;)V
    .locals 11

    .line 1
    const-string v0, "opId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "error"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "onError -> opId("

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, ") error("

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const/16 v2, 0x29

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v2, "BillingRemoteDS"

    .line 44
    .line 45
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3}, Lzc/a;->c()Lcom/shorttv/aar/billing/bean/ErrorType;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    sget-object v1, Lcom/shorttv/aar/billing/bean/ErrorType;->CREATE_FAILED:Lcom/shorttv/aar/billing/bean/ErrorType;

    .line 53
    .line 54
    if-ne v0, v1, :cond_0

    .line 55
    .line 56
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$f;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 58
    .line 59
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->j(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;Ljava/lang/String;)Lle/g;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    invoke-virtual {p1, p3}, Lle/g;->a(Lzc/a;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-virtual {p3}, Lzc/a;->c()Lcom/shorttv/aar/billing/bean/ErrorType;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    sget-object v0, Lcom/shorttv/aar/billing/bean/ErrorType;->PURCHASE_FAILED:Lcom/shorttv/aar/billing/bean/ErrorType;

    .line 73
    .line 74
    if-ne p1, v0, :cond_f

    .line 75
    .line 76
    const/4 p1, 0x0

    .line 77
    const/4 v0, 0x2

    .line 78
    const/4 v1, 0x0

    .line 79
    if-eqz p2, :cond_2

    .line 80
    .line 81
    sget-object v2, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 82
    .line 83
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->z()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-static {p2, v2, v1, v0, p1}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    const/4 v3, 0x1

    .line 92
    if-ne v2, v3, :cond_2

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    move v3, v1

    .line 96
    :goto_0
    iget-object v2, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$f;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 97
    .line 98
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->G()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    if-eqz v2, :cond_8

    .line 103
    .line 104
    if-eqz p2, :cond_8

    .line 105
    .line 106
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-nez v4, :cond_3

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_3
    instance-of v4, v2, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 114
    .line 115
    if-eqz v4, :cond_5

    .line 116
    .line 117
    move-object v4, v2

    .line 118
    check-cast v4, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 119
    .line 120
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    if-eqz p2, :cond_4

    .line 129
    .line 130
    iget-object p2, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$f;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 131
    .line 132
    invoke-static {p2, v2}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->m(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;Ljava/lang/Object;)Landroid/os/Bundle;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    :goto_1
    move-object v10, p2

    .line 137
    goto :goto_3

    .line 138
    :cond_4
    new-instance p2, Landroid/os/Bundle;

    .line 139
    .line 140
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_5
    instance-of v4, v2, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 145
    .line 146
    if-eqz v4, :cond_7

    .line 147
    .line 148
    move-object v4, v2

    .line 149
    check-cast v4, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 150
    .line 151
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result p2

    .line 159
    if-eqz p2, :cond_6

    .line 160
    .line 161
    iget-object p2, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$f;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 162
    .line 163
    invoke-static {p2, v2}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->m(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;Ljava/lang/Object;)Landroid/os/Bundle;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    goto :goto_1

    .line 168
    :cond_6
    new-instance p2, Landroid/os/Bundle;

    .line 169
    .line 170
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 171
    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_7
    new-instance p2, Landroid/os/Bundle;

    .line 175
    .line 176
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_8
    :goto_2
    new-instance p2, Landroid/os/Bundle;

    .line 181
    .line 182
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :goto_3
    sget-object v4, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 187
    .line 188
    iget-object p2, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$f;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 189
    .line 190
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->C()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    invoke-static {v4, p2, v1, v0, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-static {v10, p1}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p3}, Lzc/a;->a()Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    sget-object p2, Lcom/shorttv/aar/billing/bean/ErrorCode;->USER_CANCELED:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 206
    .line 207
    const-string v0, "inapp"

    .line 208
    .line 209
    const-string v1, "subscription"

    .line 210
    .line 211
    if-ne p1, p2, :cond_b

    .line 212
    .line 213
    iget-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$f;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 214
    .line 215
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->F()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p2

    .line 219
    const-string p3, "scene"

    .line 220
    .line 221
    invoke-virtual {v10, p3, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    sget-object p2, Lqf/e;->a:Lqf/e;

    .line 225
    .line 226
    invoke-virtual {p2}, Lqf/e;->b()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p2

    .line 230
    const-string p3, "platform"

    .line 231
    .line 232
    invoke-virtual {v10, p3, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    if-eqz v3, :cond_9

    .line 236
    .line 237
    move-object v0, v1

    .line 238
    :cond_9
    const-string p2, "sort"

    .line 239
    .line 240
    invoke-virtual {v10, p2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    if-eqz v3, :cond_a

    .line 244
    .line 245
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->H()I

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    invoke-virtual {v4, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->M(I)Landroid/os/Bundle;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    invoke-static {v10, p1}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 254
    .line 255
    .line 256
    :cond_a
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 257
    .line 258
    const/4 v9, 0x4

    .line 259
    const/4 p1, 0x0

    .line 260
    const-string v5, "order_create_cancel"

    .line 261
    .line 262
    const-wide/16 v7, 0x0

    .line 263
    .line 264
    move-object v6, v10

    .line 265
    move-object v10, p1

    .line 266
    invoke-static/range {v4 .. v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    goto :goto_7

    .line 270
    :cond_b
    iget-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$f;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 271
    .line 272
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->F()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    const-string p2, ""

    .line 277
    .line 278
    if-nez p1, :cond_c

    .line 279
    .line 280
    move-object v5, p2

    .line 281
    goto :goto_4

    .line 282
    :cond_c
    move-object v5, p1

    .line 283
    :goto_4
    if-eqz v3, :cond_d

    .line 284
    .line 285
    move-object v6, v1

    .line 286
    goto :goto_5

    .line 287
    :cond_d
    move-object v6, v0

    .line 288
    :goto_5
    iget-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$f;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 289
    .line 290
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->H()I

    .line 291
    .line 292
    .line 293
    move-result v7

    .line 294
    invoke-virtual {p3}, Lzc/a;->a()Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    invoke-virtual {p1}, Lcom/shorttv/aar/billing/bean/ErrorCode;->getValue()I

    .line 299
    .line 300
    .line 301
    move-result p1

    .line 302
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v8

    .line 306
    invoke-virtual {p3}, Lzc/a;->b()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    if-nez p1, :cond_e

    .line 311
    .line 312
    move-object v9, p2

    .line 313
    goto :goto_6

    .line 314
    :cond_e
    move-object v9, p1

    .line 315
    :goto_6
    invoke-virtual/range {v4 .. v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->J0(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p3}, Lzc/a;->a()Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    sget-object p2, Lcom/shorttv/aar/billing/bean/ErrorCode;->ITEM_ALREADY_OWNED:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 323
    .line 324
    if-ne p1, p2, :cond_f

    .line 325
    .line 326
    iget-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$f;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 327
    .line 328
    invoke-static {p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->i(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object p2

    .line 332
    invoke-static {p1, p2}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->g(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    :cond_f
    :goto_7
    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzc/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$f;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->I()Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0, p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$b;->a(Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lzc/h;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "opId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "list"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "onProductDetails -> opId("

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v3, 0x29

    .line 27
    .line 28
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v4, "BillingRemoteDS"

    .line 36
    .line 37
    invoke-virtual {v0, v4, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v2, ") list("

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-static {p2}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v4, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$f;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 74
    .line 75
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->o(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$f;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 79
    .line 80
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->j(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;Ljava/lang/String;)Lle/g;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    if-eqz v0, :cond_0

    .line 85
    .line 86
    invoke-virtual {v0, p2}, Lle/g;->f(Ljava/util/List;)V

    .line 87
    .line 88
    .line 89
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$f;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->L()Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$c;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    if-eqz v0, :cond_1

    .line 96
    .line 97
    invoke-interface {v0, p1, p2}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$c;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 98
    .line 99
    .line 100
    :cond_1
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lzc/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "opId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "onPurchased -> opId("

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ") list("

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-static {p2}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/16 v2, 0x29

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, "BillingRemoteDS"

    .line 43
    .line 44
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$f;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->M()Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$d;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    invoke-interface {v0, p1, p2}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$d;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method

.method public f(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onSetupFinished -> available("

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v2, 0x29

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "BillingRemoteDS"

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$f;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 31
    .line 32
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->p(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;Z)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$f;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->l(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->j(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;Ljava/lang/String;)Lle/g;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_0

    .line 46
    .line 47
    invoke-virtual {p1}, Lle/g;->g()V

    .line 48
    .line 49
    .line 50
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$f;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->k(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    iget-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$f;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->h(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$f;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 65
    .line 66
    invoke-static {p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->n(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;)V

    .line 67
    .line 68
    .line 69
    :goto_0
    return-void
.end method

.method public g(Lzc/d;)V
    .locals 1

    .line 1
    const-string v0, "details"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
