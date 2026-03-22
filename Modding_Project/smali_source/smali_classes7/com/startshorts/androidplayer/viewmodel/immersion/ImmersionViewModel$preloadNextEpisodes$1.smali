.class final Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadNextEpisodes$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ImmersionViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->a0(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Z)V
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
    c = "com.startshorts.androidplayer.viewmodel.immersion.ImmersionViewModel$preloadNextEpisodes$1"
    f = "ImmersionViewModel.kt"
    l = {
        0x1c3,
        0x1c5
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

.field final synthetic j:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

.field final synthetic k:Z


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;ZLrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;",
            "Z",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadNextEpisodes$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadNextEpisodes$1;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadNextEpisodes$1;->j:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadNextEpisodes$1;->k:Z

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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadNextEpisodes$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadNextEpisodes$1;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadNextEpisodes$1;->j:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 6
    .line 7
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadNextEpisodes$1;->k:Z

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadNextEpisodes$1;-><init>(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;ZLrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadNextEpisodes$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadNextEpisodes$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadNextEpisodes$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadNextEpisodes$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v14

    .line 7
    iget v0, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadNextEpisodes$1;->h:I

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    if-eq v0, v2, :cond_1

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    move-object/from16 v0, p1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0

    .line 31
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    move-object/from16 v0, p1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadNextEpisodes$1;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    iget-object v0, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadNextEpisodes$1;->j:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 49
    .line 50
    iget-object v1, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadNextEpisodes$1;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 51
    .line 52
    iput v2, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadNextEpisodes$1;->h:I

    .line 53
    .line 54
    invoke-static {v0, v1, v15}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->L(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lrs/c;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-ne v0, v14, :cond_3

    .line 59
    .line 60
    return-object v14

    .line 61
    :cond_3
    :goto_0
    check-cast v0, Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    move-object v1, v15

    .line 68
    goto :goto_2

    .line 69
    :cond_4
    iget-object v0, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadNextEpisodes$1;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    iget-object v0, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadNextEpisodes$1;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    iget-object v0, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadNextEpisodes$1;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoType()I

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    iget-object v0, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadNextEpisodes$1;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isMergeShortPlay()Z

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    iget-object v0, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadNextEpisodes$1;->j:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 94
    .line 95
    iget-boolean v10, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadNextEpisodes$1;->k:Z

    .line 96
    .line 97
    iput v1, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadNextEpisodes$1;->h:I

    .line 98
    .line 99
    const/4 v1, 0x0

    .line 100
    const/4 v2, 0x1

    .line 101
    const/4 v5, 0x0

    .line 102
    const/16 v6, 0xc

    .line 103
    .line 104
    const/4 v9, 0x0

    .line 105
    const/4 v11, 0x0

    .line 106
    const/4 v12, 0x0

    .line 107
    const/16 v16, 0xd01

    .line 108
    .line 109
    const/16 v17, 0x0

    .line 110
    .line 111
    move-object/from16 v13, p0

    .line 112
    .line 113
    move-object/from16 v18, v14

    .line 114
    .line 115
    move/from16 v14, v16

    .line 116
    .line 117
    move-object/from16 v15, v17

    .line 118
    .line 119
    invoke-static/range {v0 .. v15}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->m0(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;Landroid/content/Context;ZIIIIIZLcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;ZZZLrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    move-object/from16 v1, v18

    .line 124
    .line 125
    if-ne v0, v1, :cond_5

    .line 126
    .line 127
    return-object v1

    .line 128
    :cond_5
    :goto_1
    check-cast v0, Ljava/lang/Boolean;

    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    move-object/from16 v1, p0

    .line 135
    .line 136
    :goto_2
    iget-object v2, v1, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadNextEpisodes$1;->j:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 137
    .line 138
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/immersion/d$e;

    .line 143
    .line 144
    invoke-direct {v3, v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/d$e;-><init>(Z)V

    .line 145
    .line 146
    .line 147
    invoke-static {v2, v3}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 151
    .line 152
    return-object v0
.end method
