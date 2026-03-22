.class final Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$initAdjust$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AJConversionDataProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->N(Landroid/content/Context;)V
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
    c = "com.startshorts.androidplayer.manager.attribution.provider.AJConversionDataProvider$initAdjust$2$1"
    f = "AJConversionDataProvider.kt"
    l = {
        0xce
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:I

.field final synthetic j:Landroid/net/Uri;

.field final synthetic k:Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;


# direct methods
.method constructor <init>(Landroid/net/Uri;Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$initAdjust$2$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$initAdjust$2$1;->j:Landroid/net/Uri;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$initAdjust$2$1;->k:Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;

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
    new-instance p1, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$initAdjust$2$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$initAdjust$2$1;->j:Landroid/net/Uri;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$initAdjust$2$1;->k:Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$initAdjust$2$1;-><init>(Landroid/net/Uri;Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$initAdjust$2$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$initAdjust$2$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$initAdjust$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$initAdjust$2$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$initAdjust$2$1;->i:I

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$initAdjust$2$1;->h:Ljava/lang/Object;

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
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$initAdjust$2$1;->j:Landroid/net/Uri;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string/jumbo v1, "toString(...)"

    .line 40
    .line 41
    .line 42
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 46
    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v5, "AJConversionDataProvider onDeepLinking subscribeData: "

    .line 53
    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    const-string v5, "CampaignNewTag"

    .line 65
    .line 66
    invoke-virtual {v1, v5, v4}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v4, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$initAdjust$2$1;->k:Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;

    .line 70
    .line 71
    invoke-static {v4, p1}, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->z(Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v4, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$initAdjust$2$1;->k:Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;

    .line 75
    .line 76
    sget-object v6, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 77
    .line 78
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 79
    .line 80
    .line 81
    move-result-wide v6

    .line 82
    invoke-static {v4, v6, v7}, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->B(Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;J)V

    .line 83
    .line 84
    .line 85
    iget-object v4, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$initAdjust$2$1;->k:Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;

    .line 86
    .line 87
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->I()Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$b;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    if-eqz v4, :cond_3

    .line 92
    .line 93
    const-string v0, "AJConversionDataProvider onDeepLinking callback listener"

    .line 94
    .line 95
    invoke-virtual {v1, v5, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$initAdjust$2$1;->k:Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->I()Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$b;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    if-eqz v0, :cond_2

    .line 105
    .line 106
    invoke-interface {v0, p1}, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$b;->a(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :cond_2
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$initAdjust$2$1;->k:Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;

    .line 110
    .line 111
    const/4 v0, 0x0

    .line 112
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->S(Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$b;)V

    .line 113
    .line 114
    .line 115
    goto/16 :goto_1

    .line 116
    .line 117
    :cond_3
    sget-object v4, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 118
    .line 119
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->u1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    check-cast v4, Ljava/lang/Boolean;

    .line 132
    .line 133
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-eqz v4, :cond_6

    .line 138
    .line 139
    const-string v4, "AJConversionDataProvider onDeepLinking allPullUp"

    .line 140
    .line 141
    invoke-virtual {v1, v5, v4}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    sget-object v4, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->a:Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;

    .line 145
    .line 146
    sget-object v6, Lcom/startshorts/androidplayer/bean/campaign/AFEventUploadInfo;->Companion:Lcom/startshorts/androidplayer/bean/campaign/AFEventUploadInfo$Companion;

    .line 147
    .line 148
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/campaign/AFEventUploadInfo$Companion;->getTYPE_AJ()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    invoke-virtual {v4, p1, v6}, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->i(Ljava/lang/String;Ljava/lang/String;)Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    if-eqz v4, :cond_6

    .line 157
    .line 158
    new-instance v6, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    const-string v7, "AJConversionDataProvider onDeepLinking handleActiveJumpImmersion "

    .line 164
    .line 165
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    invoke-virtual {v1, v5, v6}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    sget-object v6, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->e:Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;

    .line 179
    .line 180
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->b()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    invoke-virtual {v6, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 185
    .line 186
    .line 187
    move-result v6

    .line 188
    if-eqz v6, :cond_5

    .line 189
    .line 190
    const-string v6, "Triggering CampaignPullUp.allPullUp (First time in this session)"

    .line 191
    .line 192
    invoke-virtual {v1, v5, v6}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    sget-object v7, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 196
    .line 197
    const/4 v12, 0x6

    .line 198
    const/4 v13, 0x0

    .line 199
    const-string/jumbo v8, "udl_active_success"

    .line 200
    .line 201
    .line 202
    const/4 v9, 0x0

    .line 203
    const-wide/16 v10, 0x0

    .line 204
    .line 205
    invoke-static/range {v7 .. v13}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$initAdjust$2$1;->k:Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;

    .line 209
    .line 210
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$initAdjust$2$1;->h:Ljava/lang/Object;

    .line 211
    .line 212
    iput v3, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$initAdjust$2$1;->i:I

    .line 213
    .line 214
    invoke-static {v1, v4, p0}, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->v(Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;Lrs/c;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    if-ne v1, v0, :cond_4

    .line 219
    .line 220
    return-object v0

    .line 221
    :cond_4
    move-object v0, p1

    .line 222
    :goto_0
    sget-object p1, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp;

    .line 223
    .line 224
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$initAdjust$2$1;->k:Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;

    .line 225
    .line 226
    invoke-static {v1}, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->u(Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {p1, v0, v1, v2, v2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Lkotlinx/coroutines/r;

    .line 231
    .line 232
    .line 233
    move-object p1, v0

    .line 234
    :cond_5
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$initAdjust$2$1;->k:Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;

    .line 235
    .line 236
    invoke-static {v0}, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->u(Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-static {v0, p1, v1}, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->x(Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    :cond_6
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 244
    .line 245
    return-object p1
.end method
