.class public final Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$c$a;
.super Ljava/lang/Object;
.source "TopUpCoinSkuAdapter.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/view/purchase/ExpansionCoinSkuView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$c;->k(ILcom/startshorts/androidplayer/bean/purchase/CoinSku;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;

.field final synthetic b:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$c$a;->a:Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$c$a;->b:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onExpired()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$c$a;->a:Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter$c$a;->b:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;->F(Lcom/startshorts/androidplayer/adapter/purchase/TopUpCoinSkuAdapter;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
