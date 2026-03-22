.class final Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp$startPolling$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MetaInstallReferrerPullUp.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;->j(Ljava/lang/String;Ljava/lang/String;)V
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
    c = "com.startshorts.androidplayer.manager.attribution.pullup.MetaInstallReferrerPullUp$startPolling$1"
    f = "MetaInstallReferrerPullUp.kt"
    l = {
        0x47
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field i:I

.field final synthetic j:Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp$startPolling$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp$startPolling$1;->j:Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp$startPolling$1;->k:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp$startPolling$1;->l:Ljava/lang/String;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 3
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
    new-instance p1, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp$startPolling$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp$startPolling$1;->j:Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp$startPolling$1;->k:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp$startPolling$1;->l:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp$startPolling$1;-><init>(Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 10
    .line 11
    .line 12
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp$startPolling$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp$startPolling$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp$startPolling$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp$startPolling$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp$startPolling$1;->i:I

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
    iget v1, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp$startPolling$1;->h:I

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp$startPolling$1;->j:Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;->d(Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;)Z

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
    iget-object v4, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp$startPolling$1;->j:Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;

    .line 51
    .line 52
    invoke-static {v4}, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;->e(Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    iget-object v5, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp$startPolling$1;->j:Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;

    .line 57
    .line 58
    add-int/2addr v4, v2

    .line 59
    invoke-static {v5, v4}, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;->g(Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;I)V

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
    const-string v6, "MetaInstallReferrerPullUp"

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
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp$startPolling$1;->j:Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;

    .line 104
    .line 105
    invoke-static {v3}, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;->h(Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;)V

    .line 106
    .line 107
    .line 108
    const-string v3, "handleQueryFailed -> Timeout:referrer is null"

    .line 109
    .line 110
    invoke-virtual {v4, v6, v3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_3
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp$startPolling$1;->j:Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;

    .line 114
    .line 115
    invoke-static {v3}, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;->d(Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;)Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-eqz v3, :cond_2

    .line 120
    .line 121
    if-ge p1, v1, :cond_2

    .line 122
    .line 123
    iput p1, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp$startPolling$1;->h:I

    .line 124
    .line 125
    iput v2, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp$startPolling$1;->i:I

    .line 126
    .line 127
    const-wide/16 v3, 0x3e8

    .line 128
    .line 129
    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->b(JLrs/c;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    if-ne v1, v0, :cond_2

    .line 134
    .line 135
    return-object v0

    .line 136
    :cond_4
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp$startPolling$1;->j:Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;

    .line 137
    .line 138
    invoke-static {p1}, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;->h(Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;)V

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp$startPolling$1;->j:Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;

    .line 142
    .line 143
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp$startPolling$1;->k:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/campaign/MetaInstallReferrer;->getInstallReferrer()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/campaign/MetaInstallReferrer;->isCT()I

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp$startPolling$1;->l:Ljava/lang/String;

    .line 154
    .line 155
    invoke-static {p1, v0, v1, v2, v3}, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;->f(Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 156
    .line 157
    .line 158
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 159
    .line 160
    return-object p1

    .line 161
    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 162
    .line 163
    return-object p1
.end method
