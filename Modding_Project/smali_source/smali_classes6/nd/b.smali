.class public final synthetic Lnd/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;

.field public final synthetic b:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnd/b;->a:Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Lnd/b;->b:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lnd/b;->a:Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lnd/b;->b:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;->E(Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)Lkotlin/Unit;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
