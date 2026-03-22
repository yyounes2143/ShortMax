.class final Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CampaignPullUp.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.manager.attribution.CampaignPullUp$allPullUp$1"
    f = "CampaignPullUp.kt"
    l = {
        0x2d,
        0x31
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCampaignPullUp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CampaignPullUp.kt\ncom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,65:1\n1863#2,2:66\n*S KotlinDebug\n*F\n+ 1 CampaignPullUp.kt\ncom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1\n*L\n44#1:66,2\n*E\n"
    }
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:Ljava/lang/Object;

.field k:Ljava/lang/Object;

.field l:I

.field final synthetic m:Ljava/lang/String;

.field final synthetic n:Ljava/lang/String;

.field final synthetic o:Z

.field final synthetic p:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZLrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1;->m:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1;->n:Ljava/lang/String;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1;->o:Z

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1;->p:Z

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

.method public static synthetic i()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1;->j()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final j()Lkotlin/Unit;
    .locals 4

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-static {v0, v3, v1, v2, v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->c1(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/startshorts/androidplayer/bean/eventbus/CampaignRefreshSuccessEvent;

    .line 14
    .line 15
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/eventbus/CampaignRefreshSuccessEvent;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lau/c;->l(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 22
    .line 23
    const-string v1, "CampaignNewTag"

    .line 24
    .line 25
    const-string v2, "reportActiveWeb success CampaignRefreshSuccessEvent"

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 31
    .line 32
    return-object v0
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
    new-instance p1, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1;->m:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1;->n:Ljava/lang/String;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1;->o:Z

    .line 8
    .line 9
    iget-boolean v4, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1;->p:Z

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x2

    .line 4
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    iget v4, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1;->l:I

    .line 9
    .line 10
    const-string v5, "CampaignNewTag"

    .line 11
    .line 12
    if-eqz v4, :cond_2

    .line 13
    .line 14
    if-eq v4, v1, :cond_1

    .line 15
    .line 16
    if-ne v4, v2, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    check-cast p1, Lkotlin/Result;

    .line 22
    .line 23
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto/16 :goto_3

    .line 28
    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 32
    .line 33
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :cond_1
    iget-object v4, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1;->k:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v4, Ljava/util/Iterator;

    .line 40
    .line 41
    iget-object v6, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1;->j:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v6, Ljava/lang/String;

    .line 44
    .line 45
    iget-object v7, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1;->i:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v7, Ljava/lang/String;

    .line 48
    .line 49
    iget-object v8, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1;->h:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v8, Landroid/content/Context;

    .line 52
    .line 53
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_2

    .line 57
    .line 58
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 62
    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v6, "allPullUp webInfo("

    .line 69
    .line 70
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-object v6, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1;->m:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const/16 v6, 0x29

    .line 79
    .line 80
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {p1, v5, v4}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    sget-object v4, Lfk/h;->a:Lfk/h;

    .line 91
    .line 92
    invoke-virtual {v4}, Lfk/h;->b()Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-eqz v4, :cond_3

    .line 97
    .line 98
    const-string v0, "allPullUp is preInstall not allow"

    .line 99
    .line 100
    invoke-virtual {p1, v5, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 104
    .line 105
    return-object p1

    .line 106
    :cond_3
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 107
    .line 108
    invoke-virtual {p1}, Lfk/u;->b()Landroid/content/Context;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iget-object v4, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1;->n:Ljava/lang/String;

    .line 113
    .line 114
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-eqz v4, :cond_4

    .line 119
    .line 120
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    goto :goto_0

    .line 129
    :cond_4
    iget-object v4, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1;->n:Ljava/lang/String;

    .line 130
    .line 131
    :goto_0
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    iget-boolean v6, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1;->o:Z

    .line 135
    .line 136
    if-eqz v6, :cond_5

    .line 137
    .line 138
    new-instance v6, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;

    .line 139
    .line 140
    invoke-direct {v6}, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;-><init>()V

    .line 141
    .line 142
    .line 143
    new-instance v7, Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp;

    .line 144
    .line 145
    invoke-direct {v7}, Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp;-><init>()V

    .line 146
    .line 147
    .line 148
    new-instance v8, Lcom/startshorts/androidplayer/manager/attribution/pullup/AFConversionDataPullUp;

    .line 149
    .line 150
    invoke-direct {v8}, Lcom/startshorts/androidplayer/manager/attribution/pullup/AFConversionDataPullUp;-><init>()V

    .line 151
    .line 152
    .line 153
    new-instance v9, Lcom/startshorts/androidplayer/manager/attribution/pullup/AJConversionDataPullUp;

    .line 154
    .line 155
    invoke-direct {v9}, Lcom/startshorts/androidplayer/manager/attribution/pullup/AJConversionDataPullUp;-><init>()V

    .line 156
    .line 157
    .line 158
    const/4 v10, 0x4

    .line 159
    new-array v10, v10, [Lcom/startshorts/androidplayer/manager/attribution/pullup/BaseCampaignPullUp;

    .line 160
    .line 161
    aput-object v6, v10, v0

    .line 162
    .line 163
    aput-object v7, v10, v1

    .line 164
    .line 165
    aput-object v8, v10, v2

    .line 166
    .line 167
    const/4 v6, 0x3

    .line 168
    aput-object v9, v10, v6

    .line 169
    .line 170
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    goto :goto_1

    .line 175
    :cond_5
    new-instance v6, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;

    .line 176
    .line 177
    invoke-direct {v6}, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;-><init>()V

    .line 178
    .line 179
    .line 180
    new-instance v7, Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp;

    .line 181
    .line 182
    invoke-direct {v7}, Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp;-><init>()V

    .line 183
    .line 184
    .line 185
    new-array v8, v2, [Lcom/startshorts/androidplayer/manager/attribution/pullup/BaseCampaignPullUp;

    .line 186
    .line 187
    aput-object v6, v8, v0

    .line 188
    .line 189
    aput-object v7, v8, v1

    .line 190
    .line 191
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    :goto_1
    check-cast v6, Ljava/lang/Iterable;

    .line 196
    .line 197
    iget-object v7, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1;->m:Ljava/lang/String;

    .line 198
    .line 199
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    move-object v8, p1

    .line 204
    move-object v11, v7

    .line 205
    move-object v7, v4

    .line 206
    move-object v4, v6

    .line 207
    move-object v6, v11

    .line 208
    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    if-eqz p1, :cond_7

    .line 213
    .line 214
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    check-cast p1, Lcom/startshorts/androidplayer/manager/attribution/pullup/BaseCampaignPullUp;

    .line 219
    .line 220
    iput-object v8, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1;->h:Ljava/lang/Object;

    .line 221
    .line 222
    iput-object v7, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1;->i:Ljava/lang/Object;

    .line 223
    .line 224
    iput-object v6, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1;->j:Ljava/lang/Object;

    .line 225
    .line 226
    iput-object v4, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1;->k:Ljava/lang/Object;

    .line 227
    .line 228
    iput v1, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1;->l:I

    .line 229
    .line 230
    invoke-virtual {p1, v8, v7, v6, p0}, Lcom/startshorts/androidplayer/manager/attribution/pullup/BaseCampaignPullUp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    if-ne p1, v3, :cond_6

    .line 235
    .line 236
    return-object v3

    .line 237
    :cond_7
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1;->m:Ljava/lang/String;

    .line 238
    .line 239
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    if-lez p1, :cond_b

    .line 244
    .line 245
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1;->p:Z

    .line 246
    .line 247
    if-eqz p1, :cond_b

    .line 248
    .line 249
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 250
    .line 251
    const-string v4, "CampaignRepo.reportActiveWebInfo"

    .line 252
    .line 253
    invoke-virtual {p1, v5, v4}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    sget-object p1, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 257
    .line 258
    sget-object v4, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 259
    .line 260
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->q()J

    .line 261
    .line 262
    .line 263
    move-result-wide v8

    .line 264
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    iget-object v6, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1;->m:Ljava/lang/String;

    .line 269
    .line 270
    const/4 v8, 0x0

    .line 271
    iput-object v8, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1;->h:Ljava/lang/Object;

    .line 272
    .line 273
    iput-object v8, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1;->i:Ljava/lang/Object;

    .line 274
    .line 275
    iput-object v8, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1;->j:Ljava/lang/Object;

    .line 276
    .line 277
    iput-object v8, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1;->k:Ljava/lang/Object;

    .line 278
    .line 279
    iput v2, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp$allPullUp$1;->l:I

    .line 280
    .line 281
    invoke-virtual {p1, v7, v4, v6, p0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    if-ne p1, v3, :cond_8

    .line 286
    .line 287
    return-object v3

    .line 288
    :cond_8
    :goto_3
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    if-eqz v2, :cond_b

    .line 293
    .line 294
    check-cast p1, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;

    .line 295
    .line 296
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 297
    .line 298
    new-instance v3, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .line 302
    .line 303
    const-string/jumbo v4, "web reportActiveWebInfo onSuccess -> "

    .line 304
    .line 305
    .line 306
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    invoke-virtual {v2, v5, v3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    if-eqz p1, :cond_9

    .line 320
    .line 321
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getMatchResult()Ljava/lang/Boolean;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    :cond_9
    if-eqz v0, :cond_b

    .line 334
    .line 335
    sget-object v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 336
    .line 337
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 338
    .line 339
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->r()J

    .line 340
    .line 341
    .line 342
    move-result-wide v1

    .line 343
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->W(J)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getDelayedAttributedTime()I

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    if-lez v0, :cond_a

    .line 351
    .line 352
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;->getDelayedAttributedTime()I

    .line 353
    .line 354
    .line 355
    move-result p1

    .line 356
    int-to-long v0, p1

    .line 357
    const-wide/16 v2, 0x3e8

    .line 358
    .line 359
    mul-long/2addr v0, v2

    .line 360
    :goto_4
    move-wide v3, v0

    .line 361
    goto :goto_5

    .line 362
    :cond_a
    const-wide/16 v0, 0x1388

    .line 363
    .line 364
    goto :goto_4

    .line 365
    :goto_5
    sget-object v2, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 366
    .line 367
    new-instance v6, Lcom/startshorts/androidplayer/manager/attribution/a;

    .line 368
    .line 369
    invoke-direct {v6}, Lcom/startshorts/androidplayer/manager/attribution/a;-><init>()V

    .line 370
    .line 371
    .line 372
    const/4 v7, 0x2

    .line 373
    const/4 v8, 0x0

    .line 374
    const/4 v5, 0x0

    .line 375
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->g(Lcom/startshorts/androidplayer/utils/CoroutineUtil;JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 376
    .line 377
    .line 378
    :cond_b
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 379
    .line 380
    return-object p1
.end method
