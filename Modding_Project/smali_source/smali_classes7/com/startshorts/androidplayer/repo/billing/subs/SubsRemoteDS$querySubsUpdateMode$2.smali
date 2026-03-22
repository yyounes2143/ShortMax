.class final Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$querySubsUpdateMode$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SubsRemoteDS.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS;->g(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsPrice;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lrs/c<",
        "-",
        "Lcom/startshorts/androidplayer/bean/api/ServerResult<",
        "Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.repo.billing.subs.SubsRemoteDS$querySubsUpdateMode$2"
    f = "SubsRemoteDS.kt"
    l = {
        0x8b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

.field final synthetic j:Lcom/startshorts/androidplayer/bean/subs/SubsPrice;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsPrice;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            "Lcom/startshorts/androidplayer/bean/subs/SubsPrice;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$querySubsUpdateMode$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$querySubsUpdateMode$2;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$querySubsUpdateMode$2;->j:Lcom/startshorts/androidplayer/bean/subs/SubsPrice;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Lrs/c;)Lrs/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$querySubsUpdateMode$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$querySubsUpdateMode$2;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$querySubsUpdateMode$2;->j:Lcom/startshorts/androidplayer/bean/subs/SubsPrice;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p1}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$querySubsUpdateMode$2;-><init>(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsPrice;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrs/c;

    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$querySubsUpdateMode$2;->invoke(Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lrs/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/bean/api/ServerResult<",
            "Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$querySubsUpdateMode$2;->create(Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$querySubsUpdateMode$2;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$querySubsUpdateMode$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$querySubsUpdateMode$2;->h:I

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
    goto :goto_5

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$querySubsUpdateMode$2;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    iget-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$querySubsUpdateMode$2;->j:Lcom/startshorts/androidplayer/bean/subs/SubsPrice;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->getDiscountPriceAmountMicros()J

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    const-wide/16 v5, 0x0

    .line 42
    .line 43
    cmp-long p1, v3, v5

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    move p1, v2

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 p1, 0x0

    .line 50
    :goto_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$querySubsUpdateMode$2;->j:Lcom/startshorts/androidplayer/bean/subs/SubsPrice;

    .line 51
    .line 52
    if-eqz p1, :cond_3

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->getDiscountPriceAmountMicros()J

    .line 55
    .line 56
    .line 57
    move-result-wide v3

    .line 58
    :goto_1
    move-wide v7, v3

    .line 59
    goto :goto_2

    .line 60
    :cond_3
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->getOriginPriceAmountMicros()J

    .line 61
    .line 62
    .line 63
    move-result-wide v3

    .line 64
    goto :goto_1

    .line 65
    :goto_2
    if-eqz p1, :cond_4

    .line 66
    .line 67
    iget-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$querySubsUpdateMode$2;->j:Lcom/startshorts/androidplayer/bean/subs/SubsPrice;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->getDiscountCurrencyCode()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    :goto_3
    move-object v9, p1

    .line 74
    goto :goto_4

    .line 75
    :cond_4
    iget-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$querySubsUpdateMode$2;->j:Lcom/startshorts/androidplayer/bean/subs/SubsPrice;

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->getOriginCurrencyCode()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    goto :goto_3

    .line 82
    :goto_4
    sget-object p1, Lcom/startshorts/androidplayer/manager/api/base/k;->a:Lcom/startshorts/androidplayer/manager/api/base/k;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/api/base/k;->j()Lcom/startshorts/androidplayer/manager/api/base/k$a;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    iget-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$querySubsUpdateMode$2;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getProductId()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    iput v2, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$querySubsUpdateMode$2;->h:I

    .line 95
    .line 96
    move-object v10, p0

    .line 97
    invoke-interface/range {v5 .. v10}, Lcom/startshorts/androidplayer/manager/api/base/k$a;->B(Ljava/lang/String;JLjava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    if-ne p1, v0, :cond_5

    .line 102
    .line 103
    return-object v0

    .line 104
    :cond_5
    :goto_5
    return-object p1
.end method
