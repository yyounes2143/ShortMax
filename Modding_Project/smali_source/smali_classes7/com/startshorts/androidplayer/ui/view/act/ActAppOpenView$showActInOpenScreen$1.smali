.class final Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$showActInOpenScreen$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ActAppOpenView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->P(Lcom/startshorts/androidplayer/bean/act/ActResource;Lkotlin/jvm/functions/Function0;)V
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
    c = "com.startshorts.androidplayer.ui.view.act.ActAppOpenView$showActInOpenScreen$1"
    f = "ActAppOpenView.kt"
    l = {
        0xa0,
        0xa1
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/bean/act/ActResource;

.field final synthetic j:Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;

.field final synthetic k:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/bean/act/ActResource;Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;Lkotlin/jvm/functions/Function0;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            "Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$showActInOpenScreen$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$showActInOpenScreen$1;->i:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$showActInOpenScreen$1;->j:Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$showActInOpenScreen$1;->k:Lkotlin/jvm/functions/Function0;

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
    new-instance p1, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$showActInOpenScreen$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$showActInOpenScreen$1;->i:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$showActInOpenScreen$1;->j:Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$showActInOpenScreen$1;->k:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$showActInOpenScreen$1;-><init>(Lcom/startshorts/androidplayer/bean/act/ActResource;Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;Lkotlin/jvm/functions/Function0;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$showActInOpenScreen$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$showActInOpenScreen$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$showActInOpenScreen$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$showActInOpenScreen$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$showActInOpenScreen$1;->h:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sget-object p1, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->j:Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$showActInOpenScreen$1;->i:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 37
    .line 38
    iput v3, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$showActInOpenScreen$1;->h:I

    .line 39
    .line 40
    invoke-static {p1, v1, p0}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion;->a(Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion;Lcom/startshorts/androidplayer/bean/act/ActResource;Lrs/c;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-ne p1, v0, :cond_3

    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    new-instance v3, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$showActInOpenScreen$1$1;

    .line 58
    .line 59
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$showActInOpenScreen$1;->j:Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;

    .line 60
    .line 61
    iget-object v5, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$showActInOpenScreen$1;->k:Lkotlin/jvm/functions/Function0;

    .line 62
    .line 63
    const/4 v6, 0x0

    .line 64
    invoke-direct {v3, p1, v4, v5, v6}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$showActInOpenScreen$1$1;-><init>(ZLcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;Lkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 65
    .line 66
    .line 67
    iput v2, p0, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$showActInOpenScreen$1;->h:I

    .line 68
    .line 69
    invoke-static {v1, v3, p0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-ne p1, v0, :cond_4

    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 77
    .line 78
    return-object p1
.end method
