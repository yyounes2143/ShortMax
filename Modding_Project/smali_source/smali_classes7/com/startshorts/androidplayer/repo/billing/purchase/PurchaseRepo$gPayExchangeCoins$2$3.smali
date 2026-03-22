.class final Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$2$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PurchaseRepo.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->j(Landroid/content/Context;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lzc/f;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lrs/c;)Ljava/lang/Object;
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
    c = "com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo$gPayExchangeCoins$2$3"
    f = "PurchaseRepo.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

.field final synthetic k:Lzc/f;

.field final synthetic l:Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lzc/f;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/purchase/CoinSku;",
            "Lzc/f;",
            "Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$2$3;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$2$3;->i:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$2$3;->j:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$2$3;->k:Lzc/f;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$2$3;->l:Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

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
    new-instance p1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$2$3;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$2$3;->i:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$2$3;->j:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$2$3;->k:Lzc/f;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$2$3;->l:Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$2$3;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lzc/f;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$2$3;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$2$3;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$2$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$2$3;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$2$3;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$2$3;->i:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$2$3;->j:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$2$3;->k:Lzc/f;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo$gPayExchangeCoins$2$3;->l:Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

    .line 20
    .line 21
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->X(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lzc/f;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V

    .line 22
    .line 23
    .line 24
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 30
    .line 31
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1
.end method
