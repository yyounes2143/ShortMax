.class final Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$startPolling$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MetaInstallReferrerProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;->x()V
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
    c = "com.startshorts.androidplayer.manager.attribution.provider.MetaInstallReferrerProvider$startPolling$1"
    f = "MetaInstallReferrerProvider.kt"
    l = {
        0x4b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field i:I

.field final synthetic j:Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$startPolling$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$startPolling$1;->j:Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;

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
    new-instance p1, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$startPolling$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$startPolling$1;->j:Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$startPolling$1;-><init>(Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$startPolling$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$startPolling$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$startPolling$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$startPolling$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$startPolling$1;->i:I

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
    iget v1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$startPolling$1;->h:I

    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    move p1, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$startPolling$1;->j:Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;->p(Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_5

    .line 38
    .line 39
    const/4 v1, 0x4

    .line 40
    if-ge p1, v1, :cond_5

    .line 41
    .line 42
    sget-object v3, Lgk/a;->a:Lgk/a;

    .line 43
    .line 44
    invoke-virtual {v3}, Lgk/a;->d()Lcom/startshorts/androidplayer/bean/campaign/MetaInstallReferrer;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    add-int/lit8 p1, p1, 0x1

    .line 49
    .line 50
    iget-object v4, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$startPolling$1;->j:Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;

    .line 51
    .line 52
    invoke-static {v4}, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;->q(Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    iget-object v5, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$startPolling$1;->j:Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;

    .line 57
    .line 58
    add-int/2addr v4, v2

    .line 59
    invoke-static {v5, v4}, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;->t(Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;I)V

    .line 60
    .line 61
    .line 62
    sget-object v4, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 63
    .line 64
    new-instance v5, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v6, "polling #"

    .line 70
    .line 71
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v6, "/4 referrer("

    .line 78
    .line 79
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const/16 v6, 0x29

    .line 86
    .line 87
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    const-string v6, "CampaignNewTag"

    .line 95
    .line 96
    invoke-virtual {v4, v6, v5}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    if-nez v3, :cond_4

    .line 100
    .line 101
    if-lt p1, v1, :cond_3

    .line 102
    .line 103
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$startPolling$1;->j:Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;

    .line 104
    .line 105
    invoke-static {v3}, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;->u(Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;)V

    .line 106
    .line 107
    .line 108
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$startPolling$1;->j:Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;

    .line 109
    .line 110
    const-string v4, "Timeout:referrer is null"

    .line 111
    .line 112
    invoke-static {v3, v4}, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;->r(Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;Ljava/lang/String;)Lkotlinx/coroutines/r;

    .line 113
    .line 114
    .line 115
    :cond_3
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$startPolling$1;->j:Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;

    .line 116
    .line 117
    invoke-static {v3}, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;->p(Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;)Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-eqz v3, :cond_2

    .line 122
    .line 123
    if-ge p1, v1, :cond_2

    .line 124
    .line 125
    iput p1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$startPolling$1;->h:I

    .line 126
    .line 127
    iput v2, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$startPolling$1;->i:I

    .line 128
    .line 129
    const-wide/16 v3, 0x3e8

    .line 130
    .line 131
    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->b(JLrs/c;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    if-ne v1, v0, :cond_2

    .line 136
    .line 137
    return-object v0

    .line 138
    :cond_4
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$startPolling$1;->j:Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;

    .line 139
    .line 140
    invoke-static {p1}, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;->u(Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;)V

    .line 141
    .line 142
    .line 143
    sget-object p1, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;

    .line 144
    .line 145
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/campaign/MetaInstallReferrer;->getInstallReferrer()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/campaign/MetaInstallReferrer;->isCT()I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->F(Ljava/lang/String;I)V

    .line 154
    .line 155
    .line 156
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$startPolling$1;->j:Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;

    .line 157
    .line 158
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/campaign/MetaInstallReferrer;->getInstallReferrer()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;->s(Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;Ljava/lang/String;)Lkotlinx/coroutines/r;

    .line 163
    .line 164
    .line 165
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 166
    .line 167
    return-object p1

    .line 168
    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 169
    .line 170
    return-object p1
.end method
