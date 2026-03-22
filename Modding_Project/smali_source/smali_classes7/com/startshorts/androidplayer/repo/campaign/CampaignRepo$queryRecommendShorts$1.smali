.class final Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryRecommendShorts$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CampaignRepo.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->E()V
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
    c = "com.startshorts.androidplayer.repo.campaign.CampaignRepo$queryRecommendShorts$1"
    f = "CampaignRepo.kt"
    l = {
        0x43
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCampaignRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CampaignRepo.kt\ncom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryRecommendShorts$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,352:1\n1872#2,3:353\n*S KotlinDebug\n*F\n+ 1 CampaignRepo.kt\ncom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryRecommendShorts$1\n*L\n73#1:353,3\n*E\n"
    }
.end annotation


# instance fields
.field h:I


# direct methods
.method constructor <init>(Lrs/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryRecommendShorts$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 0
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
    new-instance p1, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryRecommendShorts$1;

    .line 2
    .line 3
    invoke-direct {p1, p2}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryRecommendShorts$1;-><init>(Lrs/c;)V

    .line 4
    .line 5
    .line 6
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryRecommendShorts$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryRecommendShorts$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryRecommendShorts$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryRecommendShorts$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryRecommendShorts$1;->h:I

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
    sget-object p1, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 34
    .line 35
    iput v2, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryRecommendShorts$1;->h:I

    .line 36
    .line 37
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->G(Lrs/c;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-ne p1, v0, :cond_2

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_2
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    const/4 v1, 0x0

    .line 49
    if-eqz v0, :cond_b

    .line 50
    .line 51
    check-cast p1, Lcom/startshorts/androidplayer/bean/shorts/QueryCampaignRecommendShortsResult;

    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/QueryCampaignRecommendShortsResult;->getRecommendList()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    move-object v3, v0

    .line 62
    :goto_1
    if-eqz p1, :cond_4

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/QueryCampaignRecommendShortsResult;->getSkuInfos()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    :cond_4
    if-eqz v3, :cond_6

    .line 69
    .line 70
    sget-object v4, Lcom/startshorts/androidplayer/bean/shorts/RecommendShorts;->Companion:Lcom/startshorts/androidplayer/bean/shorts/RecommendShorts$Companion;

    .line 71
    .line 72
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/shorts/RecommendShorts$Companion;->getRANDOM_CHOOSE_LIST()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    check-cast v4, Ljava/lang/Iterable;

    .line 77
    .line 78
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->f(Ljava/lang/Iterable;)Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    check-cast v4, Ljava/lang/Iterable;

    .line 83
    .line 84
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->V0(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    move-object v5, v3

    .line 93
    check-cast v5, Ljava/lang/Iterable;

    .line 94
    .line 95
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    move v6, v1

    .line 100
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    if-eqz v7, :cond_6

    .line 105
    .line 106
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    add-int/lit8 v8, v6, 0x1

    .line 111
    .line 112
    if-gez v6, :cond_5

    .line 113
    .line 114
    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    .line 115
    .line 116
    .line 117
    :cond_5
    check-cast v7, Lcom/startshorts/androidplayer/bean/shorts/RecommendShorts;

    .line 118
    .line 119
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    check-cast v6, Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v7, v6}, Lcom/startshorts/androidplayer/bean/shorts/RecommendShorts;->setRandomChoose(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    new-instance v6, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v9, "Top "

    .line 134
    .line 135
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    invoke-virtual {v7, v6}, Lcom/startshorts/androidplayer/bean/shorts/RecommendShorts;->setSubscript(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    move v6, v8

    .line 149
    goto :goto_2

    .line 150
    :cond_6
    sget-object v4, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 151
    .line 152
    invoke-static {v4}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->h(Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;)Lkg/b;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-virtual {v4, p1}, Lkg/b;->o(Lcom/startshorts/androidplayer/bean/shorts/QueryCampaignRecommendShortsResult;)V

    .line 157
    .line 158
    .line 159
    check-cast v3, Ljava/util/Collection;

    .line 160
    .line 161
    const-wide/16 v4, 0x0

    .line 162
    .line 163
    if-eqz v3, :cond_a

    .line 164
    .line 165
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-eqz p1, :cond_7

    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_7
    check-cast v0, Ljava/util/Collection;

    .line 173
    .line 174
    if-eqz v0, :cond_9

    .line 175
    .line 176
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    if-eqz p1, :cond_8

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_8
    sget-object p1, Lud/b;->a:Lud/b;

    .line 184
    .line 185
    const-wide/16 v2, -0x1

    .line 186
    .line 187
    invoke-virtual {p1, v2, v3}, Lud/b;->s4(J)V

    .line 188
    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_9
    :goto_3
    sget-object p1, Lud/b;->a:Lud/b;

    .line 192
    .line 193
    invoke-virtual {p1, v4, v5}, Lud/b;->s4(J)V

    .line 194
    .line 195
    .line 196
    :goto_4
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    new-instance v0, Lcom/startshorts/androidplayer/bean/eventbus/HandleHomeDialogProcessorEvent;

    .line 201
    .line 202
    invoke-direct {v0}, Lcom/startshorts/androidplayer/bean/eventbus/HandleHomeDialogProcessorEvent;-><init>()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, v0}, Lau/c;->l(Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    goto :goto_6

    .line 209
    :cond_a
    :goto_5
    sget-object p1, Lud/b;->a:Lud/b;

    .line 210
    .line 211
    invoke-virtual {p1, v2}, Lud/b;->k3(Z)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1, v4, v5}, Lud/b;->s4(J)V

    .line 215
    .line 216
    .line 217
    :cond_b
    :goto_6
    invoke-static {v1}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->m(Z)V

    .line 218
    .line 219
    .line 220
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 221
    .line 222
    return-object p1
.end method
