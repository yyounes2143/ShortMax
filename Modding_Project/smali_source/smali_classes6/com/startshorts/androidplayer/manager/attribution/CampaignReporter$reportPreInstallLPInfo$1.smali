.class final Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportPreInstallLPInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CampaignReporter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->M(Ljava/lang/String;Z)V
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
    c = "com.startshorts.androidplayer.manager.attribution.CampaignReporter$reportPreInstallLPInfo$1"
    f = "CampaignReporter.kt"
    l = {
        0xd1,
        0xd0
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:I

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Z


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
            "Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportPreInstallLPInfo$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportPreInstallLPInfo$1;->j:Ljava/lang/String;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportPreInstallLPInfo$1;->k:Z

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
    invoke-static {}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportPreInstallLPInfo$1;->j()Lkotlin/Unit;

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
    const-string v2, "reportPreInstall success CampaignRefreshSuccessEvent"

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
    new-instance p1, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportPreInstallLPInfo$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportPreInstallLPInfo$1;->j:Ljava/lang/String;

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportPreInstallLPInfo$1;->k:Z

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportPreInstallLPInfo$1;-><init>(Ljava/lang/String;ZLrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportPreInstallLPInfo$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportPreInstallLPInfo$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportPreInstallLPInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportPreInstallLPInfo$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportPreInstallLPInfo$1;->i:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    check-cast p1, Lkotlin/Result;

    .line 19
    .line 20
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_1
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportPreInstallLPInfo$1;->h:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    move-object v4, v1

    .line 41
    goto :goto_0

    .line 42
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    sget-object p1, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;

    .line 46
    .line 47
    sget-object v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->PRE_INSTALL:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 48
    .line 49
    invoke-static {p1, v1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->h(Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)V

    .line 50
    .line 51
    .line 52
    sget-object v1, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 53
    .line 54
    iput-object v1, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportPreInstallLPInfo$1;->h:Ljava/lang/Object;

    .line 55
    .line 56
    iput v3, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportPreInstallLPInfo$1;->i:I

    .line 57
    .line 58
    invoke-static {p1, p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->g(Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;Lrs/c;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-ne p1, v0, :cond_2

    .line 63
    .line 64
    return-object v0

    .line 65
    :goto_0
    move-object v5, p1

    .line 66
    check-cast v5, Ljava/lang/String;

    .line 67
    .line 68
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->x()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->q()J

    .line 75
    .line 76
    .line 77
    move-result-wide v8

    .line 78
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    iget-object v9, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportPreInstallLPInfo$1;->j:Ljava/lang/String;

    .line 83
    .line 84
    const/4 p1, 0x0

    .line 85
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportPreInstallLPInfo$1;->h:Ljava/lang/Object;

    .line 86
    .line 87
    iput v2, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportPreInstallLPInfo$1;->i:I

    .line 88
    .line 89
    const-string v6, ""

    .line 90
    .line 91
    move-object v10, p0

    .line 92
    invoke-virtual/range {v4 .. v10}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    if-ne p1, v0, :cond_4

    .line 97
    .line 98
    return-object v0

    .line 99
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportPreInstallLPInfo$1;->k:Z

    .line 100
    .line 101
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    const/4 v2, 0x0

    .line 106
    const-string v4, "CampaignNewTag"

    .line 107
    .line 108
    if-eqz v1, :cond_f

    .line 109
    .line 110
    move-object v1, p1

    .line 111
    check-cast v1, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;

    .line 112
    .line 113
    sget-object v5, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 114
    .line 115
    new-instance v6, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string v7, "reportPreInstall success -> "

    .line 121
    .line 122
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    invoke-virtual {v5, v4, v6}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-static {v2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->o(Z)V

    .line 136
    .line 137
    .line 138
    sget-object v6, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;

    .line 139
    .line 140
    sget-object v7, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->PRE_INSTALL:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 141
    .line 142
    invoke-static {v6, v7, v0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->j(Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;Lcom/startshorts/androidplayer/manager/attribution/CampaignType;Z)V

    .line 143
    .line 144
    .line 145
    sget-object v0, Lud/b;->a:Lud/b;

    .line 146
    .line 147
    invoke-virtual {v0, v3}, Lud/b;->i4(Z)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v3}, Lud/b;->m4(Z)V

    .line 151
    .line 152
    .line 153
    sget-object v6, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->e:Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;

    .line 154
    .line 155
    invoke-virtual {v6, v7}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->f(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)V

    .line 156
    .line 157
    .line 158
    if-eqz v1, :cond_b

    .line 159
    .line 160
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getShortPlayId()I

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    if-lez v8, :cond_5

    .line 165
    .line 166
    invoke-static {v1}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    invoke-virtual {v6, v7, v8}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->e(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_5
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getMatchResult()Ljava/lang/Boolean;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    if-eqz v6, :cond_6

    .line 187
    .line 188
    sget-object v6, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;

    .line 189
    .line 190
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->x()V

    .line 191
    .line 192
    .line 193
    :cond_6
    :goto_2
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getAdswitch()Ljava/lang/Boolean;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    if-eqz v6, :cond_7

    .line 198
    .line 199
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 200
    .line 201
    .line 202
    move-result v6

    .line 203
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    invoke-virtual {v0, v6}, Lud/b;->l4(Ljava/lang/Boolean;)V

    .line 208
    .line 209
    .line 210
    :cond_7
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getUtmSource()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    if-eqz v6, :cond_9

    .line 215
    .line 216
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    if-nez v6, :cond_8

    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_8
    sget-object v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 224
    .line 225
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->V()V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getUtmSource()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    invoke-virtual {v0, v6}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->U(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    goto :goto_4

    .line 236
    :cond_9
    :goto_3
    invoke-virtual {v0}, Lud/b;->X()Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-eqz v0, :cond_a

    .line 241
    .line 242
    sget-object v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 243
    .line 244
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->V()V

    .line 245
    .line 246
    .line 247
    :cond_a
    :goto_4
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getMatchResult()Ljava/lang/Boolean;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 252
    .line 253
    .line 254
    move-result-object v6

    .line 255
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    if-eqz v0, :cond_b

    .line 260
    .line 261
    sget-object v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 262
    .line 263
    sget-object v6, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 264
    .line 265
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->r()J

    .line 266
    .line 267
    .line 268
    move-result-wide v6

    .line 269
    invoke-virtual {v0, v6, v7}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->W(J)V

    .line 270
    .line 271
    .line 272
    :cond_b
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/d;->a:Lcom/startshorts/androidplayer/manager/configure/ad/d;

    .line 273
    .line 274
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/d;->b()V

    .line 275
    .line 276
    .line 277
    if-eqz v1, :cond_c

    .line 278
    .line 279
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getMatchResult()Ljava/lang/Boolean;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 284
    .line 285
    .line 286
    move-result-object v6

    .line 287
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    goto :goto_5

    .line 292
    :cond_c
    move v0, v2

    .line 293
    :goto_5
    if-eqz v0, :cond_e

    .line 294
    .line 295
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getDelayedAttributedTime()I

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    if-lez v0, :cond_d

    .line 300
    .line 301
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getDelayedAttributedTime()I

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    int-to-long v0, v0

    .line 306
    const-wide/16 v5, 0x3e8

    .line 307
    .line 308
    mul-long/2addr v0, v5

    .line 309
    :goto_6
    move-wide v6, v0

    .line 310
    goto :goto_7

    .line 311
    :cond_d
    const-wide/16 v0, 0x1388

    .line 312
    .line 313
    goto :goto_6

    .line 314
    :goto_7
    sget-object v5, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 315
    .line 316
    new-instance v9, Lcom/startshorts/androidplayer/manager/attribution/f;

    .line 317
    .line 318
    invoke-direct {v9}, Lcom/startshorts/androidplayer/manager/attribution/f;-><init>()V

    .line 319
    .line 320
    .line 321
    const/4 v10, 0x2

    .line 322
    const/4 v11, 0x0

    .line 323
    const/4 v8, 0x0

    .line 324
    invoke-static/range {v5 .. v11}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->g(Lcom/startshorts/androidplayer/utils/CoroutineUtil;JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 325
    .line 326
    .line 327
    goto :goto_8

    .line 328
    :cond_e
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    new-instance v1, Lcom/startshorts/androidplayer/bean/eventbus/CampaignRefreshSuccessEvent;

    .line 333
    .line 334
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/eventbus/CampaignRefreshSuccessEvent;-><init>()V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0, v1}, Lau/c;->l(Ljava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    const-string v0, "reportPreInstall fail CampaignRefreshSuccessEvent"

    .line 341
    .line 342
    invoke-virtual {v5, v4, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    :cond_f
    :goto_8
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    if-eqz p1, :cond_10

    .line 350
    .line 351
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 352
    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .line 357
    .line 358
    const-string v5, "reportPreInstall failed -> "

    .line 359
    .line 360
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v5

    .line 367
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    invoke-virtual {v0, v4, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    invoke-static {v2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->o(Z)V

    .line 378
    .line 379
    .line 380
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;

    .line 381
    .line 382
    sget-object v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->PRE_INSTALL:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 383
    .line 384
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 385
    .line 386
    invoke-static {p1}, Ljk/z;->a(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 387
    .line 388
    .line 389
    move-result-object p1

    .line 390
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->D(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)Landroid/os/Bundle;

    .line 391
    .line 392
    .line 393
    move-result-object p1

    .line 394
    invoke-static {v0, v1, p1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->i(Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;Lcom/startshorts/androidplayer/manager/attribution/CampaignType;Landroid/os/Bundle;)V

    .line 395
    .line 396
    .line 397
    sget-object p1, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->e:Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;

    .line 398
    .line 399
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->f(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)V

    .line 400
    .line 401
    .line 402
    sget-object p1, Lud/b;->a:Lud/b;

    .line 403
    .line 404
    invoke-virtual {p1, v3}, Lud/b;->m4(Z)V

    .line 405
    .line 406
    .line 407
    sget-object p1, Lcom/startshorts/androidplayer/manager/configure/ad/d;->a:Lcom/startshorts/androidplayer/manager/configure/ad/d;

    .line 408
    .line 409
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/configure/ad/d;->b()V

    .line 410
    .line 411
    .line 412
    :cond_10
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 413
    .line 414
    return-object p1
.end method
