.class final Lcom/startshorts/androidplayer/manager/attribution/pullup/AJConversionDataPullUp$handleUdlQuerySuccess$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AJConversionDataPullUp.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/attribution/pullup/AJConversionDataPullUp;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    c = "com.startshorts.androidplayer.manager.attribution.pullup.AJConversionDataPullUp$handleUdlQuerySuccess$1"
    f = "AJConversionDataPullUp.kt"
    l = {
        0x4a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Ljava/lang/String;


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
            "Lcom/startshorts/androidplayer/manager/attribution/pullup/AJConversionDataPullUp$handleUdlQuerySuccess$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/AJConversionDataPullUp$handleUdlQuerySuccess$1;->i:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/AJConversionDataPullUp$handleUdlQuerySuccess$1;->j:Ljava/lang/String;

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
    invoke-static {}, Lcom/startshorts/androidplayer/manager/attribution/pullup/AJConversionDataPullUp$handleUdlQuerySuccess$1;->j()Lkotlin/Unit;

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
    const-string v2, "AJConversionDataPullUp reportUdlAjActive success CampaignRefreshSuccessEvent"

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
    new-instance p1, Lcom/startshorts/androidplayer/manager/attribution/pullup/AJConversionDataPullUp$handleUdlQuerySuccess$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/AJConversionDataPullUp$handleUdlQuerySuccess$1;->i:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/AJConversionDataPullUp$handleUdlQuerySuccess$1;->j:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/manager/attribution/pullup/AJConversionDataPullUp$handleUdlQuerySuccess$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/pullup/AJConversionDataPullUp$handleUdlQuerySuccess$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/attribution/pullup/AJConversionDataPullUp$handleUdlQuerySuccess$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/pullup/AJConversionDataPullUp$handleUdlQuerySuccess$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/pullup/AJConversionDataPullUp$handleUdlQuerySuccess$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/AJConversionDataPullUp$handleUdlQuerySuccess$1;->h:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    check-cast p1, Lkotlin/Result;

    .line 16
    .line 17
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sget-object v3, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 34
    .line 35
    iget-object v5, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/AJConversionDataPullUp$handleUdlQuerySuccess$1;->i:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v6, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/AJConversionDataPullUp$handleUdlQuerySuccess$1;->j:Ljava/lang/String;

    .line 38
    .line 39
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->q()J

    .line 42
    .line 43
    .line 44
    move-result-wide v7

    .line 45
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    sget-object p1, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->e:Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;

    .line 50
    .line 51
    sget-object v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->GP_INSTALL_REFERRER:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 52
    .line 53
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->a(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-nez p1, :cond_2

    .line 58
    .line 59
    const-string p1, ""

    .line 60
    .line 61
    :cond_2
    move-object v8, p1

    .line 62
    iput v2, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/AJConversionDataPullUp$handleUdlQuerySuccess$1;->h:I

    .line 63
    .line 64
    const/4 v4, 0x1

    .line 65
    move-object v9, p0

    .line 66
    invoke-virtual/range {v3 .. v9}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->T(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-ne p1, v0, :cond_3

    .line 71
    .line 72
    return-object v0

    .line 73
    :cond_3
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    const-string v1, "CampaignNewTag"

    .line 78
    .line 79
    if-eqz v0, :cond_6

    .line 80
    .line 81
    move-object v0, p1

    .line 82
    check-cast v0, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;

    .line 83
    .line 84
    sget-object v3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 85
    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v5, "AJConversionDataPullUp reportAjUdlInfo onSuccess -> "

    .line 92
    .line 93
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v3, v1, v4}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    if-eqz v0, :cond_4

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getMatchResult()Ljava/lang/Boolean;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    goto :goto_1

    .line 121
    :cond_4
    const/4 v2, 0x0

    .line 122
    :goto_1
    if-eqz v2, :cond_6

    .line 123
    .line 124
    sget-object v2, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 125
    .line 126
    sget-object v3, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 127
    .line 128
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->r()J

    .line 129
    .line 130
    .line 131
    move-result-wide v3

    .line 132
    invoke-virtual {v2, v3, v4}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->W(J)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getDelayedAttributedTime()I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-lez v2, :cond_5

    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getDelayedAttributedTime()I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    int-to-long v2, v0

    .line 146
    const-wide/16 v4, 0x3e8

    .line 147
    .line 148
    mul-long/2addr v2, v4

    .line 149
    :goto_2
    move-wide v5, v2

    .line 150
    goto :goto_3

    .line 151
    :cond_5
    const-wide/16 v2, 0x1388

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :goto_3
    sget-object v4, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 155
    .line 156
    new-instance v8, Lcom/startshorts/androidplayer/manager/attribution/pullup/d;

    .line 157
    .line 158
    invoke-direct {v8}, Lcom/startshorts/androidplayer/manager/attribution/pullup/d;-><init>()V

    .line 159
    .line 160
    .line 161
    const/4 v9, 0x2

    .line 162
    const/4 v10, 0x0

    .line 163
    const/4 v7, 0x0

    .line 164
    invoke-static/range {v4 .. v10}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->g(Lcom/startshorts/androidplayer/utils/CoroutineUtil;JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 165
    .line 166
    .line 167
    :cond_6
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    if-eqz p1, :cond_7

    .line 172
    .line 173
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 174
    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    const-string v3, "AJConversionDataPullUp reportLPInfo onFailure -> "

    .line 181
    .line 182
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 200
    .line 201
    return-object p1
.end method
