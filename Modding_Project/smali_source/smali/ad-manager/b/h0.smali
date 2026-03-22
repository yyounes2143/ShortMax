.class public final Lad-manager/b/h0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public h:I

.field public final synthetic i:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lrs/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lad-manager/b/h0;->i:Landroid/app/Activity;

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

    .line 1
    new-instance p1, Lad-manager/b/h0;

    .line 2
    .line 3
    iget-object v0, p0, Lad-manager/b/h0;->i:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lad-manager/b/h0;-><init>(Landroid/app/Activity;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lgt/g0;

    .line 2
    .line 3
    check-cast p2, Lrs/c;

    .line 4
    .line 5
    new-instance p1, Lad-manager/b/h0;

    .line 6
    .line 7
    iget-object v0, p0, Lad-manager/b/h0;->i:Landroid/app/Activity;

    .line 8
    .line 9
    invoke-direct {p1, v0, p2}, Lad-manager/b/h0;-><init>(Landroid/app/Activity;Lrs/c;)V

    .line 10
    .line 11
    .line 12
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Lad-manager/b/h0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lad-manager/b/h0;->h:I

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
    goto :goto_0

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
    goto :goto_2

    .line 31
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lad-manager/b/h0;->i:Landroid/app/Activity;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/google/android/ump/UserMessagingPlatform;->getConsentInformation(Landroid/content/Context;)Lcom/google/android/ump/ConsentInformation;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {p1}, Lcom/google/android/ump/ConsentInformation;->getConsentStatus()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eq v1, v2, :cond_6

    .line 45
    .line 46
    invoke-interface {p1}, Lcom/google/android/ump/ConsentInformation;->canRequestAds()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_3

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    sget-object p1, Lca/i;->a:Lca/i;

    .line 54
    .line 55
    iget-object v1, p0, Lad-manager/b/h0;->i:Landroid/app/Activity;

    .line 56
    .line 57
    invoke-virtual {p1, v1}, Lca/i;->q(Landroid/content/Context;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_5

    .line 62
    .line 63
    iget-object v1, p0, Lad-manager/b/h0;->i:Landroid/app/Activity;

    .line 64
    .line 65
    iput v2, p0, Lad-manager/b/h0;->h:I

    .line 66
    .line 67
    invoke-static {p1, v1, p0}, Lca/i;->h(Lca/i;Landroid/app/Activity;Lrs/c;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-ne p1, v0, :cond_4

    .line 72
    .line 73
    return-object v0

    .line 74
    :cond_4
    :goto_0
    return-object p1

    .line 75
    :cond_5
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    return-object p1

    .line 80
    :cond_6
    :goto_1
    sget-object p1, Lca/i;->a:Lca/i;

    .line 81
    .line 82
    iget-object v1, p0, Lad-manager/b/h0;->i:Landroid/app/Activity;

    .line 83
    .line 84
    iput v3, p0, Lad-manager/b/h0;->h:I

    .line 85
    .line 86
    invoke-static {p1, v1, p0}, Lca/i;->g(Lca/i;Landroid/app/Activity;Lrs/c;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-ne p1, v0, :cond_7

    .line 91
    .line 92
    return-object v0

    .line 93
    :cond_7
    :goto_2
    return-object p1
.end method
