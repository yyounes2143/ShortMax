.class final Lcom/startshorts/androidplayer/manager/ad/AdManager$preloadAd$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AdManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/ad/AdManager;->a0(Lcom/startshorts/androidplayer/bean/ad/AdScene;)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.manager.ad.AdManager$preloadAd$1"
    f = "AdManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAdManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdManager.kt\ncom/startshorts/androidplayer/manager/ad/AdManager$preloadAd$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1973:1\n774#2:1974\n865#2,2:1975\n*S KotlinDebug\n*F\n+ 1 AdManager.kt\ncom/startshorts/androidplayer/manager/ad/AdManager$preloadAd$1\n*L\n357#1:1974\n357#1:1975,2\n*E\n"
    }
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/bean/ad/AdScene;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/bean/ad/AdScene;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/ad/AdScene;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/ad/AdManager$preloadAd$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$preloadAd$1;->i:Lcom/startshorts/androidplayer/bean/ad/AdScene;

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
    new-instance p1, Lcom/startshorts/androidplayer/manager/ad/AdManager$preloadAd$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$preloadAd$1;->i:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/manager/ad/AdManager$preloadAd$1;-><init>(Lcom/startshorts/androidplayer/bean/ad/AdScene;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/ad/AdManager$preloadAd$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/ad/AdManager$preloadAd$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/ad/AdManager$preloadAd$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/ad/AdManager$preloadAd$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$preloadAd$1;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_f

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;->INSTANCE:Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;->getPreloadAdEnable()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const-string v0, "AdManager"

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v2, "preloadAd failed,preloadAdEnable=false,adScene="

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$preloadAd$1;->i:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 46
    .line 47
    return-object p1

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$preloadAd$1;->i:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 49
    .line 50
    sget-object v1, Lcom/startshorts/androidplayer/bean/ad/AdScene;->REWARD:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 51
    .line 52
    if-ne p1, v1, :cond_1

    .line 53
    .line 54
    sget-object p1, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->m(Lcom/startshorts/androidplayer/manager/ad/AdManager;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 63
    .line 64
    const-string v1, "Block Reward Video Ad for Xiaomi Channel"

    .line 65
    .line 66
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 70
    .line 71
    return-object p1

    .line 72
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$preloadAd$1;->i:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 73
    .line 74
    if-eq p1, v1, :cond_3

    .line 75
    .line 76
    sget-object v1, Lcom/startshorts/androidplayer/bean/ad/AdScene;->NATIVE:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 77
    .line 78
    const-string v2, "preloadAd "

    .line 79
    .line 80
    if-eq p1, v1, :cond_2

    .line 81
    .line 82
    sget-object v1, Lcom/startshorts/androidplayer/bean/ad/AdScene;->BANNER:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 83
    .line 84
    if-eq p1, v1, :cond_2

    .line 85
    .line 86
    sget-object p1, Lcom/startshorts/androidplayer/manager/configure/ad/d;->a:Lcom/startshorts/androidplayer/manager/configure/ad/d;

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/configure/ad/d;->a()Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_2

    .line 93
    .line 94
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 95
    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$preloadAd$1;->i:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v2, " failed,adSceneEnable=false"

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 122
    .line 123
    return-object p1

    .line 124
    :cond_2
    sget-object p1, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;

    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;->l()Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure$a;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$preloadAd$1;->i:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 131
    .line 132
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure$a;->b(Lcom/startshorts/androidplayer/bean/ad/AdScene;)Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-nez p1, :cond_3

    .line 137
    .line 138
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 139
    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$preloadAd$1;->i:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 149
    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v2, " failed,adSwitchValue=false"

    .line 154
    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 166
    .line 167
    return-object p1

    .line 168
    :cond_3
    sget-object p1, Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;

    .line 169
    .line 170
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$preloadAd$1;->i:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 171
    .line 172
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;->f(Lcom/startshorts/androidplayer/bean/ad/AdScene;)Ljava/util/List;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_4

    .line 181
    .line 182
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 183
    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    const-string v3, "preloadAd failed,adUnits is empty,asScene="

    .line 190
    .line 191
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$preloadAd$1;->i:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 195
    .line 196
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string v3, ",adUnits="

    .line 200
    .line 201
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-virtual {v1, v0, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 215
    .line 216
    return-object p1

    .line 217
    :cond_4
    sget-object v1, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 218
    .line 219
    invoke-static {v1}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->r(Lcom/startshorts/androidplayer/manager/ad/AdManager;)V

    .line 220
    .line 221
    .line 222
    sget-object v1, Lcom/startshorts/androidplayer/bean/configure/AdmobPreloadConfig;->Companion:Lcom/startshorts/androidplayer/bean/configure/AdmobPreloadConfig$Companion;

    .line 223
    .line 224
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/configure/AdmobPreloadConfig$Companion;->getValue()Lcom/startshorts/androidplayer/bean/configure/AdmobPreloadConfig;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    const/4 v3, 0x0

    .line 229
    const/4 v4, 0x1

    .line 230
    if-eqz v2, :cond_6

    .line 231
    .line 232
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/configure/AdmobPreloadConfig;->getSwitch()Ljava/lang/Integer;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    if-nez v5, :cond_5

    .line 237
    .line 238
    goto :goto_0

    .line 239
    :cond_5
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 240
    .line 241
    .line 242
    move-result v5

    .line 243
    if-ne v5, v4, :cond_6

    .line 244
    .line 245
    move v5, v4

    .line 246
    goto :goto_1

    .line 247
    :cond_6
    :goto_0
    move v5, v3

    .line 248
    :goto_1
    iget-object v6, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$preloadAd$1;->i:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 249
    .line 250
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/ad/AdScene;->getValue()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v6

    .line 254
    if-eqz v2, :cond_7

    .line 255
    .line 256
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/configure/AdmobPreloadConfig;->getAdType()Ljava/util/List;

    .line 257
    .line 258
    .line 259
    move-result-object v7

    .line 260
    goto :goto_2

    .line 261
    :cond_7
    const/4 v7, 0x0

    .line 262
    :goto_2
    invoke-virtual {v1, v6, v7}, Lcom/startshorts/androidplayer/bean/configure/AdmobPreloadConfig$Companion;->isTypeAvailable(Ljava/lang/String;Ljava/util/List;)Z

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    move-object v6, p1

    .line 267
    check-cast v6, Ljava/lang/Iterable;

    .line 268
    .line 269
    new-instance v7, Ljava/util/ArrayList;

    .line 270
    .line 271
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .line 273
    .line 274
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 275
    .line 276
    .line 277
    move-result-object v6

    .line 278
    :cond_8
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 279
    .line 280
    .line 281
    move-result v8

    .line 282
    if-eqz v8, :cond_9

    .line 283
    .line 284
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v8

    .line 288
    move-object v9, v8

    .line 289
    check-cast v9, Lca/e;

    .line 290
    .line 291
    invoke-virtual {v9}, Lca/e;->j()Lcom/hades/aar/admanager/core/AdPriority;

    .line 292
    .line 293
    .line 294
    move-result-object v9

    .line 295
    sget-object v10, Lcom/hades/aar/admanager/core/AdPriority;->PRIORITY_LOW:Lcom/hades/aar/admanager/core/AdPriority;

    .line 296
    .line 297
    if-eq v9, v10, :cond_8

    .line 298
    .line 299
    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    goto :goto_3

    .line 303
    :cond_9
    if-eqz v5, :cond_a

    .line 304
    .line 305
    invoke-static {}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->l()Lcom/hades/aar/admanager/core/AdAggregatedSdk;

    .line 306
    .line 307
    .line 308
    move-result-object v5

    .line 309
    sget-object v6, Lcom/hades/aar/admanager/core/AdAggregatedSdk;->ADMOB:Lcom/hades/aar/admanager/core/AdAggregatedSdk;

    .line 310
    .line 311
    if-ne v5, v6, :cond_a

    .line 312
    .line 313
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 314
    .line 315
    .line 316
    move-result v5

    .line 317
    if-nez v5, :cond_a

    .line 318
    .line 319
    if-eqz v1, :cond_a

    .line 320
    .line 321
    move v5, v4

    .line 322
    goto :goto_4

    .line 323
    :cond_a
    move v5, v3

    .line 324
    :goto_4
    sget-object v6, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 325
    .line 326
    new-instance v8, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .line 330
    .line 331
    const-string v9, "preloadAd info shouldSkipPreload"

    .line 332
    .line 333
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    const-string v9, "\nadPreloadConfig="

    .line 340
    .line 341
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    const-string v2, "\nmLoaderType="

    .line 348
    .line 349
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-static {}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->l()Lcom/hades/aar/admanager/core/AdAggregatedSdk;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    const-string v2, "\npreAdUnits="

    .line 360
    .line 361
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    const-string v2, "\nisTypeAvailable="

    .line 368
    .line 369
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    invoke-virtual {v6, v0, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    if-eqz v5, :cond_b

    .line 383
    .line 384
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 385
    .line 386
    return-object p1

    .line 387
    :cond_b
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$preloadAd$1;->i:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 388
    .line 389
    sget-object v2, Lcom/startshorts/androidplayer/bean/ad/AdScene;->NATIVE:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 390
    .line 391
    if-ne v1, v2, :cond_d

    .line 392
    .line 393
    sget-object v1, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 394
    .line 395
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->M()Z

    .line 396
    .line 397
    .line 398
    move-result v1

    .line 399
    if-eqz v1, :cond_c

    .line 400
    .line 401
    const/4 v4, 0x3

    .line 402
    :cond_c
    sget-object v1, Lca/k;->a:Lca/k;

    .line 403
    .line 404
    sget-object v2, Lcom/hades/aar/admanager/core/AdFormat;->NATIVE:Lcom/hades/aar/admanager/core/AdFormat;

    .line 405
    .line 406
    filled-new-array {v2}, [Lcom/hades/aar/admanager/core/AdFormat;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    invoke-virtual {v1, v2}, Lca/k;->d([Lcom/hades/aar/admanager/core/AdFormat;)Ljava/util/List;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 415
    .line 416
    .line 417
    move-result v1

    .line 418
    sub-int/2addr v4, v1

    .line 419
    :cond_d
    move v1, v4

    .line 420
    new-instance v2, Ljava/lang/StringBuilder;

    .line 421
    .line 422
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    .line 424
    .line 425
    const-string v4, "preloadAd custom start asScene="

    .line 426
    .line 427
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    iget-object v4, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$preloadAd$1;->i:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 431
    .line 432
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    const-string v4, ",expectLoadSize="

    .line 436
    .line 437
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    invoke-virtual {v6, v0, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    if-lez v1, :cond_e

    .line 451
    .line 452
    move v0, v3

    .line 453
    :goto_5
    if-ge v0, v1, :cond_e

    .line 454
    .line 455
    sget-object v2, Lca/k;->a:Lca/k;

    .line 456
    .line 457
    const/4 v6, 0x2

    .line 458
    const/4 v7, 0x0

    .line 459
    const-wide/16 v4, 0x0

    .line 460
    .line 461
    move-object v3, p1

    .line 462
    invoke-static/range {v2 .. v7}, Lca/k;->k(Lca/k;Ljava/util/List;JILjava/lang/Object;)V

    .line 463
    .line 464
    .line 465
    add-int/lit8 v0, v0, 0x1

    .line 466
    .line 467
    goto :goto_5

    .line 468
    :cond_e
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 469
    .line 470
    return-object p1

    .line 471
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 472
    .line 473
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 474
    .line 475
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    throw p1
.end method
