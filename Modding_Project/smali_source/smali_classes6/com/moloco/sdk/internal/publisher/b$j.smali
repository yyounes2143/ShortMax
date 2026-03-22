.class public final Lcom/moloco/sdk/internal/publisher/b$j;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/publisher/b;->n(Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/acm/recorder/a;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
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
        "Lcom/moloco/sdk/publisher/RewardedInterstitialAd;",
        "Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.internal.publisher.AdCreator$createRewardedInterstitial$2"
    f = "AdCreator.kt"
    l = {
        0x137
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
            "Lcom/moloco/sdk/internal/publisher/b$j;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/b$j;->m:Lcom/moloco/sdk/internal/publisher/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/publisher/b$j;->n:Lcom/moloco/sdk/acm/recorder/a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/moloco/sdk/internal/publisher/b$j;->o:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/moloco/sdk/internal/publisher/b$j;->p:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/moloco/sdk/internal/publisher/b$j;->q:Ljava/lang/String;

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
            "Lcom/moloco/sdk/publisher/RewardedInterstitialAd;",
            "Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/publisher/b$j;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/internal/publisher/b$j;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/internal/publisher/b$j;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance p1, Lcom/moloco/sdk/internal/publisher/b$j;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/b$j;->m:Lcom/moloco/sdk/internal/publisher/b;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/moloco/sdk/internal/publisher/b$j;->n:Lcom/moloco/sdk/acm/recorder/a;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/moloco/sdk/internal/publisher/b$j;->o:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/moloco/sdk/internal/publisher/b$j;->p:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/moloco/sdk/internal/publisher/b$j;->q:Ljava/lang/String;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/moloco/sdk/internal/publisher/b$j;-><init>(Lcom/moloco/sdk/internal/publisher/b;Lcom/moloco/sdk/acm/recorder/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/publisher/b$j;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

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
    iget v2, v0, Lcom/moloco/sdk/internal/publisher/b$j;->l:I

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
    iget-wide v1, v0, Lcom/moloco/sdk/internal/publisher/b$j;->k:J

    .line 19
    .line 20
    iget-object v5, v0, Lcom/moloco/sdk/internal/publisher/b$j;->j:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v5, Lcom/moloco/sdk/acm/e;

    .line 23
    .line 24
    iget-object v6, v0, Lcom/moloco/sdk/internal/publisher/b$j;->i:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v6, Ljava/lang/String;

    .line 27
    .line 28
    iget-object v7, v0, Lcom/moloco/sdk/internal/publisher/b$j;->h:Ljava/lang/Object;

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
    sget-object v7, Lcom/moloco/sdk/internal/publisher/s;->g:Lcom/moloco/sdk/internal/publisher/s;

    .line 54
    .line 55
    iget-object v2, v0, Lcom/moloco/sdk/internal/publisher/b$j;->m:Lcom/moloco/sdk/internal/publisher/b;

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
    iget-object v2, v0, Lcom/moloco/sdk/internal/publisher/b$j;->m:Lcom/moloco/sdk/internal/publisher/b;

    .line 66
    .line 67
    invoke-static {v2}, Lcom/moloco/sdk/internal/publisher/b;->k(Lcom/moloco/sdk/internal/publisher/b;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    iget-object v2, v0, Lcom/moloco/sdk/internal/publisher/b$j;->n:Lcom/moloco/sdk/acm/recorder/a;

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
    iget-object v12, v0, Lcom/moloco/sdk/internal/publisher/b$j;->o:Ljava/lang/String;

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
    iget-object v10, v0, Lcom/moloco/sdk/internal/publisher/b$j;->m:Lcom/moloco/sdk/internal/publisher/b;

    .line 140
    .line 141
    invoke-static {v10}, Lcom/moloco/sdk/internal/publisher/b;->g(Lcom/moloco/sdk/internal/publisher/b;)Lkotlin/jvm/functions/Function1;

    .line 142
    .line 143
    .line 144
    move-result-object v11

    .line 145
    iget-object v12, v0, Lcom/moloco/sdk/internal/publisher/b$j;->n:Lcom/moloco/sdk/acm/recorder/a;

    .line 146
    .line 147
    iput-object v7, v0, Lcom/moloco/sdk/internal/publisher/b$j;->h:Ljava/lang/Object;

    .line 148
    .line 149
    iput-object v6, v0, Lcom/moloco/sdk/internal/publisher/b$j;->i:Ljava/lang/Object;

    .line 150
    .line 151
    iput-object v2, v0, Lcom/moloco/sdk/internal/publisher/b$j;->j:Ljava/lang/Object;

    .line 152
    .line 153
    iput-wide v8, v0, Lcom/moloco/sdk/internal/publisher/b$j;->k:J

    .line 154
    .line 155
    iput v5, v0, Lcom/moloco/sdk/internal/publisher/b$j;->l:I

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
    move-wide/from16 v25, v8

    .line 166
    .line 167
    move-object v9, v2

    .line 168
    move-object v8, v6

    .line 169
    move-wide/from16 v1, v25

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
    iget-object v5, v0, Lcom/moloco/sdk/internal/publisher/b$j;->o:Ljava/lang/String;

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
    sget-object v6, Lcom/moloco/sdk/service_locator/b$i;->a:Lcom/moloco/sdk/service_locator/b$i;

    .line 201
    .line 202
    invoke-virtual {v6}, Lcom/moloco/sdk/service_locator/b$i;->c()Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;

    .line 203
    .line 204
    .line 205
    move-result-object v19

    .line 206
    new-instance v6, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/b;

    .line 207
    .line 208
    iget-object v7, v0, Lcom/moloco/sdk/internal/publisher/b$j;->p:Ljava/lang/String;

    .line 209
    .line 210
    invoke-direct {v6, v7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/b;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    new-instance v7, Lcom/moloco/sdk/internal/publisher/w;

    .line 214
    .line 215
    sget-object v10, Lcom/moloco/sdk/publisher/AdFormatType;->REWARDED:Lcom/moloco/sdk/publisher/AdFormatType;

    .line 216
    .line 217
    iget-object v11, v0, Lcom/moloco/sdk/internal/publisher/b$j;->q:Ljava/lang/String;

    .line 218
    .line 219
    move-wide/from16 v23, v1

    .line 220
    .line 221
    invoke-static {v11}, Lcom/moloco/sdk/internal/mediators/a;->b(Ljava/lang/String;)J

    .line 222
    .line 223
    .line 224
    move-result-wide v1

    .line 225
    const/4 v11, 0x0

    .line 226
    invoke-direct {v7, v10, v1, v2, v11}, Lcom/moloco/sdk/internal/publisher/w;-><init>(Lcom/moloco/sdk/publisher/AdFormatType;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 227
    .line 228
    .line 229
    iget-object v1, v0, Lcom/moloco/sdk/internal/publisher/b$j;->n:Lcom/moloco/sdk/acm/recorder/a;

    .line 230
    .line 231
    move-object/from16 v16, v5

    .line 232
    .line 233
    move-object/from16 v20, v6

    .line 234
    .line 235
    move-object/from16 v21, v7

    .line 236
    .line 237
    move-object/from16 v22, v1

    .line 238
    .line 239
    invoke-interface/range {v13 .. v22}, Lcom/moloco/sdk/internal/e;->e(Landroid/content/Context;Lcom/moloco/sdk/internal/services/r;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lcom/moloco/sdk/internal/publisher/w;Lcom/moloco/sdk/acm/recorder/a;)Lcom/moloco/sdk/publisher/RewardedInterstitialAd;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    if-nez v1, :cond_3

    .line 244
    .line 245
    goto :goto_1

    .line 246
    :cond_3
    iget-object v2, v0, Lcom/moloco/sdk/internal/publisher/b$j;->n:Lcom/moloco/sdk/acm/recorder/a;

    .line 247
    .line 248
    new-instance v5, Lcom/moloco/sdk/acm/b;

    .line 249
    .line 250
    sget-object v6, Lcom/moloco/sdk/internal/client_metrics_data/a;->i:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 251
    .line 252
    invoke-virtual {v6}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v6

    .line 256
    invoke-direct {v5, v6}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    sget-object v6, Lcom/moloco/sdk/internal/client_metrics_data/c;->d:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 260
    .line 261
    invoke-virtual {v6}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v7

    .line 265
    const-string/jumbo v10, "success"

    .line 266
    .line 267
    .line 268
    invoke-virtual {v5, v7, v10}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 269
    .line 270
    .line 271
    move-result-object v5

    .line 272
    sget-object v7, Lcom/moloco/sdk/internal/client_metrics_data/c;->c:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 273
    .line 274
    invoke-virtual {v7}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v7

    .line 278
    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v11

    .line 282
    invoke-virtual {v5, v7, v11}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 283
    .line 284
    .line 285
    move-result-object v5

    .line 286
    invoke-virtual {v5, v4, v8}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    invoke-interface {v2, v4}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 291
    .line 292
    .line 293
    iget-object v2, v0, Lcom/moloco/sdk/internal/publisher/b$j;->n:Lcom/moloco/sdk/acm/recorder/a;

    .line 294
    .line 295
    invoke-virtual {v6}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    invoke-virtual {v9, v4, v10}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    invoke-interface {v2, v4}, Lcom/moloco/sdk/acm/recorder/a;->a(Lcom/moloco/sdk/acm/e;)V

    .line 304
    .line 305
    .line 306
    instance-of v2, v1, Lcom/moloco/sdk/internal/publisher/m0;

    .line 307
    .line 308
    if-eqz v2, :cond_4

    .line 309
    .line 310
    move-object v2, v1

    .line 311
    check-cast v2, Lcom/moloco/sdk/internal/publisher/m0;

    .line 312
    .line 313
    move-wide/from16 v8, v23

    .line 314
    .line 315
    invoke-interface {v2, v8, v9}, Lcom/moloco/sdk/internal/publisher/m0;->setCreateAdObjectStartTime(J)V

    .line 316
    .line 317
    .line 318
    :cond_4
    sget-object v13, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 319
    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    .line 321
    .line 322
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    .line 324
    .line 325
    const-string v4, "Created "

    .line 326
    .line 327
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    iget-object v3, v0, Lcom/moloco/sdk/internal/publisher/b$j;->o:Ljava/lang/String;

    .line 337
    .line 338
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v15

    .line 345
    const/16 v18, 0xc

    .line 346
    .line 347
    const/16 v19, 0x0

    .line 348
    .line 349
    const-string v14, "AdCreator"

    .line 350
    .line 351
    const/16 v16, 0x0

    .line 352
    .line 353
    const/16 v17, 0x0

    .line 354
    .line 355
    invoke-static/range {v13 .. v19}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 356
    .line 357
    .line 358
    new-instance v2, Lcom/moloco/sdk/internal/g0$b;

    .line 359
    .line 360
    invoke-direct {v2, v1}, Lcom/moloco/sdk/internal/g0$b;-><init>(Ljava/lang/Object;)V

    .line 361
    .line 362
    .line 363
    return-object v2

    .line 364
    :cond_5
    :goto_1
    iget-object v6, v0, Lcom/moloco/sdk/internal/publisher/b$j;->m:Lcom/moloco/sdk/internal/publisher/b;

    .line 365
    .line 366
    iget-object v7, v0, Lcom/moloco/sdk/internal/publisher/b$j;->o:Ljava/lang/String;

    .line 367
    .line 368
    iget-object v11, v0, Lcom/moloco/sdk/internal/publisher/b$j;->n:Lcom/moloco/sdk/acm/recorder/a;

    .line 369
    .line 370
    move-object v10, v12

    .line 371
    invoke-static/range {v6 .. v11}, Lcom/moloco/sdk/internal/publisher/b;->a(Lcom/moloco/sdk/internal/publisher/b;Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/acm/e;Lcom/moloco/sdk/internal/publisher/s;Lcom/moloco/sdk/acm/recorder/a;)Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    sget-object v2, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 376
    .line 377
    new-instance v3, Ljava/lang/StringBuilder;

    .line 378
    .line 379
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    .line 381
    .line 382
    const-string v4, "Failed to create "

    .line 383
    .line 384
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    const-string v4, " with reason: "

    .line 391
    .line 392
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v4

    .line 402
    const/16 v7, 0xc

    .line 403
    .line 404
    const/4 v8, 0x0

    .line 405
    const-string v3, "AdCreator"

    .line 406
    .line 407
    const/4 v5, 0x0

    .line 408
    const/4 v6, 0x0

    .line 409
    invoke-static/range {v2 .. v8}, Lcom/moloco/sdk/internal/MolocoLogger;->warn$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 410
    .line 411
    .line 412
    new-instance v2, Lcom/moloco/sdk/internal/g0$a;

    .line 413
    .line 414
    invoke-direct {v2, v1}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 415
    .line 416
    .line 417
    return-object v2
.end method
