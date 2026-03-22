.class public final Lma/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lma/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lma/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lma/g;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lma/g;->a:Lma/g;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final a(Lna/d;)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lcom/hades/aar/storage/base/UploadStatus;->ERROR:Lcom/hades/aar/storage/base/UploadStatus;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const-string v2, "context \u6ca1\u4f20"

    .line 6
    .line 7
    invoke-interface {p0, v1, v0, v2}, Lna/d;->a(Ljava/lang/String;Lcom/hades/aar/storage/base/UploadStatus;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method public static final b(Lna/d;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    .line 1
    sget-object v0, Lcom/hades/aar/storage/base/UploadStatus;->START:Lcom/hades/aar/storage/base/UploadStatus;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-interface {p0, p1, v0, v1}, Lna/d;->a(Ljava/lang/String;Lcom/hades/aar/storage/base/UploadStatus;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method public static c(Lkotlin/jvm/functions/Function0;)V
    .locals 2

    .line 1
    const-string v0, "runInUI called"

    .line 2
    .line 3
    const-string v1, "S3FileUploader"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    sget-object v0, Lvu/b;->a:Lvu/b;

    .line 9
    .line 10
    new-instance v1, Lma/f;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lma/f;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lvu/b;->a(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static final d(Lma/g;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string p0, "S3FileUploader"

    .line 5
    .line 6
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static final synthetic e(Lma/g;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lma/g;->c(Lkotlin/jvm/functions/Function0;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static final f(Lna/d;)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lcom/hades/aar/storage/base/UploadStatus;->ERROR:Lcom/hades/aar/storage/base/UploadStatus;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const-string v2, "transferUtility \u521d\u59cb\u5316\u5f02\u5e38"

    .line 6
    .line 7
    invoke-interface {p0, v1, v0, v2}, Lna/d;->a(Ljava/lang/String;Lcom/hades/aar/storage/base/UploadStatus;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method public static final g(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final h(Lna/d;)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lcom/hades/aar/storage/base/UploadStatus;->ERROR:Lcom/hades/aar/storage/base/UploadStatus;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const-string v2, "\u6587\u4ef6\u5939\u4e0d\u652f\u6301\u4e0a\u4f20"

    .line 6
    .line 7
    invoke-interface {p0, v1, v0, v2}, Lna/d;->a(Ljava/lang/String;Lcom/hades/aar/storage/base/UploadStatus;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method public static final i(Lna/d;)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lcom/hades/aar/storage/base/UploadStatus;->ERROR:Lcom/hades/aar/storage/base/UploadStatus;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const-string v2, "\u6587\u4ef6\u4e0d\u5b58\u5728"

    .line 6
    .line 7
    invoke-interface {p0, v1, v0, v2}, Lna/d;->a(Ljava/lang/String;Lcom/hades/aar/storage/base/UploadStatus;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method


# virtual methods
.method public j(Lna/b;)Ljava/lang/String;
    .locals 5
    .param p1    # Lna/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "builder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lna/b;->b()Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/content/Context;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Lna/b;->f()Lna/d;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    sget-object v0, Lma/g;->a:Lma/g;

    .line 25
    .line 26
    new-instance v1, Lma/a;

    .line 27
    .line 28
    invoke-direct {v1, p1}, Lma/a;-><init>(Lna/d;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Lma/g;->c(Lkotlin/jvm/functions/Function0;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    const-string p1, ""

    .line 38
    .line 39
    return-object p1

    .line 40
    :cond_1
    monitor-enter p0

    .line 41
    :try_start_0
    sget-object v1, Lma/g;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;

    .line 42
    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    const-string v1, "getTransferUtility init"

    .line 46
    .line 47
    const-string v2, "S3FileUploader"

    .line 48
    .line 49
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    new-instance v1, Ltu/b;

    .line 53
    .line 54
    invoke-direct {v1}, Ltu/b;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ltu/b;->c(Landroid/content/Context;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Lma/g;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    goto/16 :goto_2

    .line 66
    .line 67
    :cond_2
    :goto_0
    sget-object v0, Lma/g;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    monitor-exit p0

    .line 70
    if-nez v0, :cond_4

    .line 71
    .line 72
    invoke-virtual {p1}, Lna/b;->f()Lna/d;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    sget-object v0, Lma/g;->a:Lma/g;

    .line 79
    .line 80
    new-instance v1, Lma/b;

    .line 81
    .line 82
    invoke-direct {v1, p1}, Lma/b;-><init>(Lna/d;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-static {v1}, Lma/g;->c(Lkotlin/jvm/functions/Function0;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    const-string p1, ""

    .line 92
    .line 93
    return-object p1

    .line 94
    :cond_4
    new-instance v1, Ljava/io/File;

    .line 95
    .line 96
    invoke-virtual {p1}, Lna/b;->d()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-eqz v2, :cond_6

    .line 108
    .line 109
    invoke-virtual {p1}, Lna/b;->f()Lna/d;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    if-eqz p1, :cond_5

    .line 114
    .line 115
    sget-object v0, Lma/g;->a:Lma/g;

    .line 116
    .line 117
    new-instance v1, Lma/c;

    .line 118
    .line 119
    invoke-direct {v1, p1}, Lma/c;-><init>(Lna/d;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    invoke-static {v1}, Lma/g;->c(Lkotlin/jvm/functions/Function0;)V

    .line 126
    .line 127
    .line 128
    :cond_5
    const-string p1, ""

    .line 129
    .line 130
    return-object p1

    .line 131
    :cond_6
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-nez v1, :cond_8

    .line 136
    .line 137
    invoke-virtual {p1}, Lna/b;->f()Lna/d;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    if-eqz p1, :cond_7

    .line 142
    .line 143
    sget-object v0, Lma/g;->a:Lma/g;

    .line 144
    .line 145
    new-instance v1, Lma/d;

    .line 146
    .line 147
    invoke-direct {v1, p1}, Lma/d;-><init>(Lna/d;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    invoke-static {v1}, Lma/g;->c(Lkotlin/jvm/functions/Function0;)V

    .line 154
    .line 155
    .line 156
    :cond_7
    const-string p1, ""

    .line 157
    .line 158
    return-object p1

    .line 159
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Lna/b;->g()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const/16 v2, 0x2f

    .line 172
    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1}, Lna/b;->c()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    new-instance v2, Ljava/io/File;

    .line 188
    .line 189
    invoke-virtual {p1}, Lna/b;->d()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->k(Ljava/lang/String;Ljava/io/File;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->e()I

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-virtual {p1}, Lna/b;->f()Lna/d;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    if-eqz v2, :cond_9

    .line 213
    .line 214
    sget-object v3, Lma/g;->a:Lma/g;

    .line 215
    .line 216
    new-instance v4, Lma/e;

    .line 217
    .line 218
    invoke-direct {v4, v2, v1}, Lma/e;-><init>(Lna/d;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    invoke-static {v4}, Lma/g;->c(Lkotlin/jvm/functions/Function0;)V

    .line 225
    .line 226
    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    const-string v3, "uploadFile "

    .line 230
    .line 231
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    sget-object v3, Lcom/hades/aar/storage/base/UploadStatus;->START:Lcom/hades/aar/storage/base/UploadStatus;

    .line 235
    .line 236
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    const-string v3, "S3FileUploader"

    .line 244
    .line 245
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .line 247
    .line 248
    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1}, Lna/b;->f()Lna/d;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    if-nez v2, :cond_a

    .line 256
    .line 257
    invoke-virtual {p1}, Lna/b;->e()Lna/c;

    .line 258
    .line 259
    .line 260
    goto :goto_1

    .line 261
    :cond_a
    new-instance v2, Lsu/d;

    .line 262
    .line 263
    invoke-direct {v2, p1}, Lsu/d;-><init>(Lna/b;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->f(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)V

    .line 267
    .line 268
    .line 269
    :goto_1
    return-object v1

    .line 270
    :goto_2
    monitor-exit p0

    .line 271
    throw p1
.end method
