.class final Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAFInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CampaignReporter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->B(Ljava/lang/String;)V
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
    c = "com.startshorts.androidplayer.manager.attribution.CampaignReporter$reportAFInfo$1"
    f = "CampaignReporter.kt"
    l = {
        0x131,
        0x12f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:I

.field j:I

.field final synthetic k:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAFInfo$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAFInfo$1;->k:Ljava/lang/String;

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

.method public static synthetic i()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAFInfo$1;->j()Lkotlin/Unit;

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
    const-string v2, "reportAFInfo success CampaignRefreshSuccessEvent"

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
    new-instance p1, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAFInfo$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAFInfo$1;->k:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAFInfo$1;-><init>(Ljava/lang/String;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAFInfo$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAFInfo$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAFInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAFInfo$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v9

    .line 7
    iget v0, v8, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAFInfo$1;->j:I

    .line 8
    .line 9
    const/4 v10, 0x0

    .line 10
    const/4 v11, 0x2

    .line 11
    const-string v12, "CampaignNewTag"

    .line 12
    .line 13
    const/4 v13, 0x0

    .line 14
    const/4 v14, 0x1

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    if-eq v0, v14, :cond_1

    .line 18
    .line 19
    if-ne v0, v11, :cond_0

    .line 20
    .line 21
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    move-object/from16 v0, p1

    .line 25
    .line 26
    check-cast v0, Lkotlin/Result;

    .line 27
    .line 28
    invoke-virtual {v0}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    goto/16 :goto_2

    .line 33
    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_1
    iget v0, v8, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAFInfo$1;->i:I

    .line 43
    .line 44
    iget-object v1, v8, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAFInfo$1;->h:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v1, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 47
    .line 48
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    move v2, v0

    .line 52
    move-object/from16 v0, p1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, v8, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAFInfo$1;->k:Ljava/lang/String;

    .line 59
    .line 60
    if-eqz v0, :cond_14

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_3

    .line 67
    .line 68
    goto/16 :goto_9

    .line 69
    .line 70
    :cond_3
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 71
    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v2, "reportAFInfo -> afConversionData("

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-object v2, v8, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAFInfo$1;->k:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const/16 v2, 0x29

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v12, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;

    .line 100
    .line 101
    sget-object v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->AF_CONVERSION_DATA:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 102
    .line 103
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->h(Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)V

    .line 104
    .line 105
    .line 106
    sget-object v1, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 107
    .line 108
    iput-object v1, v8, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAFInfo$1;->h:Ljava/lang/Object;

    .line 109
    .line 110
    iput v13, v8, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAFInfo$1;->i:I

    .line 111
    .line 112
    iput v14, v8, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAFInfo$1;->j:I

    .line 113
    .line 114
    invoke-static {v0, v8}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->g(Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;Lrs/c;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    if-ne v0, v9, :cond_4

    .line 119
    .line 120
    return-object v9

    .line 121
    :cond_4
    move v2, v13

    .line 122
    :goto_0
    if-eqz v2, :cond_5

    .line 123
    .line 124
    move v2, v14

    .line 125
    goto :goto_1

    .line 126
    :cond_5
    move v2, v13

    .line 127
    :goto_1
    move-object v3, v0

    .line 128
    check-cast v3, Ljava/lang/String;

    .line 129
    .line 130
    iget-object v4, v8, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAFInfo$1;->k:Ljava/lang/String;

    .line 131
    .line 132
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 133
    .line 134
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->q()J

    .line 135
    .line 136
    .line 137
    move-result-wide v5

    .line 138
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->e:Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;

    .line 143
    .line 144
    sget-object v6, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->GP_INSTALL_REFERRER:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 145
    .line 146
    invoke-virtual {v0, v6}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->a(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    if-nez v0, :cond_6

    .line 151
    .line 152
    const-string v0, ""

    .line 153
    .line 154
    :cond_6
    move-object v6, v0

    .line 155
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    sget-object v7, Lfk/u;->a:Lfk/u;

    .line 160
    .line 161
    invoke-virtual {v7}, Lfk/u;->b()Landroid/content/Context;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    invoke-virtual {v0, v7}, Lcom/appsflyer/AppsFlyerLib;->getAppsFlyerUID(Landroid/content/Context;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    iput-object v10, v8, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAFInfo$1;->h:Ljava/lang/Object;

    .line 174
    .line 175
    iput v11, v8, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAFInfo$1;->j:I

    .line 176
    .line 177
    move-object v0, v1

    .line 178
    move v1, v2

    .line 179
    move-object v2, v3

    .line 180
    move-object v3, v4

    .line 181
    move-object v4, v5

    .line 182
    move-object v5, v6

    .line 183
    move-object v6, v7

    .line 184
    move-object/from16 v7, p0

    .line 185
    .line 186
    invoke-virtual/range {v0 .. v7}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->H(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    if-ne v0, v9, :cond_7

    .line 191
    .line 192
    return-object v9

    .line 193
    :cond_7
    :goto_2
    invoke-static {v0}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-eqz v1, :cond_12

    .line 198
    .line 199
    move-object v1, v0

    .line 200
    check-cast v1, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;

    .line 201
    .line 202
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 203
    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    const-string v4, "reportAfInfo success -> "

    .line 210
    .line 211
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    invoke-virtual {v2, v12, v3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-static {v13}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->k(Z)V

    .line 225
    .line 226
    .line 227
    sget-object v3, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;

    .line 228
    .line 229
    sget-object v4, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->AF_CONVERSION_DATA:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 230
    .line 231
    invoke-static {v3, v4, v13, v11, v10}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->z(Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;Lcom/startshorts/androidplayer/manager/attribution/CampaignType;ZILjava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    sget-object v4, Lud/b;->a:Lud/b;

    .line 235
    .line 236
    invoke-virtual {v4, v14}, Lud/b;->y2(Z)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v4, v14}, Lud/b;->B2(Z)V

    .line 240
    .line 241
    .line 242
    sget-object v5, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->e:Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;

    .line 243
    .line 244
    sget-object v6, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->UPLOAD_CAMPAIGN_INFO_RESULT:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 245
    .line 246
    invoke-virtual {v5, v6}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->f(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)V

    .line 247
    .line 248
    .line 249
    if-eqz v1, :cond_d

    .line 250
    .line 251
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getMatchResult()Ljava/lang/Boolean;

    .line 252
    .line 253
    .line 254
    move-result-object v7

    .line 255
    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 256
    .line 257
    .line 258
    move-result-object v9

    .line 259
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v7

    .line 263
    if-eqz v7, :cond_d

    .line 264
    .line 265
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getShortPlayId()I

    .line 266
    .line 267
    .line 268
    move-result v7

    .line 269
    if-lez v7, :cond_8

    .line 270
    .line 271
    invoke-virtual {v5, v6}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->a(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v7

    .line 275
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 276
    .line 277
    .line 278
    move-result v7

    .line 279
    if-eqz v7, :cond_8

    .line 280
    .line 281
    invoke-static {v1}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v7

    .line 285
    invoke-virtual {v5, v6, v7}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->e(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    :cond_8
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getAdswitch()Ljava/lang/Boolean;

    .line 289
    .line 290
    .line 291
    move-result-object v7

    .line 292
    if-eqz v7, :cond_9

    .line 293
    .line 294
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 295
    .line 296
    .line 297
    move-result v7

    .line 298
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 299
    .line 300
    .line 301
    move-result-object v7

    .line 302
    invoke-virtual {v4, v7}, Lud/b;->A2(Ljava/lang/Boolean;)V

    .line 303
    .line 304
    .line 305
    :cond_9
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getUtmSource()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v7

    .line 309
    if-eqz v7, :cond_b

    .line 310
    .line 311
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 312
    .line 313
    .line 314
    move-result v7

    .line 315
    if-nez v7, :cond_a

    .line 316
    .line 317
    goto :goto_3

    .line 318
    :cond_a
    sget-object v4, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 319
    .line 320
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->V()V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getUtmSource()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v7

    .line 327
    invoke-virtual {v4, v7}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->U(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    goto :goto_4

    .line 331
    :cond_b
    :goto_3
    invoke-virtual {v4}, Lud/b;->X()Z

    .line 332
    .line 333
    .line 334
    move-result v4

    .line 335
    if-eqz v4, :cond_c

    .line 336
    .line 337
    sget-object v4, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 338
    .line 339
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->V()V

    .line 340
    .line 341
    .line 342
    :cond_c
    :goto_4
    sget-object v4, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 343
    .line 344
    sget-object v7, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 345
    .line 346
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->r()J

    .line 347
    .line 348
    .line 349
    move-result-wide v9

    .line 350
    invoke-virtual {v4, v9, v10}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->W(J)V

    .line 351
    .line 352
    .line 353
    :cond_d
    invoke-virtual {v5, v6}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->a(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v4

    .line 357
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 358
    .line 359
    .line 360
    move-result v4

    .line 361
    if-nez v4, :cond_e

    .line 362
    .line 363
    const-string v3, "reportAFInfo has api result CampaignParser.parse()"

    .line 364
    .line 365
    invoke-virtual {v2, v12, v3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    sget-object v2, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;

    .line 369
    .line 370
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->x()V

    .line 371
    .line 372
    .line 373
    goto :goto_5

    .line 374
    :cond_e
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->s()Z

    .line 375
    .line 376
    .line 377
    move-result v2

    .line 378
    if-eqz v2, :cond_f

    .line 379
    .line 380
    sget-object v2, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;

    .line 381
    .line 382
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->x()V

    .line 383
    .line 384
    .line 385
    :cond_f
    :goto_5
    sget-object v2, Lcom/startshorts/androidplayer/manager/configure/ad/d;->a:Lcom/startshorts/androidplayer/manager/configure/ad/d;

    .line 386
    .line 387
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/configure/ad/d;->b()V

    .line 388
    .line 389
    .line 390
    if-eqz v1, :cond_10

    .line 391
    .line 392
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getMatchResult()Ljava/lang/Boolean;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 397
    .line 398
    .line 399
    move-result-object v3

    .line 400
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-result v2

    .line 404
    goto :goto_6

    .line 405
    :cond_10
    move v2, v13

    .line 406
    :goto_6
    if-eqz v2, :cond_12

    .line 407
    .line 408
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getDelayedAttributedTime()I

    .line 409
    .line 410
    .line 411
    move-result v2

    .line 412
    if-lez v2, :cond_11

    .line 413
    .line 414
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getDelayedAttributedTime()I

    .line 415
    .line 416
    .line 417
    move-result v1

    .line 418
    int-to-long v1, v1

    .line 419
    const-wide/16 v3, 0x3e8

    .line 420
    .line 421
    mul-long/2addr v1, v3

    .line 422
    :goto_7
    move-wide/from16 v16, v1

    .line 423
    .line 424
    goto :goto_8

    .line 425
    :cond_11
    const-wide/16 v1, 0x1388

    .line 426
    .line 427
    goto :goto_7

    .line 428
    :goto_8
    sget-object v15, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 429
    .line 430
    new-instance v19, Lcom/startshorts/androidplayer/manager/attribution/b;

    .line 431
    .line 432
    invoke-direct/range {v19 .. v19}, Lcom/startshorts/androidplayer/manager/attribution/b;-><init>()V

    .line 433
    .line 434
    .line 435
    const/16 v20, 0x2

    .line 436
    .line 437
    const/16 v21, 0x0

    .line 438
    .line 439
    const/16 v18, 0x0

    .line 440
    .line 441
    invoke-static/range {v15 .. v21}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->g(Lcom/startshorts/androidplayer/utils/CoroutineUtil;JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 442
    .line 443
    .line 444
    :cond_12
    invoke-static {v0}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    if-eqz v0, :cond_13

    .line 449
    .line 450
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 451
    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    .line 453
    .line 454
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    .line 456
    .line 457
    const-string v3, "reportAfInfo failed -> "

    .line 458
    .line 459
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v2

    .line 473
    invoke-virtual {v1, v12, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    invoke-static {v13}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->k(Z)V

    .line 477
    .line 478
    .line 479
    sget-object v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;

    .line 480
    .line 481
    sget-object v2, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->AF_CONVERSION_DATA:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 482
    .line 483
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 484
    .line 485
    invoke-static {v0}, Ljk/z;->a(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    invoke-virtual {v3, v0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->D(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)Landroid/os/Bundle;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    invoke-static {v1, v2, v0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->i(Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;Lcom/startshorts/androidplayer/manager/attribution/CampaignType;Landroid/os/Bundle;)V

    .line 494
    .line 495
    .line 496
    sget-object v0, Lud/b;->a:Lud/b;

    .line 497
    .line 498
    invoke-virtual {v0, v14}, Lud/b;->B2(Z)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v0, v14}, Lud/b;->S2(Z)V

    .line 502
    .line 503
    .line 504
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/d;->a:Lcom/startshorts/androidplayer/manager/configure/ad/d;

    .line 505
    .line 506
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/d;->b()V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->s()Z

    .line 510
    .line 511
    .line 512
    move-result v0

    .line 513
    if-eqz v0, :cond_13

    .line 514
    .line 515
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;

    .line 516
    .line 517
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->x()V

    .line 518
    .line 519
    .line 520
    :cond_13
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 521
    .line 522
    return-object v0

    .line 523
    :cond_14
    :goto_9
    invoke-static {v13}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->k(Z)V

    .line 524
    .line 525
    .line 526
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 527
    .line 528
    const-string v1, "reportAFInfo failed -> afConversionData is null"

    .line 529
    .line 530
    invoke-virtual {v0, v12, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 534
    .line 535
    return-object v0
.end method
