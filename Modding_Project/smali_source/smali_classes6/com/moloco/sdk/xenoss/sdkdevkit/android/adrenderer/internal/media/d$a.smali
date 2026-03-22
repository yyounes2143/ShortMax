.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;->d(Ljava/lang/String;Ljava/io/File;Lrs/c;)Ljava/lang/Object;
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
        "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.LegacyMediaDownloader$downloadMedia$2"
    f = "LegacyMediaDownloader.kt"
    l = {
        0x2a,
        0x34,
        0x3f,
        0x3f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public i:Ljava/lang/Object;

.field public j:I

.field public final synthetic k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;

.field public final synthetic l:Ljava/lang/String;

.field public final synthetic m:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;Ljava/lang/String;Ljava/io/File;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->l:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->m:Ljava/io/File;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 9
    .line 10
    .line 11
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
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 3
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
    new-instance p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->l:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->m:Ljava/io/File;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;Ljava/lang/String;Ljava/io/File;Lrs/c;)V

    .line 10
    .line 11
    .line 12
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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->j:I

    .line 8
    .line 9
    const/4 v9, 0x0

    .line 10
    const/4 v2, 0x4

    .line 11
    const/4 v3, 0x3

    .line 12
    const-string v10, "Failed to fetch media from url: "

    .line 13
    .line 14
    const/4 v11, 0x2

    .line 15
    const/4 v12, 0x0

    .line 16
    const/4 v13, 0x1

    .line 17
    if-eqz v1, :cond_4

    .line 18
    .line 19
    if-eq v1, v13, :cond_3

    .line 20
    .line 21
    if-eq v1, v11, :cond_2

    .line 22
    .line 23
    if-eq v1, v3, :cond_1

    .line 24
    .line 25
    if-ne v1, v2, :cond_0

    .line 26
    .line 27
    iget v0, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->h:I

    .line 28
    .line 29
    iget-object v1, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->i:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Ltr/c;

    .line 32
    .line 33
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    move-object v15, v1

    .line 37
    move-object/from16 v1, p1

    .line 38
    .line 39
    goto/16 :goto_3

    .line 40
    .line 41
    :catch_0
    move-exception v0

    .line 42
    goto/16 :goto_5

    .line 43
    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    :cond_1
    iget v1, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->h:I

    .line 53
    .line 54
    iget-object v3, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->i:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v3, Ltr/c;

    .line 57
    .line 58
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 59
    .line 60
    .line 61
    move v14, v1

    .line 62
    move-object v15, v3

    .line 63
    move-object/from16 v3, p1

    .line 64
    .line 65
    goto/16 :goto_2

    .line 66
    .line 67
    :cond_2
    iget v1, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->h:I

    .line 68
    .line 69
    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_2
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 70
    .line 71
    .line 72
    move v4, v1

    .line 73
    move-object/from16 v1, p1

    .line 74
    .line 75
    goto/16 :goto_1

    .line 76
    .line 77
    :cond_3
    iget v1, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->h:I

    .line 78
    .line 79
    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_3
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 80
    .line 81
    .line 82
    move v4, v1

    .line 83
    move-object/from16 v1, p1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    :try_start_4
    sget-object v14, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 90
    .line 91
    iget-object v1, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;

    .line 92
    .line 93
    invoke-static {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;->k(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v15

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v4, "Fetching asset from network: "

    .line 103
    .line 104
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget-object v4, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->l:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v16

    .line 116
    const/16 v19, 0xc

    .line 117
    .line 118
    const/16 v20, 0x0

    .line 119
    .line 120
    const/16 v17, 0x0

    .line 121
    .line 122
    const/16 v18, 0x0

    .line 123
    .line 124
    invoke-static/range {v14 .. v20}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    iget-object v1, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;

    .line 128
    .line 129
    invoke-static {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;->b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;)Lcom/moloco/sdk/internal/services/g0;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    iput v9, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->h:I

    .line 134
    .line 135
    iput v13, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->j:I

    .line 136
    .line 137
    const-wide/16 v4, 0x1388

    .line 138
    .line 139
    invoke-interface {v1, v4, v5, v8}, Lcom/moloco/sdk/internal/services/g0;->a(JLrs/c;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v1
    :try_end_4
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 143
    if-ne v1, v0, :cond_5

    .line 144
    .line 145
    return-object v0

    .line 146
    :cond_5
    move v4, v9

    .line 147
    :goto_0
    :try_start_5
    check-cast v1, Ljava/lang/Boolean;

    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_6

    .line 154
    .line 155
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$n;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$n;

    .line 156
    .line 157
    return-object v0

    .line 158
    :cond_6
    iget-object v1, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->m:Ljava/io/File;

    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-eqz v1, :cond_7

    .line 165
    .line 166
    sget-object v14, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 167
    .line 168
    iget-object v1, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;

    .line 169
    .line 170
    invoke-static {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;->k(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v15

    .line 174
    const-string v16, "Deleting existing file and re-downloading it"

    .line 175
    .line 176
    const/16 v19, 0xc

    .line 177
    .line 178
    const/16 v20, 0x0

    .line 179
    .line 180
    const/16 v17, 0x0

    .line 181
    .line 182
    const/16 v18, 0x0

    .line 183
    .line 184
    invoke-static/range {v14 .. v20}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    iget-object v1, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->m:Ljava/io/File;

    .line 188
    .line 189
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 190
    .line 191
    .line 192
    :cond_7
    iget-object v1, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;

    .line 193
    .line 194
    iget-object v5, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->l:Ljava/lang/String;

    .line 195
    .line 196
    iput v4, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->h:I

    .line 197
    .line 198
    iput v11, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->j:I

    .line 199
    .line 200
    invoke-static {v1, v5, v8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;->c(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    if-ne v1, v0, :cond_8

    .line 205
    .line 206
    return-object v0

    .line 207
    :cond_8
    :goto_1
    check-cast v1, Ltr/c;
    :try_end_5
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 208
    .line 209
    :try_start_6
    invoke-virtual {v1}, Ltr/c;->e()Lwr/o;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    invoke-virtual {v4}, Lwr/o;->e0()I

    .line 214
    .line 215
    .line 216
    move-result v4
    :try_end_6
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 217
    const/16 v5, 0x190

    .line 218
    .line 219
    const-string v6, ", status: "

    .line 220
    .line 221
    const/16 v7, 0x1f4

    .line 222
    .line 223
    if-gt v5, v4, :cond_9

    .line 224
    .line 225
    if-ge v4, v7, :cond_9

    .line 226
    .line 227
    :try_start_7
    sget-object v14, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 228
    .line 229
    iget-object v0, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;

    .line 230
    .line 231
    invoke-static {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;->k(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v15

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    iget-object v2, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->l:Ljava/lang/String;

    .line 244
    .line 245
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1}, Ltr/c;->e()Lwr/o;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v16

    .line 262
    const/16 v19, 0xc

    .line 263
    .line 264
    const/16 v20, 0x0

    .line 265
    .line 266
    const/16 v17, 0x0

    .line 267
    .line 268
    const/16 v18, 0x0

    .line 269
    .line 270
    invoke-static/range {v14 .. v20}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$e;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$e;

    .line 274
    .line 275
    return-object v0

    .line 276
    :cond_9
    invoke-virtual {v1}, Ltr/c;->e()Lwr/o;

    .line 277
    .line 278
    .line 279
    move-result-object v4

    .line 280
    invoke-virtual {v4}, Lwr/o;->e0()I

    .line 281
    .line 282
    .line 283
    move-result v4

    .line 284
    if-gt v7, v4, :cond_a

    .line 285
    .line 286
    const/16 v5, 0x258

    .line 287
    .line 288
    if-ge v4, v5, :cond_a

    .line 289
    .line 290
    sget-object v14, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 291
    .line 292
    iget-object v0, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;

    .line 293
    .line 294
    invoke-static {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;->k(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v15

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    iget-object v2, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->l:Ljava/lang/String;

    .line 307
    .line 308
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v1}, Ltr/c;->e()Lwr/o;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v16

    .line 325
    const/16 v19, 0xc

    .line 326
    .line 327
    const/16 v20, 0x0

    .line 328
    .line 329
    const/16 v17, 0x0

    .line 330
    .line 331
    const/16 v18, 0x0

    .line 332
    .line 333
    invoke-static/range {v14 .. v20}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 334
    .line 335
    .line 336
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$h;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$h;

    .line 337
    .line 338
    return-object v0

    .line 339
    :cond_a
    iput-object v1, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->i:Ljava/lang/Object;

    .line 340
    .line 341
    iput v13, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->h:I

    .line 342
    .line 343
    iput v3, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->j:I

    .line 344
    .line 345
    invoke-static {v1, v8}, Lio/ktor/client/statement/HttpResponseKt;->a(Ltr/c;Lrs/c;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v3
    :try_end_7
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 349
    if-ne v3, v0, :cond_b

    .line 350
    .line 351
    return-object v0

    .line 352
    :cond_b
    move-object v15, v1

    .line 353
    move v14, v13

    .line 354
    :goto_2
    :try_start_8
    move-object v1, v3

    .line 355
    check-cast v1, Lio/ktor/utils/io/ByteReadChannel;

    .line 356
    .line 357
    iget-object v3, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->m:Ljava/io/File;

    .line 358
    .line 359
    invoke-static {v3, v12, v13, v12}, Lio/ktor/util/cio/FileChannelsKt;->b(Ljava/io/File;Lkotlin/coroutines/CoroutineContext;ILjava/lang/Object;)Lio/ktor/utils/io/e;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    iput-object v15, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->i:Ljava/lang/Object;

    .line 364
    .line 365
    iput v14, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->h:I

    .line 366
    .line 367
    iput v2, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->j:I

    .line 368
    .line 369
    const-wide/16 v4, 0x0

    .line 370
    .line 371
    const/4 v6, 0x2

    .line 372
    const/4 v7, 0x0

    .line 373
    move-object v2, v3

    .line 374
    move-wide v3, v4

    .line 375
    move-object/from16 v5, p0

    .line 376
    .line 377
    invoke-static/range {v1 .. v7}, Lio/ktor/utils/io/ByteReadChannelKt;->c(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/e;JLrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v1
    :try_end_8
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 381
    if-ne v1, v0, :cond_c

    .line 382
    .line 383
    return-object v0

    .line 384
    :cond_c
    move v0, v14

    .line 385
    :goto_3
    :try_start_9
    check-cast v1, Ljava/lang/Number;

    .line 386
    .line 387
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 388
    .line 389
    .line 390
    move-result-wide v1

    .line 391
    sget-object v16, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 392
    .line 393
    iget-object v3, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;

    .line 394
    .line 395
    invoke-static {v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;->k(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v17

    .line 399
    new-instance v3, Ljava/lang/StringBuilder;

    .line 400
    .line 401
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 402
    .line 403
    .line 404
    const-string v4, "Downloaded full response: "

    .line 405
    .line 406
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-static {v15}, Lio/ktor/http/d;->b(Lwr/k;)Ljava/lang/Long;

    .line 410
    .line 411
    .line 412
    move-result-object v4

    .line 413
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    const-string v4, " and saved to disk: "

    .line 417
    .line 418
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    const-string v1, " bytes, file size: "

    .line 425
    .line 426
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    iget-object v1, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->m:Ljava/io/File;

    .line 430
    .line 431
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 432
    .line 433
    .line 434
    move-result-wide v1

    .line 435
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v18

    .line 442
    const/16 v21, 0xc

    .line 443
    .line 444
    const/16 v22, 0x0

    .line 445
    .line 446
    const/16 v19, 0x0

    .line 447
    .line 448
    const/16 v20, 0x0

    .line 449
    .line 450
    invoke-static/range {v16 .. v22}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 451
    .line 452
    .line 453
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$b;

    .line 454
    .line 455
    iget-object v2, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->m:Ljava/io/File;

    .line 456
    .line 457
    invoke-direct {v1, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$b;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 458
    .line 459
    .line 460
    goto :goto_6

    .line 461
    :catch_1
    move v1, v14

    .line 462
    goto :goto_4

    .line 463
    :catch_2
    move v1, v13

    .line 464
    goto :goto_4

    .line 465
    :catch_3
    move v1, v4

    .line 466
    :catch_4
    :goto_4
    move v0, v1

    .line 467
    goto :goto_7

    .line 468
    :goto_5
    sget-object v14, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 469
    .line 470
    iget-object v1, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;

    .line 471
    .line 472
    invoke-static {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;->k(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v15

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    .line 477
    .line 478
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    iget-object v2, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->l:Ljava/lang/String;

    .line 485
    .line 486
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v16

    .line 493
    const/16 v19, 0x8

    .line 494
    .line 495
    const/16 v20, 0x0

    .line 496
    .line 497
    const/16 v18, 0x0

    .line 498
    .line 499
    move-object/from16 v17, v0

    .line 500
    .line 501
    invoke-static/range {v14 .. v20}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 502
    .line 503
    .line 504
    invoke-static {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/r;->a(Ljava/lang/Exception;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a;

    .line 505
    .line 506
    .line 507
    move-result-object v1

    .line 508
    :goto_6
    return-object v1

    .line 509
    :catch_5
    move v0, v9

    .line 510
    :catch_6
    :goto_7
    iget-object v1, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;

    .line 511
    .line 512
    invoke-static {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;->j(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;)Lcom/moloco/sdk/internal/error/b;

    .line 513
    .line 514
    .line 515
    move-result-object v1

    .line 516
    iget-object v2, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;

    .line 517
    .line 518
    if-eqz v0, :cond_d

    .line 519
    .line 520
    move v9, v13

    .line 521
    :cond_d
    invoke-static {v2, v9}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;->f(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;Z)Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v2

    .line 525
    invoke-static {v1, v2, v12, v11, v12}, Lcom/moloco/sdk/internal/error/b$a;->a(Lcom/moloco/sdk/internal/error/b;Ljava/lang/String;Lcom/moloco/sdk/internal/error/a;ILjava/lang/Object;)V

    .line 526
    .line 527
    .line 528
    if-eqz v0, :cond_e

    .line 529
    .line 530
    sget-object v13, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 531
    .line 532
    iget-object v0, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;

    .line 533
    .line 534
    invoke-static {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;->k(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;)Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v14

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    .line 539
    .line 540
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 541
    .line 542
    .line 543
    const-string v1, "Timeout occurred after request had completed: "

    .line 544
    .line 545
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    iget-object v1, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->l:Ljava/lang/String;

    .line 549
    .line 550
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v15

    .line 557
    const/16 v18, 0xc

    .line 558
    .line 559
    const/16 v19, 0x0

    .line 560
    .line 561
    const/16 v16, 0x0

    .line 562
    .line 563
    const/16 v17, 0x0

    .line 564
    .line 565
    invoke-static/range {v13 .. v19}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 566
    .line 567
    .line 568
    goto :goto_8

    .line 569
    :cond_e
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 570
    .line 571
    iget-object v1, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;

    .line 572
    .line 573
    invoke-static {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;->k(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;)Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v1

    .line 577
    new-instance v2, Ljava/lang/StringBuilder;

    .line 578
    .line 579
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 580
    .line 581
    .line 582
    const-string v3, "Timeout occurred when still waiting for request to complete: "

    .line 583
    .line 584
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    iget-object v3, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;->l:Ljava/lang/String;

    .line 588
    .line 589
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v2

    .line 596
    const/16 v5, 0xc

    .line 597
    .line 598
    const/4 v6, 0x0

    .line 599
    const/4 v3, 0x0

    .line 600
    const/4 v4, 0x0

    .line 601
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 602
    .line 603
    .line 604
    :goto_8
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/p;

    .line 605
    .line 606
    invoke-direct {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/p;-><init>()V

    .line 607
    .line 608
    .line 609
    throw v0
.end method
