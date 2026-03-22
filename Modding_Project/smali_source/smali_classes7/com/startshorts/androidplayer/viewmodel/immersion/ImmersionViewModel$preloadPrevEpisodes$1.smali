.class final Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadPrevEpisodes$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ImmersionViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->c0(IIZ)V
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
    c = "com.startshorts.androidplayer.viewmodel.immersion.ImmersionViewModel$preloadPrevEpisodes$1"
    f = "ImmersionViewModel.kt"
    l = {
        0x1ae
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

.field final synthetic j:I

.field final synthetic k:I

.field final synthetic l:Z


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;IIZLrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;",
            "IIZ",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadPrevEpisodes$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadPrevEpisodes$1;->i:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 2
    .line 3
    iput p2, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadPrevEpisodes$1;->j:I

    .line 4
    .line 5
    iput p3, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadPrevEpisodes$1;->k:I

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadPrevEpisodes$1;->l:Z

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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadPrevEpisodes$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadPrevEpisodes$1;->i:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 4
    .line 5
    iget v2, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadPrevEpisodes$1;->j:I

    .line 6
    .line 7
    iget v3, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadPrevEpisodes$1;->k:I

    .line 8
    .line 9
    iget-boolean v4, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadPrevEpisodes$1;->l:Z

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadPrevEpisodes$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;IIZLrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadPrevEpisodes$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadPrevEpisodes$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadPrevEpisodes$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadPrevEpisodes$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v0, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadPrevEpisodes$1;->h:I

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
    move-object v0, v15

    .line 18
    goto :goto_0

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
    iget-object v0, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadPrevEpisodes$1;->i:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 31
    .line 32
    iget v4, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadPrevEpisodes$1;->j:I

    .line 33
    .line 34
    iget v7, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadPrevEpisodes$1;->k:I

    .line 35
    .line 36
    iget-boolean v10, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadPrevEpisodes$1;->l:Z

    .line 37
    .line 38
    iput v1, v15, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadPrevEpisodes$1;->h:I

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    const/4 v2, 0x1

    .line 42
    const/4 v3, -0x1

    .line 43
    const/16 v5, 0xc

    .line 44
    .line 45
    const/4 v6, 0x0

    .line 46
    const/4 v8, 0x0

    .line 47
    const/4 v9, 0x0

    .line 48
    const/4 v11, 0x0

    .line 49
    const/4 v12, 0x0

    .line 50
    const/16 v16, 0xd81

    .line 51
    .line 52
    const/16 v17, 0x0

    .line 53
    .line 54
    move-object/from16 v13, p0

    .line 55
    .line 56
    move-object/from16 v18, v14

    .line 57
    .line 58
    move/from16 v14, v16

    .line 59
    .line 60
    move-object/from16 v15, v17

    .line 61
    .line 62
    invoke-static/range {v0 .. v15}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->m0(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;Landroid/content/Context;ZIIIIIZLcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;ZZZLrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    move-object/from16 v1, v18

    .line 67
    .line 68
    if-ne v0, v1, :cond_2

    .line 69
    .line 70
    return-object v1

    .line 71
    :cond_2
    move-object/from16 v0, p0

    .line 72
    .line 73
    :goto_0
    iget-object v1, v0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$preloadPrevEpisodes$1;->i:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    sget-object v2, Lcom/startshorts/androidplayer/viewmodel/immersion/d$f;->a:Lcom/startshorts/androidplayer/viewmodel/immersion/d$f;

    .line 80
    .line 81
    invoke-static {v1, v2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 85
    .line 86
    return-object v1
.end method
