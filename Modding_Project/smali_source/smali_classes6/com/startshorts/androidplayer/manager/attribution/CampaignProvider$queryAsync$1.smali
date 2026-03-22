.class final Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider$queryAsync$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CampaignProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->o(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)V
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
    c = "com.startshorts.androidplayer.manager.attribution.CampaignProvider$queryAsync$1"
    f = "CampaignProvider.kt"
    l = {
        0x49
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/manager/attribution/CampaignType;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider$queryAsync$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider$queryAsync$1;->i:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

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
    new-instance p1, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider$queryAsync$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider$queryAsync$1;->i:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider$queryAsync$1;-><init>(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider$queryAsync$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider$queryAsync$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider$queryAsync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider$queryAsync$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider$queryAsync$1;->h:I

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
    goto :goto_1

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
    sget-object p1, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->d(Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Ljava/lang/Iterable;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider$queryAsync$1;->i:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    move-object v4, v3

    .line 52
    check-cast v4, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;

    .line 53
    .line 54
    invoke-interface {v4}, Lie/j;->a()Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->getValue()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->getValue()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_2

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    const/4 v3, 0x0

    .line 74
    :goto_0
    check-cast v3, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;

    .line 75
    .line 76
    if-eqz v3, :cond_4

    .line 77
    .line 78
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 79
    .line 80
    invoke-virtual {p1}, Lfk/u;->b()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iput v2, p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider$queryAsync$1;->h:I

    .line 85
    .line 86
    invoke-virtual {v3, p1, p0}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->j(Landroid/content/Context;Lrs/c;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-ne p1, v0, :cond_4

    .line 91
    .line 92
    return-object v0

    .line 93
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 94
    .line 95
    return-object p1
.end method
