.class final Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ShortsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->Z(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgt/g0;",
        "Lrs/c<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.viewmodel.shorts.ShortsViewModel$preloadNextEpisodeForImmersion$1"
    f = "ShortsViewModel.kt"
    l = {
        0x107,
        0x113,
        0x116,
        0x11a,
        0x11d,
        0x11f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:Ljava/lang/Object;

.field k:I

.field final synthetic l:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->l:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 1
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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->l:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;-><init>(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v8

    .line 5
    iget v0, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->k:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const/16 v2, 0x29

    .line 9
    .line 10
    const-string v3, "ShortsViewModel"

    .line 11
    .line 12
    const/4 v4, -0x1

    .line 13
    const/4 v9, 0x0

    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0

    .line 25
    :pswitch_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->j:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->i:Ljava/lang/Object;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->h:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 34
    .line 35
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    move-object v3, p1

    .line 39
    check-cast v3, Lkotlin/Result;

    .line 40
    .line 41
    invoke-virtual {v3}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    goto/16 :goto_a

    .line 46
    .line 47
    :pswitch_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->h:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 50
    .line 51
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    move-object v1, p1

    .line 55
    check-cast v1, Lkotlin/Result;

    .line 56
    .line 57
    invoke-virtual {v1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    :cond_0
    move-object v10, v0

    .line 62
    move-object v11, v1

    .line 63
    goto/16 :goto_9

    .line 64
    .line 65
    :pswitch_2
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->i:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->h:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 72
    .line 73
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    move-object v2, p1

    .line 77
    check-cast v2, Lkotlin/Result;

    .line 78
    .line 79
    invoke-virtual {v2}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    goto/16 :goto_7

    .line 84
    .line 85
    :pswitch_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->i:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 88
    .line 89
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->h:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 92
    .line 93
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    move-object v2, p1

    .line 97
    check-cast v2, Lkotlin/Result;

    .line 98
    .line 99
    invoke-virtual {v2}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    goto/16 :goto_4

    .line 104
    .line 105
    :pswitch_4
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->h:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 108
    .line 109
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    move-object v1, p1

    .line 113
    check-cast v1, Lkotlin/Result;

    .line 114
    .line 115
    invoke-virtual {v1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    goto/16 :goto_2

    .line 120
    .line 121
    :pswitch_5
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    move-object v0, p1

    .line 125
    check-cast v0, Lkotlin/Result;

    .line 126
    .line 127
    invoke-virtual {v0}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :pswitch_6
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->l:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-nez v0, :cond_1

    .line 141
    .line 142
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 143
    .line 144
    new-instance v5, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string v6, "preloadNextEpisodeForImmersion -> query ShortsDetail("

    .line 150
    .line 151
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    iget-object v6, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->l:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 155
    .line 156
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    invoke-virtual {v0, v3, v5}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    sget-object v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;

    .line 174
    .line 175
    iget-object v5, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->l:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 176
    .line 177
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    iput v1, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->k:I

    .line 182
    .line 183
    const-string v6, "shorts"

    .line 184
    .line 185
    invoke-virtual {v0, v6, v5, p0}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->y(Ljava/lang/String;ILrs/c;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    if-ne v0, v8, :cond_1

    .line 190
    .line 191
    return-object v8

    .line 192
    :cond_1
    :goto_0
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 193
    .line 194
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 195
    .line 196
    .line 197
    sget-object v5, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 198
    .line 199
    new-instance v6, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    const-string v7, "preloadNextEpisodeForImmersion -> episodeId("

    .line 205
    .line 206
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    iget-object v7, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->l:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 210
    .line 211
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 212
    .line 213
    .line 214
    move-result v7

    .line 215
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v7, ") trailer("

    .line 219
    .line 220
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    iget-object v7, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->l:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 224
    .line 225
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 226
    .line 227
    .line 228
    move-result v7

    .line 229
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v7, ") bindShortsPlayId("

    .line 233
    .line 234
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    iget-object v7, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->l:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 238
    .line 239
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getBindShortPlayId()I

    .line 240
    .line 241
    .line 242
    move-result v7

    .line 243
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string v7, ") firstDramId("

    .line 247
    .line 248
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    iget-object v7, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->l:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 252
    .line 253
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getFirstDramId()I

    .line 254
    .line 255
    .line 256
    move-result v7

    .line 257
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string v7, ") lastEpisode("

    .line 261
    .line 262
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    iget-object v7, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->l:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 266
    .line 267
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isLastEpisode()Z

    .line 268
    .line 269
    .line 270
    move-result v7

    .line 271
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    invoke-virtual {v5, v3, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->l:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 285
    .line 286
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    if-eqz v2, :cond_8

    .line 291
    .line 292
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->l:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 293
    .line 294
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getFirstDramId()I

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    if-eq v2, v4, :cond_2

    .line 299
    .line 300
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->l:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 301
    .line 302
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getFirstDramId()I

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    :goto_1
    move-object v10, v0

    .line 307
    move v3, v1

    .line 308
    goto :goto_3

    .line 309
    :cond_2
    sget-object v2, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;

    .line 310
    .line 311
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->l:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 312
    .line 313
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getBindShortPlayId()I

    .line 314
    .line 315
    .line 316
    move-result v3

    .line 317
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->h:Ljava/lang/Object;

    .line 318
    .line 319
    const/4 v5, 0x2

    .line 320
    iput v5, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->k:I

    .line 321
    .line 322
    invoke-virtual {v2, v3, v1, p0}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->q(IILrs/c;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    if-ne v1, v8, :cond_3

    .line 327
    .line 328
    return-object v8

    .line 329
    :cond_3
    :goto_2
    invoke-static {v1}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v2

    .line 333
    if-eqz v2, :cond_4

    .line 334
    .line 335
    move-object v1, v9

    .line 336
    :cond_4
    check-cast v1, Ljava/lang/Integer;

    .line 337
    .line 338
    if-eqz v1, :cond_5

    .line 339
    .line 340
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 341
    .line 342
    .line 343
    move-result v1

    .line 344
    goto :goto_1

    .line 345
    :cond_5
    move-object v10, v0

    .line 346
    move v3, v4

    .line 347
    :goto_3
    if-eq v3, v4, :cond_f

    .line 348
    .line 349
    sget-object v0, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;

    .line 350
    .line 351
    iput-object v10, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->h:Ljava/lang/Object;

    .line 352
    .line 353
    iput-object v10, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->i:Ljava/lang/Object;

    .line 354
    .line 355
    const/4 v1, 0x3

    .line 356
    iput v1, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->k:I

    .line 357
    .line 358
    const/4 v1, 0x0

    .line 359
    const-string v2, "shorts"

    .line 360
    .line 361
    const/4 v4, 0x1

    .line 362
    const/4 v6, 0x1

    .line 363
    const/4 v7, 0x0

    .line 364
    move-object v5, p0

    .line 365
    invoke-static/range {v0 .. v7}, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->s(Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;Landroid/content/Context;Ljava/lang/String;IILrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    if-ne v2, v8, :cond_6

    .line 370
    .line 371
    return-object v8

    .line 372
    :cond_6
    move-object v0, v10

    .line 373
    move-object v1, v0

    .line 374
    :goto_4
    invoke-static {v2}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    move-result v3

    .line 378
    if-eqz v3, :cond_7

    .line 379
    .line 380
    goto :goto_5

    .line 381
    :cond_7
    move-object v9, v2

    .line 382
    :goto_5
    iput-object v9, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 383
    .line 384
    :goto_6
    move-object v10, v1

    .line 385
    goto/16 :goto_c

    .line 386
    .line 387
    :cond_8
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->l:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 388
    .line 389
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isLastEpisode()Z

    .line 390
    .line 391
    .line 392
    move-result v1

    .line 393
    if-eqz v1, :cond_b

    .line 394
    .line 395
    sget-object v1, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;

    .line 396
    .line 397
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->l:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 398
    .line 399
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 400
    .line 401
    .line 402
    move-result v2

    .line 403
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->h:Ljava/lang/Object;

    .line 404
    .line 405
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->i:Ljava/lang/Object;

    .line 406
    .line 407
    const/4 v3, 0x4

    .line 408
    iput v3, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->k:I

    .line 409
    .line 410
    invoke-virtual {v1, v2, p0}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->v(ILrs/c;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    if-ne v2, v8, :cond_9

    .line 415
    .line 416
    return-object v8

    .line 417
    :cond_9
    move-object v1, v0

    .line 418
    :goto_7
    invoke-static {v2}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    move-result v3

    .line 422
    if-eqz v3, :cond_a

    .line 423
    .line 424
    goto :goto_8

    .line 425
    :cond_a
    move-object v9, v2

    .line 426
    :goto_8
    iput-object v9, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 427
    .line 428
    goto :goto_6

    .line 429
    :cond_b
    sget-object v1, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;

    .line 430
    .line 431
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->l:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 432
    .line 433
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 434
    .line 435
    .line 436
    move-result v2

    .line 437
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->h:Ljava/lang/Object;

    .line 438
    .line 439
    const/4 v3, 0x5

    .line 440
    iput v3, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->k:I

    .line 441
    .line 442
    invoke-virtual {v1, v2, p0}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->w(ILrs/c;)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    if-ne v1, v8, :cond_0

    .line 447
    .line 448
    return-object v8

    .line 449
    :goto_9
    invoke-static {v11}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    move-result v0

    .line 453
    if-eqz v0, :cond_e

    .line 454
    .line 455
    move-object v0, v11

    .line 456
    check-cast v0, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodeIdResult;

    .line 457
    .line 458
    if-eqz v0, :cond_e

    .line 459
    .line 460
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodeIdResult;->getDramId()I

    .line 461
    .line 462
    .line 463
    move-result v1

    .line 464
    if-lez v1, :cond_e

    .line 465
    .line 466
    sget-object v1, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;

    .line 467
    .line 468
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodeIdResult;->getDramId()I

    .line 469
    .line 470
    .line 471
    move-result v3

    .line 472
    iput-object v10, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->h:Ljava/lang/Object;

    .line 473
    .line 474
    iput-object v11, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->i:Ljava/lang/Object;

    .line 475
    .line 476
    iput-object v10, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->j:Ljava/lang/Object;

    .line 477
    .line 478
    const/4 v0, 0x6

    .line 479
    iput v0, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->k:I

    .line 480
    .line 481
    const/4 v2, 0x0

    .line 482
    const-string v4, "shorts"

    .line 483
    .line 484
    const/4 v5, 0x1

    .line 485
    const/4 v6, 0x1

    .line 486
    const/4 v7, 0x0

    .line 487
    move-object v0, v1

    .line 488
    move-object v1, v2

    .line 489
    move-object v2, v4

    .line 490
    move v4, v5

    .line 491
    move-object v5, p0

    .line 492
    invoke-static/range {v0 .. v7}, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->s(Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;Landroid/content/Context;Ljava/lang/String;IILrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v3

    .line 496
    if-ne v3, v8, :cond_c

    .line 497
    .line 498
    return-object v8

    .line 499
    :cond_c
    move-object v0, v10

    .line 500
    move-object v2, v0

    .line 501
    move-object v1, v11

    .line 502
    :goto_a
    invoke-static {v3}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 503
    .line 504
    .line 505
    move-result v4

    .line 506
    if-eqz v4, :cond_d

    .line 507
    .line 508
    goto :goto_b

    .line 509
    :cond_d
    move-object v9, v3

    .line 510
    :goto_b
    iput-object v9, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 511
    .line 512
    move-object v11, v1

    .line 513
    move-object v10, v2

    .line 514
    :cond_e
    invoke-static {v11}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    .line 515
    .line 516
    .line 517
    :cond_f
    :goto_c
    iget-object v0, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 518
    .line 519
    check-cast v0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 520
    .line 521
    if-eqz v0, :cond_10

    .line 522
    .line 523
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$preloadNextEpisodeForImmersion$1;->l:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 524
    .line 525
    sget-object v2, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->a:Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;

    .line 526
    .line 527
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 528
    .line 529
    .line 530
    move-result v1

    .line 531
    invoke-virtual {v2, v1, v0}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->c(ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 532
    .line 533
    .line 534
    :cond_10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 535
    .line 536
    return-object v0

    .line 537
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
