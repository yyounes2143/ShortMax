.class final Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider$subscribeDeepLink$1$onDeepLinking$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AFConversionDataProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider$subscribeDeepLink$1;->onDeepLinking(Lcom/appsflyer/deeplink/DeepLinkResult;)V
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
    c = "com.startshorts.androidplayer.manager.attribution.provider.AFConversionDataProvider$subscribeDeepLink$1$onDeepLinking$2"
    f = "AFConversionDataProvider.kt"
    l = {
        0x119
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:I

.field final synthetic j:Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider;

.field final synthetic k:Lcom/appsflyer/deeplink/DeepLink;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider;Lcom/appsflyer/deeplink/DeepLink;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider;",
            "Lcom/appsflyer/deeplink/DeepLink;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider$subscribeDeepLink$1$onDeepLinking$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider$subscribeDeepLink$1$onDeepLinking$2;->j:Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider$subscribeDeepLink$1$onDeepLinking$2;->k:Lcom/appsflyer/deeplink/DeepLink;

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
    new-instance p1, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider$subscribeDeepLink$1$onDeepLinking$2;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider$subscribeDeepLink$1$onDeepLinking$2;->j:Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider$subscribeDeepLink$1$onDeepLinking$2;->k:Lcom/appsflyer/deeplink/DeepLink;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider$subscribeDeepLink$1$onDeepLinking$2;-><init>(Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider;Lcom/appsflyer/deeplink/DeepLink;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider$subscribeDeepLink$1$onDeepLinking$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider$subscribeDeepLink$1$onDeepLinking$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider$subscribeDeepLink$1$onDeepLinking$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider$subscribeDeepLink$1$onDeepLinking$2;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider$subscribeDeepLink$1$onDeepLinking$2;->i:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v3, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider$subscribeDeepLink$1$onDeepLinking$2;->h:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    goto/16 :goto_0

    .line 21
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
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider$subscribeDeepLink$1$onDeepLinking$2;->j:Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider;->r(Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider;)Lcom/google/gson/Gson;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider$subscribeDeepLink$1$onDeepLinking$2;->k:Lcom/appsflyer/deeplink/DeepLink;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/appsflyer/deeplink/DeepLink;->getClickEvent()Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 50
    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v5, "UdlAFConversionDataProvider onDeepLinking subscribeData: "

    .line 57
    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    const-string v5, "CampaignNewTag"

    .line 69
    .line 70
    invoke-virtual {v1, v5, v4}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v4, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider$subscribeDeepLink$1$onDeepLinking$2;->j:Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider;

    .line 74
    .line 75
    invoke-static {v4, p1}, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider;->y(Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v4, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider$subscribeDeepLink$1$onDeepLinking$2;->j:Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider;

    .line 79
    .line 80
    sget-object v6, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 81
    .line 82
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 83
    .line 84
    .line 85
    move-result-wide v6

    .line 86
    invoke-static {v4, v6, v7}, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider;->A(Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider;J)V

    .line 87
    .line 88
    .line 89
    iget-object v4, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider$subscribeDeepLink$1$onDeepLinking$2;->j:Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider;

    .line 90
    .line 91
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider;->G()Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider$b;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    if-eqz v4, :cond_3

    .line 96
    .line 97
    const-string v0, "UdlAFConversionDataProvider onDeepLinking callback listener"

    .line 98
    .line 99
    invoke-virtual {v1, v5, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider$subscribeDeepLink$1$onDeepLinking$2;->j:Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider;

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider;->G()Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider$b;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    if-eqz v0, :cond_2

    .line 109
    .line 110
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    invoke-interface {v0, p1}, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider$b;->a(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_2
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider$subscribeDeepLink$1$onDeepLinking$2;->j:Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider;

    .line 117
    .line 118
    const/4 v0, 0x0

    .line 119
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider;->O(Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider$b;)V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_1

    .line 123
    .line 124
    :cond_3
    sget-object v4, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 125
    .line 126
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->u1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    check-cast v4, Ljava/lang/Boolean;

    .line 139
    .line 140
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    if-eqz v4, :cond_6

    .line 145
    .line 146
    const-string v4, "UdlAFConversionDataProvider onDeepLinking allPullUp"

    .line 147
    .line 148
    invoke-virtual {v1, v5, v4}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    sget-object v4, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->a:Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;

    .line 152
    .line 153
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    sget-object v6, Lcom/startshorts/androidplayer/bean/campaign/AFEventUploadInfo;->Companion:Lcom/startshorts/androidplayer/bean/campaign/AFEventUploadInfo$Companion;

    .line 157
    .line 158
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/campaign/AFEventUploadInfo$Companion;->getTYPE_AF()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    invoke-virtual {v4, p1, v6}, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->i(Ljava/lang/String;Ljava/lang/String;)Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    if-eqz v4, :cond_6

    .line 167
    .line 168
    new-instance v6, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    const-string v7, "UdlAFConversionDataProvider onDeepLinking handleActiveJumpImmersion "

    .line 174
    .line 175
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    invoke-virtual {v1, v5, v6}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    sget-object v6, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->e:Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;

    .line 189
    .line 190
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->b()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    invoke-virtual {v6, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 195
    .line 196
    .line 197
    move-result v6

    .line 198
    if-eqz v6, :cond_5

    .line 199
    .line 200
    const-string v6, "Triggering CampaignPullUp.allPullUp (First time in this session)"

    .line 201
    .line 202
    invoke-virtual {v1, v5, v6}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    sget-object v7, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 206
    .line 207
    const/4 v12, 0x6

    .line 208
    const/4 v13, 0x0

    .line 209
    const-string/jumbo v8, "udl_active_success"

    .line 210
    .line 211
    .line 212
    const/4 v9, 0x0

    .line 213
    const-wide/16 v10, 0x0

    .line 214
    .line 215
    invoke-static/range {v7 .. v13}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider$subscribeDeepLink$1$onDeepLinking$2;->j:Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider;

    .line 219
    .line 220
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider$subscribeDeepLink$1$onDeepLinking$2;->h:Ljava/lang/Object;

    .line 221
    .line 222
    iput v3, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider$subscribeDeepLink$1$onDeepLinking$2;->i:I

    .line 223
    .line 224
    invoke-static {v1, v4, p0}, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider;->t(Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider;Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;Lrs/c;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    if-ne v1, v0, :cond_4

    .line 229
    .line 230
    return-object v0

    .line 231
    :cond_4
    move-object v0, p1

    .line 232
    :goto_0
    sget-object p1, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp;

    .line 233
    .line 234
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider$subscribeDeepLink$1$onDeepLinking$2;->j:Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider;

    .line 238
    .line 239
    invoke-static {v1}, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider;->s(Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-virtual {p1, v0, v1, v2, v2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Lkotlinx/coroutines/r;

    .line 244
    .line 245
    .line 246
    move-object p1, v0

    .line 247
    :cond_5
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider$subscribeDeepLink$1$onDeepLinking$2;->j:Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider;

    .line 248
    .line 249
    invoke-static {v0}, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider;->s(Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-static {v0, p1, v1}, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider;->w(Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    :cond_6
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 257
    .line 258
    return-object p1
.end method
