.class public final Lcom/moloco/sdk/internal/publisher/b$e;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/publisher/b;->d(Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/acm/recorder/a;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
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
        "Lcom/moloco/sdk/internal/g0<",
        "Lcom/moloco/sdk/publisher/Banner;",
        "Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.internal.publisher.AdCreator$createBanner$2"
    f = "AdCreator.kt"
    l = {
        0x45
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:J

.field public l:I

.field public final synthetic m:Lcom/moloco/sdk/internal/publisher/b;

.field public final synthetic n:Lcom/moloco/sdk/acm/recorder/a;

.field public final synthetic o:Ljava/lang/String;

.field public final synthetic p:Ljava/lang/String;

.field public final synthetic q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/internal/publisher/b;Lcom/moloco/sdk/acm/recorder/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/internal/publisher/b;",
            "Lcom/moloco/sdk/acm/recorder/a;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/publisher/b$e;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/b$e;->m:Lcom/moloco/sdk/internal/publisher/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/publisher/b$e;->n:Lcom/moloco/sdk/acm/recorder/a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/moloco/sdk/internal/publisher/b$e;->o:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/moloco/sdk/internal/publisher/b$e;->p:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/moloco/sdk/internal/publisher/b$e;->q:Ljava/lang/String;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 13
    .line 14
    .line 15
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
            "Lcom/moloco/sdk/internal/g0<",
            "Lcom/moloco/sdk/publisher/Banner;",
            "Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/publisher/b$e;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/internal/publisher/b$e;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/internal/publisher/b$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 7
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
    new-instance p1, Lcom/moloco/sdk/internal/publisher/b$e;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/b$e;->m:Lcom/moloco/sdk/internal/publisher/b;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/moloco/sdk/internal/publisher/b$e;->n:Lcom/moloco/sdk/acm/recorder/a;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/moloco/sdk/internal/publisher/b$e;->o:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/moloco/sdk/internal/publisher/b$e;->p:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/moloco/sdk/internal/publisher/b$e;->q:Ljava/lang/String;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/moloco/sdk/internal/publisher/b$e;-><init>(Lcom/moloco/sdk/internal/publisher/b;Lcom/moloco/sdk/acm/recorder/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 16
    .line 17
    .line 18
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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/publisher/b$e;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, v0, Lcom/moloco/sdk/internal/publisher/b$e;->l:I

    .line 8
    .line 9
    const-string v3, " ad with adUnitId: "

    .line 10
    .line 11
    const-string v4, "initial_sdk_init_state"

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    if-ne v2, v5, :cond_0

    .line 17
    .line 18
    iget-wide v1, v0, Lcom/moloco/sdk/internal/publisher/b$e;->k:J

    .line 19
    .line 20
    iget-object v5, v0, Lcom/moloco/sdk/internal/publisher/b$e;->j:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v5, Lcom/moloco/sdk/acm/e;

    .line 23
    .line 24
    iget-object v6, v0, Lcom/moloco/sdk/internal/publisher/b$e;->i:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v6, Ljava/lang/String;

    .line 27
    .line 28
    iget-object v7, v0, Lcom/moloco/sdk/internal/publisher/b$e;->h:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v7, Lcom/moloco/sdk/internal/publisher/s;

    .line 31
    .line 32
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    move-object v9, v5

    .line 36
    move-object v8, v6

    .line 37
    move-object v12, v7

    .line 38
    move-object/from16 v5, p1

    .line 39
    .line 40
    goto/16 :goto_0

    .line 41
    .line 42
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v1

    .line 50
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    sget-object v7, Lcom/moloco/sdk/internal/publisher/s;->a:Lcom/moloco/sdk/internal/publisher/s;

    .line 54
    .line 55
    iget-object v2, v0, Lcom/moloco/sdk/internal/publisher/b$e;->m:Lcom/moloco/sdk/internal/publisher/b;

    .line 56
    .line 57
    invoke-static {v2}, Lcom/moloco/sdk/internal/publisher/b;->h(Lcom/moloco/sdk/internal/publisher/b;)Lcom/moloco/sdk/internal/services/j;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-interface {v2}, Lcom/moloco/sdk/internal/services/j;->invoke()J

    .line 62
    .line 63
    .line 64
    move-result-wide v8

    .line 65
    iget-object v2, v0, Lcom/moloco/sdk/internal/publisher/b$e;->m:Lcom/moloco/sdk/internal/publisher/b;

    .line 66
    .line 67
    invoke-static {v2}, Lcom/moloco/sdk/internal/publisher/b;->k(Lcom/moloco/sdk/internal/publisher/b;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    iget-object v2, v0, Lcom/moloco/sdk/internal/publisher/b$e;->n:Lcom/moloco/sdk/acm/recorder/a;

    .line 72
    .line 73
    sget-object v10, Lcom/moloco/sdk/internal/client_metrics_data/d;->h:Lcom/moloco/sdk/internal/client_metrics_data/d;

    .line 74
    .line 75
    invoke-virtual {v10}, Lcom/moloco/sdk/internal/client_metrics_data/d;->c()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    invoke-interface {v2, v10}, Lcom/moloco/sdk/acm/recorder/a;->c(Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    sget-object v10, Lcom/moloco/sdk/internal/client_metrics_data/c;->c:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 84
    .line 85
    invoke-virtual {v10}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v11

    .line 93
    invoke-virtual {v2, v10, v11}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v2, v4, v6}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    sget-object v10, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 102
    .line 103
    new-instance v11, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v12, "Creating "

    .line 109
    .line 110
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget-object v12, v0, Lcom/moloco/sdk/internal/publisher/b$e;->o:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v12

    .line 128
    const/16 v15, 0xc

    .line 129
    .line 130
    const/16 v16, 0x0

    .line 131
    .line 132
    const-string v11, "AdCreator"

    .line 133
    .line 134
    const/4 v13, 0x0

    .line 135
    const/4 v14, 0x0

    .line 136
    invoke-static/range {v10 .. v16}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    iget-object v10, v0, Lcom/moloco/sdk/internal/publisher/b$e;->m:Lcom/moloco/sdk/internal/publisher/b;

    .line 140
    .line 141
    invoke-static {v10}, Lcom/moloco/sdk/internal/publisher/b;->g(Lcom/moloco/sdk/internal/publisher/b;)Lkotlin/jvm/functions/Function1;

    .line 142
    .line 143
    .line 144
    move-result-object v11

    .line 145
    iget-object v12, v0, Lcom/moloco/sdk/internal/publisher/b$e;->n:Lcom/moloco/sdk/acm/recorder/a;

    .line 146
    .line 147
    iput-object v7, v0, Lcom/moloco/sdk/internal/publisher/b$e;->h:Ljava/lang/Object;

    .line 148
    .line 149
    iput-object v6, v0, Lcom/moloco/sdk/internal/publisher/b$e;->i:Ljava/lang/Object;

    .line 150
    .line 151
    iput-object v2, v0, Lcom/moloco/sdk/internal/publisher/b$e;->j:Ljava/lang/Object;

    .line 152
    .line 153
    iput-wide v8, v0, Lcom/moloco/sdk/internal/publisher/b$e;->k:J

    .line 154
    .line 155
    iput v5, v0, Lcom/moloco/sdk/internal/publisher/b$e;->l:I

    .line 156
    .line 157
    invoke-static {v10, v11, v7, v12, v0}, Lcom/moloco/sdk/internal/publisher/b;->c(Lcom/moloco/sdk/internal/publisher/b;Lkotlin/jvm/functions/Function1;Lcom/moloco/sdk/internal/publisher/s;Lcom/moloco/sdk/acm/recorder/a;Lrs/c;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    if-ne v5, v1, :cond_2

    .line 162
    .line 163
    return-object v1

    .line 164
    :cond_2
    move-object v12, v7

    .line 165
    move-wide/from16 v27, v8

    .line 166
    .line 167
    move-object v9, v2

    .line 168
    move-object v8, v6

    .line 169
    move-wide/from16 v1, v27

    .line 170
    .line 171
    :goto_0
    move-object v13, v5

    .line 172
    check-cast v13, Lcom/moloco/sdk/internal/e;

    .line 173
    .line 174
    if-eqz v13, :cond_5

    .line 175
    .line 176
    sget-object v5, Lcom/moloco/sdk/service_locator/b;->a:Lcom/moloco/sdk/service_locator/b;

    .line 177
    .line 178
    invoke-virtual {v5}, Lcom/moloco/sdk/service_locator/b;->a()Landroid/content/Context;

    .line 179
    .line 180
    .line 181
    move-result-object v14

    .line 182
    sget-object v5, Lcom/moloco/sdk/service_locator/b$b;->a:Lcom/moloco/sdk/service_locator/b$b;

    .line 183
    .line 184
    invoke-virtual {v5}, Lcom/moloco/sdk/service_locator/b$b;->e()Lcom/moloco/sdk/internal/services/r;

    .line 185
    .line 186
    .line 187
    move-result-object v15

    .line 188
    iget-object v5, v0, Lcom/moloco/sdk/internal/publisher/b$e;->o:Ljava/lang/String;

    .line 189
    .line 190
    sget-object v6, Lcom/moloco/sdk/service_locator/b$h;->a:Lcom/moloco/sdk/service_locator/b$h;

    .line 191
    .line 192
    invoke-virtual {v6}, Lcom/moloco/sdk/service_locator/b$h;->j()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;

    .line 193
    .line 194
    .line 195
    move-result-object v17

    .line 196
    invoke-virtual {v6}, Lcom/moloco/sdk/service_locator/b$h;->f()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;

    .line 197
    .line 198
    .line 199
    move-result-object v18

    .line 200
    new-instance v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/b;

    .line 201
    .line 202
    iget-object v10, v0, Lcom/moloco/sdk/internal/publisher/b$e;->p:Ljava/lang/String;

    .line 203
    .line 204
    invoke-direct {v7, v10}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/b;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    new-instance v10, Lcom/moloco/sdk/internal/publisher/w;

    .line 208
    .line 209
    sget-object v11, Lcom/moloco/sdk/publisher/AdFormatType;->BANNER:Lcom/moloco/sdk/publisher/AdFormatType;

    .line 210
    .line 211
    move-object/from16 v24, v3

    .line 212
    .line 213
    iget-object v3, v0, Lcom/moloco/sdk/internal/publisher/b$e;->q:Ljava/lang/String;

    .line 214
    .line 215
    move-wide/from16 v25, v1

    .line 216
    .line 217
    invoke-static {v3}, Lcom/moloco/sdk/internal/mediators/a;->a(Ljava/lang/String;)J

    .line 218
    .line 219
    .line 220
    move-result-wide v1

    .line 221
    const/4 v3, 0x0

    .line 222
    invoke-direct {v10, v11, v1, v2, v3}, Lcom/moloco/sdk/internal/publisher/w;-><init>(Lcom/moloco/sdk/publisher/AdFormatType;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v6}, Lcom/moloco/sdk/service_locator/b$h;->i()Lcom/moloco/sdk/internal/a;

    .line 226
    .line 227
    .line 228
    move-result-object v21

    .line 229
    sget-object v22, Lcom/moloco/sdk/internal/m$b;->c:Lcom/moloco/sdk/internal/m$b;

    .line 230
    .line 231
    iget-object v1, v0, Lcom/moloco/sdk/internal/publisher/b$e;->n:Lcom/moloco/sdk/acm/recorder/a;

    .line 232
    .line 233
    move-object/from16 v16, v5

    .line 234
    .line 235
    move-object/from16 v19, v7

    .line 236
    .line 237
    move-object/from16 v20, v10

    .line 238
    .line 239
    move-object/from16 v23, v1

    .line 240
    .line 241
    invoke-interface/range {v13 .. v23}, Lcom/moloco/sdk/internal/e;->a(Landroid/content/Context;Lcom/moloco/sdk/internal/services/r;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lcom/moloco/sdk/internal/publisher/w;Lcom/moloco/sdk/internal/a;Lcom/moloco/sdk/internal/m;Lcom/moloco/sdk/acm/recorder/a;)Lcom/moloco/sdk/publisher/Banner;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    if-nez v1, :cond_3

    .line 246
    .line 247
    goto :goto_1

    .line 248
    :cond_3
    iget-object v2, v0, Lcom/moloco/sdk/internal/publisher/b$e;->n:Lcom/moloco/sdk/acm/recorder/a;

    .line 249
    .line 250
    new-instance v3, Lcom/moloco/sdk/acm/b;

    .line 251
    .line 252
    sget-object v5, Lcom/moloco/sdk/internal/client_metrics_data/a;->i:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 253
    .line 254
    invoke-virtual {v5}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    invoke-direct {v3, v5}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    sget-object v5, Lcom/moloco/sdk/internal/client_metrics_data/c;->d:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 262
    .line 263
    invoke-virtual {v5}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v6

    .line 267
    const-string/jumbo v7, "success"

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3, v6, v7}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    sget-object v6, Lcom/moloco/sdk/internal/client_metrics_data/c;->c:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 275
    .line 276
    invoke-virtual {v6}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v6

    .line 280
    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v10

    .line 284
    invoke-virtual {v3, v6, v10}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    invoke-virtual {v3, v4, v8}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    invoke-interface {v2, v3}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 293
    .line 294
    .line 295
    iget-object v2, v0, Lcom/moloco/sdk/internal/publisher/b$e;->n:Lcom/moloco/sdk/acm/recorder/a;

    .line 296
    .line 297
    invoke-virtual {v5}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    invoke-virtual {v9, v3, v7}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    invoke-interface {v2, v3}, Lcom/moloco/sdk/acm/recorder/a;->a(Lcom/moloco/sdk/acm/e;)V

    .line 306
    .line 307
    .line 308
    instance-of v2, v1, Lcom/moloco/sdk/internal/publisher/m0;

    .line 309
    .line 310
    if-eqz v2, :cond_4

    .line 311
    .line 312
    move-object v2, v1

    .line 313
    check-cast v2, Lcom/moloco/sdk/internal/publisher/m0;

    .line 314
    .line 315
    move-wide/from16 v8, v25

    .line 316
    .line 317
    invoke-interface {v2, v8, v9}, Lcom/moloco/sdk/internal/publisher/m0;->setCreateAdObjectStartTime(J)V

    .line 318
    .line 319
    .line 320
    :cond_4
    sget-object v13, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 321
    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .line 326
    .line 327
    const-string v3, "Created "

    .line 328
    .line 329
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    move-object/from16 v3, v24

    .line 336
    .line 337
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    iget-object v3, v0, Lcom/moloco/sdk/internal/publisher/b$e;->o:Ljava/lang/String;

    .line 341
    .line 342
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v15

    .line 349
    const/16 v18, 0xc

    .line 350
    .line 351
    const/16 v19, 0x0

    .line 352
    .line 353
    const-string v14, "AdCreator"

    .line 354
    .line 355
    const/16 v16, 0x0

    .line 356
    .line 357
    const/16 v17, 0x0

    .line 358
    .line 359
    invoke-static/range {v13 .. v19}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 360
    .line 361
    .line 362
    new-instance v2, Lcom/moloco/sdk/internal/g0$b;

    .line 363
    .line 364
    invoke-direct {v2, v1}, Lcom/moloco/sdk/internal/g0$b;-><init>(Ljava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    return-object v2

    .line 368
    :cond_5
    :goto_1
    iget-object v6, v0, Lcom/moloco/sdk/internal/publisher/b$e;->m:Lcom/moloco/sdk/internal/publisher/b;

    .line 369
    .line 370
    iget-object v7, v0, Lcom/moloco/sdk/internal/publisher/b$e;->o:Ljava/lang/String;

    .line 371
    .line 372
    iget-object v11, v0, Lcom/moloco/sdk/internal/publisher/b$e;->n:Lcom/moloco/sdk/acm/recorder/a;

    .line 373
    .line 374
    move-object v10, v12

    .line 375
    invoke-static/range {v6 .. v11}, Lcom/moloco/sdk/internal/publisher/b;->a(Lcom/moloco/sdk/internal/publisher/b;Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/acm/e;Lcom/moloco/sdk/internal/publisher/s;Lcom/moloco/sdk/acm/recorder/a;)Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    sget-object v2, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 380
    .line 381
    new-instance v3, Ljava/lang/StringBuilder;

    .line 382
    .line 383
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .line 385
    .line 386
    const-string v4, "Failed to create "

    .line 387
    .line 388
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    const-string v4, " with reason: "

    .line 395
    .line 396
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v4

    .line 406
    const/16 v7, 0xc

    .line 407
    .line 408
    const/4 v8, 0x0

    .line 409
    const-string v3, "AdCreator"

    .line 410
    .line 411
    const/4 v5, 0x0

    .line 412
    const/4 v6, 0x0

    .line 413
    invoke-static/range {v2 .. v8}, Lcom/moloco/sdk/internal/MolocoLogger;->warn$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 414
    .line 415
    .line 416
    new-instance v2, Lcom/moloco/sdk/internal/g0$a;

    .line 417
    .line 418
    invoke-direct {v2, v1}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    return-object v2
.end method
