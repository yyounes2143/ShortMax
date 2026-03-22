.class public final Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;
.super Ljava/lang/Object;
.source "PublicKeyCredentialCreationOptions.kt"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private attestation:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private authenticatorSelection:Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final challenge:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private excludeCredentials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/credentials/webauthn/PublicKeyCredentialDescriptor;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final json:Lorg/json/JSONObject;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pubKeyCredParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/credentials/webauthn/PublicKeyCredentialParameters;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final rp:Landroidx/credentials/webauthn/PublicKeyCredentialRpEntity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private timeout:J

.field private final user:Landroidx/credentials/webauthn/PublicKeyCredentialUserEntity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "requestJson"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lorg/json/JSONObject;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->json:Lorg/json/JSONObject;

    .line 15
    .line 16
    const-string p1, "challenge"

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    sget-object v1, Landroidx/credentials/webauthn/WebAuthnUtils;->Companion:Landroidx/credentials/webauthn/WebAuthnUtils$Companion;

    .line 23
    .line 24
    const-string v2, "challengeString"

    .line 25
    .line 26
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Landroidx/credentials/webauthn/WebAuthnUtils$Companion;->b64Decode(Ljava/lang/String;)[B

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->challenge:[B

    .line 34
    .line 35
    const-string p1, "rp"

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance v2, Landroidx/credentials/webauthn/PublicKeyCredentialRpEntity;

    .line 42
    .line 43
    const-string v3, "name"

    .line 44
    .line 45
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    const-string v5, "rpJson.getString(\"name\")"

    .line 50
    .line 51
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v5, "id"

    .line 55
    .line 56
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string v6, "rpJson.getString(\"id\")"

    .line 61
    .line 62
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {v2, v4, p1}, Landroidx/credentials/webauthn/PublicKeyCredentialRpEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iput-object v2, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->rp:Landroidx/credentials/webauthn/PublicKeyCredentialRpEntity;

    .line 69
    .line 70
    const-string p1, "user"

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    const-string v4, "rpUser.getString(\"id\")"

    .line 81
    .line 82
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v2}, Landroidx/credentials/webauthn/WebAuthnUtils$Companion;->b64Decode(Ljava/lang/String;)[B

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    new-instance v2, Landroidx/credentials/webauthn/PublicKeyCredentialUserEntity;

    .line 90
    .line 91
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    const-string v4, "rpUser.getString(\"name\")"

    .line 96
    .line 97
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string v4, "displayName"

    .line 101
    .line 102
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    const-string v4, "rpUser.getString(\"displayName\")"

    .line 107
    .line 108
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-direct {v2, v3, v1, p1}, Landroidx/credentials/webauthn/PublicKeyCredentialUserEntity;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iput-object v2, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->user:Landroidx/credentials/webauthn/PublicKeyCredentialUserEntity;

    .line 115
    .line 116
    const-string p1, "pubKeyCredParams"

    .line 117
    .line 118
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    const/4 v2, 0x0

    .line 132
    :goto_0
    if-ge v2, v1, :cond_0

    .line 133
    .line 134
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    new-instance v4, Landroidx/credentials/webauthn/PublicKeyCredentialParameters;

    .line 139
    .line 140
    const-string v5, "type"

    .line 141
    .line 142
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    const-string v6, "e.getString(\"type\")"

    .line 147
    .line 148
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    const-string v6, "alg"

    .line 152
    .line 153
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 154
    .line 155
    .line 156
    move-result-wide v6

    .line 157
    invoke-direct {v4, v5, v6, v7}, Landroidx/credentials/webauthn/PublicKeyCredentialParameters;-><init>(Ljava/lang/String;J)V

    .line 158
    .line 159
    .line 160
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    add-int/lit8 v2, v2, 0x1

    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->d1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    iput-object p1, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->pubKeyCredParams:Ljava/util/List;

    .line 171
    .line 172
    iget-object v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->json:Lorg/json/JSONObject;

    .line 173
    .line 174
    const-string v1, "timeout"

    .line 175
    .line 176
    const-wide/16 v2, 0x0

    .line 177
    .line 178
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 179
    .line 180
    .line 181
    move-result-wide v0

    .line 182
    iput-wide v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->timeout:J

    .line 183
    .line 184
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    iput-object v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->excludeCredentials:Ljava/util/List;

    .line 189
    .line 190
    new-instance v0, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;

    .line 191
    .line 192
    const/16 v6, 0xc

    .line 193
    .line 194
    const/4 v7, 0x0

    .line 195
    const-string v2, "platform"

    .line 196
    .line 197
    const-string v3, "required"

    .line 198
    .line 199
    const/4 v4, 0x0

    .line 200
    const/4 v5, 0x0

    .line 201
    move-object v1, v0

    .line 202
    invoke-direct/range {v1 .. v7}, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 203
    .line 204
    .line 205
    iput-object v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->authenticatorSelection:Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;

    .line 206
    .line 207
    iget-object v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->json:Lorg/json/JSONObject;

    .line 208
    .line 209
    const-string v1, "attestation"

    .line 210
    .line 211
    const-string v2, "none"

    .line 212
    .line 213
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    const-string v1, "json.optString(\"attestation\", \"none\")"

    .line 218
    .line 219
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    iput-object v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->attestation:Ljava/lang/String;

    .line 223
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    .line 229
    const-string v1, "Challenge "

    .line 230
    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    iget-object v1, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->challenge:[B

    .line 235
    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    const-string v1, "()"

    .line 240
    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    const-string v1, "WebAuthn"

    .line 249
    .line 250
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .line 257
    .line 258
    const-string v2, "rp "

    .line 259
    .line 260
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    iget-object v2, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->rp:Landroidx/credentials/webauthn/PublicKeyCredentialRpEntity;

    .line 264
    .line 265
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .line 279
    .line 280
    const-string v2, "user "

    .line 281
    .line 282
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    iget-object v2, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->user:Landroidx/credentials/webauthn/PublicKeyCredentialUserEntity;

    .line 286
    .line 287
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .line 301
    .line 302
    const-string v2, "pubKeyCredParams "

    .line 303
    .line 304
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .line 316
    .line 317
    new-instance p1, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .line 321
    .line 322
    const-string v0, "timeout "

    .line 323
    .line 324
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    iget-wide v2, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->timeout:J

    .line 328
    .line 329
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .line 338
    .line 339
    new-instance p1, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    .line 343
    .line 344
    const-string v0, "excludeCredentials "

    .line 345
    .line 346
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    iget-object v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->excludeCredentials:Ljava/util/List;

    .line 350
    .line 351
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    .line 360
    .line 361
    new-instance p1, Ljava/lang/StringBuilder;

    .line 362
    .line 363
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    .line 365
    .line 366
    const-string v0, "authenticatorSelection "

    .line 367
    .line 368
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    iget-object v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->authenticatorSelection:Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;

    .line 372
    .line 373
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object p1

    .line 380
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    .line 382
    .line 383
    new-instance p1, Ljava/lang/StringBuilder;

    .line 384
    .line 385
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    .line 387
    .line 388
    const-string v0, "attestation "

    .line 389
    .line 390
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    iget-object v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->attestation:Ljava/lang/String;

    .line 394
    .line 395
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    .line 404
    .line 405
    return-void
.end method


# virtual methods
.method public final getAttestation()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->attestation:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAuthenticatorSelection()Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->authenticatorSelection:Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getChallenge()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->challenge:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public final getExcludeCredentials()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/credentials/webauthn/PublicKeyCredentialDescriptor;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->excludeCredentials:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getJson()Lorg/json/JSONObject;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->json:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPubKeyCredParams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/credentials/webauthn/PublicKeyCredentialParameters;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->pubKeyCredParams:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRp()Landroidx/credentials/webauthn/PublicKeyCredentialRpEntity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->rp:Landroidx/credentials/webauthn/PublicKeyCredentialRpEntity;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTimeout()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->timeout:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getUser()Landroidx/credentials/webauthn/PublicKeyCredentialUserEntity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->user:Landroidx/credentials/webauthn/PublicKeyCredentialUserEntity;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setAttestation(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->attestation:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setAuthenticatorSelection(Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;)V
    .locals 1
    .param p1    # Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->authenticatorSelection:Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;

    .line 7
    .line 8
    return-void
.end method

.method public final setExcludeCredentials(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/credentials/webauthn/PublicKeyCredentialDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->excludeCredentials:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public final setTimeout(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->timeout:J

    .line 2
    .line 3
    return-void
.end method
