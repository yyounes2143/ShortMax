.class final Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$handlePopularShorts$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CampaignParser.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->v(Lcom/startshorts/androidplayer/bean/shorts/PopularShorts;)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.manager.attribution.CampaignParser$handlePopularShorts$1"
    f = "CampaignParser.kt"
    l = {
        0x141,
        0x152,
        0x162
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:I

.field final synthetic j:Lcom/startshorts/androidplayer/bean/shorts/PopularShorts;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/bean/shorts/PopularShorts;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/shorts/PopularShorts;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$handlePopularShorts$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$handlePopularShorts$1;->j:Lcom/startshorts/androidplayer/bean/shorts/PopularShorts;

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
    new-instance p1, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$handlePopularShorts$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$handlePopularShorts$1;->j:Lcom/startshorts/androidplayer/bean/shorts/PopularShorts;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$handlePopularShorts$1;-><init>(Lcom/startshorts/androidplayer/bean/shorts/PopularShorts;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$handlePopularShorts$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$handlePopularShorts$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$handlePopularShorts$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$handlePopularShorts$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$handlePopularShorts$1;->i:I

    .line 6
    .line 7
    const-wide/16 v2, 0x1f4

    .line 8
    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x2

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x1

    .line 13
    const-string v8, "CampaignNewTag"

    .line 14
    .line 15
    if-eqz v1, :cond_3

    .line 16
    .line 17
    if-eq v1, v7, :cond_2

    .line 18
    .line 19
    if-eq v1, v5, :cond_1

    .line 20
    .line 21
    if-ne v1, v4, :cond_0

    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto/16 :goto_3

    .line 27
    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 31
    .line 32
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_1
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$handlePopularShorts$1;->h:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Lcom/hades/aar/activity/IDActivity;

    .line 39
    .line 40
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_2

    .line 44
    .line 45
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$handlePopularShorts$1;->j:Lcom/startshorts/androidplayer/bean/shorts/PopularShorts;

    .line 53
    .line 54
    if-eqz p1, :cond_f

    .line 55
    .line 56
    sget-object p1, Lud/b;->a:Lud/b;

    .line 57
    .line 58
    invoke-virtual {p1}, Lud/b;->Z()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    goto/16 :goto_4

    .line 65
    .line 66
    :cond_4
    iput v7, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$handlePopularShorts$1;->i:I

    .line 67
    .line 68
    invoke-static {v2, v3, p0}, Lkotlinx/coroutines/DelayKt;->b(JLrs/c;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-ne p1, v0, :cond_5

    .line 73
    .line 74
    return-object v0

    .line 75
    :cond_5
    :goto_0
    sget-object p1, Laa/a;->a:Laa/a;

    .line 76
    .line 77
    invoke-virtual {p1}, Laa/a;->d()Ljava/lang/ref/WeakReference;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-eqz p1, :cond_6

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Lcom/hades/aar/activity/IDActivity;

    .line 88
    .line 89
    move-object v1, p1

    .line 90
    goto :goto_1

    .line 91
    :cond_6
    move-object v1, v6

    .line 92
    :goto_1
    instance-of p1, v1, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 93
    .line 94
    if-nez p1, :cond_7

    .line 95
    .line 96
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 97
    .line 98
    const-string/jumbo v0, "show ImmersionActivity failed -> TopActivity is not MainActivity"

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v8, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 105
    .line 106
    return-object p1

    .line 107
    :cond_7
    sget-object p1, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->a:Lcom/startshorts/androidplayer/manager/update/UpdateManager;

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->k()Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_8

    .line 114
    .line 115
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 116
    .line 117
    const-string/jumbo v0, "show ImmersionActivity failed -> ForceShowingUpdateDialog is showing"

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v8, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 124
    .line 125
    return-object p1

    .line 126
    :cond_8
    sget-object p1, Lud/a;->a:Lud/a;

    .line 127
    .line 128
    invoke-virtual {p1}, Lud/a;->t()Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-nez p1, :cond_9

    .line 133
    .line 134
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 135
    .line 136
    const-string/jumbo v0, "show ImmersionActivity failed -> onForeground is false"

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v8, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 143
    .line 144
    return-object p1

    .line 145
    :cond_9
    iput-object v1, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$handlePopularShorts$1;->h:Ljava/lang/Object;

    .line 146
    .line 147
    iput v5, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$handlePopularShorts$1;->i:I

    .line 148
    .line 149
    invoke-static {v2, v3, p0}, Lkotlinx/coroutines/DelayKt;->b(JLrs/c;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    if-ne p1, v0, :cond_a

    .line 154
    .line 155
    return-object v0

    .line 156
    :cond_a
    :goto_2
    sget-object p1, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 157
    .line 158
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->O()Z

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-eqz p1, :cond_b

    .line 163
    .line 164
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 165
    .line 166
    const-string/jumbo v0, "show ImmersionActivity failed -> FullScreenAd is showing"

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v8, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 173
    .line 174
    return-object p1

    .line 175
    :cond_b
    sget-object p1, Lud/b;->a:Lud/b;

    .line 176
    .line 177
    invoke-virtual {p1}, Lud/b;->Z()Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-eqz v2, :cond_c

    .line 182
    .line 183
    sget-object p1, Lfk/g;->a:Lfk/g;

    .line 184
    .line 185
    invoke-virtual {p1}, Lfk/g;->d()V

    .line 186
    .line 187
    .line 188
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 189
    .line 190
    return-object p1

    .line 191
    :cond_c
    invoke-virtual {p1, v7}, Lud/b;->j3(Z)V

    .line 192
    .line 193
    .line 194
    sget-object p1, Lud/a;->a:Lud/a;

    .line 195
    .line 196
    invoke-virtual {p1}, Lud/a;->Q()Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-eqz v2, :cond_d

    .line 201
    .line 202
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 203
    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    const-string v2, "handlePopularShorts isJumpImmersionThisActive "

    .line 210
    .line 211
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1}, Lud/a;->Q()Z

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-virtual {v0, v8, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 229
    .line 230
    return-object p1

    .line 231
    :cond_d
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    new-instance v2, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$handlePopularShorts$1$1;

    .line 236
    .line 237
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$handlePopularShorts$1;->j:Lcom/startshorts/androidplayer/bean/shorts/PopularShorts;

    .line 238
    .line 239
    invoke-direct {v2, v1, v3, v6}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$handlePopularShorts$1$1;-><init>(Lcom/hades/aar/activity/IDActivity;Lcom/startshorts/androidplayer/bean/shorts/PopularShorts;Lrs/c;)V

    .line 240
    .line 241
    .line 242
    iput-object v6, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$handlePopularShorts$1;->h:Ljava/lang/Object;

    .line 243
    .line 244
    iput v4, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$handlePopularShorts$1;->i:I

    .line 245
    .line 246
    invoke-static {p1, v2, p0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    if-ne p1, v0, :cond_e

    .line 251
    .line 252
    return-object v0

    .line 253
    :cond_e
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 254
    .line 255
    return-object p1

    .line 256
    :cond_f
    :goto_4
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 257
    .line 258
    const-string v0, "(popularShorts == null || PersistentCacheManager.campaignPopularShortsShowed"

    .line 259
    .line 260
    invoke-virtual {p1, v8, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    sget-object p1, Lfk/g;->a:Lfk/g;

    .line 264
    .line 265
    invoke-virtual {p1}, Lfk/g;->d()V

    .line 266
    .line 267
    .line 268
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 269
    .line 270
    return-object p1
.end method
