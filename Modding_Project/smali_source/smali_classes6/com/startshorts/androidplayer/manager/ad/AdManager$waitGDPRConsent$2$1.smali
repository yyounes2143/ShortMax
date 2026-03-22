.class final Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AdManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.startshorts.androidplayer.manager.ad.AdManager$waitGDPRConsent$2$1"
    f = "AdManager.kt"
    l = {
        0x729,
        0x72c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2$1;->i:Landroid/app/Activity;

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
    new-instance p1, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2$1;->i:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2$1;-><init>(Landroid/app/Activity;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2$1;->h:I

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
    sget-object p1, Lca/i;->a:Lca/i;

    .line 35
    .line 36
    iput v3, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2$1;->h:I

    .line 37
    .line 38
    const-string/jumbo v1, "waitGDPRConsent"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v1, p0}, Lca/i;->k(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-ne p1, v0, :cond_3

    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2$1;->i:Landroid/app/Activity;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->u(Landroid/app/Activity;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_4

    .line 55
    .line 56
    sget-object p1, Lca/i;->a:Lca/i;

    .line 57
    .line 58
    invoke-virtual {p1}, Lca/i;->p()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    const-string p1, "loadConsentForm start"

    .line 65
    .line 66
    invoke-static {p1}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->t(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    new-instance v1, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2$1$1;

    .line 74
    .line 75
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2$1;->i:Landroid/app/Activity;

    .line 76
    .line 77
    const/4 v4, 0x0

    .line 78
    invoke-direct {v1, v3, v4}, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2$1$1;-><init>(Landroid/app/Activity;Lrs/c;)V

    .line 79
    .line 80
    .line 81
    iput v2, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2$1;->h:I

    .line 82
    .line 83
    invoke-static {p1, v1, p0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-ne p1, v0, :cond_4

    .line 88
    .line 89
    return-object v0

    .line 90
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 91
    .line 92
    return-object p1
.end method
