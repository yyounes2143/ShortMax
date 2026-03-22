.class public Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InitiateAuthRequestMarshaller;
.super Ljava/lang/Object;
.source "InitiateAuthRequestMarshaller.java"


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
.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;)Lcom/amazonaws/Request;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;",
            ")",
            "Lcom/amazonaws/Request<",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_b

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
    const-string v1, "AWSCognitoIdentityProviderService.InitiateAuth"

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
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->t()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->t()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const-string v4, "AuthFlow"

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
    goto/16 :goto_3

    .line 60
    .line 61
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->u()Ljava/util/Map;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    if-eqz v3, :cond_3

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->u()Ljava/util/Map;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    const-string v4, "AuthParameters"

    .line 72
    .line 73
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->f(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 74
    .line 75
    .line 76
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 77
    .line 78
    .line 79
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_2

    .line 92
    .line 93
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    check-cast v4, Ljava/util/Map$Entry;

    .line 98
    .line 99
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    check-cast v5, Ljava/lang/String;

    .line 104
    .line 105
    if-eqz v5, :cond_1

    .line 106
    .line 107
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    check-cast v4, Ljava/lang/String;

    .line 112
    .line 113
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->f(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 114
    .line 115
    .line 116
    invoke-interface {v2, v5}, Lcom/amazonaws/util/json/AwsJsonWriter;->e(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_2
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 121
    .line 122
    .line 123
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->y()Ljava/util/Map;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    if-eqz v3, :cond_6

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->y()Ljava/util/Map;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    const-string v4, "ClientMetadata"

    .line 134
    .line 135
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->f(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 136
    .line 137
    .line 138
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 139
    .line 140
    .line 141
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    if-eqz v4, :cond_5

    .line 154
    .line 155
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    check-cast v4, Ljava/util/Map$Entry;

    .line 160
    .line 161
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    check-cast v5, Ljava/lang/String;

    .line 166
    .line 167
    if-eqz v5, :cond_4

    .line 168
    .line 169
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    check-cast v4, Ljava/lang/String;

    .line 174
    .line 175
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->f(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 176
    .line 177
    .line 178
    invoke-interface {v2, v5}, Lcom/amazonaws/util/json/AwsJsonWriter;->e(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_5
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 183
    .line 184
    .line 185
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->v()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    if-eqz v3, :cond_7

    .line 190
    .line 191
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->v()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    const-string v4, "ClientId"

    .line 196
    .line 197
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->f(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 198
    .line 199
    .line 200
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->e(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 201
    .line 202
    .line 203
    :cond_7
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->s()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    if-eqz v3, :cond_8

    .line 208
    .line 209
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->s()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    const-string v4, "AnalyticsMetadata"

    .line 214
    .line 215
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->f(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 216
    .line 217
    .line 218
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AnalyticsMetadataTypeJsonMarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AnalyticsMetadataTypeJsonMarshaller;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    invoke-virtual {v4, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AnalyticsMetadataTypeJsonMarshaller;->b(Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 223
    .line 224
    .line 225
    :cond_8
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->z()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    if-eqz v3, :cond_9

    .line 230
    .line 231
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;->z()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    const-string v3, "UserContextData"

    .line 236
    .line 237
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->f(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 238
    .line 239
    .line 240
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserContextDataTypeJsonMarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserContextDataTypeJsonMarshaller;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    invoke-virtual {v3, p1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserContextDataTypeJsonMarshaller;->b(Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 245
    .line 246
    .line 247
    :cond_9
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 248
    .line 249
    .line 250
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->close()V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    sget-object v1, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    .line 258
    .line 259
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    new-instance v2, Lcom/amazonaws/util/StringInputStream;

    .line 264
    .line 265
    invoke-direct {v2, p1}, Lcom/amazonaws/util/StringInputStream;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-interface {v0, v2}, Lcom/amazonaws/Request;->b(Ljava/io/InputStream;)V

    .line 269
    .line 270
    .line 271
    const-string p1, "Content-Length"

    .line 272
    .line 273
    array-length v1, v1

    .line 274
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-interface {v0, p1, v1}, Lcom/amazonaws/Request;->q(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    .line 280
    .line 281
    invoke-interface {v0}, Lcom/amazonaws/Request;->a()Ljava/util/Map;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    const-string v1, "Content-Type"

    .line 286
    .line 287
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result p1

    .line 291
    if-nez p1, :cond_a

    .line 292
    .line 293
    const-string p1, "application/x-amz-json-1.1"

    .line 294
    .line 295
    invoke-interface {v0, v1, p1}, Lcom/amazonaws/Request;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    :cond_a
    return-object v0

    .line 299
    :goto_3
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    .line 300
    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .line 305
    .line 306
    const-string v2, "Unable to marshall request to JSON: "

    .line 307
    .line 308
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 323
    .line 324
    .line 325
    throw v0

    .line 326
    :cond_b
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    .line 327
    .line 328
    const-string v0, "Invalid argument passed to marshall(InitiateAuthRequest)"

    .line 329
    .line 330
    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    throw p1
.end method
