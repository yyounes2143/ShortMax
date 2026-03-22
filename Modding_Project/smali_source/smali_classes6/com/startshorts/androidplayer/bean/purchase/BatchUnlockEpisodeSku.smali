.class public final Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;
.super Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
.source "BatchUnlockEpisodeSku.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private discountTotalCount:I

.field private dramaId:I

.field private extra:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private shortsId:I

.field private totalCount:I

.field private unlockingEpisodes:I


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
.method public final getDiscountTotalCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;->discountTotalCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final getDramaId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;->dramaId:I

    .line 2
    .line 3
    return v0
.end method

.method public final getExtra()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;->extra:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPayPendingCoinSku()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuType()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuProductId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuModelConfigId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getPrizeId()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getRecharge()F

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    iget v1, p0, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;->shortsId:I

    .line 54
    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    iget v1, p0, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;->dramaId:I

    .line 63
    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    iget v1, p0, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;->unlockingEpisodes:I

    .line 72
    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    new-instance v1, Lkotlin/text/Regex;

    .line 94
    .line 95
    const-string v2, "\\s"

    .line 96
    .line 97
    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string v2, ""

    .line 101
    .line 102
    invoke-virtual {v1, v0, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    return-object v0
.end method

.method public final getShortsId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;->shortsId:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTotalCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;->totalCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final getUnlockingEpisodes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;->unlockingEpisodes:I

    .line 2
    .line 3
    return v0
.end method

.method public final setDiscountTotalCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;->discountTotalCount:I

    .line 2
    .line 3
    return-void
.end method

.method public final setDramaId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;->dramaId:I

    .line 2
    .line 3
    return-void
.end method

.method public final setExtra(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;->extra:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setShortsId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;->shortsId:I

    .line 2
    .line 3
    return-void
.end method

.method public final setTotalCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;->totalCount:I

    .line 2
    .line 3
    return-void
.end method

.method public final setUnlockingEpisodes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;->unlockingEpisodes:I

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
    const-string v1, "BatchUnlockEpisodeSku(discountTotalCount="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;->discountTotalCount:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", totalCount="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;->totalCount:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", unlockingEpisodes="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;->unlockingEpisodes:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", shortsId="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v1, p0, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;->shortsId:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", dramaId="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget v1, p0, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;->dramaId:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", extra="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;->extra:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const/16 v1, 0x29

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    return-object v0
.end method
