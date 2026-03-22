.class final Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportFBInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CampaignReporter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->F(Ljava/lang/String;I)V
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
    c = "com.startshorts.androidplayer.manager.attribution.CampaignReporter$reportFBInfo$1"
    f = "CampaignReporter.kt"
    l = {
        0x20c,
        0x20a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:I

.field j:I

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportFBInfo$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportFBInfo$1;->k:Ljava/lang/String;

    .line 2
    .line 3
    iput p2, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportFBInfo$1;->l:I

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
    invoke-static {}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportFBInfo$1;->j()Lkotlin/Unit;

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
    const-string v2, "reportFBInfo success CampaignRefreshSuccessEvent"

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
    new-instance p1, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportFBInfo$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportFBInfo$1;->k:Ljava/lang/String;

    .line 4
    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportFBInfo$1;->l:I

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportFBInfo$1;-><init>(Ljava/lang/String;ILrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportFBInfo$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportFBInfo$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportFBInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportFBInfo$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportFBInfo$1;->j:I

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
    iget v1, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportFBInfo$1;->i:I

    .line 39
    .line 40
    iget-object v7, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportFBInfo$1;->h:Ljava/lang/Object;

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
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportFBInfo$1;->k:Ljava/lang/String;

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_3

    .line 58
    .line 59
    invoke-static {v5}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->n(Z)V

    .line 60
    .line 61
    .line 62
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 63
    .line 64
    const-string v0, "reportFBInfo failed -> fbInstallReferrer is null"

    .line 65
    .line 66
    invoke-virtual {p1, v4, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 70
    .line 71
    return-object p1

    .line 72
    :cond_3
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 73
    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v7, "reportFBInfo -> ct("

    .line 80
    .line 81
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget v7, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportFBInfo$1;->l:I

    .line 85
    .line 86
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v7, ") fbInstallReferrer("

    .line 90
    .line 91
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-object v7, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportFBInfo$1;->k:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const/16 v7, 0x29

    .line 100
    .line 101
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {p1, v4, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    sget-object p1, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;

    .line 112
    .line 113
    sget-object v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->META_INSTALL_REFERRER:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 114
    .line 115
    invoke-static {p1, v1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->h(Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)V

    .line 116
    .line 117
    .line 118
    sget-object v7, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 119
    .line 120
    iput-object v7, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportFBInfo$1;->h:Ljava/lang/Object;

    .line 121
    .line 122
    iput v5, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportFBInfo$1;->i:I

    .line 123
    .line 124
    iput v6, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportFBInfo$1;->j:I

    .line 125
    .line 126
    invoke-static {p1, p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->g(Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;Lrs/c;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    if-ne p1, v0, :cond_4

    .line 131
    .line 132
    return-object v0

    .line 133
    :cond_4
    move v1, v5

    .line 134
    :goto_0
    if-eqz v1, :cond_5

    .line 135
    .line 136
    move v8, v6

    .line 137
    goto :goto_1

    .line 138
    :cond_5
    move v8, v5

    .line 139
    :goto_1
    move-object v9, p1

    .line 140
    check-cast v9, Ljava/lang/String;

    .line 141
    .line 142
    iget-object v10, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportFBInfo$1;->k:Ljava/lang/String;

    .line 143
    .line 144
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->q()J

    .line 147
    .line 148
    .line 149
    move-result-wide v11

    .line 150
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v11

    .line 154
    iget v12, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportFBInfo$1;->l:I

    .line 155
    .line 156
    iput-object v2, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportFBInfo$1;->h:Ljava/lang/Object;

    .line 157
    .line 158
    iput v3, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportFBInfo$1;->j:I

    .line 159
    .line 160
    move-object v13, p0

    .line 161
    invoke-virtual/range {v7 .. v13}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->O(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILrs/c;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    if-ne p1, v0, :cond_6

    .line 166
    .line 167
    return-object v0

    .line 168
    :cond_6
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-eqz v0, :cond_10

    .line 173
    .line 174
    move-object v0, p1

    .line 175
    check-cast v0, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;

    .line 176
    .line 177
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 178
    .line 179
    new-instance v7, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    const-string v8, "reportFBInfo success -> "

    .line 185
    .line 186
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v7

    .line 196
    invoke-virtual {v1, v4, v7}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-static {v5}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->n(Z)V

    .line 200
    .line 201
    .line 202
    sget-object v7, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;

    .line 203
    .line 204
    sget-object v8, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->META_INSTALL_REFERRER:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 205
    .line 206
    invoke-static {v7, v8, v5, v3, v2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->z(Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;Lcom/startshorts/androidplayer/manager/attribution/CampaignType;ZILjava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    sget-object v2, Lud/b;->a:Lud/b;

    .line 210
    .line 211
    invoke-virtual {v2, v6}, Lud/b;->p4(Z)V

    .line 212
    .line 213
    .line 214
    sget-object v3, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->e:Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;

    .line 215
    .line 216
    sget-object v8, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->UPLOAD_CAMPAIGN_INFO_RESULT:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 217
    .line 218
    invoke-virtual {v3, v8}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->f(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)V

    .line 219
    .line 220
    .line 221
    if-eqz v0, :cond_b

    .line 222
    .line 223
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getMatchResult()Ljava/lang/Boolean;

    .line 224
    .line 225
    .line 226
    move-result-object v9

    .line 227
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 228
    .line 229
    .line 230
    move-result-object v10

    .line 231
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v9

    .line 235
    if-eqz v9, :cond_b

    .line 236
    .line 237
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getShortPlayId()I

    .line 238
    .line 239
    .line 240
    move-result v9

    .line 241
    if-lez v9, :cond_7

    .line 242
    .line 243
    invoke-virtual {v3, v8}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->a(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v9

    .line 247
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 248
    .line 249
    .line 250
    move-result v9

    .line 251
    if-eqz v9, :cond_7

    .line 252
    .line 253
    invoke-static {v0}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v9

    .line 257
    invoke-virtual {v3, v8, v9}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->e(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    :cond_7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getUtmSource()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v9

    .line 264
    if-eqz v9, :cond_9

    .line 265
    .line 266
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    .line 267
    .line 268
    .line 269
    move-result v9

    .line 270
    if-nez v9, :cond_8

    .line 271
    .line 272
    goto :goto_3

    .line 273
    :cond_8
    sget-object v2, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 274
    .line 275
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->V()V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getUtmSource()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v9

    .line 282
    invoke-virtual {v2, v9}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->U(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    goto :goto_4

    .line 286
    :cond_9
    :goto_3
    invoke-virtual {v2}, Lud/b;->X()Z

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    if-eqz v2, :cond_a

    .line 291
    .line 292
    sget-object v2, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 293
    .line 294
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->V()V

    .line 295
    .line 296
    .line 297
    :cond_a
    :goto_4
    sget-object v2, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 298
    .line 299
    sget-object v9, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 300
    .line 301
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->r()J

    .line 302
    .line 303
    .line 304
    move-result-wide v9

    .line 305
    invoke-virtual {v2, v9, v10}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->W(J)V

    .line 306
    .line 307
    .line 308
    :cond_b
    invoke-virtual {v3, v8}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->a(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 313
    .line 314
    .line 315
    move-result v2

    .line 316
    if-nez v2, :cond_c

    .line 317
    .line 318
    const-string v2, "reportFBInfo has api result CampaignParser.parse()"

    .line 319
    .line 320
    invoke-virtual {v1, v4, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    sget-object v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;

    .line 324
    .line 325
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->x()V

    .line 326
    .line 327
    .line 328
    goto :goto_5

    .line 329
    :cond_c
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->s()Z

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    if-eqz v1, :cond_d

    .line 334
    .line 335
    sget-object v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;

    .line 336
    .line 337
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->x()V

    .line 338
    .line 339
    .line 340
    :cond_d
    :goto_5
    sget-object v1, Lcom/startshorts/androidplayer/manager/configure/ad/d;->a:Lcom/startshorts/androidplayer/manager/configure/ad/d;

    .line 341
    .line 342
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/configure/ad/d;->b()V

    .line 343
    .line 344
    .line 345
    if-eqz v0, :cond_e

    .line 346
    .line 347
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getMatchResult()Ljava/lang/Boolean;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result v1

    .line 359
    goto :goto_6

    .line 360
    :cond_e
    move v1, v5

    .line 361
    :goto_6
    if-eqz v1, :cond_10

    .line 362
    .line 363
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getDelayedAttributedTime()I

    .line 364
    .line 365
    .line 366
    move-result v1

    .line 367
    if-lez v1, :cond_f

    .line 368
    .line 369
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getDelayedAttributedTime()I

    .line 370
    .line 371
    .line 372
    move-result v0

    .line 373
    int-to-long v0, v0

    .line 374
    const-wide/16 v2, 0x3e8

    .line 375
    .line 376
    mul-long/2addr v0, v2

    .line 377
    :goto_7
    move-wide v8, v0

    .line 378
    goto :goto_8

    .line 379
    :cond_f
    const-wide/16 v0, 0x1388

    .line 380
    .line 381
    goto :goto_7

    .line 382
    :goto_8
    sget-object v7, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 383
    .line 384
    new-instance v11, Lcom/startshorts/androidplayer/manager/attribution/d;

    .line 385
    .line 386
    invoke-direct {v11}, Lcom/startshorts/androidplayer/manager/attribution/d;-><init>()V

    .line 387
    .line 388
    .line 389
    const/4 v12, 0x2

    .line 390
    const/4 v13, 0x0

    .line 391
    const/4 v10, 0x0

    .line 392
    invoke-static/range {v7 .. v13}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->g(Lcom/startshorts/androidplayer/utils/CoroutineUtil;JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 393
    .line 394
    .line 395
    :cond_10
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 396
    .line 397
    .line 398
    move-result-object p1

    .line 399
    if-eqz p1, :cond_11

    .line 400
    .line 401
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 402
    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    .line 404
    .line 405
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    .line 407
    .line 408
    const-string v2, "reportFBInfo failed -> "

    .line 409
    .line 410
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v2

    .line 417
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    invoke-virtual {v0, v4, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    invoke-static {v5}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->n(Z)V

    .line 428
    .line 429
    .line 430
    sget-object v0, Lud/b;->a:Lud/b;

    .line 431
    .line 432
    invoke-virtual {v0, v6}, Lud/b;->U2(Z)V

    .line 433
    .line 434
    .line 435
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;

    .line 436
    .line 437
    sget-object v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->META_INSTALL_REFERRER:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 438
    .line 439
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 440
    .line 441
    invoke-static {p1}, Ljk/z;->a(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 442
    .line 443
    .line 444
    move-result-object p1

    .line 445
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->D(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)Landroid/os/Bundle;

    .line 446
    .line 447
    .line 448
    move-result-object p1

    .line 449
    invoke-static {v0, v1, p1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->i(Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;Lcom/startshorts/androidplayer/manager/attribution/CampaignType;Landroid/os/Bundle;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->s()Z

    .line 453
    .line 454
    .line 455
    move-result p1

    .line 456
    if-eqz p1, :cond_11

    .line 457
    .line 458
    sget-object p1, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;

    .line 459
    .line 460
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->x()V

    .line 461
    .line 462
    .line 463
    :cond_11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 464
    .line 465
    return-object p1
.end method
