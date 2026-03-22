.class final Lcom/startshorts/androidplayer/repo/account/AccountRepo$createTourist$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AccountRepo.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/account/AccountRepo;->W(Ljava/lang/String;)V
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
    c = "com.startshorts.androidplayer.repo.account.AccountRepo$createTourist$1"
    f = "AccountRepo.kt"
    l = {
        0x1f7
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:I

.field final synthetic k:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/account/AccountRepo$createTourist$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$createTourist$1;->k:Ljava/lang/String;

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
    new-instance p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo$createTourist$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$createTourist$1;->k:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo$createTourist$1;-><init>(Ljava/lang/String;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo$createTourist$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo$createTourist$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo$createTourist$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo$createTourist$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$createTourist$1;->j:I

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$createTourist$1;->i:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Ljava/lang/String;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$createTourist$1;->h:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    check-cast p1, Lkotlin/Result;

    .line 24
    .line 25
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    goto :goto_2

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 42
    .line 43
    const-string v1, "DeviceUtil"

    .line 44
    .line 45
    const-string v3, "createTourist getDeviceId()"

    .line 46
    .line 47
    invoke-virtual {p1, v1, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->n()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget-object p1, p0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$createTourist$1;->k:Ljava/lang/String;

    .line 57
    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_2

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget-object p1, p0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$createTourist$1;->k:Ljava/lang/String;

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    :goto_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    :goto_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    sget-object v3, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 82
    .line 83
    invoke-static {v3}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->g(Lcom/startshorts/androidplayer/repo/account/AccountRepo;)Lcom/startshorts/androidplayer/repo/account/AccountRemoteDS;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    iput-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$createTourist$1;->h:Ljava/lang/Object;

    .line 88
    .line 89
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$createTourist$1;->i:Ljava/lang/Object;

    .line 90
    .line 91
    iput v2, p0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$createTourist$1;->j:I

    .line 92
    .line 93
    invoke-virtual {v3, v1, p1, p0}, Lcom/startshorts/androidplayer/repo/account/AccountRemoteDS;->a(Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    if-ne v2, v0, :cond_4

    .line 98
    .line 99
    return-object v0

    .line 100
    :cond_4
    move-object v0, p1

    .line 101
    move-object p1, v2

    .line 102
    :goto_2
    const/4 v2, 0x0

    .line 103
    invoke-static {v2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->j(Z)V

    .line 104
    .line 105
    .line 106
    sget-object v3, Lcom/startshorts/androidplayer/manager/account/AccountManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountManager;

    .line 107
    .line 108
    invoke-virtual {v3, v2}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->t(Z)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v2}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->s(Z)V

    .line 112
    .line 113
    .line 114
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_5

    .line 119
    .line 120
    move-object v2, p1

    .line 121
    check-cast v2, Lcom/startshorts/androidplayer/bean/account/RegisterTouristAccountResult;

    .line 122
    .line 123
    sget-object v3, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 124
    .line 125
    invoke-static {v3, v2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->i(Lcom/startshorts/androidplayer/repo/account/AccountRepo;Lcom/startshorts/androidplayer/bean/account/RegisterTouristAccountResult;)V

    .line 126
    .line 127
    .line 128
    sget-object v4, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->a:Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;

    .line 129
    .line 130
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->k(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-virtual {v4, v3}, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->l(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    if-eqz v2, :cond_5

    .line 145
    .line 146
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/RegisterTouristAccountResult;->getUserResponse()Lcom/startshorts/androidplayer/bean/account/Account;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->isRegisterCodeInitialized()Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    if-nez v2, :cond_5

    .line 155
    .line 156
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 157
    .line 158
    new-instance v5, Landroid/os/Bundle;

    .line 159
    .line 160
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 161
    .line 162
    .line 163
    const-string v2, "custom_device_id"

    .line 164
    .line 165
    invoke-virtual {v5, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    const-string v1, "seq"

    .line 169
    .line 170
    invoke-virtual {v5, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 174
    .line 175
    const/4 v8, 0x4

    .line 176
    const/4 v9, 0x0

    .line 177
    const-string v4, "register_code_null"

    .line 178
    .line 179
    const-wide/16 v6, 0x0

    .line 180
    .line 181
    invoke-static/range {v3 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    :cond_5
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    if-eqz p1, :cond_6

    .line 189
    .line 190
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 191
    .line 192
    invoke-static {p1}, Ljk/z;->a(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->h(Lcom/startshorts/androidplayer/repo/account/AccountRepo;Lcom/startshorts/androidplayer/bean/exception/ResponseException;)V

    .line 197
    .line 198
    .line 199
    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 200
    .line 201
    return-object p1
.end method
