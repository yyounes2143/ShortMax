.class final Lcom/android/billingclient/api/u;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"


# static fields
.field static final A:Lcom/android/billingclient/api/BillingResult;

.field static final B:Lcom/android/billingclient/api/BillingResult;

.field static final C:Lcom/android/billingclient/api/BillingResult;

.field static final D:Lcom/android/billingclient/api/BillingResult;

.field static final E:Lcom/android/billingclient/api/BillingResult;

.field static final F:Lcom/android/billingclient/api/BillingResult;

.field static final a:Lcom/android/billingclient/api/BillingResult;

.field static final b:Lcom/android/billingclient/api/BillingResult;

.field static final c:Lcom/android/billingclient/api/BillingResult;

.field static final d:Lcom/android/billingclient/api/BillingResult;

.field static final e:Lcom/android/billingclient/api/BillingResult;

.field static final f:Lcom/android/billingclient/api/BillingResult;

.field static final g:Lcom/android/billingclient/api/BillingResult;

.field static final h:Lcom/android/billingclient/api/BillingResult;

.field static final i:Lcom/android/billingclient/api/BillingResult;

.field static final j:Lcom/android/billingclient/api/BillingResult;

.field static final k:Lcom/android/billingclient/api/BillingResult;

.field static final l:Lcom/android/billingclient/api/BillingResult;

.field static final m:Lcom/android/billingclient/api/BillingResult;

.field static final n:Lcom/android/billingclient/api/BillingResult;

.field static final o:Lcom/android/billingclient/api/BillingResult;

.field static final p:Lcom/android/billingclient/api/BillingResult;

.field static final q:Lcom/android/billingclient/api/BillingResult;

.field static final r:Lcom/android/billingclient/api/BillingResult;

.field static final s:Lcom/android/billingclient/api/BillingResult;

.field static final t:Lcom/android/billingclient/api/BillingResult;

.field static final u:Lcom/android/billingclient/api/BillingResult;

.field static final v:Lcom/android/billingclient/api/BillingResult;

.field static final w:Lcom/android/billingclient/api/BillingResult;

.field static final x:Lcom/android/billingclient/api/BillingResult;

.field static final y:Lcom/android/billingclient/api/BillingResult;

.field static final z:Lcom/android/billingclient/api/BillingResult;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 7
    .line 8
    .line 9
    const-string v2, "Google Play In-app Billing API version is less than 3"

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 22
    .line 23
    .line 24
    const-string v2, "Google Play In-app Billing API version is less than 9"

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/android/billingclient/api/u;->a:Lcom/android/billingclient/api/BillingResult;

    .line 34
    .line 35
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 40
    .line 41
    .line 42
    const-string v1, "Billing service unavailable on device."

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Lcom/android/billingclient/api/u;->b:Lcom/android/billingclient/api/BillingResult;

    .line 52
    .line 53
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const/4 v2, 0x2

    .line 58
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    sput-object v0, Lcom/android/billingclient/api/u;->c:Lcom/android/billingclient/api/BillingResult;

    .line 69
    .line 70
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const/4 v1, 0x5

    .line 75
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 76
    .line 77
    .line 78
    const-string v3, "Client is already in the process of connecting to billing service."

    .line 79
    .line 80
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    sput-object v0, Lcom/android/billingclient/api/u;->d:Lcom/android/billingclient/api/BillingResult;

    .line 88
    .line 89
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 94
    .line 95
    .line 96
    const-string v3, "The list of SKUs can\'t be empty."

    .line 97
    .line 98
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 102
    .line 103
    .line 104
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 109
    .line 110
    .line 111
    const-string v3, "SKU type can\'t be empty."

    .line 112
    .line 113
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 117
    .line 118
    .line 119
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 124
    .line 125
    .line 126
    const-string v3, "Product type can\'t be empty."

    .line 127
    .line 128
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    sput-object v0, Lcom/android/billingclient/api/u;->e:Lcom/android/billingclient/api/BillingResult;

    .line 136
    .line 137
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    const/4 v3, -0x2

    .line 142
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 143
    .line 144
    .line 145
    const-string v4, "Client does not support extra params."

    .line 146
    .line 147
    invoke-virtual {v0, v4}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    sput-object v0, Lcom/android/billingclient/api/u;->f:Lcom/android/billingclient/api/BillingResult;

    .line 155
    .line 156
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 161
    .line 162
    .line 163
    const-string v4, "Invalid purchase token."

    .line 164
    .line 165
    invoke-virtual {v0, v4}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    sput-object v0, Lcom/android/billingclient/api/u;->g:Lcom/android/billingclient/api/BillingResult;

    .line 173
    .line 174
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    const/4 v4, 0x6

    .line 179
    invoke-virtual {v0, v4}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 180
    .line 181
    .line 182
    const-string v5, "An internal error occurred."

    .line 183
    .line 184
    invoke-virtual {v0, v5}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    sput-object v0, Lcom/android/billingclient/api/u;->h:Lcom/android/billingclient/api/BillingResult;

    .line 192
    .line 193
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 198
    .line 199
    .line 200
    const-string v5, "SKU can\'t be null."

    .line 201
    .line 202
    invoke-virtual {v0, v5}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 206
    .line 207
    .line 208
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    const/4 v5, 0x0

    .line 213
    invoke-virtual {v0, v5}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    sput-object v0, Lcom/android/billingclient/api/u;->i:Lcom/android/billingclient/api/BillingResult;

    .line 221
    .line 222
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    const/4 v5, -0x1

    .line 227
    invoke-virtual {v0, v5}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 228
    .line 229
    .line 230
    const-string v5, "Service connection is disconnected."

    .line 231
    .line 232
    invoke-virtual {v0, v5}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    sput-object v0, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 240
    .line 241
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 246
    .line 247
    .line 248
    const-string v2, "Timeout communicating with service."

    .line 249
    .line 250
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    sput-object v0, Lcom/android/billingclient/api/u;->k:Lcom/android/billingclient/api/BillingResult;

    .line 258
    .line 259
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 264
    .line 265
    .line 266
    const-string v2, "Client does not support subscriptions."

    .line 267
    .line 268
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    sput-object v0, Lcom/android/billingclient/api/u;->l:Lcom/android/billingclient/api/BillingResult;

    .line 276
    .line 277
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 282
    .line 283
    .line 284
    const-string v2, "Client does not support subscriptions update."

    .line 285
    .line 286
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    sput-object v0, Lcom/android/billingclient/api/u;->m:Lcom/android/billingclient/api/BillingResult;

    .line 294
    .line 295
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 300
    .line 301
    .line 302
    const-string v2, "Client does not support get purchase history."

    .line 303
    .line 304
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 308
    .line 309
    .line 310
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 315
    .line 316
    .line 317
    const-string v2, "Client does not support price change confirmation."

    .line 318
    .line 319
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    sput-object v0, Lcom/android/billingclient/api/u;->n:Lcom/android/billingclient/api/BillingResult;

    .line 327
    .line 328
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 333
    .line 334
    .line 335
    const-string v2, "Play Store version installed does not support cross selling products."

    .line 336
    .line 337
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    sput-object v0, Lcom/android/billingclient/api/u;->o:Lcom/android/billingclient/api/BillingResult;

    .line 345
    .line 346
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 351
    .line 352
    .line 353
    const-string v2, "Client does not support multi-item purchases."

    .line 354
    .line 355
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    sput-object v0, Lcom/android/billingclient/api/u;->p:Lcom/android/billingclient/api/BillingResult;

    .line 363
    .line 364
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 369
    .line 370
    .line 371
    const-string v2, "Client does not support offer_id_token."

    .line 372
    .line 373
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    sput-object v0, Lcom/android/billingclient/api/u;->q:Lcom/android/billingclient/api/BillingResult;

    .line 381
    .line 382
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 387
    .line 388
    .line 389
    const-string v2, "Client does not support ProductDetails."

    .line 390
    .line 391
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    sput-object v0, Lcom/android/billingclient/api/u;->r:Lcom/android/billingclient/api/BillingResult;

    .line 399
    .line 400
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 405
    .line 406
    .line 407
    const-string v2, "Client does not support in-app messages."

    .line 408
    .line 409
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    sput-object v0, Lcom/android/billingclient/api/u;->s:Lcom/android/billingclient/api/BillingResult;

    .line 417
    .line 418
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 423
    .line 424
    .line 425
    const-string v2, "Client does not support user choice billing."

    .line 426
    .line 427
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 431
    .line 432
    .line 433
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 438
    .line 439
    .line 440
    const-string v2, "Play Store version installed does not support external offer."

    .line 441
    .line 442
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    sput-object v0, Lcom/android/billingclient/api/u;->t:Lcom/android/billingclient/api/BillingResult;

    .line 450
    .line 451
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 456
    .line 457
    .line 458
    const-string v2, "Play Store version installed does not support multi-item purchases with season pass in one cart."

    .line 459
    .line 460
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    sput-object v0, Lcom/android/billingclient/api/u;->u:Lcom/android/billingclient/api/BillingResult;

    .line 468
    .line 469
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 474
    .line 475
    .line 476
    const-string v2, "Play Store version installed does not support querying AutoPay plan purchase."

    .line 477
    .line 478
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    sput-object v0, Lcom/android/billingclient/api/u;->v:Lcom/android/billingclient/api/BillingResult;

    .line 486
    .line 487
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 492
    .line 493
    .line 494
    const-string v2, "Play Store version installed does not support including suspended subscriptions."

    .line 495
    .line 496
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 497
    .line 498
    .line 499
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    sput-object v0, Lcom/android/billingclient/api/u;->w:Lcom/android/billingclient/api/BillingResult;

    .line 504
    .line 505
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 510
    .line 511
    .line 512
    const-string v2, "Unknown feature"

    .line 513
    .line 514
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 515
    .line 516
    .line 517
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    sput-object v0, Lcom/android/billingclient/api/u;->x:Lcom/android/billingclient/api/BillingResult;

    .line 522
    .line 523
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 528
    .line 529
    .line 530
    const-string v2, "Play Store version installed does not support get billing config."

    .line 531
    .line 532
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    sput-object v0, Lcom/android/billingclient/api/u;->y:Lcom/android/billingclient/api/BillingResult;

    .line 540
    .line 541
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 546
    .line 547
    .line 548
    const-string v2, "Query product details with serialized docid is not supported."

    .line 549
    .line 550
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    sput-object v0, Lcom/android/billingclient/api/u;->z:Lcom/android/billingclient/api/BillingResult;

    .line 558
    .line 559
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 564
    .line 565
    .line 566
    const-string v2, "Play Store version installed does not support launching external offer flow."

    .line 567
    .line 568
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 569
    .line 570
    .line 571
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    sput-object v0, Lcom/android/billingclient/api/u;->A:Lcom/android/billingclient/api/BillingResult;

    .line 576
    .line 577
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    const/4 v2, 0x4

    .line 582
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 583
    .line 584
    .line 585
    const-string v2, "Item is unavailable for purchase."

    .line 586
    .line 587
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 588
    .line 589
    .line 590
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 591
    .line 592
    .line 593
    move-result-object v0

    .line 594
    sput-object v0, Lcom/android/billingclient/api/u;->B:Lcom/android/billingclient/api/BillingResult;

    .line 595
    .line 596
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 601
    .line 602
    .line 603
    const-string v2, "Query product details with developer specified account is not supported."

    .line 604
    .line 605
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 606
    .line 607
    .line 608
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 609
    .line 610
    .line 611
    move-result-object v0

    .line 612
    sput-object v0, Lcom/android/billingclient/api/u;->C:Lcom/android/billingclient/api/BillingResult;

    .line 613
    .line 614
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 615
    .line 616
    .line 617
    move-result-object v0

    .line 618
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 619
    .line 620
    .line 621
    const-string v2, "Play Store version installed does not support alternative billing only."

    .line 622
    .line 623
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 624
    .line 625
    .line 626
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 627
    .line 628
    .line 629
    move-result-object v0

    .line 630
    sput-object v0, Lcom/android/billingclient/api/u;->D:Lcom/android/billingclient/api/BillingResult;

    .line 631
    .line 632
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 633
    .line 634
    .line 635
    move-result-object v0

    .line 636
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 637
    .line 638
    .line 639
    const-string v1, "To use this API you must specify a PurchasesUpdateListener when initializing a BillingClient."

    .line 640
    .line 641
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 642
    .line 643
    .line 644
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 645
    .line 646
    .line 647
    move-result-object v0

    .line 648
    sput-object v0, Lcom/android/billingclient/api/u;->E:Lcom/android/billingclient/api/BillingResult;

    .line 649
    .line 650
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 651
    .line 652
    .line 653
    move-result-object v0

    .line 654
    invoke-virtual {v0, v4}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 655
    .line 656
    .line 657
    const-string v1, "An error occurred while retrieving billing override."

    .line 658
    .line 659
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 660
    .line 661
    .line 662
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 663
    .line 664
    .line 665
    move-result-object v0

    .line 666
    sput-object v0, Lcom/android/billingclient/api/u;->F:Lcom/android/billingclient/api/BillingResult;

    .line 667
    .line 668
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 669
    .line 670
    .line 671
    move-result-object v0

    .line 672
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 673
    .line 674
    .line 675
    const-string v1, "Play Store version installed does not support the provided billing program."

    .line 676
    .line 677
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 678
    .line 679
    .line 680
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 681
    .line 682
    .line 683
    return-void
.end method

.method static a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method
