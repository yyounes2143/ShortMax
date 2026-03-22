.class final Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByAd$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UnlockViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->y0(Landroid/content/Context;ZLjava/lang/String;)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.viewmodel.immersion.UnlockViewModel$singleUnlockEpisodeByAd$2"
    f = "UnlockViewModel.kt"
    l = {
        0x226
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

.field final synthetic j:Landroid/content/Context;

.field final synthetic k:Z

.field final synthetic l:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;Landroid/content/Context;ZLjava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;",
            "Landroid/content/Context;",
            "Z",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByAd$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByAd$2;->i:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByAd$2;->j:Landroid/content/Context;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByAd$2;->k:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByAd$2;->l:Ljava/lang/String;

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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByAd$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByAd$2;->i:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByAd$2;->j:Landroid/content/Context;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByAd$2;->k:Z

    .line 8
    .line 9
    iget-object v4, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByAd$2;->l:Ljava/lang/String;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByAd$2;-><init>(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;Landroid/content/Context;ZLjava/lang/String;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByAd$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByAd$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByAd$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByAd$2;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByAd$2;->h:I

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
    goto :goto_0

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
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByAd$2;->i:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->E(Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    if-nez v5, :cond_2

    .line 39
    .line 40
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 41
    .line 42
    return-object p1

    .line 43
    :cond_2
    sget-object v3, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->a:Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;

    .line 44
    .line 45
    iget-object v4, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByAd$2;->j:Landroid/content/Context;

    .line 46
    .line 47
    iget-boolean v6, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByAd$2;->k:Z

    .line 48
    .line 49
    iget-object v7, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByAd$2;->l:Ljava/lang/String;

    .line 50
    .line 51
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$singleUnlockEpisodeByAd$2;->h:I

    .line 52
    .line 53
    move-object v8, p0

    .line 54
    invoke-virtual/range {v3 .. v8}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->r(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLjava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-ne p1, v0, :cond_3

    .line 59
    .line 60
    return-object v0

    .line 61
    :cond_3
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 62
    .line 63
    return-object p1
.end method
