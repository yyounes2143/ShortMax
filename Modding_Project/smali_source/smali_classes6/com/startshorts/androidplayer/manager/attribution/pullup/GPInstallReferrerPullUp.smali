.class public final Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp;
.super Lcom/startshorts/androidplayer/manager/attribution/pullup/BaseCampaignPullUp;
.source "GPInstallReferrerPullUp.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp;->a:Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/pullup/BaseCampaignPullUp;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp;->j()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic e(Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic f(Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->newBuilder(Landroid/content/Context;)Lcom/android/installreferrer/api/InstallReferrerClient$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient$Builder;->build()Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v0, Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp$b;

    .line 10
    .line 11
    invoke-direct {v0, p1, p0, p2, p3}, Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp$b;-><init>(Lcom/android/installreferrer/api/InstallReferrerClient;Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->startConnection(Lcom/android/installreferrer/api/InstallReferrerStateListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    sget-object p4, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "GPInstallReferrer PullUp handleQueryResult installReferrer -> "

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", data -> "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "CampaignNewTag"

    .line 29
    .line 30
    invoke-virtual {p4, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-object v2, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 34
    .line 35
    new-instance p4, Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp$handleQueryResult$1;

    .line 36
    .line 37
    const/4 v8, 0x0

    .line 38
    move-object v3, p4

    .line 39
    move-object v4, p0

    .line 40
    move-object v5, p1

    .line 41
    move-object v6, p2

    .line 42
    move-object v7, p3

    .line 43
    invoke-direct/range {v3 .. v8}, Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp$handleQueryResult$1;-><init>(Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 44
    .line 45
    .line 46
    const/4 v6, 0x2

    .line 47
    const/4 v7, 0x0

    .line 48
    const-string v3, "reportGPInstallReferrerPullUp"

    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    move-object v5, p4

    .line 52
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method private final i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of p4, p5, Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp$handleQuerySuccess$1;

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    move-object p4, p5

    .line 6
    check-cast p4, Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp$handleQuerySuccess$1;

    .line 7
    .line 8
    iget v0, p4, Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp$handleQuerySuccess$1;->j:I

    .line 9
    .line 10
    const/high16 v1, -0x80000000

    .line 11
    .line 12
    and-int v2, v0, v1

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    sub-int/2addr v0, v1

    .line 17
    iput v0, p4, Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp$handleQuerySuccess$1;->j:I

    .line 18
    .line 19
    :goto_0
    move-object v6, p4

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance p4, Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp$handleQuerySuccess$1;

    .line 22
    .line 23
    invoke-direct {p4, p0, p5}, Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp$handleQuerySuccess$1;-><init>(Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp;Lrs/c;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p4, v6, Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp$handleQuerySuccess$1;->h:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p5

    .line 33
    iget v0, v6, Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp$handleQuerySuccess$1;->j:I

    .line 34
    .line 35
    const-string v7, "CampaignNewTag"

    .line 36
    .line 37
    const/4 v8, 0x1

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    if-ne v0, v8, :cond_1

    .line 41
    .line 42
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    check-cast p4, Lkotlin/Result;

    .line 46
    .line 47
    invoke-virtual {p4}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    goto :goto_2

    .line 52
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_2
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    sget-object p4, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v1, "GPInstallReferrer PullUp handleQuerySuccess -> "

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {p4, v7, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    sget-object v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 86
    .line 87
    if-nez p3, :cond_3

    .line 88
    .line 89
    const-string p3, ""

    .line 90
    .line 91
    :cond_3
    move-object v2, p3

    .line 92
    sget-object p3, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 93
    .line 94
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->x()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->q()J

    .line 99
    .line 100
    .line 101
    move-result-wide p3

    .line 102
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    iput v8, v6, Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp$handleQuerySuccess$1;->j:I

    .line 107
    .line 108
    move-object v1, p2

    .line 109
    move-object v5, p1

    .line 110
    invoke-virtual/range {v0 .. v6}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    if-ne p1, p5, :cond_4

    .line 115
    .line 116
    return-object p5

    .line 117
    :cond_4
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    if-eqz p2, :cond_7

    .line 122
    .line 123
    move-object p2, p1

    .line 124
    check-cast p2, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;

    .line 125
    .line 126
    sget-object p3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 127
    .line 128
    new-instance p4, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string p5, "GPInstallReferrer reportLPInfo onSuccess -> "

    .line 134
    .line 135
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p4

    .line 145
    invoke-virtual {p3, v7, p4}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    if-eqz p2, :cond_5

    .line 149
    .line 150
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getMatchResult()Ljava/lang/Boolean;

    .line 151
    .line 152
    .line 153
    move-result-object p3

    .line 154
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 155
    .line 156
    .line 157
    move-result-object p4

    .line 158
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result p3

    .line 162
    goto :goto_3

    .line 163
    :cond_5
    const/4 p3, 0x0

    .line 164
    :goto_3
    if-eqz p3, :cond_7

    .line 165
    .line 166
    sget-object p3, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 167
    .line 168
    sget-object p4, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 169
    .line 170
    invoke-virtual {p4}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->r()J

    .line 171
    .line 172
    .line 173
    move-result-wide p4

    .line 174
    invoke-virtual {p3, p4, p5}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->W(J)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getDelayedAttributedTime()I

    .line 178
    .line 179
    .line 180
    move-result p3

    .line 181
    if-lez p3, :cond_6

    .line 182
    .line 183
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getDelayedAttributedTime()I

    .line 184
    .line 185
    .line 186
    move-result p2

    .line 187
    int-to-long p2, p2

    .line 188
    const-wide/16 p4, 0x3e8

    .line 189
    .line 190
    mul-long/2addr p2, p4

    .line 191
    :goto_4
    move-wide v1, p2

    .line 192
    goto :goto_5

    .line 193
    :cond_6
    const-wide/16 p2, 0x1388

    .line 194
    .line 195
    goto :goto_4

    .line 196
    :goto_5
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 197
    .line 198
    new-instance v4, Lje/a;

    .line 199
    .line 200
    invoke-direct {v4}, Lje/a;-><init>()V

    .line 201
    .line 202
    .line 203
    const/4 v5, 0x2

    .line 204
    const/4 v6, 0x0

    .line 205
    const/4 v3, 0x0

    .line 206
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->g(Lcom/startshorts/androidplayer/utils/CoroutineUtil;JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 207
    .line 208
    .line 209
    :cond_7
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    if-eqz p1, :cond_8

    .line 214
    .line 215
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 216
    .line 217
    new-instance p3, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    const-string p4, "GPInstallReferrer reportLPInfo onFailure -> "

    .line 223
    .line 224
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-virtual {p2, v7, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    :cond_8
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 242
    .line 243
    return-object p1
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
    const-string v2, "reportLPActive success CampaignRefreshSuccessEvent"

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
.method protected c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p1
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "GPInstallReferrerPullUp"

    .line 2
    .line 3
    return-object v0
.end method
