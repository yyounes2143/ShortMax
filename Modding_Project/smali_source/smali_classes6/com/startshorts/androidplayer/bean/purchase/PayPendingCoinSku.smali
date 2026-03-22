.class public final Lcom/startshorts/androidplayer/bean/purchase/PayPendingCoinSku;
.super Ljava/lang/Object;
.source "PayPendingCoinSku.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private cid:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private pid:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private prid:I

.field private r:F

.field private t:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/startshorts/androidplayer/bean/purchase/PayPendingCoinSku;->t:I

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    iput-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/PayPendingCoinSku;->pid:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/PayPendingCoinSku;->cid:Ljava/lang/String;

    .line 12
    .line 13
    iput v0, p0, Lcom/startshorts/androidplayer/bean/purchase/PayPendingCoinSku;->prid:I

    .line 14
    .line 15
    const/high16 v0, -0x40800000    # -1.0f

    .line 16
    .line 17
    iput v0, p0, Lcom/startshorts/androidplayer/bean/purchase/PayPendingCoinSku;->r:F

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final getCid()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/PayPendingCoinSku;->cid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPid()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/PayPendingCoinSku;->pid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPrid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/purchase/PayPendingCoinSku;->prid:I

    .line 2
    .line 3
    return v0
.end method

.method public final getR()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/purchase/PayPendingCoinSku;->r:F

    .line 2
    .line 3
    return v0
.end method

.method public final getT()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/purchase/PayPendingCoinSku;->t:I

    .line 2
    .line 3
    return v0
.end method

.method public final parse()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/PayPendingCoinSku;->pid:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;-><init>()V

    .line 15
    .line 16
    .line 17
    iget v1, p0, Lcom/startshorts/androidplayer/bean/purchase/PayPendingCoinSku;->t:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setSkuType(I)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/PayPendingCoinSku;->pid:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setSkuProductId(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/PayPendingCoinSku;->cid:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setSkuModelConfigId(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget v1, p0, Lcom/startshorts/androidplayer/bean/purchase/PayPendingCoinSku;->prid:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setPrizeId(I)V

    .line 38
    .line 39
    .line 40
    iget v1, p0, Lcom/startshorts/androidplayer/bean/purchase/PayPendingCoinSku;->r:F

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setRecharge(F)V

    .line 43
    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 47
    return-object v0
.end method

.method public final setCid(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/purchase/PayPendingCoinSku;->cid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPid(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/purchase/PayPendingCoinSku;->pid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPrid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/purchase/PayPendingCoinSku;->prid:I

    .line 2
    .line 3
    return-void
.end method

.method public final setR(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/purchase/PayPendingCoinSku;->r:F

    .line 2
    .line 3
    return-void
.end method

.method public final setT(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/purchase/PayPendingCoinSku;->t:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "PayPendingCoinSku(t="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/startshorts/androidplayer/bean/purchase/PayPendingCoinSku;->t:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", pid="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/PayPendingCoinSku;->pid:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", cid="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/PayPendingCoinSku;->cid:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", prid="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v1, p0, Lcom/startshorts/androidplayer/bean/purchase/PayPendingCoinSku;->prid:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", r="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget v1, p0, Lcom/startshorts/androidplayer/bean/purchase/PayPendingCoinSku;->r:F

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const/16 v1, 0x29

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method
