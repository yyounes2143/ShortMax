.class final Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$doWorkOnForeground$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AppLifecycleInitializer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;->p()Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.startup.AppLifecycleInitializer$doWorkOnForeground$1"
    f = "AppLifecycleInitializer.kt"
    l = {
        0x88
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:Z

.field i:I

.field final synthetic j:Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$doWorkOnForeground$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$doWorkOnForeground$1;->j:Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;

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
    new-instance p1, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$doWorkOnForeground$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$doWorkOnForeground$1;->j:Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$doWorkOnForeground$1;-><init>(Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$doWorkOnForeground$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$doWorkOnForeground$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$doWorkOnForeground$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$doWorkOnForeground$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$doWorkOnForeground$1;->i:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    if-ne v1, v4, :cond_0

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$doWorkOnForeground$1;->h:Z

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    sget-object p1, Lud/a;->a:Lud/a;

    .line 33
    .line 34
    invoke-virtual {p1, v3}, Lud/a;->d0(Z)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$doWorkOnForeground$1;->j:Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;

    .line 38
    .line 39
    const-string v1, "onForeground MemoryCacheManager.isConsumedCpsCheck = false"

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/startup/BaseInitializer;->d(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sget-object p1, Lfk/a;->a:Lfk/a;

    .line 45
    .line 46
    invoke-virtual {p1}, Lfk/a;->b()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 51
    .line 52
    invoke-virtual {v1}, Lfk/u;->b()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    sget-object v5, Lqe/a;->a:Lqe/a;

    .line 57
    .line 58
    invoke-virtual {v5}, Lqe/a;->h()Lcom/startshorts/androidplayer/bean/configure/FeatureController;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->getCheckInitializerOnForeground()Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-eqz v5, :cond_5

    .line 67
    .line 68
    invoke-static {v1}, Landroidx/startup/AppInitializer;->getInstance(Landroid/content/Context;)Landroidx/startup/AppInitializer;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    const-class v6, Lcom/startshorts/androidplayer/startup/ConfigureInitializer;

    .line 73
    .line 74
    invoke-virtual {v5, v6}, Landroidx/startup/AppInitializer;->initializeComponent(Ljava/lang/Class;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    instance-of v6, v5, Lcom/startshorts/androidplayer/startup/ConfigureInitializer;

    .line 79
    .line 80
    if-eqz v6, :cond_2

    .line 81
    .line 82
    check-cast v5, Lcom/startshorts/androidplayer/startup/ConfigureInitializer;

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    move-object v5, v2

    .line 86
    :goto_0
    if-eqz v5, :cond_3

    .line 87
    .line 88
    invoke-virtual {v5, v1, v4}, Lcom/startshorts/androidplayer/startup/ConfigureInitializer;->e(Landroid/content/Context;Z)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    :cond_3
    invoke-static {v1}, Landroidx/startup/AppInitializer;->getInstance(Landroid/content/Context;)Landroidx/startup/AppInitializer;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    const-class v6, Lcom/startshorts/androidplayer/startup/GaidInitializer;

    .line 96
    .line 97
    invoke-virtual {v5, v6}, Landroidx/startup/AppInitializer;->initializeComponent(Ljava/lang/Class;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    instance-of v6, v5, Lcom/startshorts/androidplayer/startup/GaidInitializer;

    .line 102
    .line 103
    if-eqz v6, :cond_4

    .line 104
    .line 105
    check-cast v5, Lcom/startshorts/androidplayer/startup/GaidInitializer;

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_4
    move-object v5, v2

    .line 109
    :goto_1
    if-eqz v5, :cond_5

    .line 110
    .line 111
    invoke-virtual {v5, v1, v4}, Lcom/startshorts/androidplayer/startup/GaidInitializer;->e(Landroid/content/Context;Z)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    :cond_5
    iget-object v1, p0, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$doWorkOnForeground$1;->j:Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;

    .line 115
    .line 116
    invoke-static {v1}, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;->j(Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_6

    .line 121
    .line 122
    sget-object v0, Lnk/b;->a:Lnk/b;

    .line 123
    .line 124
    invoke-virtual {v0}, Lnk/b;->h()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v4}, Lnk/b;->f(Z)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$doWorkOnForeground$1;->j:Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;

    .line 131
    .line 132
    invoke-static {v0, v3}, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;->k(Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;Z)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$doWorkOnForeground$1;->j:Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;

    .line 136
    .line 137
    const-string v1, "onForeground"

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/startup/BaseInitializer;->b(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_6
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 144
    .line 145
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->m0()Lkotlinx/coroutines/r;

    .line 146
    .line 147
    .line 148
    if-nez p1, :cond_7

    .line 149
    .line 150
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 151
    .line 152
    const-string v5, "backstage"

    .line 153
    .line 154
    invoke-virtual {v1, v5}, Lcom/startshorts/androidplayer/manager/event/EventManager;->c0(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    :cond_7
    iget-object v1, p0, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$doWorkOnForeground$1;->j:Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;

    .line 158
    .line 159
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$doWorkOnForeground$1;->h:Z

    .line 160
    .line 161
    iput v4, p0, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$doWorkOnForeground$1;->i:I

    .line 162
    .line 163
    invoke-static {v1, p1, p0}, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;->g(Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;ZLrs/c;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    if-ne v1, v0, :cond_8

    .line 168
    .line 169
    return-object v0

    .line 170
    :cond_8
    move v0, p1

    .line 171
    :goto_2
    sget-object p1, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 172
    .line 173
    invoke-virtual {p1, v3}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->d0(Z)V

    .line 174
    .line 175
    .line 176
    sget-object p1, Lmk/c;->a:Lmk/c;

    .line 177
    .line 178
    invoke-virtual {p1, v3}, Lmk/c;->j(Z)V

    .line 179
    .line 180
    .line 181
    sget-object p1, Lca/k;->a:Lca/k;

    .line 182
    .line 183
    invoke-virtual {p1}, Lca/k;->s()V

    .line 184
    .line 185
    .line 186
    sget-object p1, Lnk/b;->a:Lnk/b;

    .line 187
    .line 188
    iget-object v1, p0, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$doWorkOnForeground$1;->j:Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;

    .line 189
    .line 190
    invoke-static {v1}, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;->j(Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;)Z

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    invoke-virtual {p1, v1}, Lnk/b;->f(Z)V

    .line 195
    .line 196
    .line 197
    move p1, v0

    .line 198
    :goto_3
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/PushManager;->a:Lcom/startshorts/androidplayer/manager/push/PushManager;

    .line 199
    .line 200
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/push/PushManager;->c()V

    .line 201
    .line 202
    .line 203
    sget-object v1, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->a:Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;

    .line 204
    .line 205
    const-string v5, "doWorkOnForeground"

    .line 206
    .line 207
    invoke-virtual {v1, v5}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->h(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    if-nez p1, :cond_9

    .line 211
    .line 212
    iget-object p1, p0, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$doWorkOnForeground$1;->j:Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;

    .line 213
    .line 214
    invoke-static {p1}, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;->f(Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/push/PushManager;->i()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/push/PushManager;->l()V

    .line 221
    .line 222
    .line 223
    sget-object p1, Lfk/c;->a:Lfk/c;

    .line 224
    .line 225
    invoke-virtual {p1, v4}, Lfk/c;->b(Z)V

    .line 226
    .line 227
    .line 228
    sget-object p1, Laf/i;->a:Laf/i;

    .line 229
    .line 230
    invoke-virtual {p1}, Laf/i;->g()V

    .line 231
    .line 232
    .line 233
    goto :goto_4

    .line 234
    :cond_9
    sget-object p1, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 235
    .line 236
    new-instance v0, Ljava/util/Date;

    .line 237
    .line 238
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 239
    .line 240
    .line 241
    invoke-static {v0}, Ljk/f;->a(Ljava/util/Date;)Ljava/util/Date;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/utils/TimeUtil;->f(Ljava/util/Date;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    sget-object v0, Lud/b;->a:Lud/b;

    .line 250
    .line 251
    invoke-virtual {v0, p1}, Lud/b;->z(Ljava/lang/String;)Z

    .line 252
    .line 253
    .line 254
    move-result p1

    .line 255
    if-nez p1, :cond_a

    .line 256
    .line 257
    sget-object v5, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 258
    .line 259
    const/4 v10, 0x6

    .line 260
    const/4 v11, 0x0

    .line 261
    const-string v6, "interactive_by_push"

    .line 262
    .line 263
    const/4 v7, 0x0

    .line 264
    const-wide/16 v8, 0x0

    .line 265
    .line 266
    invoke-static/range {v5 .. v11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    :cond_a
    :goto_4
    sget-object p1, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 270
    .line 271
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->M()V

    .line 272
    .line 273
    .line 274
    sget-object p1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 275
    .line 276
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->U()Lkotlinx/coroutines/r;

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1, v4}, Lcom/startshorts/androidplayer/manager/event/EventManager;->r(Z)V

    .line 280
    .line 281
    .line 282
    sget-object p1, Lcom/startshorts/androidplayer/utils/ResourceHandler;->a:Lcom/startshorts/androidplayer/utils/ResourceHandler;

    .line 283
    .line 284
    invoke-static {p1, v3, v4, v2}, Lcom/startshorts/androidplayer/utils/ResourceHandler;->q(Lcom/startshorts/androidplayer/utils/ResourceHandler;ZILjava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 288
    .line 289
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/log/Logger;->f()V

    .line 290
    .line 291
    .line 292
    sget-object p1, Laf/g;->a:Laf/g;

    .line 293
    .line 294
    invoke-virtual {p1}, Laf/g;->b()V

    .line 295
    .line 296
    .line 297
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 298
    .line 299
    return-object p1
.end method
