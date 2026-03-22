.class public final Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentCoinSku;
.super Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
.source "ThirdPartyPaymentCoinSku.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private result:Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private skuType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentCoinSku;-><init>(Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;-><init>()V

    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentCoinSku;->result:Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;

    const/16 p1, 0x3e7

    .line 3
    iput p1, p0, Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentCoinSku;->skuType:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentCoinSku;-><init>(Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;)V

    return-void
.end method


# virtual methods
.method public final getResult()Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentCoinSku;->result:Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSkuType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentCoinSku;->skuType:I

    .line 2
    .line 3
    return v0
.end method

.method public final setResult(Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentCoinSku;->result:Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;

    .line 2
    .line 3
    return-void
.end method

.method public setSkuType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentCoinSku;->skuType:I

    .line 2
    .line 3
    return-void
.end method
