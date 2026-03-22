.class final Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FirebaseAuthManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;->E(Lcom/hades/aar/auth/base/AuthType;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$a;
    }
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
    c = "com.startshorts.androidplayer.manager.auth.FirebaseAuthManager$login$1"
    f = "FirebaseAuthManager.kt"
    l = {
        0x90,
        0x9b,
        0xb1
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFirebaseAuthManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirebaseAuthManager.kt\ncom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1\n+ 2 ApiBuilder.kt\ncom/startshorts/androidplayer/manager/api/base/ApiBuilderKt\n*L\n1#1,378:1\n125#2,13:379\n*S KotlinDebug\n*F\n+ 1 FirebaseAuthManager.kt\ncom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1\n*L\n175#1:379,13\n*E\n"
    }
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:I

.field final synthetic j:Lcom/hades/aar/auth/base/AuthType;

.field final synthetic k:Lcom/startshorts/androidplayer/bean/account/Account;

.field final synthetic l:Ljava/lang/String;

.field final synthetic m:Ljava/lang/String;

.field final synthetic n:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;


# direct methods
.method constructor <init>(Lcom/hades/aar/auth/base/AuthType;Lcom/startshorts/androidplayer/bean/account/Account;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hades/aar/auth/base/AuthType;",
            "Lcom/startshorts/androidplayer/bean/account/Account;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1;->j:Lcom/hades/aar/auth/base/AuthType;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1;->k:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1;->l:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1;->m:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1;->n:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 7
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
    new-instance p1, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1;->j:Lcom/hades/aar/auth/base/AuthType;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1;->k:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1;->l:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1;->m:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1;->n:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1;-><init>(Lcom/hades/aar/auth/base/AuthType;Lcom/startshorts/androidplayer/bean/account/Account;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;Lrs/c;)V

    .line 16
    .line 17
    .line 18
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1;->i:I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    if-eqz v1, :cond_4

    .line 12
    .line 13
    if-eq v1, v5, :cond_2

    .line 14
    .line 15
    if-eq v1, v3, :cond_1

    .line 16
    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto/16 :goto_6

    .line 23
    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1;->h:Ljava/lang/Object;

    .line 33
    .line 34
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_4

    .line 38
    .line 39
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    check-cast p1, Lkotlin/Result;

    .line 43
    .line 44
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :cond_3
    move-object v1, p1

    .line 49
    goto :goto_3

    .line 50
    :cond_4
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    sget-object p1, Lhk/b;->a:Lhk/b;

    .line 54
    .line 55
    invoke-virtual {p1}, Lhk/b;->d()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1;->j:Lcom/hades/aar/auth/base/AuthType;

    .line 60
    .line 61
    sget-object v1, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$a;->$EnumSwitchMapping$0:[I

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    aget p1, v1, p1

    .line 68
    .line 69
    const/16 v1, 0x64

    .line 70
    .line 71
    if-eq p1, v5, :cond_6

    .line 72
    .line 73
    if-eq p1, v3, :cond_5

    .line 74
    .line 75
    const/16 p1, 0x14

    .line 76
    .line 77
    :goto_0
    move v10, p1

    .line 78
    goto :goto_1

    .line 79
    :cond_5
    move v10, v1

    .line 80
    goto :goto_1

    .line 81
    :cond_6
    const/16 p1, 0xa

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :goto_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1;->j:Lcom/hades/aar/auth/base/AuthType;

    .line 85
    .line 86
    sget-object v6, Lcom/hades/aar/auth/base/AuthType;->HUAWEI:Lcom/hades/aar/auth/base/AuthType;

    .line 87
    .line 88
    if-ne p1, v6, :cond_7

    .line 89
    .line 90
    move v9, v1

    .line 91
    goto :goto_2

    .line 92
    :cond_7
    const/16 p1, 0x3e8

    .line 93
    .line 94
    move v9, p1

    .line 95
    :goto_2
    new-instance p1, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 96
    .line 97
    invoke-direct {p1}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    const/4 v1, 0x0

    .line 101
    invoke-static {p1, v1, v5, v4}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->z(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;ZILjava/lang/Object;)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    new-instance v1, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$1;

    .line 106
    .line 107
    iget-object v7, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1;->k:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 108
    .line 109
    iget-object v11, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1;->l:Ljava/lang/String;

    .line 110
    .line 111
    iget-object v12, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1;->m:Ljava/lang/String;

    .line 112
    .line 113
    const/4 v13, 0x0

    .line 114
    move-object v6, v1

    .line 115
    invoke-direct/range {v6 .. v13}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$1;-><init>(Lcom/startshorts/androidplayer/bean/account/Account;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 116
    .line 117
    .line 118
    iput v5, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1;->i:I

    .line 119
    .line 120
    invoke-virtual {p1, v1, p0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    if-ne p1, v0, :cond_3

    .line 125
    .line 126
    return-object v0

    .line 127
    :goto_3
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1;->n:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 128
    .line 129
    iget-object v5, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1;->j:Lcom/hades/aar/auth/base/AuthType;

    .line 130
    .line 131
    invoke-static {v1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    if-eqz v6, :cond_9

    .line 136
    .line 137
    move-object v6, v1

    .line 138
    check-cast v6, Lcom/startshorts/androidplayer/bean/auth/LoginResult;

    .line 139
    .line 140
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    new-instance v8, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$2$1;

    .line 145
    .line 146
    invoke-direct {v8, v6, p1, v5, v4}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$2$1;-><init>(Lcom/startshorts/androidplayer/bean/auth/LoginResult;Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;Lcom/hades/aar/auth/base/AuthType;Lrs/c;)V

    .line 147
    .line 148
    .line 149
    iput-object v1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1;->h:Ljava/lang/Object;

    .line 150
    .line 151
    iput v3, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1;->i:I

    .line 152
    .line 153
    invoke-static {v7, v8, p0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    if-ne p1, v0, :cond_8

    .line 158
    .line 159
    return-object v0

    .line 160
    :cond_8
    :goto_4
    sget-object p1, Lng/e;->a:Lng/e;

    .line 161
    .line 162
    invoke-virtual {p1}, Lng/e;->e()V

    .line 163
    .line 164
    .line 165
    :cond_9
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1;->n:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 166
    .line 167
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1;->j:Lcom/hades/aar/auth/base/AuthType;

    .line 168
    .line 169
    invoke-static {v1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    if-eqz v5, :cond_c

    .line 174
    .line 175
    instance-of v6, v5, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 176
    .line 177
    if-eqz v6, :cond_a

    .line 178
    .line 179
    move-object v6, v5

    .line 180
    check-cast v6, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_a
    move-object v6, v4

    .line 184
    :goto_5
    if-nez v6, :cond_b

    .line 185
    .line 186
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 187
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    const-string v1, "onResponseFailure exception -> "

    .line 194
    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string v1, ", exception must not be null"

    .line 206
    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    const-string v1, "ApiBuilder"

    .line 215
    .line 216
    invoke-virtual {p1, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    goto :goto_6

    .line 220
    :cond_b
    sget-object v5, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 221
    .line 222
    new-instance v7, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    const-string v8, "login failed -> "

    .line 228
    .line 229
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->getMessage()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v8

    .line 236
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v7

    .line 243
    const-string v8, "FirebaseAuthManager"

    .line 244
    .line 245
    invoke-virtual {v5, v8, v7}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    new-instance v7, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$3$1;

    .line 253
    .line 254
    invoke-direct {v7, p1, v3, v6, v4}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1$3$1;-><init>(Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;Lcom/hades/aar/auth/base/AuthType;Lcom/startshorts/androidplayer/bean/exception/ResponseException;Lrs/c;)V

    .line 255
    .line 256
    .line 257
    iput-object v1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1;->h:Ljava/lang/Object;

    .line 258
    .line 259
    iput v2, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1;->i:I

    .line 260
    .line 261
    invoke-static {v5, v7, p0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    if-ne p1, v0, :cond_c

    .line 266
    .line 267
    return-object v0

    .line 268
    :cond_c
    :goto_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 269
    .line 270
    return-object p1
.end method
