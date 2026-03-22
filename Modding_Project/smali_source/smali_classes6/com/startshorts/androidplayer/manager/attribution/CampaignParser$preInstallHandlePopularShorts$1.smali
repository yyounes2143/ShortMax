.class final Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$preInstallHandlePopularShorts$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CampaignParser.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->z(Lcom/startshorts/androidplayer/bean/shorts/PopularShorts;)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.manager.attribution.CampaignParser$preInstallHandlePopularShorts$1"
    f = "CampaignParser.kt"
    l = {
        0x1cf,
        0x1d9
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
            "Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$preInstallHandlePopularShorts$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$preInstallHandlePopularShorts$1;->j:Lcom/startshorts/androidplayer/bean/shorts/PopularShorts;

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
    new-instance p1, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$preInstallHandlePopularShorts$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$preInstallHandlePopularShorts$1;->j:Lcom/startshorts/androidplayer/bean/shorts/PopularShorts;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$preInstallHandlePopularShorts$1;-><init>(Lcom/startshorts/androidplayer/bean/shorts/PopularShorts;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$preInstallHandlePopularShorts$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$preInstallHandlePopularShorts$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$preInstallHandlePopularShorts$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$preInstallHandlePopularShorts$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$preInstallHandlePopularShorts$1;->i:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x1

    .line 10
    const-string v5, "CampaignParser"

    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    if-eq v1, v4, :cond_1

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$preInstallHandlePopularShorts$1;->h:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Lcom/hades/aar/activity/IDActivity;

    .line 34
    .line 35
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$preInstallHandlePopularShorts$1;->j:Lcom/startshorts/androidplayer/bean/shorts/PopularShorts;

    .line 43
    .line 44
    if-nez p1, :cond_3

    .line 45
    .line 46
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 47
    .line 48
    return-object p1

    .line 49
    :cond_3
    sget-object p1, Lud/b;->a:Lud/b;

    .line 50
    .line 51
    invoke-virtual {p1}, Lud/b;->Z()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_4

    .line 56
    .line 57
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 58
    .line 59
    return-object p1

    .line 60
    :cond_4
    sget-object p1, Laa/a;->a:Laa/a;

    .line 61
    .line 62
    invoke-virtual {p1}, Laa/a;->d()Ljava/lang/ref/WeakReference;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-eqz p1, :cond_5

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Lcom/hades/aar/activity/IDActivity;

    .line 73
    .line 74
    move-object v1, p1

    .line 75
    goto :goto_0

    .line 76
    :cond_5
    move-object v1, v3

    .line 77
    :goto_0
    instance-of p1, v1, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 78
    .line 79
    if-nez p1, :cond_6

    .line 80
    .line 81
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 82
    .line 83
    const-string/jumbo v0, "show ImmersionActivity failed -> TopActivity is not MainActivity"

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v5, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 90
    .line 91
    return-object p1

    .line 92
    :cond_6
    sget-object p1, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->a:Lcom/startshorts/androidplayer/manager/update/UpdateManager;

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->k()Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_7

    .line 99
    .line 100
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 101
    .line 102
    const-string/jumbo v0, "show ImmersionActivity failed -> ForceShowingUpdateDialog is showing"

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v5, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 109
    .line 110
    return-object p1

    .line 111
    :cond_7
    sget-object p1, Lud/a;->a:Lud/a;

    .line 112
    .line 113
    invoke-virtual {p1}, Lud/a;->t()Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-nez p1, :cond_8

    .line 118
    .line 119
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 120
    .line 121
    const-string/jumbo v0, "show ImmersionActivity failed -> onForeground is false"

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v5, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 128
    .line 129
    return-object p1

    .line 130
    :cond_8
    iput-object v1, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$preInstallHandlePopularShorts$1;->h:Ljava/lang/Object;

    .line 131
    .line 132
    iput v4, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$preInstallHandlePopularShorts$1;->i:I

    .line 133
    .line 134
    const-wide/16 v6, 0x1f4

    .line 135
    .line 136
    invoke-static {v6, v7, p0}, Lkotlinx/coroutines/DelayKt;->b(JLrs/c;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    if-ne p1, v0, :cond_9

    .line 141
    .line 142
    return-object v0

    .line 143
    :cond_9
    :goto_1
    sget-object p1, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->O()Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-eqz p1, :cond_a

    .line 150
    .line 151
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 152
    .line 153
    const-string/jumbo v0, "show ImmersionActivity failed -> FullScreenAd is showing"

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v5, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 160
    .line 161
    return-object p1

    .line 162
    :cond_a
    sget-object p1, Lud/b;->a:Lud/b;

    .line 163
    .line 164
    invoke-virtual {p1}, Lud/b;->Z()Z

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    if-eqz v5, :cond_b

    .line 169
    .line 170
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 171
    .line 172
    return-object p1

    .line 173
    :cond_b
    invoke-virtual {p1, v4}, Lud/b;->j3(Z)V

    .line 174
    .line 175
    .line 176
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    new-instance v4, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$preInstallHandlePopularShorts$1$1;

    .line 181
    .line 182
    iget-object v5, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$preInstallHandlePopularShorts$1;->j:Lcom/startshorts/androidplayer/bean/shorts/PopularShorts;

    .line 183
    .line 184
    invoke-direct {v4, v1, v5, v3}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$preInstallHandlePopularShorts$1$1;-><init>(Lcom/hades/aar/activity/IDActivity;Lcom/startshorts/androidplayer/bean/shorts/PopularShorts;Lrs/c;)V

    .line 185
    .line 186
    .line 187
    iput-object v3, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$preInstallHandlePopularShorts$1;->h:Ljava/lang/Object;

    .line 188
    .line 189
    iput v2, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$preInstallHandlePopularShorts$1;->i:I

    .line 190
    .line 191
    invoke-static {p1, v4, p0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    if-ne p1, v0, :cond_c

    .line 196
    .line 197
    return-object v0

    .line 198
    :cond_c
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 199
    .line 200
    return-object p1
.end method
