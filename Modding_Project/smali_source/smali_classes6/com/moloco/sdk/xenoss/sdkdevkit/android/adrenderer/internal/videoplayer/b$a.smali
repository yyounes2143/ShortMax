.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;->b(La7/k;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgt/g0;",
        "Lrs/c<",
        "-",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer.ProgressiveMediaFileDataSource$open$1"
    f = "ProgressiveMediaFileDataSource.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;

.field public final synthetic j:La7/k;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;La7/k;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;",
            "La7/k;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b$a;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b$a;->j:La7/k;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b$a;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b$a;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b$a;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b$a;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b$a;->j:La7/k;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b$a;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;La7/k;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lgt/g0;

    .line 2
    .line 3
    check-cast p2, Lrs/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b$a;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b$a;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_5

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b$a;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;->o(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p1, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;->e(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;Ljava/lang/String;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/h;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    instance-of v0, p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/h$a;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    move-object v0, p1

    .line 27
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/h$a;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/h$a;->a()Ljava/io/File;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p1

    .line 35
    goto/16 :goto_1

    .line 36
    .line 37
    :cond_0
    instance-of v0, p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/h$c;

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    move-object v0, p1

    .line 42
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/h$c;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/h$c;->a()Ljava/io/File;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b$a;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;

    .line 55
    .line 56
    new-instance v3, Ljava/io/RandomAccessFile;

    .line 57
    .line 58
    const-string v4, "r"

    .line 59
    .line 60
    invoke-direct {v3, v0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b$a;->j:La7/k;

    .line 64
    .line 65
    iget-wide v4, v4, La7/k;->g:J

    .line 66
    .line 67
    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;->i(Ljava/io/RandomAccessFile;)V

    .line 71
    .line 72
    .line 73
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b$a;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;

    .line 74
    .line 75
    iget-object v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b$a;->j:La7/k;

    .line 76
    .line 77
    iget-wide v3, v3, La7/k;->h:J

    .line 78
    .line 79
    const-wide/16 v5, -0x1

    .line 80
    .line 81
    cmp-long v5, v3, v5

    .line 82
    .line 83
    if-nez v5, :cond_1

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 86
    .line 87
    .line 88
    move-result-wide v3

    .line 89
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b$a;->j:La7/k;

    .line 90
    .line 91
    iget-wide v5, v0, La7/k;->g:J

    .line 92
    .line 93
    sub-long/2addr v3, v5

    .line 94
    :cond_1
    invoke-static {v2, v3, v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;->g(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;J)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b$a;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;

    .line 98
    .line 99
    invoke-static {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;->d(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;)J

    .line 100
    .line 101
    .line 102
    move-result-wide v2

    .line 103
    const-wide/16 v4, 0x0

    .line 104
    .line 105
    cmp-long v0, v2, v4

    .line 106
    .line 107
    if-nez v0, :cond_2

    .line 108
    .line 109
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b$a;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;

    .line 110
    .line 111
    invoke-static {v0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;->l(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/h;)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_2

    .line 116
    .line 117
    sget-object v2, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 118
    .line 119
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b$a;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;

    .line 120
    .line 121
    invoke-static {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;->n(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    const-string v4, "Streaming error likely detected"

    .line 126
    .line 127
    const/16 v7, 0xc

    .line 128
    .line 129
    const/4 v8, 0x0

    .line 130
    const/4 v5, 0x0

    .line 131
    const/4 v6, 0x0

    .line 132
    invoke-static/range {v2 .. v8}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b$a;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;

    .line 136
    .line 137
    invoke-static {p1, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;->h(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;Z)V

    .line 138
    .line 139
    .line 140
    :cond_2
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b$a;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;

    .line 141
    .line 142
    invoke-static {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;->d(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;)J

    .line 143
    .line 144
    .line 145
    move-result-wide v0

    .line 146
    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    return-object p1

    .line 151
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 152
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    const-string v1, "Cannot read file, does not exist yet: "

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b$a;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;

    .line 164
    .line 165
    invoke-static {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;->o(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw p1

    .line 180
    :cond_4
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b$a;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;

    .line 181
    .line 182
    invoke-static {p1, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;->h(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;Z)V

    .line 183
    .line 184
    .line 185
    sget-object v2, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 186
    .line 187
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b$a;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;

    .line 188
    .line 189
    invoke-static {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;->n(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    new-instance p1, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    const-string v0, "Failed to download file: "

    .line 199
    .line 200
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b$a;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;

    .line 204
    .line 205
    invoke-static {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;->o(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    const/16 v7, 0xc

    .line 217
    .line 218
    const/4 v8, 0x0

    .line 219
    const/4 v5, 0x0

    .line 220
    const/4 v6, 0x0

    .line 221
    invoke-static/range {v2 .. v8}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    new-instance p1, Ljava/io/IOException;

    .line 225
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .line 230
    .line 231
    const-string v1, "Cannot read file: "

    .line 232
    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b$a;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;

    .line 237
    .line 238
    invoke-static {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;->o(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_1
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 254
    .line 255
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b$a;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;

    .line 256
    .line 257
    invoke-static {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;->n(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .line 265
    .line 266
    const-string v3, "Failed to open file: "

    .line 267
    .line 268
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    iget-object v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b$a;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;

    .line 272
    .line 273
    invoke-static {v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;->o(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/b;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    const/16 v5, 0x8

    .line 285
    .line 286
    const/4 v6, 0x0

    .line 287
    const/4 v4, 0x0

    .line 288
    move-object v3, p1

    .line 289
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    throw p1

    .line 293
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 294
    .line 295
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 296
    .line 297
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    throw p1
.end method
