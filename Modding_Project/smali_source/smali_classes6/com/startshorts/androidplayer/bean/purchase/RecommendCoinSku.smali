.class public final Lcom/startshorts/androidplayer/bean/purchase/RecommendCoinSku;
.super Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
.source "RecommendCoinSku.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private purchasedSku:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getPurchasedSku()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/purchase/RecommendCoinSku;->purchasedSku:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setPurchasedSku(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/purchase/RecommendCoinSku;->purchasedSku:Z

    .line 2
    .line 3
    return-void
.end method
