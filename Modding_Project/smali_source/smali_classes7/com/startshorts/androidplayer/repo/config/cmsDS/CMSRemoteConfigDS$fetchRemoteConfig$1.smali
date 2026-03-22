.class final Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CMSRemoteConfigDS.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;->c()V
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
    c = "com.startshorts.androidplayer.repo.config.cmsDS.CMSRemoteConfigDS$fetchRemoteConfig$1"
    f = "CMSRemoteConfigDS.kt"
    l = {
        0x30,
        0x3d
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCMSRemoteConfigDS.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CMSRemoteConfigDS.kt\ncom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,126:1\n216#2,2:127\n216#2,2:129\n*S KotlinDebug\n*F\n+ 1 CMSRemoteConfigDS.kt\ncom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1\n*L\n98#1:127,2\n101#1:129,2\n*E\n"
    }
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:I

.field final synthetic k:Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1;->k:Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;

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
    new-instance p1, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1;->k:Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1;-><init>(Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1;->j:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    if-eq v1, v3, :cond_1

    .line 13
    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1;->i:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1;->h:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    check-cast p1, Lkotlin/Result;

    .line 26
    .line 27
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    goto/16 :goto_8

    .line 32
    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 36
    .line 37
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    check-cast p1, Lkotlin/Result;

    .line 45
    .line 46
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :cond_2
    move-object v1, p1

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    sget-object p1, Lcom/startshorts/androidplayer/startup/GaidInitializer;->f:Lcom/startshorts/androidplayer/startup/GaidInitializer$Companion;

    .line 56
    .line 57
    iput v3, p0, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1;->j:I

    .line 58
    .line 59
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/startup/GaidInitializer$Companion;->a(Lrs/c;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-ne p1, v0, :cond_2

    .line 64
    .line 65
    return-object v0

    .line 66
    :goto_0
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 67
    .line 68
    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 69
    .line 70
    .line 71
    iget-object v5, p0, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1;->k:Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;

    .line 72
    .line 73
    invoke-static {v5}, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;->i(Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;)Lrg/a;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-virtual {v5}, Lrg/a;->a()Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    iput-object v5, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 82
    .line 83
    if-eqz v5, :cond_4

    .line 84
    .line 85
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;->getKeyValueMap()Ljava/util/Map;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    goto :goto_1

    .line 90
    :cond_4
    move-object v5, v4

    .line 91
    :goto_1
    if-eqz v5, :cond_5

    .line 92
    .line 93
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-eqz v5, :cond_7

    .line 98
    .line 99
    :cond_5
    iget-object v5, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v5, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;

    .line 102
    .line 103
    if-eqz v5, :cond_6

    .line 104
    .line 105
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;->getParamsConfigMap()Ljava/util/Map;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    goto :goto_2

    .line 110
    :cond_6
    move-object v5, v4

    .line 111
    :goto_2
    if-eqz v5, :cond_9

    .line 112
    .line 113
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-eqz v5, :cond_7

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_7
    iget-object v5, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v5, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;

    .line 123
    .line 124
    if-eqz v5, :cond_8

    .line 125
    .line 126
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;->getUpdateTime()Ljava/lang/Long;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    goto :goto_3

    .line 131
    :cond_8
    move-object v5, v4

    .line 132
    :goto_3
    if-nez v5, :cond_d

    .line 133
    .line 134
    :cond_9
    :goto_4
    sget-object v5, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 135
    .line 136
    iget-object v6, p0, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1;->k:Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;

    .line 137
    .line 138
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;->tag()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    new-instance v7, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    const-string v8, "queryCMSConfig -> cachedResult is invalid, cachedResult.configSize="

    .line 148
    .line 149
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    iget-object v8, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v8, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;

    .line 155
    .line 156
    if-eqz v8, :cond_a

    .line 157
    .line 158
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;->getKeyValueMap()Ljava/util/Map;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    if-eqz v8, :cond_a

    .line 163
    .line 164
    invoke-interface {v8}, Ljava/util/Map;->size()I

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    goto :goto_5

    .line 173
    :cond_a
    move-object v8, v4

    .line 174
    :goto_5
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v8, " , cachedResult.paramsSize="

    .line 178
    .line 179
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    iget-object v8, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v8, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;

    .line 185
    .line 186
    if-eqz v8, :cond_b

    .line 187
    .line 188
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;->getParamsConfigMap()Ljava/util/Map;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    if-eqz v8, :cond_b

    .line 193
    .line 194
    invoke-interface {v8}, Ljava/util/Map;->size()I

    .line 195
    .line 196
    .line 197
    move-result v8

    .line 198
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    goto :goto_6

    .line 203
    :cond_b
    move-object v8, v4

    .line 204
    :goto_6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string v8, " ,updateTime="

    .line 208
    .line 209
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    iget-object v8, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast v8, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;

    .line 215
    .line 216
    if-eqz v8, :cond_c

    .line 217
    .line 218
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;->getUpdateTime()Ljava/lang/Long;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    goto :goto_7

    .line 223
    :cond_c
    move-object v8, v4

    .line 224
    :goto_7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v7

    .line 231
    invoke-virtual {v5, v6, v7}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    iput-object v4, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 235
    .line 236
    :cond_d
    new-instance v5, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 237
    .line 238
    invoke-direct {v5}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;-><init>()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->n()Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    new-instance v6, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1$serverResult$1;

    .line 246
    .line 247
    invoke-direct {v6, p1, v4}, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1$serverResult$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lrs/c;)V

    .line 248
    .line 249
    .line 250
    iput-object v1, p0, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1;->h:Ljava/lang/Object;

    .line 251
    .line 252
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1;->i:Ljava/lang/Object;

    .line 253
    .line 254
    iput v2, p0, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1;->j:I

    .line 255
    .line 256
    invoke-virtual {v5, v6, p0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    if-ne v2, v0, :cond_e

    .line 261
    .line 262
    return-object v0

    .line 263
    :cond_e
    move-object v0, p1

    .line 264
    move-object p1, v2

    .line 265
    :goto_8
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 266
    .line 267
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 268
    .line 269
    .line 270
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 271
    .line 272
    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 273
    .line 274
    .line 275
    const-string v6, ""

    .line 276
    .line 277
    iput-object v6, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 278
    .line 279
    iget-object v6, p0, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1;->k:Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;

    .line 280
    .line 281
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v7

    .line 285
    const-string v8, "\ndeviceId=$"

    .line 286
    .line 287
    const-string v9, "\ngaid="

    .line 288
    .line 289
    const-string v10, "\nparamsSize="

    .line 290
    .line 291
    if-eqz v7, :cond_16

    .line 292
    .line 293
    move-object v7, p1

    .line 294
    check-cast v7, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;

    .line 295
    .line 296
    const/4 v11, 0x0

    .line 297
    if-eqz v7, :cond_f

    .line 298
    .line 299
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;->isUpdated()Ljava/lang/Boolean;

    .line 300
    .line 301
    .line 302
    move-result-object v12

    .line 303
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 304
    .line 305
    .line 306
    move-result-object v13

    .line 307
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v12

    .line 311
    goto :goto_9

    .line 312
    :cond_f
    move v12, v11

    .line 313
    :goto_9
    if-eqz v12, :cond_10

    .line 314
    .line 315
    iput-object v7, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 316
    .line 317
    sget-object v12, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 318
    .line 319
    invoke-virtual {v12}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 320
    .line 321
    .line 322
    move-result-wide v12

    .line 323
    invoke-static {v12, v13}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    .line 324
    .line 325
    .line 326
    move-result-object v12

    .line 327
    invoke-virtual {v7, v12}, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;->setUpdateTime(Ljava/lang/Long;)V

    .line 328
    .line 329
    .line 330
    invoke-static {v6}, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;->i(Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;)Lrg/a;

    .line 331
    .line 332
    .line 333
    move-result-object v6

    .line 334
    invoke-virtual {v6, v7}, Lrg/a;->b(Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;)V

    .line 335
    .line 336
    .line 337
    goto :goto_a

    .line 338
    :cond_10
    iget-object v6, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 339
    .line 340
    iput-object v6, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 341
    .line 342
    :goto_a
    new-instance v6, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .line 346
    .line 347
    const-string v12, "queryCMSConfig onSuccess -> isNewConfig="

    .line 348
    .line 349
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    if-eqz v7, :cond_11

    .line 353
    .line 354
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;->isUpdated()Ljava/lang/Boolean;

    .line 355
    .line 356
    .line 357
    move-result-object v11

    .line 358
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 359
    .line 360
    .line 361
    move-result-object v3

    .line 362
    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result v11

    .line 366
    :cond_11
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    const-string v3, ", \nconfigSize="

    .line 370
    .line 371
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    iget-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 375
    .line 376
    check-cast v3, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;

    .line 377
    .line 378
    if-eqz v3, :cond_12

    .line 379
    .line 380
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;->getKeyValueMap()Ljava/util/Map;

    .line 381
    .line 382
    .line 383
    move-result-object v3

    .line 384
    if-eqz v3, :cond_12

    .line 385
    .line 386
    invoke-interface {v3}, Ljava/util/Map;->size()I

    .line 387
    .line 388
    .line 389
    move-result v3

    .line 390
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 391
    .line 392
    .line 393
    move-result-object v3

    .line 394
    goto :goto_b

    .line 395
    :cond_12
    move-object v3, v4

    .line 396
    :goto_b
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    iget-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 403
    .line 404
    check-cast v3, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;

    .line 405
    .line 406
    if-eqz v3, :cond_13

    .line 407
    .line 408
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;->getParamsConfigMap()Ljava/util/Map;

    .line 409
    .line 410
    .line 411
    move-result-object v3

    .line 412
    if-eqz v3, :cond_13

    .line 413
    .line 414
    invoke-interface {v3}, Ljava/util/Map;->size()I

    .line 415
    .line 416
    .line 417
    move-result v3

    .line 418
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 419
    .line 420
    .line 421
    move-result-object v3

    .line 422
    goto :goto_c

    .line 423
    :cond_13
    move-object v3, v4

    .line 424
    :goto_c
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    const-string v3, "\nversion="

    .line 428
    .line 429
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    if-eqz v7, :cond_14

    .line 433
    .line 434
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;->getVersionData()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v3

    .line 438
    goto :goto_d

    .line 439
    :cond_14
    move-object v3, v4

    .line 440
    :goto_d
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    const-string v3, "\ncachedV="

    .line 444
    .line 445
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 449
    .line 450
    check-cast v3, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;

    .line 451
    .line 452
    if-eqz v3, :cond_15

    .line 453
    .line 454
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;->getVersionData()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v3

    .line 458
    goto :goto_e

    .line 459
    :cond_15
    move-object v3, v4

    .line 460
    :goto_e
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-static {v1}, Lkotlin/Result;->k(Ljava/lang/Object;)Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v3

    .line 470
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    sget-object v3, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 477
    .line 478
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->h()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v3

    .line 482
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v3

    .line 489
    iput-object v3, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 490
    .line 491
    :cond_16
    iget-object v3, p0, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1;->k:Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;

    .line 492
    .line 493
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 494
    .line 495
    .line 496
    move-result-object p1

    .line 497
    if-eqz p1, :cond_1a

    .line 498
    .line 499
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;->l()V

    .line 500
    .line 501
    .line 502
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 503
    .line 504
    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 505
    .line 506
    new-instance v3, Ljava/lang/StringBuilder;

    .line 507
    .line 508
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 509
    .line 510
    .line 511
    const-string v6, "queryCMSConfig onFailure then use cached cms data-> \nconfigSize="

    .line 512
    .line 513
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    iget-object v6, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 517
    .line 518
    check-cast v6, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;

    .line 519
    .line 520
    if-eqz v6, :cond_17

    .line 521
    .line 522
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;->getKeyValueMap()Ljava/util/Map;

    .line 523
    .line 524
    .line 525
    move-result-object v6

    .line 526
    if-eqz v6, :cond_17

    .line 527
    .line 528
    invoke-interface {v6}, Ljava/util/Map;->size()I

    .line 529
    .line 530
    .line 531
    move-result v6

    .line 532
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 533
    .line 534
    .line 535
    move-result-object v6

    .line 536
    goto :goto_f

    .line 537
    :cond_17
    move-object v6, v4

    .line 538
    :goto_f
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    iget-object v6, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 545
    .line 546
    check-cast v6, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;

    .line 547
    .line 548
    if-eqz v6, :cond_18

    .line 549
    .line 550
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;->getParamsConfigMap()Ljava/util/Map;

    .line 551
    .line 552
    .line 553
    move-result-object v6

    .line 554
    if-eqz v6, :cond_18

    .line 555
    .line 556
    invoke-interface {v6}, Ljava/util/Map;->size()I

    .line 557
    .line 558
    .line 559
    move-result v6

    .line 560
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 561
    .line 562
    .line 563
    move-result-object v6

    .line 564
    goto :goto_10

    .line 565
    :cond_18
    move-object v6, v4

    .line 566
    :goto_10
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    const-string v6, "\ncachedVersion="

    .line 570
    .line 571
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 575
    .line 576
    check-cast v0, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;

    .line 577
    .line 578
    if-eqz v0, :cond_19

    .line 579
    .line 580
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;->getVersionData()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v4

    .line 584
    :cond_19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    invoke-static {v1}, Lkotlin/Result;->k(Ljava/lang/Object;)Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v0

    .line 594
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 601
    .line 602
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->h()Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    const-string v0, "\nerror="

    .line 610
    .line 611
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object p1

    .line 618
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object p1

    .line 625
    iput-object p1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 626
    .line 627
    :cond_1a
    iget-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 628
    .line 629
    if-nez p1, :cond_1b

    .line 630
    .line 631
    iget-object p1, p0, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1;->k:Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;

    .line 632
    .line 633
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;->a()Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;

    .line 634
    .line 635
    .line 636
    move-result-object p1

    .line 637
    iget-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 638
    .line 639
    check-cast v0, Ljava/lang/String;

    .line 640
    .line 641
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;->c(Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    goto/16 :goto_15

    .line 645
    .line 646
    :cond_1b
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 647
    .line 648
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 649
    .line 650
    .line 651
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 652
    .line 653
    check-cast v0, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;

    .line 654
    .line 655
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;->getKeyValueMap()Ljava/util/Map;

    .line 656
    .line 657
    .line 658
    move-result-object v0

    .line 659
    const-wide/16 v3, 0x0

    .line 660
    .line 661
    if-eqz v0, :cond_1d

    .line 662
    .line 663
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1;->k:Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;

    .line 664
    .line 665
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 670
    .line 671
    .line 672
    move-result-object v0

    .line 673
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 674
    .line 675
    .line 676
    move-result v6

    .line 677
    if-eqz v6, :cond_1d

    .line 678
    .line 679
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 680
    .line 681
    .line 682
    move-result-object v6

    .line 683
    check-cast v6, Ljava/util/Map$Entry;

    .line 684
    .line 685
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    move-result-object v7

    .line 689
    check-cast v7, Ljava/lang/String;

    .line 690
    .line 691
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 692
    .line 693
    .line 694
    move-result-object v6

    .line 695
    check-cast v6, Ljava/lang/String;

    .line 696
    .line 697
    new-instance v8, Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;

    .line 698
    .line 699
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;->tag()Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v9

    .line 703
    iget-object v10, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 704
    .line 705
    check-cast v10, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;

    .line 706
    .line 707
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;->getUpdateTime()Ljava/lang/Long;

    .line 708
    .line 709
    .line 710
    move-result-object v10

    .line 711
    if-eqz v10, :cond_1c

    .line 712
    .line 713
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 714
    .line 715
    .line 716
    move-result-wide v10

    .line 717
    goto :goto_12

    .line 718
    :cond_1c
    move-wide v10, v3

    .line 719
    :goto_12
    invoke-direct {v8, v9, v6, v10, v11}, Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 720
    .line 721
    .line 722
    invoke-interface {p1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    .line 724
    .line 725
    goto :goto_11

    .line 726
    :cond_1d
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 727
    .line 728
    check-cast v0, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;

    .line 729
    .line 730
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;->getParamsConfigMap()Ljava/util/Map;

    .line 731
    .line 732
    .line 733
    move-result-object v0

    .line 734
    if-eqz v0, :cond_1f

    .line 735
    .line 736
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1;->k:Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;

    .line 737
    .line 738
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 739
    .line 740
    .line 741
    move-result-object v0

    .line 742
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 743
    .line 744
    .line 745
    move-result-object v0

    .line 746
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 747
    .line 748
    .line 749
    move-result v6

    .line 750
    if-eqz v6, :cond_1f

    .line 751
    .line 752
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 753
    .line 754
    .line 755
    move-result-object v6

    .line 756
    check-cast v6, Ljava/util/Map$Entry;

    .line 757
    .line 758
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 759
    .line 760
    .line 761
    move-result-object v7

    .line 762
    check-cast v7, Ljava/lang/String;

    .line 763
    .line 764
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 765
    .line 766
    .line 767
    move-result-object v6

    .line 768
    check-cast v6, Ljava/lang/String;

    .line 769
    .line 770
    new-instance v8, Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;

    .line 771
    .line 772
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;->tag()Ljava/lang/String;

    .line 773
    .line 774
    .line 775
    move-result-object v9

    .line 776
    iget-object v10, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 777
    .line 778
    check-cast v10, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;

    .line 779
    .line 780
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;->getUpdateTime()Ljava/lang/Long;

    .line 781
    .line 782
    .line 783
    move-result-object v10

    .line 784
    if-eqz v10, :cond_1e

    .line 785
    .line 786
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 787
    .line 788
    .line 789
    move-result-wide v10

    .line 790
    goto :goto_14

    .line 791
    :cond_1e
    move-wide v10, v3

    .line 792
    :goto_14
    invoke-direct {v8, v9, v6, v10, v11}, Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 793
    .line 794
    .line 795
    invoke-interface {p1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    .line 797
    .line 798
    goto :goto_13

    .line 799
    :cond_1f
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1;->k:Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;

    .line 800
    .line 801
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;->m(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 802
    .line 803
    .line 804
    iget-object p1, p0, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1;->k:Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;

    .line 805
    .line 806
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;->a()Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;

    .line 807
    .line 808
    .line 809
    move-result-object p1

    .line 810
    iget-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 811
    .line 812
    check-cast v0, Ljava/lang/String;

    .line 813
    .line 814
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;->e(Ljava/lang/String;)V

    .line 815
    .line 816
    .line 817
    :goto_15
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 818
    .line 819
    return-object p1
.end method
