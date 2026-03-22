.class final Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ShortsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->R(IIZ)V
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
    c = "com.startshorts.androidplayer.viewmodel.shorts.ShortsViewModel$loadEpisodes$1$1"
    f = "ShortsViewModel.kt"
    l = {
        0x62
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nShortsViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortsViewModel.kt\ncom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,310:1\n1#2:311\n*E\n"
    }
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;

.field final synthetic j:Lkotlin/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/shorts/ShortsListResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic k:Z

.field final synthetic l:I

.field final synthetic m:I


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;Lkotlin/Result;ZIILrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/shorts/ShortsListResult;",
            ">;ZII",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$1$1;->i:Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$1$1;->j:Lkotlin/Result;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$1$1;->k:Z

    .line 6
    .line 7
    iput p4, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$1$1;->l:I

    .line 8
    .line 9
    iput p5, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$1$1;->m:I

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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$1$1;->i:Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$1$1;->j:Lkotlin/Result;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$1$1;->k:Z

    .line 8
    .line 9
    iget v4, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$1$1;->l:I

    .line 10
    .line 11
    iget v5, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$1$1;->m:I

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$1$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;Lkotlin/Result;ZIILrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$1$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$1$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$1$1;->h:I

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
    sget-object p1, Lcom/startshorts/androidplayer/manager/account/AccountManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountManager;

    .line 34
    .line 35
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$1$1;->h:I

    .line 36
    .line 37
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->n(Lrs/c;)Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$1$1;->i:Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$1$1;->j:Lkotlin/Result;

    .line 47
    .line 48
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$1$1;->k:Z

    .line 49
    .line 50
    iget v3, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$1$1;->l:I

    .line 51
    .line 52
    iget v4, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$1$1;->m:I

    .line 53
    .line 54
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_3

    .line 59
    .line 60
    move-object v5, p1

    .line 61
    check-cast v5, Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v0, v1, v2, v3, v4}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->F(Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;Ljava/lang/Object;ZII)V

    .line 71
    .line 72
    .line 73
    :cond_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$1$1;->i:Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;

    .line 74
    .line 75
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->s(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;->E(Lcom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel;Lcom/startshorts/androidplayer/bean/exception/ResponseException;)V

    .line 86
    .line 87
    .line 88
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 89
    .line 90
    return-object p1
.end method
