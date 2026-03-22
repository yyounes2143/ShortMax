.class final Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PhoneAuthViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->U(Ljava/lang/String;Ljava/lang/String;)V
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
    c = "com.startshorts.androidplayer.viewmodel.auth.PhoneAuthViewModel$sendOTP$1"
    f = "PhoneAuthViewModel.kt"
    l = {
        0x98,
        0x9a,
        0xa4
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:Ljava/lang/Object;

.field k:Ljava/lang/Object;

.field l:Ljava/lang/Object;

.field m:I

.field final synthetic n:Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

.field final synthetic o:Ljava/lang/String;

.field final synthetic p:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;->n:Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;->o:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;->p:Ljava/lang/String;

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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;->n:Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;->o:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;->p:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v7

    .line 7
    iget v0, v6, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;->m:I

    .line 8
    .line 9
    const/4 v8, 0x0

    .line 10
    const-string v9, ",mSendOtpCount="

    .line 11
    .line 12
    const/4 v10, 0x3

    .line 13
    const/4 v1, 0x2

    .line 14
    const/4 v11, 0x0

    .line 15
    const-string v12, ",token="

    .line 16
    .line 17
    const-string v13, ",phone="

    .line 18
    .line 19
    const/4 v14, 0x1

    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    if-eq v0, v14, :cond_2

    .line 23
    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    if-ne v0, v10, :cond_0

    .line 27
    .line 28
    iget-object v0, v6, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;->l:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Ljava/lang/String;

    .line 31
    .line 32
    iget-object v1, v6, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;->k:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v1, Ljava/lang/String;

    .line 35
    .line 36
    iget-object v2, v6, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;->j:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v2, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 39
    .line 40
    iget-object v3, v6, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;->i:Ljava/lang/Object;

    .line 41
    .line 42
    iget-object v4, v6, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;->h:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v4, Ljava/lang/String;

    .line 45
    .line 46
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_2

    .line 50
    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0

    .line 59
    :cond_1
    iget-object v0, v6, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;->h:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v0, Ljava/lang/String;

    .line 62
    .line 63
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    move-object/from16 v1, p1

    .line 67
    .line 68
    check-cast v1, Lkotlin/Result;

    .line 69
    .line 70
    invoke-virtual {v1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    move-object v4, v0

    .line 75
    move-object v3, v1

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    move-object/from16 v0, p1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    sget-object v0, Lwg/a;->a:Lwg/a;

    .line 87
    .line 88
    iput v14, v6, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;->m:I

    .line 89
    .line 90
    invoke-virtual {v0, v6}, Lwg/a;->a(Lrs/c;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-ne v0, v7, :cond_4

    .line 95
    .line 96
    return-object v7

    .line 97
    :cond_4
    :goto_0
    move-object v15, v0

    .line 98
    check-cast v15, Ljava/lang/String;

    .line 99
    .line 100
    iget-object v0, v6, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;->n:Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 101
    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v3, "sendOTP start -> areaCode="

    .line 108
    .line 109
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget-object v3, v6, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;->o:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget-object v3, v6, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;->p:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    iget-object v3, v6, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;->n:Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 135
    .line 136
    invoke-static {v3}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->C(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;)I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    sget-object v0, Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRepo;->a:Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRepo;

    .line 151
    .line 152
    iget-object v2, v6, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;->n:Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 153
    .line 154
    invoke-static {v2}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->C(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;)I

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    iget-object v2, v6, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;->o:Ljava/lang/String;

    .line 159
    .line 160
    iget-object v3, v6, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;->p:Ljava/lang/String;

    .line 161
    .line 162
    iput-object v15, v6, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;->h:Ljava/lang/Object;

    .line 163
    .line 164
    iput v1, v6, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;->m:I

    .line 165
    .line 166
    move-object v1, v2

    .line 167
    move-object v2, v3

    .line 168
    move-object v3, v15

    .line 169
    move-object/from16 v5, p0

    .line 170
    .line 171
    invoke-virtual/range {v0 .. v5}, Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRepo;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILrs/c;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    if-ne v0, v7, :cond_5

    .line 176
    .line 177
    return-object v7

    .line 178
    :cond_5
    move-object v3, v0

    .line 179
    move-object v4, v15

    .line 180
    :goto_1
    iget-object v2, v6, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;->n:Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 181
    .line 182
    iget-object v1, v6, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;->o:Ljava/lang/String;

    .line 183
    .line 184
    iget-object v0, v6, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;->p:Ljava/lang/String;

    .line 185
    .line 186
    invoke-static {v3}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    if-eqz v5, :cond_a

    .line 191
    .line 192
    move-object v5, v3

    .line 193
    check-cast v5, Lcom/startshorts/androidplayer/bean/auth/OTPSendResult;

    .line 194
    .line 195
    if-nez v5, :cond_6

    .line 196
    .line 197
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->L()Landroidx/lifecycle/MutableLiveData;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    new-instance v7, Lcom/startshorts/androidplayer/viewmodel/auth/f$e;

    .line 202
    .line 203
    const/16 v19, 0x4

    .line 204
    .line 205
    const/16 v20, 0x0

    .line 206
    .line 207
    const/16 v16, 0x0

    .line 208
    .line 209
    const-string v17, ""

    .line 210
    .line 211
    const/16 v18, 0x0

    .line 212
    .line 213
    move-object v15, v7

    .line 214
    invoke-direct/range {v15 .. v20}, Lcom/startshorts/androidplayer/viewmodel/auth/f$e;-><init>(Lcom/hades/aar/auth/base/AuthType;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 215
    .line 216
    .line 217
    invoke-static {v5, v7}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    new-instance v5, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .line 224
    .line 225
    const-string v7, "sendOTP failed-> message=null,areaCode="

    .line 226
    .line 227
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-static {v2}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->C(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;)I

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-virtual {v2, v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->f(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    goto/16 :goto_3

    .line 263
    .line 264
    :cond_6
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/auth/OTPSendResult;->getUseFireBaseMessage()Z

    .line 265
    .line 266
    .line 267
    move-result v9

    .line 268
    if-eqz v9, :cond_8

    .line 269
    .line 270
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->L()Landroidx/lifecycle/MutableLiveData;

    .line 271
    .line 272
    .line 273
    move-result-object v5

    .line 274
    sget-object v9, Lcom/startshorts/androidplayer/viewmodel/auth/f$a;->a:Lcom/startshorts/androidplayer/viewmodel/auth/f$a;

    .line 275
    .line 276
    invoke-static {v5, v9}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    invoke-static {v2, v14}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->J(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;Z)V

    .line 280
    .line 281
    .line 282
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 283
    .line 284
    .line 285
    move-result-object v5

    .line 286
    new-instance v9, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1$1$1;

    .line 287
    .line 288
    invoke-direct {v9, v2, v1, v0, v11}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1$1$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 289
    .line 290
    .line 291
    iput-object v4, v6, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;->h:Ljava/lang/Object;

    .line 292
    .line 293
    iput-object v3, v6, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;->i:Ljava/lang/Object;

    .line 294
    .line 295
    iput-object v2, v6, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;->j:Ljava/lang/Object;

    .line 296
    .line 297
    iput-object v1, v6, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;->k:Ljava/lang/Object;

    .line 298
    .line 299
    iput-object v0, v6, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;->l:Ljava/lang/Object;

    .line 300
    .line 301
    iput v10, v6, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;->m:I

    .line 302
    .line 303
    invoke-static {v5, v9, v6}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v5

    .line 307
    if-ne v5, v7, :cond_7

    .line 308
    .line 309
    return-object v7

    .line 310
    :cond_7
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .line 314
    .line 315
    const-string v7, "sendOTP start -> useFireBaseMessage=true,areaCode="

    .line 316
    .line 317
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-virtual {v2, v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    goto :goto_3

    .line 343
    :cond_8
    invoke-static {v2, v8}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->J(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;Z)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/auth/OTPSendResult;->isSuccess()Z

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    if-eqz v0, :cond_9

    .line 351
    .line 352
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->L()Landroidx/lifecycle/MutableLiveData;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/auth/f$f;

    .line 357
    .line 358
    invoke-direct {v1, v11}, Lcom/startshorts/androidplayer/viewmodel/auth/f$f;-><init>(Lcom/hades/aar/auth/base/AuthType;)V

    .line 359
    .line 360
    .line 361
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 362
    .line 363
    .line 364
    invoke-static {v2}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->C(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;)I

    .line 365
    .line 366
    .line 367
    move-result v0

    .line 368
    add-int/lit8 v1, v0, 0x1

    .line 369
    .line 370
    invoke-static {v2, v1}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->I(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;I)V

    .line 371
    .line 372
    .line 373
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 374
    .line 375
    .line 376
    goto :goto_3

    .line 377
    :cond_9
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->L()Landroidx/lifecycle/MutableLiveData;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/auth/f$e;

    .line 382
    .line 383
    const/16 v19, 0x4

    .line 384
    .line 385
    const/16 v20, 0x0

    .line 386
    .line 387
    const/16 v16, 0x0

    .line 388
    .line 389
    const-string v17, ""

    .line 390
    .line 391
    const/16 v18, 0x0

    .line 392
    .line 393
    move-object v15, v1

    .line 394
    invoke-direct/range {v15 .. v20}, Lcom/startshorts/androidplayer/viewmodel/auth/f$e;-><init>(Lcom/hades/aar/auth/base/AuthType;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 395
    .line 396
    .line 397
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 398
    .line 399
    .line 400
    :cond_a
    :goto_3
    iget-object v0, v6, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;->n:Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 401
    .line 402
    iget-object v1, v6, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;->o:Ljava/lang/String;

    .line 403
    .line 404
    iget-object v2, v6, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;->p:Ljava/lang/String;

    .line 405
    .line 406
    invoke-static {v3}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 407
    .line 408
    .line 409
    move-result-object v3

    .line 410
    if-eqz v3, :cond_d

    .line 411
    .line 412
    invoke-static {v3}, Ljk/z;->a(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 413
    .line 414
    .line 415
    move-result-object v5

    .line 416
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->isNetworkError()Z

    .line 417
    .line 418
    .line 419
    move-result v7

    .line 420
    if-nez v7, :cond_b

    .line 421
    .line 422
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->getCode()I

    .line 423
    .line 424
    .line 425
    move-result v5

    .line 426
    const/16 v7, 0x4e60

    .line 427
    .line 428
    if-eq v5, v7, :cond_b

    .line 429
    .line 430
    move v8, v14

    .line 431
    :cond_b
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->L()Landroidx/lifecycle/MutableLiveData;

    .line 432
    .line 433
    .line 434
    move-result-object v5

    .line 435
    new-instance v7, Lcom/startshorts/androidplayer/viewmodel/auth/f$e;

    .line 436
    .line 437
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v9

    .line 441
    invoke-direct {v7, v11, v9, v8}, Lcom/startshorts/androidplayer/viewmodel/auth/f$e;-><init>(Lcom/hades/aar/auth/base/AuthType;Ljava/lang/String;Z)V

    .line 442
    .line 443
    .line 444
    invoke-static {v5, v7}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 445
    .line 446
    .line 447
    if-eqz v8, :cond_c

    .line 448
    .line 449
    invoke-static {v0}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->C(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;)I

    .line 450
    .line 451
    .line 452
    move-result v5

    .line 453
    add-int/2addr v5, v14

    .line 454
    invoke-static {v0, v5}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->I(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;I)V

    .line 455
    .line 456
    .line 457
    :cond_c
    new-instance v5, Ljava/lang/StringBuilder;

    .line 458
    .line 459
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .line 461
    .line 462
    const-string v7, "sendOTP onFailure -> message=null,areaCode="

    .line 463
    .line 464
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    const-string v1, ",message="

    .line 483
    .line 484
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v1

    .line 491
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v1

    .line 498
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->f(Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    :cond_d
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 502
    .line 503
    return-object v0
.end method
