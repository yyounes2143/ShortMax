.class public Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SignUpRequestMarshaller;
.super Ljava/lang/Object;
.source "SignUpRequestMarshaller.java"


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
.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;)Lcom/amazonaws/Request;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;",
            ")",
            "Lcom/amazonaws/Request<",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_10

    .line 2
    .line 3
    new-instance v0, Lcom/amazonaws/DefaultRequest;

    .line 4
    .line 5
    const-string v1, "AmazonCognitoIdentityProvider"

    .line 6
    .line 7
    invoke-direct {v0, p1, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "AWSCognitoIdentityProviderService.SignUp"

    .line 11
    .line 12
    const-string v2, "X-Amz-Target"

    .line 13
    .line 14
    invoke-interface {v0, v2, v1}, Lcom/amazonaws/Request;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    .line 18
    .line 19
    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->k(Lcom/amazonaws/http/HttpMethodName;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "/"

    .line 23
    .line 24
    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->d(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Lcom/amazonaws/util/json/JsonUtils;->b(Ljava/io/Writer;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->s()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->s()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const-string v4, "ClientId"

    .line 50
    .line 51
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->f(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 52
    .line 53
    .line 54
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->e(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    goto/16 :goto_4

    .line 60
    .line 61
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->v()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    if-eqz v3, :cond_1

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->v()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    const-string v4, "SecretHash"

    .line 72
    .line 73
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->f(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 74
    .line 75
    .line 76
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->e(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 77
    .line 78
    .line 79
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->A()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    if-eqz v3, :cond_2

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->A()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    const-string v4, "Username"

    .line 90
    .line 91
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->f(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 92
    .line 93
    .line 94
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->e(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 95
    .line 96
    .line 97
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->u()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    if-eqz v3, :cond_3

    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->u()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    const-string v4, "Password"

    .line 108
    .line 109
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->f(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 110
    .line 111
    .line 112
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->e(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 113
    .line 114
    .line 115
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->y()Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    if-eqz v3, :cond_6

    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->y()Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    const-string v4, "UserAttributes"

    .line 126
    .line 127
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->f(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 128
    .line 129
    .line 130
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->b()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 131
    .line 132
    .line 133
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-eqz v4, :cond_5

    .line 142
    .line 143
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    check-cast v4, Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;

    .line 148
    .line 149
    if-eqz v4, :cond_4

    .line 150
    .line 151
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AttributeTypeJsonMarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AttributeTypeJsonMarshaller;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    invoke-virtual {v5, v4, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AttributeTypeJsonMarshaller;->b(Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_5
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->a()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 160
    .line 161
    .line 162
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->B()Ljava/util/List;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    if-eqz v3, :cond_9

    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->B()Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    const-string v4, "ValidationData"

    .line 173
    .line 174
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->f(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 175
    .line 176
    .line 177
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->b()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 178
    .line 179
    .line 180
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 185
    .line 186
    .line 187
    move-result v4

    .line 188
    if-eqz v4, :cond_8

    .line 189
    .line 190
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    check-cast v4, Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;

    .line 195
    .line 196
    if-eqz v4, :cond_7

    .line 197
    .line 198
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AttributeTypeJsonMarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AttributeTypeJsonMarshaller;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    invoke-virtual {v5, v4, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AttributeTypeJsonMarshaller;->b(Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 203
    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_8
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->a()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 207
    .line 208
    .line 209
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->r()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    if-eqz v3, :cond_a

    .line 214
    .line 215
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->r()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    const-string v4, "AnalyticsMetadata"

    .line 220
    .line 221
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->f(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 222
    .line 223
    .line 224
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AnalyticsMetadataTypeJsonMarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AnalyticsMetadataTypeJsonMarshaller;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    invoke-virtual {v4, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AnalyticsMetadataTypeJsonMarshaller;->b(Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 229
    .line 230
    .line 231
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->z()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    if-eqz v3, :cond_b

    .line 236
    .line 237
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->z()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    const-string v4, "UserContextData"

    .line 242
    .line 243
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->f(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 244
    .line 245
    .line 246
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserContextDataTypeJsonMarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserContextDataTypeJsonMarshaller;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    invoke-virtual {v4, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserContextDataTypeJsonMarshaller;->b(Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 251
    .line 252
    .line 253
    :cond_b
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->t()Ljava/util/Map;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    if-eqz v3, :cond_e

    .line 258
    .line 259
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->t()Ljava/util/Map;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    const-string v3, "ClientMetadata"

    .line 264
    .line 265
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->f(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 266
    .line 267
    .line 268
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 269
    .line 270
    .line 271
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    :cond_c
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 280
    .line 281
    .line 282
    move-result v3

    .line 283
    if-eqz v3, :cond_d

    .line 284
    .line 285
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    check-cast v3, Ljava/util/Map$Entry;

    .line 290
    .line 291
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v4

    .line 295
    check-cast v4, Ljava/lang/String;

    .line 296
    .line 297
    if-eqz v4, :cond_c

    .line 298
    .line 299
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    check-cast v3, Ljava/lang/String;

    .line 304
    .line 305
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->f(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 306
    .line 307
    .line 308
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->e(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 309
    .line 310
    .line 311
    goto :goto_3

    .line 312
    :cond_d
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 313
    .line 314
    .line 315
    :cond_e
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 316
    .line 317
    .line 318
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->close()V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    sget-object v1, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    .line 326
    .line 327
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    new-instance v2, Lcom/amazonaws/util/StringInputStream;

    .line 332
    .line 333
    invoke-direct {v2, p1}, Lcom/amazonaws/util/StringInputStream;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    invoke-interface {v0, v2}, Lcom/amazonaws/Request;->b(Ljava/io/InputStream;)V

    .line 337
    .line 338
    .line 339
    const-string p1, "Content-Length"

    .line 340
    .line 341
    array-length v1, v1

    .line 342
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    invoke-interface {v0, p1, v1}, Lcom/amazonaws/Request;->q(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    .line 348
    .line 349
    invoke-interface {v0}, Lcom/amazonaws/Request;->a()Ljava/util/Map;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    const-string v1, "Content-Type"

    .line 354
    .line 355
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result p1

    .line 359
    if-nez p1, :cond_f

    .line 360
    .line 361
    const-string p1, "application/x-amz-json-1.1"

    .line 362
    .line 363
    invoke-interface {v0, v1, p1}, Lcom/amazonaws/Request;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    :cond_f
    return-object v0

    .line 367
    :goto_4
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    .line 368
    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    .line 370
    .line 371
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .line 373
    .line 374
    const-string v2, "Unable to marshall request to JSON: "

    .line 375
    .line 376
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 391
    .line 392
    .line 393
    throw v0

    .line 394
    :cond_10
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    .line 395
    .line 396
    const-string v0, "Invalid argument passed to marshall(SignUpRequest)"

    .line 397
    .line 398
    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    throw p1
.end method
