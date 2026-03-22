.class final Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByCurEpisodeId$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ImmersionViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->i0(Landroid/content/Context;IIZILcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.viewmodel.immersion.ImmersionViewModel$queryEpisodesByCurEpisodeId$1"
    f = "ImmersionViewModel.kt"
    l = {
        0x193
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

.field final synthetic j:I

.field final synthetic k:I

.field final synthetic l:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;

.field final synthetic m:Landroid/content/Context;

.field final synthetic n:I

.field final synthetic o:Z


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;IILcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;Landroid/content/Context;IZLrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;",
            "II",
            "Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;",
            "Landroid/content/Context;",
            "IZ",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByCurEpisodeId$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByCurEpisodeId$1;->i:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 2
    .line 3
    iput p2, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByCurEpisodeId$1;->j:I

    .line 4
    .line 5
    iput p3, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByCurEpisodeId$1;->k:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByCurEpisodeId$1;->l:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByCurEpisodeId$1;->m:Landroid/content/Context;

    .line 10
    .line 11
    iput p6, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByCurEpisodeId$1;->n:I

    .line 12
    .line 13
    iput-boolean p7, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByCurEpisodeId$1;->o:Z

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 9
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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByCurEpisodeId$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByCurEpisodeId$1;->i:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 4
    .line 5
    iget v2, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByCurEpisodeId$1;->j:I

    .line 6
    .line 7
    iget v3, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByCurEpisodeId$1;->k:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByCurEpisodeId$1;->l:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByCurEpisodeId$1;->m:Landroid/content/Context;

    .line 12
    .line 13
    iget v6, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByCurEpisodeId$1;->n:I

    .line 14
    .line 15
    iget-boolean v7, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByCurEpisodeId$1;->o:Z

    .line 16
    .line 17
    move-object v0, p1

    .line 18
    move-object v8, p2

    .line 19
    invoke-direct/range {v0 .. v8}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByCurEpisodeId$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;IILcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;Landroid/content/Context;IZLrs/c;)V

    .line 20
    .line 21
    .line 22
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByCurEpisodeId$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByCurEpisodeId$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByCurEpisodeId$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByCurEpisodeId$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v0, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByCurEpisodeId$1;->h:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0

    .line 27
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByCurEpisodeId$1;->i:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 31
    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v3, "queryEpisodesByCurEpisodeId -> shortsId("

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget v3, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByCurEpisodeId$1;->j:I

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v3, ") episodeId("

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget v3, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByCurEpisodeId$1;->k:I

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v3, ") resetReason("

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v3, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByCurEpisodeId$1;->l:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const/16 v3, 0x29

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByCurEpisodeId$1;->i:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 80
    .line 81
    iget-object v2, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByCurEpisodeId$1;->m:Landroid/content/Context;

    .line 82
    .line 83
    iget v3, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByCurEpisodeId$1;->j:I

    .line 84
    .line 85
    iget v4, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByCurEpisodeId$1;->k:I

    .line 86
    .line 87
    iget v7, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByCurEpisodeId$1;->n:I

    .line 88
    .line 89
    iget-boolean v8, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByCurEpisodeId$1;->o:Z

    .line 90
    .line 91
    iget-object v9, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByCurEpisodeId$1;->l:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;

    .line 92
    .line 93
    iput v1, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByCurEpisodeId$1;->h:I

    .line 94
    .line 95
    const/4 v5, 0x0

    .line 96
    const/4 v6, 0x0

    .line 97
    const/16 v10, 0xc

    .line 98
    .line 99
    const/4 v11, 0x0

    .line 100
    const/4 v12, 0x0

    .line 101
    const/4 v13, 0x0

    .line 102
    const/16 v16, 0xe00

    .line 103
    .line 104
    const/16 v17, 0x0

    .line 105
    .line 106
    move-object v1, v2

    .line 107
    move v2, v5

    .line 108
    move v5, v6

    .line 109
    move v6, v10

    .line 110
    move v10, v11

    .line 111
    move v11, v12

    .line 112
    move v12, v13

    .line 113
    move-object/from16 v13, p0

    .line 114
    .line 115
    move-object/from16 v18, v14

    .line 116
    .line 117
    move/from16 v14, v16

    .line 118
    .line 119
    move-object/from16 v15, v17

    .line 120
    .line 121
    invoke-static/range {v0 .. v15}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->m0(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;Landroid/content/Context;ZIIIIIZLcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;ZZZLrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    move-object/from16 v1, v18

    .line 126
    .line 127
    if-ne v0, v1, :cond_2

    .line 128
    .line 129
    return-object v1

    .line 130
    :cond_2
    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 131
    .line 132
    return-object v0
.end method
