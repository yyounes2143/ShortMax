.class final Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$startPolling$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "GADeeplinkProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->D()V
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
    c = "com.startshorts.androidplayer.manager.attribution.provider.GADeeplinkProvider$startPolling$1"
    f = "GADeeplinkProvider.kt"
    l = {
        0x6e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field i:I

.field final synthetic j:Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$startPolling$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$startPolling$1;->j:Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;

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
    new-instance p1, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$startPolling$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$startPolling$1;->j:Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$startPolling$1;-><init>(Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$startPolling$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$startPolling$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$startPolling$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$startPolling$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$startPolling$1;->i:I

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
    iget v1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$startPolling$1;->h:I

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$startPolling$1;->j:Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->q(Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_7

    .line 38
    .line 39
    const/4 v1, 0x4

    .line 40
    if-ge p1, v1, :cond_7

    .line 41
    .line 42
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$startPolling$1;->j:Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;

    .line 43
    .line 44
    invoke-static {v3}, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->r(Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;)Landroid/content/SharedPreferences;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const/4 v4, 0x0

    .line 49
    if-eqz v3, :cond_3

    .line 50
    .line 51
    const-string v5, "deeplink"

    .line 52
    .line 53
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 58
    .line 59
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$startPolling$1;->j:Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;

    .line 60
    .line 61
    invoke-static {v3}, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->s(Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;)I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    iget-object v5, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$startPolling$1;->j:Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;

    .line 66
    .line 67
    add-int/2addr v3, v2

    .line 68
    invoke-static {v5, v3}, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->w(Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;I)V

    .line 69
    .line 70
    .line 71
    sget-object v3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 72
    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v6, "polling #"

    .line 79
    .line 80
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v6, "/4 deeplink("

    .line 87
    .line 88
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const/16 v6, 0x29

    .line 95
    .line 96
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    const-string v6, "CampaignNewTag"

    .line 104
    .line 105
    invoke-virtual {v3, v6, v5}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    if-eqz v4, :cond_5

    .line 109
    .line 110
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-nez v3, :cond_4

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$startPolling$1;->j:Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;

    .line 118
    .line 119
    invoke-static {p1, v4}, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->u(Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$startPolling$1;->j:Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;

    .line 123
    .line 124
    invoke-static {p1}, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->v(Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;)V

    .line 125
    .line 126
    .line 127
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 128
    .line 129
    return-object p1

    .line 130
    :cond_5
    :goto_1
    if-lt p1, v1, :cond_6

    .line 131
    .line 132
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$startPolling$1;->j:Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;

    .line 133
    .line 134
    const-string v4, "Timeout:deeplink is null"

    .line 135
    .line 136
    invoke-static {v3, v4}, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->t(Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$startPolling$1;->j:Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;

    .line 140
    .line 141
    invoke-static {v3}, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->v(Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;)V

    .line 142
    .line 143
    .line 144
    :cond_6
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$startPolling$1;->j:Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;

    .line 145
    .line 146
    invoke-static {v3}, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->q(Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;)Z

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    if-eqz v3, :cond_2

    .line 151
    .line 152
    if-ge p1, v1, :cond_2

    .line 153
    .line 154
    iput p1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$startPolling$1;->h:I

    .line 155
    .line 156
    iput v2, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$startPolling$1;->i:I

    .line 157
    .line 158
    const-wide/16 v3, 0x3e8

    .line 159
    .line 160
    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->b(JLrs/c;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    if-ne v1, v0, :cond_2

    .line 165
    .line 166
    return-object v0

    .line 167
    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 168
    .line 169
    return-object p1
.end method
