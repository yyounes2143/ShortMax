.class final Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager$checkDiscountSubs$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DiscountSubscribeManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->g(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lkotlin/jvm/functions/Function0;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
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
    c = "com.startshorts.androidplayer.manager.discount.DiscountSubscribeManager$checkDiscountSubs$1"
    f = "DiscountSubscribeManager.kt"
    l = {
        0x46
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

.field final synthetic l:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function0;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager$checkDiscountSubs$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager$checkDiscountSubs$1;->i:Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager$checkDiscountSubs$1;->j:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager$checkDiscountSubs$1;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager$checkDiscountSubs$1;->l:Lkotlin/jvm/functions/Function0;

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

.method public static synthetic i(Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function0;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager$checkDiscountSubs$1;->j(Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function0;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final j(Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function0;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-eqz p5, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p5}, Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;->setSubscribeSkuResponse(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    sget-object v1, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->a:Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;

    .line 11
    .line 12
    invoke-static {v1, p5}, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->e(Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)I

    .line 13
    .line 14
    .line 15
    move-result p5

    .line 16
    invoke-virtual {v1, p0}, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->v(Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->t()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x2

    .line 26
    if-le p5, v1, :cond_0

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    sget-object p5, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;->n:Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog$a;

    .line 31
    .line 32
    invoke-virtual {p5, p2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog$a;->a(Ljava/lang/String;)Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p2, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;->R(Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p3}, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;->S(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p4}, Lcom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog;->T(Lkotlin/jvm/functions/Function0;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string p1, "DiscountSubscribeDialog"

    .line 50
    .line 51
    invoke-virtual {p2, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 55
    .line 56
    return-object p0
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
    new-instance p1, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager$checkDiscountSubs$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager$checkDiscountSubs$1;->i:Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager$checkDiscountSubs$1;->j:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager$checkDiscountSubs$1;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager$checkDiscountSubs$1;->l:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager$checkDiscountSubs$1;-><init>(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function0;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager$checkDiscountSubs$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager$checkDiscountSubs$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager$checkDiscountSubs$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager$checkDiscountSubs$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager$checkDiscountSubs$1;->h:I

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
    sget-object p1, Lcom/startshorts/androidplayer/repo/discount/DiscountSubscribeRepo;->a:Lcom/startshorts/androidplayer/repo/discount/DiscountSubscribeRepo;

    .line 34
    .line 35
    iput v2, p0, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager$checkDiscountSubs$1;->h:I

    .line 36
    .line 37
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/repo/discount/DiscountSubscribeRepo;->e(Lrs/c;)Ljava/lang/Object;

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
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager$checkDiscountSubs$1;->i:Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 45
    .line 46
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager$checkDiscountSubs$1;->j:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v4, p0, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager$checkDiscountSubs$1;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 49
    .line 50
    iget-object v5, p0, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager$checkDiscountSubs$1;->l:Lkotlin/jvm/functions/Function0;

    .line 51
    .line 52
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    move-object v1, p1

    .line 59
    check-cast v1, Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;

    .line 60
    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;->getSubscribeSkuResponse()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->C()Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-eqz v6, :cond_3

    .line 76
    .line 77
    filled-new-array {p1}, [Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-virtual {v0, v6}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->i0(Ljava/util/List;)V

    .line 86
    .line 87
    .line 88
    :cond_3
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 89
    .line 90
    const-string v6, "DiscountSubscribeManager"

    .line 91
    .line 92
    const-string v7, "connect"

    .line 93
    .line 94
    invoke-virtual {v0, v6, v7}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    sget-object v6, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->a:Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;

    .line 98
    .line 99
    new-instance v7, Lcom/startshorts/androidplayer/manager/discount/a;

    .line 100
    .line 101
    move-object v0, v7

    .line 102
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/manager/discount/a;-><init>(Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function0;)V

    .line 103
    .line 104
    .line 105
    invoke-static {v6, p1, v7}, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->c(Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lkotlin/jvm/functions/Function1;)V

    .line 106
    .line 107
    .line 108
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 109
    .line 110
    return-object p1
.end method
