.class Lcom/ss/mediakit/net/LocalDNS$1;
.super Ljava/lang/Object;
.source "LocalDNS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/mediakit/net/LocalDNS;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/mediakit/net/LocalDNS;


# direct methods
.method constructor <init>(Lcom/ss/mediakit/net/LocalDNS;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/mediakit/net/LocalDNS$1;->this$0:Lcom/ss/mediakit/net/LocalDNS;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/ss/mediakit/net/LocalDNS$1;->this$0:Lcom/ss/mediakit/net/LocalDNS;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/ss/mediakit/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 6
    .line 7
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "----call local dns, host:%s"

    .line 12
    .line 13
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "LocalDNS"

    .line 18
    .line 19
    invoke-static {v2, v1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    :try_start_0
    invoke-static {}, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->getCurNetwork()Landroid/net/Network;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const/4 v4, 0x0

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    const-string v5, "do local by cellular network"

    .line 31
    .line 32
    new-array v6, v4, [Ljava/lang/Object;

    .line 33
    .line 34
    invoke-static {v0, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-static {v2, v5}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v5, p0, Lcom/ss/mediakit/net/LocalDNS$1;->this$0:Lcom/ss/mediakit/net/LocalDNS;

    .line 42
    .line 43
    iget-object v6, v5, Lcom/ss/mediakit/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v3, v6}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-static {v5, v3}, Lcom/ss/mediakit/net/LocalDNS;->access$002(Lcom/ss/mediakit/net/LocalDNS;[Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    goto/16 :goto_4

    .line 55
    .line 56
    :cond_0
    const-string v3, "do local by default network"

    .line 57
    .line 58
    new-array v5, v4, [Ljava/lang/Object;

    .line 59
    .line 60
    invoke-static {v0, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-static {v2, v3}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v3, p0, Lcom/ss/mediakit/net/LocalDNS$1;->this$0:Lcom/ss/mediakit/net/LocalDNS;

    .line 68
    .line 69
    iget-object v5, v3, Lcom/ss/mediakit/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v5}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-static {v3, v5}, Lcom/ss/mediakit/net/LocalDNS;->access$002(Lcom/ss/mediakit/net/LocalDNS;[Ljava/net/InetAddress;)[Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    .line 78
    :goto_0
    iget-object v3, p0, Lcom/ss/mediakit/net/LocalDNS$1;->this$0:Lcom/ss/mediakit/net/LocalDNS;

    .line 79
    .line 80
    invoke-static {v3, v1}, Lcom/ss/mediakit/net/LocalDNS;->access$102(Lcom/ss/mediakit/net/LocalDNS;Z)Z

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/ss/mediakit/net/LocalDNS$1;->this$0:Lcom/ss/mediakit/net/LocalDNS;

    .line 84
    .line 85
    invoke-static {v1}, Lcom/ss/mediakit/net/LocalDNS;->access$000(Lcom/ss/mediakit/net/LocalDNS;)[Ljava/net/InetAddress;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    if-nez v1, :cond_1

    .line 90
    .line 91
    iget-object v1, p0, Lcom/ss/mediakit/net/LocalDNS$1;->this$0:Lcom/ss/mediakit/net/LocalDNS;

    .line 92
    .line 93
    iget-object v1, v1, Lcom/ss/mediakit/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 94
    .line 95
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const-string v3, "****end call local dns, not get address host:%s"

    .line 100
    .line 101
    invoke-static {v0, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {v2, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/ss/mediakit/net/LocalDNS$1;->this$0:Lcom/ss/mediakit/net/LocalDNS;

    .line 109
    .line 110
    new-instance v8, Lcom/ss/mediakit/net/AVMDLDNSInfo;

    .line 111
    .line 112
    iget-object v3, v0, Lcom/ss/mediakit/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 113
    .line 114
    const-wide/16 v5, 0x0

    .line 115
    .line 116
    iget-object v7, v0, Lcom/ss/mediakit/net/BaseDNS;->mId:Ljava/lang/String;

    .line 117
    .line 118
    const/4 v2, 0x0

    .line 119
    const/4 v4, 0x0

    .line 120
    move-object v1, v8

    .line 121
    invoke-direct/range {v1 .. v7}, Lcom/ss/mediakit/net/AVMDLDNSInfo;-><init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v8}, Lcom/ss/mediakit/net/BaseDNS;->notifyError(Lcom/ss/mediakit/net/AVMDLDNSInfo;)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :cond_1
    const-string v0, ""

    .line 129
    .line 130
    :goto_1
    iget-object v1, p0, Lcom/ss/mediakit/net/LocalDNS$1;->this$0:Lcom/ss/mediakit/net/LocalDNS;

    .line 131
    .line 132
    invoke-static {v1}, Lcom/ss/mediakit/net/LocalDNS;->access$000(Lcom/ss/mediakit/net/LocalDNS;)[Ljava/net/InetAddress;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    array-length v1, v1

    .line 137
    if-ge v4, v1, :cond_4

    .line 138
    .line 139
    iget-object v1, p0, Lcom/ss/mediakit/net/LocalDNS$1;->this$0:Lcom/ss/mediakit/net/LocalDNS;

    .line 140
    .line 141
    invoke-static {v1}, Lcom/ss/mediakit/net/LocalDNS;->access$000(Lcom/ss/mediakit/net/LocalDNS;)[Ljava/net/InetAddress;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    aget-object v1, v1, v4

    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    if-nez v3, :cond_3

    .line 156
    .line 157
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    if-eqz v3, :cond_2

    .line 162
    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    goto :goto_2

    .line 179
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v0, ","

    .line 188
    .line 189
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-eqz v1, :cond_5

    .line 207
    .line 208
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 209
    .line 210
    iget-object v1, p0, Lcom/ss/mediakit/net/LocalDNS$1;->this$0:Lcom/ss/mediakit/net/LocalDNS;

    .line 211
    .line 212
    iget-object v1, v1, Lcom/ss/mediakit/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 213
    .line 214
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    const-string v3, "****end call local dns, iplist null host:%s"

    .line 219
    .line 220
    invoke-static {v0, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-static {v2, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    iget-object v0, p0, Lcom/ss/mediakit/net/LocalDNS$1;->this$0:Lcom/ss/mediakit/net/LocalDNS;

    .line 228
    .line 229
    new-instance v8, Lcom/ss/mediakit/net/AVMDLDNSInfo;

    .line 230
    .line 231
    iget-object v3, v0, Lcom/ss/mediakit/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 232
    .line 233
    const-wide/16 v5, 0x0

    .line 234
    .line 235
    iget-object v7, v0, Lcom/ss/mediakit/net/BaseDNS;->mId:Ljava/lang/String;

    .line 236
    .line 237
    const/4 v2, 0x0

    .line 238
    const/4 v4, 0x0

    .line 239
    move-object v1, v8

    .line 240
    invoke-direct/range {v1 .. v7}, Lcom/ss/mediakit/net/AVMDLDNSInfo;-><init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, v8}, Lcom/ss/mediakit/net/BaseDNS;->notifyError(Lcom/ss/mediakit/net/AVMDLDNSInfo;)V

    .line 244
    .line 245
    .line 246
    return-void

    .line 247
    :cond_5
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 248
    .line 249
    sget v3, Lcom/ss/mediakit/net/AVMDLDNSParser;->mGlobalDefaultExpiredTime:I

    .line 250
    .line 251
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    sget v4, Lcom/ss/mediakit/net/AVMDLDNSParser;->mGlobalForceExpiredTime:I

    .line 256
    .line 257
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    const-string v4, "****default expiredtime:%d force expiredtime:%d "

    .line 266
    .line 267
    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    invoke-static {v2, v3}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    sget v3, Lcom/ss/mediakit/net/AVMDLDNSParser;->mGlobalForceExpiredTime:I

    .line 275
    .line 276
    if-lez v3, :cond_6

    .line 277
    .line 278
    goto :goto_3

    .line 279
    :cond_6
    sget v3, Lcom/ss/mediakit/net/AVMDLDNSParser;->mGlobalDefaultExpiredTime:I

    .line 280
    .line 281
    :goto_3
    new-instance v4, Lcom/ss/mediakit/net/AVMDLDNSInfo;

    .line 282
    .line 283
    iget-object v5, p0, Lcom/ss/mediakit/net/LocalDNS$1;->this$0:Lcom/ss/mediakit/net/LocalDNS;

    .line 284
    .line 285
    iget-object v7, v5, Lcom/ss/mediakit/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 286
    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 288
    .line 289
    .line 290
    move-result-wide v5

    .line 291
    mul-int/lit16 v3, v3, 0x3e8

    .line 292
    .line 293
    int-to-long v8, v3

    .line 294
    add-long v9, v5, v8

    .line 295
    .line 296
    iget-object v3, p0, Lcom/ss/mediakit/net/LocalDNS$1;->this$0:Lcom/ss/mediakit/net/LocalDNS;

    .line 297
    .line 298
    iget-object v11, v3, Lcom/ss/mediakit/net/BaseDNS;->mId:Ljava/lang/String;

    .line 299
    .line 300
    const/4 v6, 0x0

    .line 301
    move-object v5, v4

    .line 302
    move-object v8, v0

    .line 303
    invoke-direct/range {v5 .. v11}, Lcom/ss/mediakit/net/AVMDLDNSInfo;-><init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-static {}, Lcom/ss/mediakit/net/IPCache;->getInstance()Lcom/ss/mediakit/net/IPCache;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    iget-object v5, p0, Lcom/ss/mediakit/net/LocalDNS$1;->this$0:Lcom/ss/mediakit/net/LocalDNS;

    .line 311
    .line 312
    iget-object v5, v5, Lcom/ss/mediakit/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 313
    .line 314
    invoke-virtual {v3, v5, v4}, Lcom/ss/mediakit/net/IPCache;->put(Ljava/lang/String;Lcom/ss/mediakit/net/AVMDLDNSInfo;)V

    .line 315
    .line 316
    .line 317
    iget-object v3, p0, Lcom/ss/mediakit/net/LocalDNS$1;->this$0:Lcom/ss/mediakit/net/LocalDNS;

    .line 318
    .line 319
    invoke-virtual {v3, v4}, Lcom/ss/mediakit/net/BaseDNS;->notifySuccess(Lcom/ss/mediakit/net/AVMDLDNSInfo;)V

    .line 320
    .line 321
    .line 322
    iget-object v3, p0, Lcom/ss/mediakit/net/LocalDNS$1;->this$0:Lcom/ss/mediakit/net/LocalDNS;

    .line 323
    .line 324
    iget-object v3, v3, Lcom/ss/mediakit/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 325
    .line 326
    filled-new-array {v0, v3}, [Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    const-string v3, "****end call local dns, suc iplist:%s host:%s"

    .line 331
    .line 332
    invoke-static {v1, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    invoke-static {v2, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    return-void

    .line 340
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 341
    .line 342
    .line 343
    iget-object v3, p0, Lcom/ss/mediakit/net/LocalDNS$1;->this$0:Lcom/ss/mediakit/net/LocalDNS;

    .line 344
    .line 345
    invoke-static {v3, v1}, Lcom/ss/mediakit/net/LocalDNS;->access$102(Lcom/ss/mediakit/net/LocalDNS;Z)Z

    .line 346
    .line 347
    .line 348
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 349
    .line 350
    iget-object v3, p0, Lcom/ss/mediakit/net/LocalDNS$1;->this$0:Lcom/ss/mediakit/net/LocalDNS;

    .line 351
    .line 352
    iget-object v3, v3, Lcom/ss/mediakit/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 353
    .line 354
    filled-new-array {v0, v3}, [Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    const-string v3, "****end call local dns, end exception:%s host:%s"

    .line 359
    .line 360
    invoke-static {v1, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    invoke-static {v2, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    iget-object v0, p0, Lcom/ss/mediakit/net/LocalDNS$1;->this$0:Lcom/ss/mediakit/net/LocalDNS;

    .line 368
    .line 369
    new-instance v8, Lcom/ss/mediakit/net/AVMDLDNSInfo;

    .line 370
    .line 371
    iget-object v3, v0, Lcom/ss/mediakit/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 372
    .line 373
    const-wide/16 v5, 0x0

    .line 374
    .line 375
    iget-object v7, v0, Lcom/ss/mediakit/net/BaseDNS;->mId:Ljava/lang/String;

    .line 376
    .line 377
    const/4 v2, 0x0

    .line 378
    const/4 v4, 0x0

    .line 379
    move-object v1, v8

    .line 380
    invoke-direct/range {v1 .. v7}, Lcom/ss/mediakit/net/AVMDLDNSInfo;-><init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0, v8}, Lcom/ss/mediakit/net/BaseDNS;->notifyError(Lcom/ss/mediakit/net/AVMDLDNSInfo;)V

    .line 384
    .line 385
    .line 386
    return-void
.end method
