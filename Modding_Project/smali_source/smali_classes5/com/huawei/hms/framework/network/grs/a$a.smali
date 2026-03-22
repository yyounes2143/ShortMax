.class Lcom/huawei/hms/framework/network/grs/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/framework/network/grs/a;-><init>(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

.field final synthetic c:Lcom/huawei/hms/framework/network/grs/a;


# direct methods
.method constructor <init>(Lcom/huawei/hms/framework/network/grs/a;Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/a$a;->c:Lcom/huawei/hms/framework/network/grs/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/huawei/hms/framework/network/grs/a$a;->a:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/huawei/hms/framework/network/grs/a$a;->b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a$a;->c:Lcom/huawei/hms/framework/network/grs/a;

    .line 2
    .line 3
    new-instance v1, Lab/g;

    .line 4
    .line 5
    invoke-direct {v1}, Lab/g;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/huawei/hms/framework/network/grs/a;->c(Lcom/huawei/hms/framework/network/grs/a;Lab/g;)Lab/g;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a$a;->c:Lcom/huawei/hms/framework/network/grs/a;

    .line 12
    .line 13
    new-instance v1, Lya/c;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/a$a;->a:Landroid/content/Context;

    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/huawei/hms/framework/network/grs/GrsApp;->getInstance()Lcom/huawei/hms/framework/network/grs/GrsApp;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    const-string v5, "_"

    .line 27
    .line 28
    invoke-virtual {v4, v5}, Lcom/huawei/hms/framework/network/grs/GrsApp;->getBrand(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v4, "share_pre_grs_conf_"

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-direct {v1, v2, v3}, Lya/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1}, Lcom/huawei/hms/framework/network/grs/a;->h(Lcom/huawei/hms/framework/network/grs/a;Lya/c;)Lya/c;

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a$a;->c:Lcom/huawei/hms/framework/network/grs/a;

    .line 51
    .line 52
    new-instance v1, Lya/c;

    .line 53
    .line 54
    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/a$a;->a:Landroid/content/Context;

    .line 55
    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lcom/huawei/hms/framework/network/grs/GrsApp;->getInstance()Lcom/huawei/hms/framework/network/grs/GrsApp;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v4, v5}, Lcom/huawei/hms/framework/network/grs/GrsApp;->getBrand(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v4, "share_pre_grs_services_"

    .line 73
    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-direct {v1, v2, v3}, Lya/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v0, v1}, Lcom/huawei/hms/framework/network/grs/a;->q(Lcom/huawei/hms/framework/network/grs/a;Lya/c;)Lya/c;

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a$a;->c:Lcom/huawei/hms/framework/network/grs/a;

    .line 88
    .line 89
    new-instance v1, Lya/a;

    .line 90
    .line 91
    invoke-static {v0}, Lcom/huawei/hms/framework/network/grs/a;->p(Lcom/huawei/hms/framework/network/grs/a;)Lya/c;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    iget-object v3, p0, Lcom/huawei/hms/framework/network/grs/a$a;->c:Lcom/huawei/hms/framework/network/grs/a;

    .line 96
    .line 97
    invoke-static {v3}, Lcom/huawei/hms/framework/network/grs/a;->u(Lcom/huawei/hms/framework/network/grs/a;)Lya/c;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    iget-object v4, p0, Lcom/huawei/hms/framework/network/grs/a$a;->c:Lcom/huawei/hms/framework/network/grs/a;

    .line 102
    .line 103
    invoke-static {v4}, Lcom/huawei/hms/framework/network/grs/a;->b(Lcom/huawei/hms/framework/network/grs/a;)Lab/g;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-direct {v1, v2, v3, v4}, Lya/a;-><init>(Lya/c;Lya/c;Lab/g;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v0, v1}, Lcom/huawei/hms/framework/network/grs/a;->g(Lcom/huawei/hms/framework/network/grs/a;Lya/a;)Lya/a;

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a$a;->c:Lcom/huawei/hms/framework/network/grs/a;

    .line 114
    .line 115
    new-instance v1, Lxa/a;

    .line 116
    .line 117
    invoke-static {v0}, Lcom/huawei/hms/framework/network/grs/a;->x(Lcom/huawei/hms/framework/network/grs/a;)Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    iget-object v3, p0, Lcom/huawei/hms/framework/network/grs/a$a;->c:Lcom/huawei/hms/framework/network/grs/a;

    .line 122
    .line 123
    invoke-static {v3}, Lcom/huawei/hms/framework/network/grs/a;->w(Lcom/huawei/hms/framework/network/grs/a;)Lya/a;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    iget-object v4, p0, Lcom/huawei/hms/framework/network/grs/a$a;->c:Lcom/huawei/hms/framework/network/grs/a;

    .line 128
    .line 129
    invoke-static {v4}, Lcom/huawei/hms/framework/network/grs/a;->b(Lcom/huawei/hms/framework/network/grs/a;)Lab/g;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    iget-object v5, p0, Lcom/huawei/hms/framework/network/grs/a$a;->c:Lcom/huawei/hms/framework/network/grs/a;

    .line 134
    .line 135
    invoke-static {v5}, Lcom/huawei/hms/framework/network/grs/a;->u(Lcom/huawei/hms/framework/network/grs/a;)Lya/c;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    invoke-direct {v1, v2, v3, v4, v5}, Lxa/a;-><init>(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Lya/a;Lab/g;Lya/c;)V

    .line 140
    .line 141
    .line 142
    invoke-static {v0, v1}, Lcom/huawei/hms/framework/network/grs/a;->f(Lcom/huawei/hms/framework/network/grs/a;Lxa/a;)Lxa/a;

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a$a;->a:Landroid/content/Context;

    .line 146
    .line 147
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-static {v0}, Lza/b;->d(Ljava/lang/String;)Lza/b;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    const/4 v1, 0x1

    .line 156
    if-nez v0, :cond_0

    .line 157
    .line 158
    new-instance v0, Lza/b;

    .line 159
    .line 160
    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/a$a;->a:Landroid/content/Context;

    .line 161
    .line 162
    invoke-direct {v0, v2, v1}, Lza/b;-><init>(Landroid/content/Context;Z)V

    .line 163
    .line 164
    .line 165
    :cond_0
    new-instance v0, Lcb/c;

    .line 166
    .line 167
    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/a$a;->b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    .line 168
    .line 169
    iget-object v3, p0, Lcom/huawei/hms/framework/network/grs/a$a;->a:Landroid/content/Context;

    .line 170
    .line 171
    invoke-direct {v0, v2, v3}, Lcb/c;-><init>(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Lcb/c;->d()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-static {}, Lcom/huawei/hms/framework/network/grs/a;->t()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    const-string v4, "scan serviceSet is: "

    .line 188
    .line 189
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    invoke-static {v2, v3}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/a$a;->c:Lcom/huawei/hms/framework/network/grs/a;

    .line 203
    .line 204
    invoke-static {v2}, Lcom/huawei/hms/framework/network/grs/a;->u(Lcom/huawei/hms/framework/network/grs/a;)Lya/c;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    const-string v3, ""

    .line 209
    .line 210
    const-string v4, "services"

    .line 211
    .line 212
    invoke-virtual {v2, v4, v3}, Lya/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    invoke-static {v2, v0}, Lab/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    if-nez v3, :cond_1

    .line 225
    .line 226
    iget-object v3, p0, Lcom/huawei/hms/framework/network/grs/a$a;->c:Lcom/huawei/hms/framework/network/grs/a;

    .line 227
    .line 228
    invoke-static {v3}, Lcom/huawei/hms/framework/network/grs/a;->u(Lcom/huawei/hms/framework/network/grs/a;)Lya/c;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-virtual {v3, v4, v0}, Lya/c;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-static {}, Lcom/huawei/hms/framework/network/grs/a;->t()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    new-instance v4, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .line 243
    .line 244
    const-string v5, "postList is:"

    .line 245
    .line 246
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-static {v0}, Lcom/huawei/hms/framework/common/StringUtils;->anonymizeMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    invoke-static {v3, v4}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    invoke-static {}, Lcom/huawei/hms/framework/network/grs/a;->t()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    new-instance v4, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .line 271
    .line 272
    const-string v5, "currentServices:"

    .line 273
    .line 274
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-static {v2}, Lcom/huawei/hms/framework/common/StringUtils;->anonymizeMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v5

    .line 281
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    invoke-static {v3, v4}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    if-nez v0, :cond_1

    .line 296
    .line 297
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a$a;->c:Lcom/huawei/hms/framework/network/grs/a;

    .line 298
    .line 299
    invoke-static {v0}, Lcom/huawei/hms/framework/network/grs/a;->x(Lcom/huawei/hms/framework/network/grs/a;)Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/a$a;->a:Landroid/content/Context;

    .line 304
    .line 305
    invoke-virtual {v0, v1, v1, v2}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getGrsParasKey(ZZLandroid/content/Context;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/a$a;->c:Lcom/huawei/hms/framework/network/grs/a;

    .line 310
    .line 311
    invoke-static {v1}, Lcom/huawei/hms/framework/network/grs/a;->b(Lcom/huawei/hms/framework/network/grs/a;)Lab/g;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    invoke-virtual {v1, v0}, Lab/g;->g(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a$a;->c:Lcom/huawei/hms/framework/network/grs/a;

    .line 319
    .line 320
    invoke-static {v0}, Lcom/huawei/hms/framework/network/grs/a;->b(Lcom/huawei/hms/framework/network/grs/a;)Lab/g;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    new-instance v2, Lcb/c;

    .line 325
    .line 326
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a$a;->b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    .line 327
    .line 328
    iget-object v3, p0, Lcom/huawei/hms/framework/network/grs/a$a;->a:Landroid/content/Context;

    .line 329
    .line 330
    invoke-direct {v2, v0, v3}, Lcb/c;-><init>(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;)V

    .line 331
    .line 332
    .line 333
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a$a;->c:Lcom/huawei/hms/framework/network/grs/a;

    .line 334
    .line 335
    invoke-static {v0}, Lcom/huawei/hms/framework/network/grs/a;->u(Lcom/huawei/hms/framework/network/grs/a;)Lya/c;

    .line 336
    .line 337
    .line 338
    move-result-object v5

    .line 339
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a$a;->c:Lcom/huawei/hms/framework/network/grs/a;

    .line 340
    .line 341
    invoke-static {v0}, Lcom/huawei/hms/framework/network/grs/a;->x(Lcom/huawei/hms/framework/network/grs/a;)Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-virtual {v0}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getQueryTimeout()I

    .line 346
    .line 347
    .line 348
    move-result v6

    .line 349
    const/4 v3, 0x0

    .line 350
    const/4 v4, 0x0

    .line 351
    invoke-virtual/range {v1 .. v6}, Lab/g;->f(Lcb/c;Lxa/b;Ljava/lang/String;Lya/c;I)V

    .line 352
    .line 353
    .line 354
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 355
    .line 356
    .line 357
    move-result-wide v0

    .line 358
    invoke-static {}, Lcom/huawei/hms/framework/network/grs/a;->v()J

    .line 359
    .line 360
    .line 361
    move-result-wide v2

    .line 362
    sub-long/2addr v0, v2

    .line 363
    invoke-static {}, Lcom/huawei/hms/framework/network/grs/a;->v()J

    .line 364
    .line 365
    .line 366
    move-result-wide v2

    .line 367
    const-wide/16 v4, 0x0

    .line 368
    .line 369
    cmp-long v2, v2, v4

    .line 370
    .line 371
    if-eqz v2, :cond_2

    .line 372
    .line 373
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 374
    .line 375
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    .line 376
    .line 377
    .line 378
    move-result-wide v0

    .line 379
    const-wide/16 v2, 0x18

    .line 380
    .line 381
    cmp-long v0, v0, v2

    .line 382
    .line 383
    if-lez v0, :cond_3

    .line 384
    .line 385
    :cond_2
    invoke-static {}, Lcom/huawei/hms/framework/network/grs/a;->t()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    const-string v1, "Try to clear unUsed sp data."

    .line 390
    .line 391
    invoke-static {v0, v1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 392
    .line 393
    .line 394
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 395
    .line 396
    .line 397
    move-result-wide v0

    .line 398
    invoke-static {v0, v1}, Lcom/huawei/hms/framework/network/grs/a;->a(J)J

    .line 399
    .line 400
    .line 401
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a$a;->c:Lcom/huawei/hms/framework/network/grs/a;

    .line 402
    .line 403
    invoke-static {v0}, Lcom/huawei/hms/framework/network/grs/a;->p(Lcom/huawei/hms/framework/network/grs/a;)Lya/c;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    invoke-virtual {v1}, Lya/c;->b()Ljava/util/Map;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    invoke-static {v0, v1}, Lcom/huawei/hms/framework/network/grs/a;->k(Lcom/huawei/hms/framework/network/grs/a;Ljava/util/Map;)V

    .line 412
    .line 413
    .line 414
    :cond_3
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a$a;->c:Lcom/huawei/hms/framework/network/grs/a;

    .line 415
    .line 416
    invoke-static {v0}, Lcom/huawei/hms/framework/network/grs/a;->w(Lcom/huawei/hms/framework/network/grs/a;)Lya/a;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/a$a;->b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    .line 421
    .line 422
    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/a$a;->a:Landroid/content/Context;

    .line 423
    .line 424
    invoke-virtual {v0, v1, v2}, Lya/a;->h(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;)V

    .line 425
    .line 426
    .line 427
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 428
    .line 429
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/framework/network/grs/a$a;->a()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
