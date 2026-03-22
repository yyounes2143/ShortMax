.class final Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAJInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CampaignReporter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->D(Ljava/lang/String;)V
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
    c = "com.startshorts.androidplayer.manager.attribution.CampaignReporter$reportAJInfo$1"
    f = "CampaignReporter.kt"
    l = {
        0x19f,
        0x19d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:I

.field j:I

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAJInfo$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAJInfo$1;->k:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAJInfo$1;->l:Ljava/lang/String;

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
    invoke-static {}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAJInfo$1;->j()Lkotlin/Unit;

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
    const-string v2, "reportAJInfo success CampaignRefreshSuccessEvent"

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
    new-instance p1, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAJInfo$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAJInfo$1;->k:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAJInfo$1;->l:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAJInfo$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAJInfo$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAJInfo$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAJInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAJInfo$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAJInfo$1;->j:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x2

    .line 9
    const-string v4, "CampaignNewTag"

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    if-eq v1, v6, :cond_1

    .line 16
    .line 17
    if-ne v1, v3, :cond_0

    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    check-cast p1, Lkotlin/Result;

    .line 23
    .line 24
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    goto/16 :goto_2

    .line 29
    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :cond_1
    iget v1, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAJInfo$1;->i:I

    .line 39
    .line 40
    iget-object v7, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAJInfo$1;->h:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v7, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 43
    .line 44
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAJInfo$1;->k:Ljava/lang/String;

    .line 52
    .line 53
    if-eqz p1, :cond_14

    .line 54
    .line 55
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_3

    .line 60
    .line 61
    goto/16 :goto_9

    .line 62
    .line 63
    :cond_3
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 64
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v7, "reportAJInfo -> ajConversionData("

    .line 71
    .line 72
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object v7, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAJInfo$1;->k:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const/16 v7, 0x29

    .line 81
    .line 82
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {p1, v4, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    sget-object p1, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;

    .line 93
    .line 94
    sget-object v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->AJ_CONVERSION_DATA:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 95
    .line 96
    invoke-static {p1, v1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->h(Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)V

    .line 97
    .line 98
    .line 99
    sget-object v7, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 100
    .line 101
    iput-object v7, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAJInfo$1;->h:Ljava/lang/Object;

    .line 102
    .line 103
    iput v5, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAJInfo$1;->i:I

    .line 104
    .line 105
    iput v6, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAJInfo$1;->j:I

    .line 106
    .line 107
    invoke-static {p1, p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->g(Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;Lrs/c;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    if-ne p1, v0, :cond_4

    .line 112
    .line 113
    return-object v0

    .line 114
    :cond_4
    move v1, v5

    .line 115
    :goto_0
    if-eqz v1, :cond_5

    .line 116
    .line 117
    move v8, v6

    .line 118
    goto :goto_1

    .line 119
    :cond_5
    move v8, v5

    .line 120
    :goto_1
    move-object v9, p1

    .line 121
    check-cast v9, Ljava/lang/String;

    .line 122
    .line 123
    iget-object v10, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAJInfo$1;->k:Ljava/lang/String;

    .line 124
    .line 125
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->q()J

    .line 128
    .line 129
    .line 130
    move-result-wide v11

    .line 131
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v11

    .line 135
    sget-object p1, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->e:Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;

    .line 136
    .line 137
    sget-object v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->GP_INSTALL_REFERRER:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 138
    .line 139
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->a(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    if-nez p1, :cond_6

    .line 144
    .line 145
    const-string p1, ""

    .line 146
    .line 147
    :cond_6
    move-object v12, p1

    .line 148
    iput-object v2, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAJInfo$1;->h:Ljava/lang/Object;

    .line 149
    .line 150
    iput v3, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAJInfo$1;->j:I

    .line 151
    .line 152
    move-object v13, p0

    .line 153
    invoke-virtual/range {v7 .. v13}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->I(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    if-ne p1, v0, :cond_7

    .line 158
    .line 159
    return-object v0

    .line 160
    :cond_7
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_12

    .line 165
    .line 166
    move-object v0, p1

    .line 167
    check-cast v0, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;

    .line 168
    .line 169
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 170
    .line 171
    new-instance v7, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    const-string v8, "reportAJInfo success -> "

    .line 177
    .line 178
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    invoke-virtual {v1, v4, v7}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-static {v5}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->l(Z)V

    .line 192
    .line 193
    .line 194
    sget-object v7, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;

    .line 195
    .line 196
    sget-object v8, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->AJ_CONVERSION_DATA:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 197
    .line 198
    invoke-static {v7, v8, v5, v3, v2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->z(Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;Lcom/startshorts/androidplayer/manager/attribution/CampaignType;ZILjava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    sget-object v2, Lud/b;->a:Lud/b;

    .line 202
    .line 203
    invoke-virtual {v2, v6}, Lud/b;->C2(Z)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2, v6}, Lud/b;->F2(Z)V

    .line 207
    .line 208
    .line 209
    sget-object v3, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->e:Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;

    .line 210
    .line 211
    sget-object v8, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->UPLOAD_CAMPAIGN_INFO_RESULT:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 212
    .line 213
    invoke-virtual {v3, v8}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->f(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)V

    .line 214
    .line 215
    .line 216
    if-eqz v0, :cond_d

    .line 217
    .line 218
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getMatchResult()Ljava/lang/Boolean;

    .line 219
    .line 220
    .line 221
    move-result-object v9

    .line 222
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 223
    .line 224
    .line 225
    move-result-object v10

    .line 226
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v9

    .line 230
    if-eqz v9, :cond_d

    .line 231
    .line 232
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getShortPlayId()I

    .line 233
    .line 234
    .line 235
    move-result v9

    .line 236
    if-lez v9, :cond_8

    .line 237
    .line 238
    invoke-virtual {v3, v8}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->a(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v9

    .line 242
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 243
    .line 244
    .line 245
    move-result v9

    .line 246
    if-eqz v9, :cond_8

    .line 247
    .line 248
    invoke-static {v0}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v9

    .line 252
    invoke-virtual {v3, v8, v9}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->e(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    :cond_8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getAdswitch()Ljava/lang/Boolean;

    .line 256
    .line 257
    .line 258
    move-result-object v9

    .line 259
    if-eqz v9, :cond_9

    .line 260
    .line 261
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 262
    .line 263
    .line 264
    move-result v9

    .line 265
    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 266
    .line 267
    .line 268
    move-result-object v9

    .line 269
    invoke-virtual {v2, v9}, Lud/b;->E2(Ljava/lang/Boolean;)V

    .line 270
    .line 271
    .line 272
    :cond_9
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getUtmSource()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v9

    .line 276
    if-eqz v9, :cond_b

    .line 277
    .line 278
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    .line 279
    .line 280
    .line 281
    move-result v9

    .line 282
    if-nez v9, :cond_a

    .line 283
    .line 284
    goto :goto_3

    .line 285
    :cond_a
    sget-object v2, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 286
    .line 287
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->V()V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getUtmSource()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v9

    .line 294
    invoke-virtual {v2, v9}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->U(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    goto :goto_4

    .line 298
    :cond_b
    :goto_3
    invoke-virtual {v2}, Lud/b;->X()Z

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    if-eqz v2, :cond_c

    .line 303
    .line 304
    sget-object v2, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 305
    .line 306
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->V()V

    .line 307
    .line 308
    .line 309
    :cond_c
    :goto_4
    sget-object v2, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 310
    .line 311
    sget-object v9, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 312
    .line 313
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->r()J

    .line 314
    .line 315
    .line 316
    move-result-wide v9

    .line 317
    invoke-virtual {v2, v9, v10}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->W(J)V

    .line 318
    .line 319
    .line 320
    :cond_d
    invoke-virtual {v3, v8}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->a(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 325
    .line 326
    .line 327
    move-result v2

    .line 328
    if-nez v2, :cond_e

    .line 329
    .line 330
    const-string v2, "reportAJInfo has api result CampaignParser.parse()"

    .line 331
    .line 332
    invoke-virtual {v1, v4, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    sget-object v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;

    .line 336
    .line 337
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->x()V

    .line 338
    .line 339
    .line 340
    goto :goto_5

    .line 341
    :cond_e
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->s()Z

    .line 342
    .line 343
    .line 344
    move-result v1

    .line 345
    if-eqz v1, :cond_f

    .line 346
    .line 347
    sget-object v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;

    .line 348
    .line 349
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->x()V

    .line 350
    .line 351
    .line 352
    :cond_f
    :goto_5
    sget-object v1, Lcom/startshorts/androidplayer/manager/configure/ad/d;->a:Lcom/startshorts/androidplayer/manager/configure/ad/d;

    .line 353
    .line 354
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/configure/ad/d;->b()V

    .line 355
    .line 356
    .line 357
    if-eqz v0, :cond_10

    .line 358
    .line 359
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getMatchResult()Ljava/lang/Boolean;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v1

    .line 371
    goto :goto_6

    .line 372
    :cond_10
    move v1, v5

    .line 373
    :goto_6
    if-eqz v1, :cond_12

    .line 374
    .line 375
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getDelayedAttributedTime()I

    .line 376
    .line 377
    .line 378
    move-result v1

    .line 379
    if-lez v1, :cond_11

    .line 380
    .line 381
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getDelayedAttributedTime()I

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    int-to-long v0, v0

    .line 386
    const-wide/16 v2, 0x3e8

    .line 387
    .line 388
    mul-long/2addr v0, v2

    .line 389
    :goto_7
    move-wide v8, v0

    .line 390
    goto :goto_8

    .line 391
    :cond_11
    const-wide/16 v0, 0x1388

    .line 392
    .line 393
    goto :goto_7

    .line 394
    :goto_8
    sget-object v7, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 395
    .line 396
    new-instance v11, Lcom/startshorts/androidplayer/manager/attribution/c;

    .line 397
    .line 398
    invoke-direct {v11}, Lcom/startshorts/androidplayer/manager/attribution/c;-><init>()V

    .line 399
    .line 400
    .line 401
    const/4 v12, 0x2

    .line 402
    const/4 v13, 0x0

    .line 403
    const/4 v10, 0x0

    .line 404
    invoke-static/range {v7 .. v13}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->g(Lcom/startshorts/androidplayer/utils/CoroutineUtil;JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 405
    .line 406
    .line 407
    :cond_12
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAJInfo$1;->l:Ljava/lang/String;

    .line 408
    .line 409
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 410
    .line 411
    .line 412
    move-result-object p1

    .line 413
    if-eqz p1, :cond_13

    .line 414
    .line 415
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 416
    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    .line 418
    .line 419
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    .line 421
    .line 422
    const-string v3, "reportAJInfo failed -> "

    .line 423
    .line 424
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v3

    .line 431
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v2

    .line 438
    invoke-virtual {v1, v4, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    invoke-static {v5}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->l(Z)V

    .line 442
    .line 443
    .line 444
    sget-object v1, Lud/b;->a:Lud/b;

    .line 445
    .line 446
    invoke-virtual {v1, v0}, Lud/b;->k2(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;

    .line 450
    .line 451
    sget-object v2, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->AJ_CONVERSION_DATA:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 452
    .line 453
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 454
    .line 455
    invoke-static {p1}, Ljk/z;->a(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 456
    .line 457
    .line 458
    move-result-object p1

    .line 459
    invoke-virtual {v3, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->D(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)Landroid/os/Bundle;

    .line 460
    .line 461
    .line 462
    move-result-object p1

    .line 463
    invoke-static {v0, v2, p1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->i(Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;Lcom/startshorts/androidplayer/manager/attribution/CampaignType;Landroid/os/Bundle;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v1, v6}, Lud/b;->F2(Z)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v1, v6}, Lud/b;->T2(Z)V

    .line 470
    .line 471
    .line 472
    sget-object p1, Lcom/startshorts/androidplayer/manager/configure/ad/d;->a:Lcom/startshorts/androidplayer/manager/configure/ad/d;

    .line 473
    .line 474
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/configure/ad/d;->b()V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->s()Z

    .line 478
    .line 479
    .line 480
    move-result p1

    .line 481
    if-eqz p1, :cond_13

    .line 482
    .line 483
    sget-object p1, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;

    .line 484
    .line 485
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->x()V

    .line 486
    .line 487
    .line 488
    :cond_13
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 489
    .line 490
    return-object p1

    .line 491
    :cond_14
    :goto_9
    invoke-static {v5}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->l(Z)V

    .line 492
    .line 493
    .line 494
    sget-object p1, Lud/b;->a:Lud/b;

    .line 495
    .line 496
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAJInfo$1;->l:Ljava/lang/String;

    .line 497
    .line 498
    invoke-virtual {p1, v0}, Lud/b;->k2(Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 502
    .line 503
    const-string v0, "reportAJInfo failed -> ajConversionData is null"

    .line 504
    .line 505
    invoke-virtual {p1, v4, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 509
    .line 510
    return-object p1
.end method
