.class final Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportLPInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CampaignReporter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->J(Ljava/lang/String;Z)V
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
    c = "com.startshorts.androidplayer.manager.attribution.CampaignReporter$reportLPInfo$1"
    f = "CampaignReporter.kt"
    l = {
        0x5d,
        0x70,
        0x6f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:I

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Z


# direct methods
.method constructor <init>(Ljava/lang/String;ZLrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportLPInfo$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportLPInfo$1;->k:Ljava/lang/String;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportLPInfo$1;->l:Z

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

.method public static synthetic i()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportLPInfo$1;->j()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final j()Lkotlin/Unit;
    .locals 4

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-static {v0, v3, v1, v2, v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->c1(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/startshorts/androidplayer/bean/eventbus/CampaignRefreshSuccessEvent;

    .line 14
    .line 15
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/eventbus/CampaignRefreshSuccessEvent;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lau/c;->l(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 22
    .line 23
    const-string v1, "CampaignNewTag"

    .line 24
    .line 25
    const-string v2, "reportLPInfo success CampaignRefreshSuccessEvent"

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 31
    .line 32
    return-object v0
.end method


# virtual methods
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
    new-instance p1, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportLPInfo$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportLPInfo$1;->k:Ljava/lang/String;

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportLPInfo$1;->l:Z

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportLPInfo$1;-><init>(Ljava/lang/String;ZLrs/c;)V

    .line 8
    .line 9
    .line 10
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportLPInfo$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportLPInfo$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportLPInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportLPInfo$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v8

    .line 7
    iget v0, v7, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportLPInfo$1;->j:I

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x2

    .line 12
    const/4 v9, 0x0

    .line 13
    const-string v10, "CampaignNewTag"

    .line 14
    .line 15
    const/4 v11, 0x1

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    if-eq v0, v11, :cond_2

    .line 19
    .line 20
    if-eq v0, v3, :cond_1

    .line 21
    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-object/from16 v0, p1

    .line 28
    .line 29
    check-cast v0, Lkotlin/Result;

    .line 30
    .line 31
    invoke-virtual {v0}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto/16 :goto_3

    .line 36
    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :cond_1
    iget-object v0, v7, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportLPInfo$1;->i:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 48
    .line 49
    iget-object v3, v7, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportLPInfo$1;->h:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v3, Ljava/lang/String;

    .line 52
    .line 53
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    move-object v4, v3

    .line 57
    move-object/from16 v3, p1

    .line 58
    .line 59
    goto/16 :goto_2

    .line 60
    .line 61
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;

    .line 69
    .line 70
    sget-object v4, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->CLIPBOARD:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 71
    .line 72
    iput v11, v7, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportLPInfo$1;->j:I

    .line 73
    .line 74
    invoke-virtual {v0, v4, v7}, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->l(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;Lrs/c;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-ne v0, v8, :cond_4

    .line 79
    .line 80
    return-object v8

    .line 81
    :cond_4
    :goto_0
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->e:Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;

    .line 82
    .line 83
    sget-object v4, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->CLIPBOARD:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 84
    .line 85
    invoke-virtual {v0, v4}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->a(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    sget-object v4, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 90
    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v6, "reportLPInfo -> installReferrer("

    .line 97
    .line 98
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object v6, v7, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportLPInfo$1;->k:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v6, ") clipBoardInfo("

    .line 107
    .line 108
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const/16 v6, 0x29

    .line 115
    .line 116
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-virtual {v4, v10, v5}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    if-eqz v0, :cond_5

    .line 127
    .line 128
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    if-nez v5, :cond_8

    .line 133
    .line 134
    :cond_5
    iget-object v5, v7, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportLPInfo$1;->k:Ljava/lang/String;

    .line 135
    .line 136
    if-eqz v5, :cond_7

    .line 137
    .line 138
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    if-nez v5, :cond_6

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_6
    iget-object v5, v7, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportLPInfo$1;->k:Ljava/lang/String;

    .line 146
    .line 147
    const-string v6, "organic"

    .line 148
    .line 149
    invoke-static {v5, v6, v9, v3, v2}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    if-eqz v5, :cond_8

    .line 154
    .line 155
    :cond_7
    :goto_1
    sget-object v5, Lud/b;->a:Lud/b;

    .line 156
    .line 157
    invoke-virtual {v5}, Lud/b;->X0()I

    .line 158
    .line 159
    .line 160
    move-result v6

    .line 161
    if-lez v6, :cond_8

    .line 162
    .line 163
    invoke-virtual {v5}, Lud/b;->X0()I

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    sub-int/2addr v6, v11

    .line 168
    invoke-virtual {v5, v6}, Lud/b;->k4(I)V

    .line 169
    .line 170
    .line 171
    const-string v6, "set lpInfoSentAgain true"

    .line 172
    .line 173
    invoke-virtual {v4, v10, v6}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v5, v11}, Lud/b;->j4(Z)V

    .line 177
    .line 178
    .line 179
    :cond_8
    sget-object v4, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;

    .line 180
    .line 181
    sget-object v5, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->GP_INSTALL_REFERRER:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 182
    .line 183
    invoke-static {v4, v5}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->h(Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)V

    .line 184
    .line 185
    .line 186
    sget-object v5, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 187
    .line 188
    iput-object v0, v7, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportLPInfo$1;->h:Ljava/lang/Object;

    .line 189
    .line 190
    iput-object v5, v7, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportLPInfo$1;->i:Ljava/lang/Object;

    .line 191
    .line 192
    iput v3, v7, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportLPInfo$1;->j:I

    .line 193
    .line 194
    invoke-static {v4, v7}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->g(Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;Lrs/c;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    if-ne v3, v8, :cond_9

    .line 199
    .line 200
    return-object v8

    .line 201
    :cond_9
    move-object v4, v0

    .line 202
    move-object v0, v5

    .line 203
    :goto_2
    check-cast v3, Ljava/lang/String;

    .line 204
    .line 205
    if-nez v4, :cond_a

    .line 206
    .line 207
    const-string v4, ""

    .line 208
    .line 209
    :cond_a
    sget-object v5, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 210
    .line 211
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->x()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->q()J

    .line 216
    .line 217
    .line 218
    move-result-wide v12

    .line 219
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    iget-object v12, v7, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportLPInfo$1;->k:Ljava/lang/String;

    .line 224
    .line 225
    iput-object v2, v7, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportLPInfo$1;->h:Ljava/lang/Object;

    .line 226
    .line 227
    iput-object v2, v7, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportLPInfo$1;->i:Ljava/lang/Object;

    .line 228
    .line 229
    iput v1, v7, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportLPInfo$1;->j:I

    .line 230
    .line 231
    move-object v1, v3

    .line 232
    move-object v2, v4

    .line 233
    move-object v3, v6

    .line 234
    move-object v4, v5

    .line 235
    move-object v5, v12

    .line 236
    move-object/from16 v6, p0

    .line 237
    .line 238
    invoke-virtual/range {v0 .. v6}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    if-ne v0, v8, :cond_b

    .line 243
    .line 244
    return-object v8

    .line 245
    :cond_b
    :goto_3
    iget-boolean v1, v7, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportLPInfo$1;->l:Z

    .line 246
    .line 247
    invoke-static {v0}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    if-eqz v2, :cond_16

    .line 252
    .line 253
    move-object v2, v0

    .line 254
    check-cast v2, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;

    .line 255
    .line 256
    sget-object v3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 257
    .line 258
    new-instance v4, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    const-string v5, "reportLpInfo success -> "

    .line 264
    .line 265
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    invoke-virtual {v3, v10, v4}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-static {v9}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->o(Z)V

    .line 279
    .line 280
    .line 281
    sget-object v4, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;

    .line 282
    .line 283
    sget-object v5, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->GP_INSTALL_REFERRER:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 284
    .line 285
    invoke-static {v4, v5, v1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->j(Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;Lcom/startshorts/androidplayer/manager/attribution/CampaignType;Z)V

    .line 286
    .line 287
    .line 288
    sget-object v1, Lud/b;->a:Lud/b;

    .line 289
    .line 290
    invoke-virtual {v1, v11}, Lud/b;->i4(Z)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1, v11}, Lud/b;->m4(Z)V

    .line 294
    .line 295
    .line 296
    sget-object v5, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->e:Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;

    .line 297
    .line 298
    sget-object v6, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->UPLOAD_CAMPAIGN_INFO_RESULT:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 299
    .line 300
    invoke-virtual {v5, v6}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->f(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)V

    .line 301
    .line 302
    .line 303
    if-eqz v2, :cond_11

    .line 304
    .line 305
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getMatchResult()Ljava/lang/Boolean;

    .line 306
    .line 307
    .line 308
    move-result-object v8

    .line 309
    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 310
    .line 311
    .line 312
    move-result-object v12

    .line 313
    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v8

    .line 317
    if-eqz v8, :cond_11

    .line 318
    .line 319
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getShortPlayId()I

    .line 320
    .line 321
    .line 322
    move-result v8

    .line 323
    if-lez v8, :cond_c

    .line 324
    .line 325
    invoke-virtual {v5, v6}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->a(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v8

    .line 329
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 330
    .line 331
    .line 332
    move-result v8

    .line 333
    if-eqz v8, :cond_c

    .line 334
    .line 335
    invoke-static {v2}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v8

    .line 339
    invoke-virtual {v5, v6, v8}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->e(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    :cond_c
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getAdswitch()Ljava/lang/Boolean;

    .line 343
    .line 344
    .line 345
    move-result-object v8

    .line 346
    if-eqz v8, :cond_d

    .line 347
    .line 348
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 349
    .line 350
    .line 351
    move-result v8

    .line 352
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 353
    .line 354
    .line 355
    move-result-object v8

    .line 356
    invoke-virtual {v1, v8}, Lud/b;->l4(Ljava/lang/Boolean;)V

    .line 357
    .line 358
    .line 359
    :cond_d
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getUtmSource()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v8

    .line 363
    if-eqz v8, :cond_f

    .line 364
    .line 365
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 366
    .line 367
    .line 368
    move-result v8

    .line 369
    if-nez v8, :cond_e

    .line 370
    .line 371
    goto :goto_4

    .line 372
    :cond_e
    sget-object v1, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 373
    .line 374
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->V()V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getUtmSource()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v8

    .line 381
    invoke-virtual {v1, v8}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->U(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    goto :goto_5

    .line 385
    :cond_f
    :goto_4
    invoke-virtual {v1}, Lud/b;->X()Z

    .line 386
    .line 387
    .line 388
    move-result v1

    .line 389
    if-eqz v1, :cond_10

    .line 390
    .line 391
    sget-object v1, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 392
    .line 393
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->V()V

    .line 394
    .line 395
    .line 396
    :cond_10
    :goto_5
    sget-object v1, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 397
    .line 398
    sget-object v8, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 399
    .line 400
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->r()J

    .line 401
    .line 402
    .line 403
    move-result-wide v12

    .line 404
    invoke-virtual {v1, v12, v13}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->W(J)V

    .line 405
    .line 406
    .line 407
    :cond_11
    invoke-virtual {v5, v6}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->a(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    if-nez v1, :cond_12

    .line 416
    .line 417
    const-string v1, "reportLPInfo has api result CampaignParser.parse()"

    .line 418
    .line 419
    invoke-virtual {v3, v10, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    sget-object v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;

    .line 423
    .line 424
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->x()V

    .line 425
    .line 426
    .line 427
    goto :goto_6

    .line 428
    :cond_12
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->s()Z

    .line 429
    .line 430
    .line 431
    move-result v1

    .line 432
    if-eqz v1, :cond_13

    .line 433
    .line 434
    sget-object v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;

    .line 435
    .line 436
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->x()V

    .line 437
    .line 438
    .line 439
    :cond_13
    :goto_6
    sget-object v1, Lcom/startshorts/androidplayer/manager/configure/ad/d;->a:Lcom/startshorts/androidplayer/manager/configure/ad/d;

    .line 440
    .line 441
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/configure/ad/d;->b()V

    .line 442
    .line 443
    .line 444
    if-eqz v2, :cond_14

    .line 445
    .line 446
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getMatchResult()Ljava/lang/Boolean;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 451
    .line 452
    .line 453
    move-result-object v3

    .line 454
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    move-result v1

    .line 458
    goto :goto_7

    .line 459
    :cond_14
    move v1, v9

    .line 460
    :goto_7
    if-eqz v1, :cond_16

    .line 461
    .line 462
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getDelayedAttributedTime()I

    .line 463
    .line 464
    .line 465
    move-result v1

    .line 466
    if-lez v1, :cond_15

    .line 467
    .line 468
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getDelayedAttributedTime()I

    .line 469
    .line 470
    .line 471
    move-result v1

    .line 472
    int-to-long v1, v1

    .line 473
    const-wide/16 v3, 0x3e8

    .line 474
    .line 475
    mul-long/2addr v1, v3

    .line 476
    :goto_8
    move-wide v13, v1

    .line 477
    goto :goto_9

    .line 478
    :cond_15
    const-wide/16 v1, 0x1388

    .line 479
    .line 480
    goto :goto_8

    .line 481
    :goto_9
    sget-object v12, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 482
    .line 483
    new-instance v16, Lcom/startshorts/androidplayer/manager/attribution/e;

    .line 484
    .line 485
    invoke-direct/range {v16 .. v16}, Lcom/startshorts/androidplayer/manager/attribution/e;-><init>()V

    .line 486
    .line 487
    .line 488
    const/16 v17, 0x2

    .line 489
    .line 490
    const/16 v18, 0x0

    .line 491
    .line 492
    const/4 v15, 0x0

    .line 493
    invoke-static/range {v12 .. v18}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->g(Lcom/startshorts/androidplayer/utils/CoroutineUtil;JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 494
    .line 495
    .line 496
    :cond_16
    invoke-static {v0}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    if-eqz v0, :cond_17

    .line 501
    .line 502
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 503
    .line 504
    new-instance v2, Ljava/lang/StringBuilder;

    .line 505
    .line 506
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 507
    .line 508
    .line 509
    const-string v3, "reportLpInfo failed -> "

    .line 510
    .line 511
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v3

    .line 518
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v2

    .line 525
    invoke-virtual {v1, v10, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    invoke-static {v9}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->o(Z)V

    .line 529
    .line 530
    .line 531
    sget-object v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;

    .line 532
    .line 533
    sget-object v2, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->GP_INSTALL_REFERRER:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 534
    .line 535
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 536
    .line 537
    invoke-static {v0}, Ljk/z;->a(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    invoke-virtual {v3, v0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->D(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)Landroid/os/Bundle;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    invoke-static {v1, v2, v0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->i(Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;Lcom/startshorts/androidplayer/manager/attribution/CampaignType;Landroid/os/Bundle;)V

    .line 546
    .line 547
    .line 548
    sget-object v0, Lud/b;->a:Lud/b;

    .line 549
    .line 550
    invoke-virtual {v0, v11}, Lud/b;->m4(Z)V

    .line 551
    .line 552
    .line 553
    invoke-virtual {v0, v11}, Lud/b;->W2(Z)V

    .line 554
    .line 555
    .line 556
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/d;->a:Lcom/startshorts/androidplayer/manager/configure/ad/d;

    .line 557
    .line 558
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/d;->b()V

    .line 559
    .line 560
    .line 561
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->s()Z

    .line 562
    .line 563
    .line 564
    move-result v0

    .line 565
    if-eqz v0, :cond_17

    .line 566
    .line 567
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;

    .line 568
    .line 569
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->x()V

    .line 570
    .line 571
    .line 572
    :cond_17
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 573
    .line 574
    return-object v0
.end method
