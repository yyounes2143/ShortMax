.class final Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$result$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UnlockRepo.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->l(ZLandroid/content/Context;IILjava/lang/String;Lrs/c;)Ljava/lang/Object;
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
    c = "com.startshorts.androidplayer.repo.unlock.UnlockRepo$querySingleUnlockEpisodeMethods$result$1"
    f = "UnlockRepo.kt"
    l = {
        0x53
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Z

.field final synthetic j:Landroid/content/Context;

.field final synthetic k:I

.field final synthetic l:I

.field final synthetic m:Ljava/lang/String;


# direct methods
.method constructor <init>(ZLandroid/content/Context;IILjava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/Context;",
            "II",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$result$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$result$1;->i:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$result$1;->j:Landroid/content/Context;

    .line 4
    .line 5
    iput p3, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$result$1;->k:I

    .line 6
    .line 7
    iput p4, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$result$1;->l:I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$result$1;->m:Ljava/lang/String;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 7
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
    new-instance p1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$result$1;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$result$1;->i:Z

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$result$1;->j:Landroid/content/Context;

    .line 6
    .line 7
    iget v3, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$result$1;->k:I

    .line 8
    .line 9
    iget v4, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$result$1;->l:I

    .line 10
    .line 11
    iget-object v5, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$result$1;->m:Ljava/lang/String;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$result$1;-><init>(ZLandroid/content/Context;IILjava/lang/String;Lrs/c;)V

    .line 16
    .line 17
    .line 18
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$result$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$result$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$result$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$result$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$result$1;->h:I

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
    sget-object p1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->a:Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->d(Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;)Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    iget-boolean v4, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$result$1;->i:Z

    .line 40
    .line 41
    iget-object v5, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$result$1;->j:Landroid/content/Context;

    .line 42
    .line 43
    iget v6, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$result$1;->k:I

    .line 44
    .line 45
    iget v7, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$result$1;->l:I

    .line 46
    .line 47
    iget-object v8, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$result$1;->m:Ljava/lang/String;

    .line 48
    .line 49
    iput v2, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo$querySingleUnlockEpisodeMethods$result$1;->h:I

    .line 50
    .line 51
    move-object v9, p0

    .line 52
    invoke-virtual/range {v3 .. v9}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;->b(ZLandroid/content/Context;IILjava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-ne p1, v0, :cond_2

    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_2
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    check-cast p1, Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;

    .line 66
    .line 67
    sget-object v0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->a:Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;->c(Lcom/startshorts/androidplayer/repo/unlock/UnlockRepo;)Lkh/a;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0, p1}, Lkh/a;->e(Lcom/startshorts/androidplayer/bean/unlock/QuerySingleUnlockEpisodeMethodsResult;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 77
    .line 78
    return-object p1
.end method
