.class public final Lcom/startshorts/androidplayer/bean/purchase/LowSkuTemplateNotificationCoinSku;
.super Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
.source "LowSkuTemplateNotificationCoinSku.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private skuType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x3e8

    .line 5
    .line 6
    iput v0, p0, Lcom/startshorts/androidplayer/bean/purchase/LowSkuTemplateNotificationCoinSku;->skuType:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getSkuType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/purchase/LowSkuTemplateNotificationCoinSku;->skuType:I

    .line 2
    .line 3
    return v0
.end method

.method public setSkuType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/purchase/LowSkuTemplateNotificationCoinSku;->skuType:I

    .line 2
    .line 3
    return-void
.end method
