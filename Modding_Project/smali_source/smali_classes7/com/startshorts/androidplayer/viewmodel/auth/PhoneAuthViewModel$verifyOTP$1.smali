.class final Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PhoneAuthViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->W(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    c = "com.startshorts.androidplayer.viewmodel.auth.PhoneAuthViewModel$verifyOTP$1"
    f = "PhoneAuthViewModel.kt"
    l = {
        0xc6,
        0xd4,
        0xe2
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->i:Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->j:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->k:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->l:Ljava/lang/String;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 6
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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->i:Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->j:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->k:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->l:Ljava/lang/String;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 14
    .line 15
    .line 16
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->h:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x3

    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    if-eq v1, v2, :cond_2

    .line 14
    .line 15
    if-eq v1, v4, :cond_1

    .line 16
    .line 17
    if-ne v1, v3, :cond_0

    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    check-cast p1, Lkotlin/Result;

    .line 23
    .line 24
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    goto/16 :goto_5

    .line 29
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
    check-cast p1, Lkotlin/Result;

    .line 42
    .line 43
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto/16 :goto_2

    .line 48
    .line 49
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_7

    .line 53
    .line 54
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->i:Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 58
    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v6, "verifyOTP start -> otp="

    .line 65
    .line 66
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v6, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->j:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v6, ",areaCode="

    .line 75
    .line 76
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v6, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->k:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v6, ",phone="

    .line 85
    .line 86
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v6, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->l:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v6, ",mUseFirebaseMessage="

    .line 95
    .line 96
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-object v6, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->i:Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 100
    .line 101
    invoke-static {v6}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->D(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;)Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v6, ",mAuthReason="

    .line 109
    .line 110
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget-object v6, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->i:Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 114
    .line 115
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->K()Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->i:Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 130
    .line 131
    invoke-static {p1}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->D(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;)Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    if-eqz p1, :cond_4

    .line 136
    .line 137
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1$1;

    .line 142
    .line 143
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->i:Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 144
    .line 145
    iget-object v4, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->j:Ljava/lang/String;

    .line 146
    .line 147
    invoke-direct {v1, v3, v4, v5}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;Ljava/lang/String;Lrs/c;)V

    .line 148
    .line 149
    .line 150
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->h:I

    .line 151
    .line 152
    invoke-static {p1, v1, p0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    if-ne p1, v0, :cond_12

    .line 157
    .line 158
    return-object v0

    .line 159
    :cond_4
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->i:Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 160
    .line 161
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->K()Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    sget-object v1, Lcom/startshorts/androidplayer/bean/auth/AuthReason;->LOGIN:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 166
    .line 167
    if-ne p1, v1, :cond_e

    .line 168
    .line 169
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 170
    .line 171
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a0()Lcom/startshorts/androidplayer/bean/account/Account;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    if-nez p1, :cond_5

    .line 176
    .line 177
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->i:Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 178
    .line 179
    const-string v0, "login failed -> AccountManager.getAccount() is null"

    .line 180
    .line 181
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->f(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->i:Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 185
    .line 186
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->L()Landroidx/lifecycle/MutableLiveData;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/auth/f$h;

    .line 191
    .line 192
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 193
    .line 194
    sget v2, Lcom/startshorts/androidplayer/R$string;->common_unknown_exception:I

    .line 195
    .line 196
    invoke-virtual {v1, v2}, Lfk/u;->d(I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->i:Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 201
    .line 202
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->K()Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-direct {v0, v1, v5, v2}, Lcom/startshorts/androidplayer/viewmodel/auth/f$h;-><init>(Ljava/lang/String;Lcom/hades/aar/auth/base/AuthType;Lcom/startshorts/androidplayer/bean/auth/AuthReason;)V

    .line 207
    .line 208
    .line 209
    invoke-static {p1, v0}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 213
    .line 214
    return-object p1

    .line 215
    :cond_5
    sget-object v1, Lhk/b;->a:Lhk/b;

    .line 216
    .line 217
    invoke-virtual {v1}, Lhk/b;->d()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    sget-object v6, Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRepo;->a:Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRepo;

    .line 222
    .line 223
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/account/Account;->getRegisterCode()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    const-string v3, ""

    .line 228
    .line 229
    if-nez v2, :cond_6

    .line 230
    .line 231
    move-object v7, v3

    .line 232
    goto :goto_0

    .line 233
    :cond_6
    move-object v7, v2

    .line 234
    :goto_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/account/Account;->getUserCode()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v8

    .line 238
    if-nez v1, :cond_7

    .line 239
    .line 240
    move-object v9, v3

    .line 241
    goto :goto_1

    .line 242
    :cond_7
    move-object v9, v1

    .line 243
    :goto_1
    iget-object v10, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->j:Ljava/lang/String;

    .line 244
    .line 245
    new-instance p1, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .line 249
    .line 250
    const/16 v1, 0x2b

    .line 251
    .line 252
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->k:Ljava/lang/String;

    .line 256
    .line 257
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v11

    .line 264
    iget-object v12, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->l:Ljava/lang/String;

    .line 265
    .line 266
    iput v4, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->h:I

    .line 267
    .line 268
    move-object v13, p0

    .line 269
    invoke-virtual/range {v6 .. v13}, Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRepo;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    if-ne p1, v0, :cond_8

    .line 274
    .line 275
    return-object v0

    .line 276
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->i:Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 277
    .line 278
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->j:Ljava/lang/String;

    .line 279
    .line 280
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    if-eqz v2, :cond_d

    .line 285
    .line 286
    move-object v2, p1

    .line 287
    check-cast v2, Lcom/startshorts/androidplayer/bean/auth/LoginResult;

    .line 288
    .line 289
    if-eqz v2, :cond_c

    .line 290
    .line 291
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/auth/LoginResult;->getToken()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    if-eqz v3, :cond_c

    .line 296
    .line 297
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 298
    .line 299
    .line 300
    move-result v3

    .line 301
    if-nez v3, :cond_9

    .line 302
    .line 303
    goto :goto_3

    .line 304
    :cond_9
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/auth/LoginResult;->getUserResponse()Lcom/startshorts/androidplayer/bean/account/Account;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    if-nez v3, :cond_a

    .line 309
    .line 310
    goto :goto_3

    .line 311
    :cond_a
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/auth/LoginResult;->getToken()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/auth/LoginResult;->getUserResponse()Lcom/startshorts/androidplayer/bean/account/Account;

    .line 316
    .line 317
    .line 318
    move-result-object v6

    .line 319
    invoke-static {v0, v3, v6, v1}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->F(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/account/Account;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/auth/LoginResult;->getNotification()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    if-eqz v0, :cond_d

    .line 327
    .line 328
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    if-nez v0, :cond_b

    .line 333
    .line 334
    goto :goto_4

    .line 335
    :cond_b
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 336
    .line 337
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/auth/LoginResult;->getNotification()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    const/4 v2, 0x0

    .line 342
    invoke-static {v0, v1, v2, v4, v5}, Lfk/u;->k(Lfk/u;Ljava/lang/String;IILjava/lang/Object;)V

    .line 343
    .line 344
    .line 345
    goto :goto_4

    .line 346
    :cond_c
    :goto_3
    sget-object v2, Lfk/u;->a:Lfk/u;

    .line 347
    .line 348
    sget v3, Lcom/startshorts/androidplayer/R$string;->common_unknown_exception:I

    .line 349
    .line 350
    invoke-virtual {v2, v3}, Lfk/u;->d(I)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    invoke-static {v0, v2, v1}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->E(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    :cond_d
    :goto_4
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->i:Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 358
    .line 359
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->j:Ljava/lang/String;

    .line 360
    .line 361
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    if-eqz v2, :cond_11

    .line 366
    .line 367
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    invoke-static {v0, v2, v1}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->E(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    goto/16 :goto_6

    .line 375
    .line 376
    :cond_e
    sget-object p1, Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRepo;->a:Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRepo;

    .line 377
    .line 378
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->j:Ljava/lang/String;

    .line 379
    .line 380
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->k:Ljava/lang/String;

    .line 381
    .line 382
    iget-object v4, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->l:Ljava/lang/String;

    .line 383
    .line 384
    iput v3, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->h:I

    .line 385
    .line 386
    invoke-virtual {p1, v1, v2, v4, p0}, Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRepo;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object p1

    .line 390
    if-ne p1, v0, :cond_f

    .line 391
    .line 392
    return-object v0

    .line 393
    :cond_f
    :goto_5
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->i:Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 394
    .line 395
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->j:Ljava/lang/String;

    .line 396
    .line 397
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result v2

    .line 401
    if-eqz v2, :cond_10

    .line 402
    .line 403
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->L()Landroidx/lifecycle/MutableLiveData;

    .line 404
    .line 405
    .line 406
    move-result-object v2

    .line 407
    new-instance v4, Lcom/startshorts/androidplayer/viewmodel/auth/f$i;

    .line 408
    .line 409
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->K()Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 410
    .line 411
    .line 412
    move-result-object v6

    .line 413
    invoke-direct {v4, v5, v6}, Lcom/startshorts/androidplayer/viewmodel/auth/f$i;-><init>(Lcom/hades/aar/auth/base/AuthType;Lcom/startshorts/androidplayer/bean/auth/AuthReason;)V

    .line 414
    .line 415
    .line 416
    invoke-static {v2, v4}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 417
    .line 418
    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    .line 420
    .line 421
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 422
    .line 423
    .line 424
    const-string v4, "verifyOTP succeed-> "

    .line 425
    .line 426
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    const-string v4, " otp="

    .line 433
    .line 434
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    new-instance v1, Lcom/startshorts/androidplayer/bean/eventbus/BindSuccessEvent;

    .line 452
    .line 453
    invoke-direct {v1, v3}, Lcom/startshorts/androidplayer/bean/eventbus/BindSuccessEvent;-><init>(I)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v0, v1}, Lau/c;->l(Ljava/lang/Object;)V

    .line 457
    .line 458
    .line 459
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 460
    .line 461
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->V0()Lkotlinx/coroutines/r;

    .line 462
    .line 463
    .line 464
    :cond_10
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->i:Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 465
    .line 466
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;->j:Ljava/lang/String;

    .line 467
    .line 468
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 469
    .line 470
    .line 471
    move-result-object v2

    .line 472
    if-eqz v2, :cond_11

    .line 473
    .line 474
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->L()Landroidx/lifecycle/MutableLiveData;

    .line 475
    .line 476
    .line 477
    move-result-object v3

    .line 478
    new-instance v4, Lcom/startshorts/androidplayer/viewmodel/auth/f$h;

    .line 479
    .line 480
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v2

    .line 484
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->K()Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 485
    .line 486
    .line 487
    move-result-object v6

    .line 488
    invoke-direct {v4, v2, v5, v6}, Lcom/startshorts/androidplayer/viewmodel/auth/f$h;-><init>(Ljava/lang/String;Lcom/hades/aar/auth/base/AuthType;Lcom/startshorts/androidplayer/bean/auth/AuthReason;)V

    .line 489
    .line 490
    .line 491
    invoke-static {v3, v4}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 492
    .line 493
    .line 494
    new-instance v2, Ljava/lang/StringBuilder;

    .line 495
    .line 496
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 497
    .line 498
    .line 499
    const-string v3, "verifyOTP onFailure -> otp="

    .line 500
    .line 501
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v1

    .line 511
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->f(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    :cond_11
    :goto_6
    invoke-static {p1}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    .line 515
    .line 516
    .line 517
    :cond_12
    :goto_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 518
    .line 519
    return-object p1
.end method
