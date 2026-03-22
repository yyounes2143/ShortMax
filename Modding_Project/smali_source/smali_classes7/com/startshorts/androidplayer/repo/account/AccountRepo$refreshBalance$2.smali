.class final Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshBalance$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AccountRepo.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/account/AccountRepo;->Y0(ZLandroid/content/Context;Lkotlin/jvm/functions/Function1;)V
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
    c = "com.startshorts.androidplayer.repo.account.AccountRepo$refreshBalance$2"
    f = "AccountRepo.kt"
    l = {
        0x25f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Z

.field final synthetic j:Landroid/content/Context;

.field final synthetic k:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/account/Account;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ZLandroid/content/Context;Lkotlin/jvm/functions/Function1;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/account/Account;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshBalance$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshBalance$2;->i:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshBalance$2;->j:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshBalance$2;->k:Lkotlin/jvm/functions/Function1;

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
    new-instance p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshBalance$2;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshBalance$2;->i:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshBalance$2;->j:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshBalance$2;->k:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshBalance$2;-><init>(ZLandroid/content/Context;Lkotlin/jvm/functions/Function1;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshBalance$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshBalance$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshBalance$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshBalance$2;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshBalance$2;->h:I

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
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshBalance$2;->i:Z

    .line 40
    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    invoke-static {}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->e()J

    .line 44
    .line 45
    .line 46
    move-result-wide v5

    .line 47
    sub-long v5, v3, v5

    .line 48
    .line 49
    const-wide/16 v7, 0x2710

    .line 50
    .line 51
    cmp-long p1, v5, v7

    .line 52
    .line 53
    if-gez p1, :cond_2

    .line 54
    .line 55
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 56
    .line 57
    return-object p1

    .line 58
    :cond_2
    invoke-static {v3, v4}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->k(J)V

    .line 59
    .line 60
    .line 61
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 62
    .line 63
    invoke-static {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->g(Lcom/startshorts/androidplayer/repo/account/AccountRepo;)Lcom/startshorts/androidplayer/repo/account/AccountRemoteDS;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshBalance$2;->j:Landroid/content/Context;

    .line 68
    .line 69
    iput v2, p0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshBalance$2;->h:I

    .line 70
    .line 71
    invoke-virtual {p1, v1, p0}, Lcom/startshorts/androidplayer/repo/account/AccountRemoteDS;->h(Landroid/content/Context;Lrs/c;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-ne p1, v0, :cond_3

    .line 76
    .line 77
    return-object v0

    .line 78
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshBalance$2;->k:Lkotlin/jvm/functions/Function1;

    .line 79
    .line 80
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_5

    .line 85
    .line 86
    move-object v1, p1

    .line 87
    check-cast v1, Lcom/startshorts/androidplayer/bean/account/Account;

    .line 88
    .line 89
    if-eqz v1, :cond_4

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/account/Account;->getUserCode()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    sget-object v3, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 96
    .line 97
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_4

    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/account/Account;->getCoins()I

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/account/Account;->getBonus()I

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    const/4 v7, 0x4

    .line 116
    const/4 v8, 0x0

    .line 117
    const/4 v6, 0x0

    .line 118
    invoke-static/range {v3 .. v8}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->w1(Lcom/startshorts/androidplayer/repo/account/AccountRepo;IIZILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-static {v1}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_4
    new-instance v1, Ljava/lang/Throwable;

    .line 134
    .line 135
    const-string v2, "refreshBalance failed"

    .line 136
    .line 137
    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-static {v1}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshBalance$2;->k:Lkotlin/jvm/functions/Function1;

    .line 156
    .line 157
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    if-eqz p1, :cond_6

    .line 162
    .line 163
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-static {p1}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 179
    .line 180
    return-object p1
.end method
