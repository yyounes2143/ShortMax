.class final Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FirebaseAuthManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.startshorts.androidplayer.manager.auth.FirebaseAuthManager$login$1$2$1"
    f = "FirebaseAuthManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/bean/auth/LoginResult;

.field final synthetic j:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

.field final synthetic k:Lcom/hades/aar/auth/base/AuthType;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/bean/auth/LoginResult;Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;Lcom/hades/aar/auth/base/AuthType;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/auth/LoginResult;",
            "Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;",
            "Lcom/hades/aar/auth/base/AuthType;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$2$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$2$1;->i:Lcom/startshorts/androidplayer/bean/auth/LoginResult;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$2$1;->j:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$2$1;->k:Lcom/hades/aar/auth/base/AuthType;

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
    new-instance p1, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$2$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$2$1;->i:Lcom/startshorts/androidplayer/bean/auth/LoginResult;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$2$1;->j:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$2$1;->k:Lcom/hades/aar/auth/base/AuthType;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$2$1;-><init>(Lcom/startshorts/androidplayer/bean/auth/LoginResult;Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;Lcom/hades/aar/auth/base/AuthType;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$2$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$2$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$2$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$2$1;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_6

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$2$1;->i:Lcom/startshorts/androidplayer/bean/auth/LoginResult;

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    if-eqz p1, :cond_4

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/auth/LoginResult;->getToken()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_4

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$2$1;->i:Lcom/startshorts/androidplayer/bean/auth/LoginResult;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/auth/LoginResult;->getUserResponse()Lcom/startshorts/androidplayer/bean/account/Account;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$2$1;->j:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$2$1;->k:Lcom/hades/aar/auth/base/AuthType;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$2$1;->i:Lcom/startshorts/androidplayer/bean/auth/LoginResult;

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/auth/LoginResult;->getToken()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$2$1;->i:Lcom/startshorts/androidplayer/bean/auth/LoginResult;

    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/auth/LoginResult;->getUserResponse()Lcom/startshorts/androidplayer/bean/account/Account;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-static {p1, v1, v2, v3}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;->x(Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;Lcom/hades/aar/auth/base/AuthType;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/account/Account;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$2$1;->i:Lcom/startshorts/androidplayer/bean/auth/LoginResult;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/auth/LoginResult;->getNotification()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_5

    .line 64
    .line 65
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-nez p1, :cond_2

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 73
    .line 74
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$2$1;->i:Lcom/startshorts/androidplayer/bean/auth/LoginResult;

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/auth/LoginResult;->getNotification()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const/4 v2, 0x0

    .line 81
    const/4 v3, 0x0

    .line 82
    invoke-static {p1, v1, v2, v0, v3}, Lfk/u;->k(Lfk/u;Ljava/lang/String;IILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    sget-object v4, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 86
    .line 87
    new-instance v6, Landroid/os/Bundle;

    .line 88
    .line 89
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string/jumbo p1, "type"

    .line 93
    .line 94
    .line 95
    const-string v0, "newbie_task"

    .line 96
    .line 97
    invoke-virtual {v6, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string/jumbo p1, "task_name"

    .line 101
    .line 102
    .line 103
    const-string v0, "facebook_login"

    .line 104
    .line 105
    invoke-virtual {v6, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sget-object p1, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->a:Lcom/startshorts/androidplayer/repo/config/ConfigRepo;

    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->t()Lcom/startshorts/androidplayer/bean/configure/ServerConfig;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    if-eqz p1, :cond_3

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/configure/ServerConfig;->getMetaLoginBonus()I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    goto :goto_0

    .line 121
    :cond_3
    const/16 p1, 0x64

    .line 122
    .line 123
    :goto_0
    const-string/jumbo v0, "tickets"

    .line 124
    .line 125
    .line 126
    invoke-virtual {v6, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 127
    .line 128
    .line 129
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 130
    .line 131
    const/4 v9, 0x4

    .line 132
    const/4 v10, 0x0

    .line 133
    const-string/jumbo v5, "task_finish"

    .line 134
    .line 135
    .line 136
    const-wide/16 v7, 0x0

    .line 137
    .line 138
    invoke-static/range {v4 .. v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_4
    :goto_1
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 143
    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string v2, "login failed -> invalid LoginResult("

    .line 150
    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$2$1;->i:Lcom/startshorts/androidplayer/bean/auth/LoginResult;

    .line 155
    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const/16 v2, 0x29

    .line 160
    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    const-string v2, "FirebaseAuthManager"

    .line 169
    .line 170
    invoke-virtual {p1, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$2$1;->j:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 174
    .line 175
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$2$1;->k:Lcom/hades/aar/auth/base/AuthType;

    .line 176
    .line 177
    sget-object v2, Lfk/u;->a:Lfk/u;

    .line 178
    .line 179
    sget v3, Lcom/startshorts/androidplayer/R$string;->common_unknown_exception:I

    .line 180
    .line 181
    invoke-virtual {v2, v3}, Lfk/u;->d(I)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    const-string/jumbo v3, "token or userResponse is null"

    .line 186
    .line 187
    .line 188
    invoke-static {p1, v1, v0, v2, v3}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;->w(Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;Lcom/hades/aar/auth/base/AuthType;ILjava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 192
    .line 193
    return-object p1

    .line 194
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 195
    .line 196
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 197
    .line 198
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw p1
.end method
