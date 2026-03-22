.class Lcom/amazonaws/mobile/client/AWSMobileClient$2;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient;->e(Landroid/content/Context;Lcom/amazonaws/mobile/config/AWSConfiguration;Lcom/amazonaws/mobile/client/Callback;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/Callback;

.field final synthetic b:Lcom/amazonaws/mobile/config/AWSConfiguration;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/amazonaws/mobile/client/AWSMobileClient;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/Callback;Lcom/amazonaws/mobile/config/AWSConfiguration;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->a:Lcom/amazonaws/mobile/client/Callback;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->b:Lcom/amazonaws/mobile/config/AWSConfiguration;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->c:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/amazonaws/mobile/client/AWSMobileClient;->g(Lcom/amazonaws/mobile/client/AWSMobileClient;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 9
    .line 10
    iget-object v2, v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->b:Lcom/amazonaws/mobile/config/AWSConfiguration;

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->a:Lcom/amazonaws/mobile/client/Callback;

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Lcom/amazonaws/mobile/client/AWSMobileClient;->u(Z)Lcom/amazonaws/mobile/client/UserStateDetails;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v2, v1}, Lcom/amazonaws/mobile/client/Callback;->onResult(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception v1

    .line 27
    goto/16 :goto_b

    .line 28
    .line 29
    :cond_0
    iput-boolean v3, v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    :try_start_1
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->b:Lcom/amazonaws/mobile/config/AWSConfiguration;

    .line 32
    .line 33
    const-string v2, "Auth"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lcom/amazonaws/mobile/config/AWSConfiguration;->e(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->b:Lcom/amazonaws/mobile/config/AWSConfiguration;

    .line 42
    .line 43
    const-string v2, "Auth"

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lcom/amazonaws/mobile/config/AWSConfiguration;->e(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v2, "Persistence"

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 58
    .line 59
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->b:Lcom/amazonaws/mobile/config/AWSConfiguration;

    .line 60
    .line 61
    const-string v4, "Auth"

    .line 62
    .line 63
    invoke-virtual {v2, v4}, Lcom/amazonaws/mobile/config/AWSConfiguration;->e(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const-string v4, "Persistence"

    .line 68
    .line 69
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    iput-boolean v2, v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->z:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception v1

    .line 77
    goto/16 :goto_a

    .line 78
    .line 79
    :cond_1
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 80
    .line 81
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->b:Lcom/amazonaws/mobile/config/AWSConfiguration;

    .line 82
    .line 83
    invoke-virtual {v2}, Lcom/amazonaws/mobile/config/AWSConfiguration;->d()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    iput-object v2, v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->y:Ljava/lang/String;

    .line 88
    .line 89
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 90
    .line 91
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->c:Landroid/content/Context;

    .line 92
    .line 93
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    iput-object v2, v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->f:Landroid/content/Context;

    .line 98
    .line 99
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 100
    .line 101
    new-instance v2, Lcom/amazonaws/mobile/client/AWSMobileClientStore;

    .line 102
    .line 103
    invoke-direct {v2, v1}, Lcom/amazonaws/mobile/client/AWSMobileClientStore;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient;)V

    .line 104
    .line 105
    .line 106
    iput-object v2, v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->r:Lcom/amazonaws/mobile/client/KeyValueStore;

    .line 107
    .line 108
    new-instance v1, Lcom/amazonaws/mobile/auth/core/IdentityManager;

    .line 109
    .line 110
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 111
    .line 112
    iget-object v2, v2, Lcom/amazonaws/mobile/client/AWSMobileClient;->f:Landroid/content/Context;

    .line 113
    .line 114
    invoke-direct {v1, v2}, Lcom/amazonaws/mobile/auth/core/IdentityManager;-><init>(Landroid/content/Context;)V

    .line 115
    .line 116
    .line 117
    const/4 v2, 0x0

    .line 118
    invoke-virtual {v1, v2}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->c(Z)V

    .line 119
    .line 120
    .line 121
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->b:Lcom/amazonaws/mobile/config/AWSConfiguration;

    .line 122
    .line 123
    invoke-virtual {v1, v2}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->i(Lcom/amazonaws/mobile/config/AWSConfiguration;)V

    .line 124
    .line 125
    .line 126
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 127
    .line 128
    iget-boolean v2, v2, Lcom/amazonaws/mobile/client/AWSMobileClient;->z:Z

    .line 129
    .line 130
    invoke-virtual {v1, v2}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->k(Z)V

    .line 131
    .line 132
    .line 133
    invoke-static {v1}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->j(Lcom/amazonaws/mobile/auth/core/IdentityManager;)V

    .line 134
    .line 135
    .line 136
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 137
    .line 138
    iget-object v4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->b:Lcom/amazonaws/mobile/config/AWSConfiguration;

    .line 139
    .line 140
    invoke-static {v2, v4}, Lcom/amazonaws/mobile/client/AWSMobileClient;->h(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/config/AWSConfiguration;)V

    .line 141
    .line 142
    .line 143
    new-instance v2, Lcom/amazonaws/mobile/client/AWSMobileClient$2$1;

    .line 144
    .line 145
    invoke-direct {v2, p0, v1}, Lcom/amazonaws/mobile/client/AWSMobileClient$2$1;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient$2;Lcom/amazonaws/mobile/auth/core/IdentityManager;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v2}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->b(Lcom/amazonaws/mobile/auth/core/SignInStateChangeListener;)V

    .line 149
    .line 150
    .line 151
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->b:Lcom/amazonaws/mobile/config/AWSConfiguration;

    .line 152
    .line 153
    const-string v2, "CredentialsProvider"

    .line 154
    .line 155
    invoke-virtual {v1, v2}, Lcom/amazonaws/mobile/config/AWSConfiguration;->e(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    const/4 v2, 0x0

    .line 160
    if-eqz v1, :cond_3

    .line 161
    .line 162
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->b:Lcom/amazonaws/mobile/config/AWSConfiguration;

    .line 163
    .line 164
    const-string v4, "CredentialsProvider"

    .line 165
    .line 166
    invoke-virtual {v1, v4}, Lcom/amazonaws/mobile/config/AWSConfiguration;->e(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    const-string v4, "CognitoIdentity"

    .line 171
    .line 172
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 173
    .line 174
    .line 175
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    if-eqz v1, :cond_3

    .line 177
    .line 178
    :try_start_3
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->b:Lcom/amazonaws/mobile/config/AWSConfiguration;

    .line 179
    .line 180
    const-string v4, "CredentialsProvider"

    .line 181
    .line 182
    invoke-virtual {v1, v4}, Lcom/amazonaws/mobile/config/AWSConfiguration;->e(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    const-string v4, "CognitoIdentity"

    .line 187
    .line 188
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    iget-object v4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->b:Lcom/amazonaws/mobile/config/AWSConfiguration;

    .line 193
    .line 194
    invoke-virtual {v4}, Lcom/amazonaws/mobile/config/AWSConfiguration;->b()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    const-string v4, "PoolId"

    .line 203
    .line 204
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    const-string v5, "Region"

    .line 209
    .line 210
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    new-instance v5, Lcom/amazonaws/ClientConfiguration;

    .line 215
    .line 216
    invoke-direct {v5}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    .line 217
    .line 218
    .line 219
    new-instance v6, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .line 223
    .line 224
    const-string v7, "AWSMobileClient "

    .line 225
    .line 226
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    iget-object v7, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->b:Lcom/amazonaws/mobile/config/AWSConfiguration;

    .line 230
    .line 231
    invoke-virtual {v7}, Lcom/amazonaws/mobile/config/AWSConfiguration;->c()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v7

    .line 235
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    invoke-virtual {v5, v6}, Lcom/amazonaws/ClientConfiguration;->l(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    iget-object v6, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 246
    .line 247
    iget-object v6, v6, Lcom/amazonaws/mobile/client/AWSMobileClient;->y:Ljava/lang/String;

    .line 248
    .line 249
    if-eqz v6, :cond_2

    .line 250
    .line 251
    invoke-virtual {v5, v6}, Lcom/amazonaws/ClientConfiguration;->m(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    goto :goto_1

    .line 255
    :catch_1
    move-exception v1

    .line 256
    goto :goto_2

    .line 257
    :cond_2
    :goto_1
    new-instance v6, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;

    .line 258
    .line 259
    new-instance v7, Lcom/amazonaws/auth/AnonymousAWSCredentials;

    .line 260
    .line 261
    invoke-direct {v7}, Lcom/amazonaws/auth/AnonymousAWSCredentials;-><init>()V

    .line 262
    .line 263
    .line 264
    invoke-direct {v6, v7, v5}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    .line 265
    .line 266
    .line 267
    invoke-static {v1}, Lcom/amazonaws/regions/Region;->f(Ljava/lang/String;)Lcom/amazonaws/regions/Region;

    .line 268
    .line 269
    .line 270
    move-result-object v5

    .line 271
    invoke-virtual {v6, v5}, Lcom/amazonaws/AmazonWebServiceClient;->a(Lcom/amazonaws/regions/Region;)V

    .line 272
    .line 273
    .line 274
    iget-object v5, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 275
    .line 276
    new-instance v7, Lcom/amazonaws/mobile/client/AWSMobileClientCognitoIdentityProvider;

    .line 277
    .line 278
    invoke-direct {v7, v2, v4, v6}, Lcom/amazonaws/mobile/client/AWSMobileClientCognitoIdentityProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;)V

    .line 279
    .line 280
    .line 281
    iput-object v7, v5, Lcom/amazonaws/mobile/client/AWSMobileClient;->s:Lcom/amazonaws/mobile/client/AWSMobileClientCognitoIdentityProvider;

    .line 282
    .line 283
    iget-object v4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 284
    .line 285
    new-instance v5, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    .line 286
    .line 287
    iget-object v6, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 288
    .line 289
    iget-object v7, v6, Lcom/amazonaws/mobile/client/AWSMobileClient;->f:Landroid/content/Context;

    .line 290
    .line 291
    iget-object v6, v6, Lcom/amazonaws/mobile/client/AWSMobileClient;->s:Lcom/amazonaws/mobile/client/AWSMobileClientCognitoIdentityProvider;

    .line 292
    .line 293
    invoke-static {v1}, Lcom/amazonaws/regions/Regions;->fromName(Ljava/lang/String;)Lcom/amazonaws/regions/Regions;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    invoke-direct {v5, v7, v6, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;-><init>(Landroid/content/Context;Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Lcom/amazonaws/regions/Regions;)V

    .line 298
    .line 299
    .line 300
    iput-object v5, v4, Lcom/amazonaws/mobile/client/AWSMobileClient;->c:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    .line 301
    .line 302
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 303
    .line 304
    iget-object v4, v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->c:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    .line 305
    .line 306
    iget-boolean v1, v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->z:Z

    .line 307
    .line 308
    invoke-virtual {v4, v1}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->F(Z)V

    .line 309
    .line 310
    .line 311
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 312
    .line 313
    iget-object v4, v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->y:Ljava/lang/String;

    .line 314
    .line 315
    if-eqz v4, :cond_3

    .line 316
    .line 317
    iget-object v1, v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->c:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    .line 318
    .line 319
    invoke-virtual {v1, v4}, Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;->G(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 320
    .line 321
    .line 322
    goto :goto_3

    .line 323
    :goto_2
    :try_start_4
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->a:Lcom/amazonaws/mobile/client/Callback;

    .line 324
    .line 325
    new-instance v3, Ljava/lang/RuntimeException;

    .line 326
    .line 327
    const-string v4, "Failed to initialize Cognito Identity; please check your awsconfiguration.json"

    .line 328
    .line 329
    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 330
    .line 331
    .line 332
    invoke-interface {v2, v3}, Lcom/amazonaws/mobile/client/Callback;->onError(Ljava/lang/Exception;)V

    .line 333
    .line 334
    .line 335
    monitor-exit v0

    .line 336
    return-void

    .line 337
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->b:Lcom/amazonaws/mobile/config/AWSConfiguration;

    .line 338
    .line 339
    const-string v4, "CognitoUserPool"

    .line 340
    .line 341
    invoke-virtual {v1, v4}, Lcom/amazonaws/mobile/config/AWSConfiguration;->e(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 342
    .line 343
    .line 344
    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 345
    if-eqz v1, :cond_6

    .line 346
    .line 347
    :try_start_5
    iget-object v4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 348
    .line 349
    const-string v5, "PoolId"

    .line 350
    .line 351
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v5

    .line 355
    iput-object v5, v4, Lcom/amazonaws/mobile/client/AWSMobileClient;->x:Ljava/lang/String;

    .line 356
    .line 357
    const-string v4, "AppClientId"

    .line 358
    .line 359
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v8

    .line 363
    const-string v4, "AppClientSecret"

    .line 364
    .line 365
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v9

    .line 369
    const-string v4, "PinpointAppId"

    .line 370
    .line 371
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v4

    .line 375
    const-string v5, ""

    .line 376
    .line 377
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v5

    .line 381
    if-eqz v5, :cond_4

    .line 382
    .line 383
    move-object v11, v2

    .line 384
    goto :goto_4

    .line 385
    :cond_4
    move-object v11, v4

    .line 386
    :goto_4
    const-string v2, "Endpoint"

    .line 387
    .line 388
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v12

    .line 392
    new-instance v2, Lcom/amazonaws/ClientConfiguration;

    .line 393
    .line 394
    invoke-direct {v2}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    .line 395
    .line 396
    .line 397
    new-instance v4, Ljava/lang/StringBuilder;

    .line 398
    .line 399
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 400
    .line 401
    .line 402
    const-string v5, "AWSMobileClient "

    .line 403
    .line 404
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    iget-object v5, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->b:Lcom/amazonaws/mobile/config/AWSConfiguration;

    .line 408
    .line 409
    invoke-virtual {v5}, Lcom/amazonaws/mobile/config/AWSConfiguration;->c()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v5

    .line 413
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v4

    .line 420
    invoke-virtual {v2, v4}, Lcom/amazonaws/ClientConfiguration;->l(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    iget-object v4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 424
    .line 425
    iget-object v4, v4, Lcom/amazonaws/mobile/client/AWSMobileClient;->y:Ljava/lang/String;

    .line 426
    .line 427
    if-eqz v4, :cond_5

    .line 428
    .line 429
    invoke-virtual {v2, v4}, Lcom/amazonaws/ClientConfiguration;->m(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    goto :goto_5

    .line 433
    :catch_2
    move-exception v1

    .line 434
    goto :goto_6

    .line 435
    :cond_5
    :goto_5
    iget-object v4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 436
    .line 437
    new-instance v5, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;

    .line 438
    .line 439
    new-instance v6, Lcom/amazonaws/auth/AnonymousAWSCredentials;

    .line 440
    .line 441
    invoke-direct {v6}, Lcom/amazonaws/auth/AnonymousAWSCredentials;-><init>()V

    .line 442
    .line 443
    .line 444
    invoke-direct {v5, v6, v2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    .line 445
    .line 446
    .line 447
    iput-object v5, v4, Lcom/amazonaws/mobile/client/AWSMobileClient;->u:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    .line 448
    .line 449
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 450
    .line 451
    iget-object v2, v2, Lcom/amazonaws/mobile/client/AWSMobileClient;->u:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    .line 452
    .line 453
    const-string v4, "Region"

    .line 454
    .line 455
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v4

    .line 459
    invoke-static {v4}, Lcom/amazonaws/regions/Regions;->fromName(Ljava/lang/String;)Lcom/amazonaws/regions/Regions;

    .line 460
    .line 461
    .line 462
    move-result-object v4

    .line 463
    invoke-static {v4}, Lcom/amazonaws/regions/Region;->e(Lcom/amazonaws/regions/Regions;)Lcom/amazonaws/regions/Region;

    .line 464
    .line 465
    .line 466
    move-result-object v4

    .line 467
    invoke-interface {v2, v4}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;->a(Lcom/amazonaws/regions/Region;)V

    .line 468
    .line 469
    .line 470
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 471
    .line 472
    const-string v4, "cognito-idp.%s.amazonaws.com/%s"

    .line 473
    .line 474
    const-string v5, "Region"

    .line 475
    .line 476
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v5

    .line 480
    const-string v6, "PoolId"

    .line 481
    .line 482
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    filled-new-array {v5, v1}, [Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    iput-object v1, v2, Lcom/amazonaws/mobile/client/AWSMobileClient;->e:Ljava/lang/String;

    .line 495
    .line 496
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 497
    .line 498
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 499
    .line 500
    iget-object v4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 501
    .line 502
    iget-object v6, v4, Lcom/amazonaws/mobile/client/AWSMobileClient;->f:Landroid/content/Context;

    .line 503
    .line 504
    iget-object v7, v4, Lcom/amazonaws/mobile/client/AWSMobileClient;->x:Ljava/lang/String;

    .line 505
    .line 506
    iget-object v10, v4, Lcom/amazonaws/mobile/client/AWSMobileClient;->u:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    .line 507
    .line 508
    move-object v5, v2

    .line 509
    invoke-direct/range {v5 .. v12}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    iput-object v2, v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 513
    .line 514
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 515
    .line 516
    iget-object v2, v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 517
    .line 518
    iget-boolean v1, v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->z:Z

    .line 519
    .line 520
    invoke-virtual {v2, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->j(Z)V

    .line 521
    .line 522
    .line 523
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 524
    .line 525
    new-instance v2, Lcom/amazonaws/mobile/client/DeviceOperations;

    .line 526
    .line 527
    iget-object v4, v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->u:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    .line 528
    .line 529
    invoke-direct {v2, v1, v4}, Lcom/amazonaws/mobile/client/DeviceOperations;-><init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;)V

    .line 530
    .line 531
    .line 532
    iput-object v2, v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->t:Lcom/amazonaws/mobile/client/DeviceOperations;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 533
    .line 534
    goto :goto_7

    .line 535
    :goto_6
    :try_start_6
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->a:Lcom/amazonaws/mobile/client/Callback;

    .line 536
    .line 537
    new-instance v3, Ljava/lang/RuntimeException;

    .line 538
    .line 539
    const-string v4, "Failed to initialize Cognito Userpool; please check your awsconfiguration.json"

    .line 540
    .line 541
    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 542
    .line 543
    .line 544
    invoke-interface {v2, v3}, Lcom/amazonaws/mobile/client/Callback;->onError(Ljava/lang/Exception;)V

    .line 545
    .line 546
    .line 547
    monitor-exit v0

    .line 548
    return-void

    .line 549
    :cond_6
    :goto_7
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 550
    .line 551
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->b:Lcom/amazonaws/mobile/config/AWSConfiguration;

    .line 552
    .line 553
    invoke-virtual {v1, v2}, Lcom/amazonaws/mobile/client/AWSMobileClient;->n(Lcom/amazonaws/mobile/config/AWSConfiguration;)Lorg/json/JSONObject;

    .line 554
    .line 555
    .line 556
    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 557
    if-eqz v1, :cond_8

    .line 558
    .line 559
    :try_start_7
    const-string v2, "TokenURI"

    .line 560
    .line 561
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 562
    .line 563
    .line 564
    move-result v2

    .line 565
    if-eqz v2, :cond_7

    .line 566
    .line 567
    invoke-static {}, Lcom/amazonaws/mobile/client/AWSMobileClient;->i()Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v1

    .line 571
    const-string v2, "initialize: OAuth2 client detected"

    .line 572
    .line 573
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    .line 575
    .line 576
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 577
    .line 578
    new-instance v2, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    .line 579
    .line 580
    iget-object v4, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 581
    .line 582
    iget-object v5, v4, Lcom/amazonaws/mobile/client/AWSMobileClient;->f:Landroid/content/Context;

    .line 583
    .line 584
    invoke-direct {v2, v5, v4}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;-><init>(Landroid/content/Context;Lcom/amazonaws/mobile/client/AWSMobileClient;)V

    .line 585
    .line 586
    .line 587
    iput-object v2, v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->w:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    .line 588
    .line 589
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 590
    .line 591
    iget-object v2, v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->w:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    .line 592
    .line 593
    iget-boolean v1, v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->z:Z

    .line 594
    .line 595
    invoke-virtual {v2, v1}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->e(Z)V

    .line 596
    .line 597
    .line 598
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 599
    .line 600
    iget-object v2, v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->w:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    .line 601
    .line 602
    iget-object v1, v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->y:Ljava/lang/String;

    .line 603
    .line 604
    invoke-virtual {v2, v1}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->f(Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    goto :goto_9

    .line 608
    :catch_3
    move-exception v1

    .line 609
    goto :goto_8

    .line 610
    :cond_7
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 611
    .line 612
    invoke-static {v2, v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->j(Lcom/amazonaws/mobile/client/AWSMobileClient;Lorg/json/JSONObject;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 613
    .line 614
    .line 615
    goto :goto_9

    .line 616
    :goto_8
    :try_start_8
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->a:Lcom/amazonaws/mobile/client/Callback;

    .line 617
    .line 618
    new-instance v4, Ljava/lang/RuntimeException;

    .line 619
    .line 620
    const-string v5, "Failed to initialize OAuth, please check your awsconfiguration.json"

    .line 621
    .line 622
    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 623
    .line 624
    .line 625
    invoke-interface {v2, v4}, Lcom/amazonaws/mobile/client/Callback;->onError(Ljava/lang/Exception;)V

    .line 626
    .line 627
    .line 628
    :cond_8
    :goto_9
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 629
    .line 630
    iget-object v2, v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->c:Lcom/amazonaws/auth/CognitoCachingCredentialsProvider;

    .line 631
    .line 632
    if-nez v2, :cond_9

    .line 633
    .line 634
    iget-object v2, v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->d:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 635
    .line 636
    if-nez v2, :cond_9

    .line 637
    .line 638
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->a:Lcom/amazonaws/mobile/client/Callback;

    .line 639
    .line 640
    new-instance v2, Ljava/lang/RuntimeException;

    .line 641
    .line 642
    const-string v3, "Neither Cognito Identity or Cognito UserPool was used. At least one must be present to use AWSMobileClient."

    .line 643
    .line 644
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 645
    .line 646
    .line 647
    invoke-interface {v1, v2}, Lcom/amazonaws/mobile/client/Callback;->onError(Ljava/lang/Exception;)V

    .line 648
    .line 649
    .line 650
    monitor-exit v0

    .line 651
    return-void

    .line 652
    :cond_9
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->b:Lcom/amazonaws/mobile/config/AWSConfiguration;

    .line 653
    .line 654
    iput-object v2, v1, Lcom/amazonaws/mobile/client/AWSMobileClient;->b:Lcom/amazonaws/mobile/config/AWSConfiguration;

    .line 655
    .line 656
    invoke-virtual {v1, v3}, Lcom/amazonaws/mobile/client/AWSMobileClient;->u(Z)Lcom/amazonaws/mobile/client/UserStateDetails;

    .line 657
    .line 658
    .line 659
    move-result-object v1

    .line 660
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->a:Lcom/amazonaws/mobile/client/Callback;

    .line 661
    .line 662
    invoke-interface {v2, v1}, Lcom/amazonaws/mobile/client/Callback;->onResult(Ljava/lang/Object;)V

    .line 663
    .line 664
    .line 665
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->d:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 666
    .line 667
    invoke-virtual {v2, v1}, Lcom/amazonaws/mobile/client/AWSMobileClient;->H(Lcom/amazonaws/mobile/client/UserStateDetails;)V

    .line 668
    .line 669
    .line 670
    monitor-exit v0

    .line 671
    return-void

    .line 672
    :goto_a
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2;->a:Lcom/amazonaws/mobile/client/Callback;

    .line 673
    .line 674
    new-instance v3, Ljava/lang/RuntimeException;

    .line 675
    .line 676
    const-string v4, "Failed to initialize AWSMobileClient; please check your awsconfiguration.json"

    .line 677
    .line 678
    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 679
    .line 680
    .line 681
    invoke-interface {v2, v3}, Lcom/amazonaws/mobile/client/Callback;->onError(Ljava/lang/Exception;)V

    .line 682
    .line 683
    .line 684
    monitor-exit v0

    .line 685
    return-void

    .line 686
    :goto_b
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 687
    throw v1
.end method
