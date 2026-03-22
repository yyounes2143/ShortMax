.class public Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
.super Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;
.source "CoinSku.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/bean/purchase/CoinSku$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/startshorts/androidplayer/bean/purchase/CoinSku$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_BATCH_SKU:I = 0xa

.field public static final TYPE_BLACK_FRIDAY:I = 0x8

.field public static final TYPE_EXPANSION:I = 0x7

.field public static final TYPE_LIMITED_TIME_SALE:I = 0xc

.field public static final TYPE_LOW_SKU_TEMPLATE_NOTIFICATION:I = 0x3e8

.field public static final TYPE_MAIN_SKU:I = 0x0

.field public static final TYPE_THIRD_PARTY_PAYMENT:I = 0x3e7


# instance fields
.field private activityId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private activityName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private activityPrice:F

.field private activitySkuConfigId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private campaignTemplateId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private coins:I

.field private coinsUnit:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private disRate:F

.field private ev:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private expirationTime:J

.field private giveCoinsUnit:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private gpSkuId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private h5JsonParam:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isHighlight:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private keepGiveCoins:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private originPriceText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private originalPrice:F

.field private payment:Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private priceText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private prizeId:I

.field private productExtendList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private productGiveCoins:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private recharge:F

.field private retentionSeconds:J

.field private skuDetails:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private skuModelConfigId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private skuModelId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private skuProductId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private skuType:I

.field private subscript:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->Companion:Lcom/startshorts/androidplayer/bean/purchase/CoinSku$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->ev:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->h5JsonParam:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->campaignTemplateId:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v1, -0x1

    .line 13
    iput v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->skuType:I

    .line 14
    .line 15
    iput-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->skuProductId:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->userId:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->gpSkuId:Ljava/lang/String;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->skuModelId:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final copy()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuType()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setSkuType(I)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->skuModelConfigId:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->skuModelConfigId:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->activitySkuConfigId:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->activitySkuConfigId:Ljava/lang/String;

    .line 20
    .line 21
    iget v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->coins:I

    .line 22
    .line 23
    iput v1, v0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->coins:I

    .line 24
    .line 25
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->coinsUnit:Ljava/lang/String;

    .line 26
    .line 27
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->coinsUnit:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->productGiveCoins:Ljava/lang/Integer;

    .line 30
    .line 31
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->productGiveCoins:Ljava/lang/Integer;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->giveCoinsUnit:Ljava/lang/String;

    .line 34
    .line 35
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->giveCoinsUnit:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->subscript:Ljava/lang/String;

    .line 38
    .line 39
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->subscript:Ljava/lang/String;

    .line 40
    .line 41
    iget v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->recharge:F

    .line 42
    .line 43
    iput v1, v0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->recharge:F

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getPriceText()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->priceText:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getOriginPriceText()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->originPriceText:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->skuDetails:Ljava/lang/Object;

    .line 58
    .line 59
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->skuDetails:Ljava/lang/Object;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->keepGiveCoins:Ljava/lang/Integer;

    .line 62
    .line 63
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->keepGiveCoins:Ljava/lang/Integer;

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getRetentionSeconds()J

    .line 66
    .line 67
    .line 68
    move-result-wide v1

    .line 69
    iput-wide v1, v0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->retentionSeconds:J

    .line 70
    .line 71
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->expirationTime:J

    .line 72
    .line 73
    iput-wide v1, v0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->expirationTime:J

    .line 74
    .line 75
    iget v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->originalPrice:F

    .line 76
    .line 77
    iput v1, v0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->originalPrice:F

    .line 78
    .line 79
    iget v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->activityPrice:F

    .line 80
    .line 81
    iput v1, v0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->activityPrice:F

    .line 82
    .line 83
    iget v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->disRate:F

    .line 84
    .line 85
    iput v1, v0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->disRate:F

    .line 86
    .line 87
    iget v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->prizeId:I

    .line 88
    .line 89
    iput v1, v0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->prizeId:I

    .line 90
    .line 91
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->activityId:Ljava/lang/String;

    .line 92
    .line 93
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->activityId:Ljava/lang/String;

    .line 94
    .line 95
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->activityName:Ljava/lang/String;

    .line 96
    .line 97
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->activityName:Ljava/lang/String;

    .line 98
    .line 99
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->skuModelId:Ljava/lang/String;

    .line 100
    .line 101
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->skuModelId:Ljava/lang/String;

    .line 102
    .line 103
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->payment:Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 104
    .line 105
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->payment:Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 106
    .line 107
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->productExtendList:Ljava/util/List;

    .line 108
    .line 109
    if-eqz v1, :cond_0

    .line 110
    .line 111
    check-cast v1, Ljava/lang/Iterable;

    .line 112
    .line 113
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->d1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    goto :goto_0

    .line 118
    :cond_0
    const/4 v1, 0x0

    .line 119
    :goto_0
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->productExtendList:Ljava/util/List;

    .line 120
    .line 121
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->skuProductId:Ljava/lang/String;

    .line 122
    .line 123
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->skuProductId:Ljava/lang/String;

    .line 124
    .line 125
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->userId:Ljava/lang/String;

    .line 126
    .line 127
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->userId:Ljava/lang/String;

    .line 128
    .line 129
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->gpSkuId:Ljava/lang/String;

    .line 130
    .line 131
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->gpSkuId:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->getSort()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->setSort(I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->getItemStyle()Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->setItemStyle(Ljava/lang/Integer;)V

    .line 145
    .line 146
    .line 147
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->isHighlight:Ljava/lang/Integer;

    .line 148
    .line 149
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->isHighlight:Ljava/lang/Integer;

    .line 150
    .line 151
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->ev:Ljava/lang/String;

    .line 152
    .line 153
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->ev:Ljava/lang/String;

    .line 154
    .line 155
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->h5JsonParam:Ljava/lang/String;

    .line 156
    .line 157
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->h5JsonParam:Ljava/lang/String;

    .line 158
    .line 159
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->campaignTemplateId:Ljava/lang/String;

    .line 160
    .line 161
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->campaignTemplateId:Ljava/lang/String;

    .line 162
    .line 163
    return-object v0
.end method

.method public final getActivityId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->activityId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getActivityName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->activityName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getActivityPrice()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->activityPrice:F

    .line 2
    .line 3
    return v0
.end method

.method public final getActivitySkuConfigId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->activitySkuConfigId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCampaignTemplateId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->campaignTemplateId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCoins()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->coins:I

    .line 2
    .line 3
    return v0
.end method

.method public final getCoinsUnit()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->coinsUnit:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDisRate()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->disRate:F

    .line 2
    .line 3
    return v0
.end method

.method public final getEv()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->ev:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getExpirationTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->expirationTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getGiveCoinsUnit()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->giveCoinsUnit:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGpSkuId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->gpSkuId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getH5JsonParam()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->h5JsonParam:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->skuProductId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getKeepGiveCoins()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->keepGiveCoins:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOriginPriceText()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->originPriceText:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->originPriceText:Ljava/lang/String;

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    iget v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->originalPrice:F

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    cmpg-float v0, v0, v1

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    const-string v0, ""

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v1, "US$ "

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->originalPrice:F

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :goto_1
    return-object v0
.end method

.method public final getOriginalPrice()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->originalPrice:F

    .line 2
    .line 3
    return v0
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
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->skuProductId:Ljava/lang/String;

    .line 18
    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->skuModelConfigId:Ljava/lang/String;

    .line 23
    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    iget v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->prizeId:I

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    iget v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->recharge:F

    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    instance-of v1, p0, Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;

    .line 46
    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    move-object v1, p0

    .line 50
    check-cast v1, Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;->getShortPlayId()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    new-instance v1, Lkotlin/text/Regex;

    .line 77
    .line 78
    const-string v2, "\\s"

    .line 79
    .line 80
    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v2, ""

    .line 84
    .line 85
    invoke-virtual {v1, v0, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    return-object v0
.end method

.method public final getPayment()Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->payment:Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPriceText()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->priceText:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->priceText:Ljava/lang/String;

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuType()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    const-string v2, "US$ "

    .line 22
    .line 23
    const-string v3, ""

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    if-ne v0, v1, :cond_3

    .line 27
    .line 28
    iget v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->activityPrice:F

    .line 29
    .line 30
    cmpg-float v0, v0, v4

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    :goto_1
    move-object v0, v3

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->activityPrice:F

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    goto :goto_2

    .line 54
    :cond_3
    iget v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->recharge:F

    .line 55
    .line 56
    cmpg-float v0, v0, v4

    .line 57
    .line 58
    if-nez v0, :cond_4

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->recharge:F

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    :goto_2
    return-object v0
.end method

.method public final getPrizeId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->prizeId:I

    .line 2
    .line 3
    return v0
.end method

.method public final getProductExtendList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->productExtendList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getProductGiveCoins()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->productGiveCoins:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRecharge()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->recharge:F

    .line 2
    .line 3
    return v0
.end method

.method public final getRetentionSeconds()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-wide v2, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->expirationTime:J

    .line 16
    .line 17
    cmp-long v4, v2, v0

    .line 18
    .line 19
    if-gez v4, :cond_0

    .line 20
    .line 21
    const-wide/16 v0, 0x0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sub-long/2addr v2, v0

    .line 25
    const/16 v0, 0x3e8

    .line 26
    .line 27
    int-to-long v0, v0

    .line 28
    div-long v0, v2, v0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->retentionSeconds:J

    .line 32
    .line 33
    :goto_0
    return-wide v0
.end method

.method public final getSkuDetails()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->skuDetails:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSkuModelConfigId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->skuModelConfigId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSkuModelId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->skuModelId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSkuProductId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->skuProductId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSkuType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->skuType:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSubscript()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->subscript:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->userId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isExpansion()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x7

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final isHighlight()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->isHighlight:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isSubscriptValid()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->subscript:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->subscript:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-static {v0}, Ljk/v;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    :goto_0
    const-string v2, "0%"

    .line 24
    .line 25
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    const-string v2, "+0%"

    .line 32
    .line 33
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    :cond_2
    :goto_1
    return v1
.end method

.method public final setActivityId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->activityId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setActivityName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->activityName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setActivityPrice(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->activityPrice:F

    .line 2
    .line 3
    return-void
.end method

.method public final setActivitySkuConfigId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->activitySkuConfigId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setCampaignTemplateId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->campaignTemplateId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setCoins(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->coins:I

    .line 2
    .line 3
    return-void
.end method

.method public final setCoinsUnit(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->coinsUnit:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDisRate(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->disRate:F

    .line 2
    .line 3
    return-void
.end method

.method public final setEv(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->ev:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setExpirationTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->expirationTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setGiveCoinsUnit(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->giveCoinsUnit:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setGpSkuId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->gpSkuId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setH5JsonParam(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->h5JsonParam:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setHighlight(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->isHighlight:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setKeepGiveCoins(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->keepGiveCoins:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setOriginPriceText(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->originPriceText:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setOriginalPrice(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->originalPrice:F

    .line 2
    .line 3
    return-void
.end method

.method public final setPayment(Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->payment:Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 2
    .line 3
    return-void
.end method

.method public final setPriceText(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->priceText:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPrizeId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->prizeId:I

    .line 2
    .line 3
    return-void
.end method

.method public final setProductExtendList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->productExtendList:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setProductGiveCoins(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->productGiveCoins:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setRecharge(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->recharge:F

    .line 2
    .line 3
    return-void
.end method

.method public final setRetentionSeconds(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->retentionSeconds:J

    .line 2
    .line 3
    return-void
.end method

.method public final setSkuDetails(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->skuDetails:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public final setSkuModelConfigId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->skuModelConfigId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSkuModelId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->skuModelId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setSkuProductId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->skuProductId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public setSkuType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->skuType:I

    .line 2
    .line 3
    return-void
.end method

.method public final setSubscript(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->subscript:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->userId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
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
    const-string v1, "CoinSku(originPriceText="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getOriginPriceText()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ", skuType="

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuType()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ",userId="

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->userId:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, ",  skuModelConfigId="

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->skuModelConfigId:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, ", activitySkuConfigId="

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->activitySkuConfigId:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, ", skuProductId=\'"

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->skuProductId:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v1, "\', gpSkuId=\'"

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->gpSkuId:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v1, "\', coins="

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->coins:I

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v1, ", coinsUnit="

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->coinsUnit:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v1, ", productGiveCoins="

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->productGiveCoins:Ljava/lang/Integer;

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v1, ", giveCoinsUnit="

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->giveCoinsUnit:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v1, ", subscript="

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->subscript:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v1, ", recharge="

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    iget v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->recharge:F

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v1, ", priceText="

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getPriceText()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v1, ", skuDetails="

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->skuDetails:Ljava/lang/Object;

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v1, ", keepGiveCoins="

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->keepGiveCoins:Ljava/lang/Integer;

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v1, ", retentionSeconds="

    .line 173
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getRetentionSeconds()J

    .line 178
    .line 179
    .line 180
    move-result-wide v1

    .line 181
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v1, ", expirationTime="

    .line 185
    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->expirationTime:J

    .line 190
    .line 191
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string v1, ", originalPrice="

    .line 195
    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    iget v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->originalPrice:F

    .line 200
    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v1, ", activityPrice="

    .line 205
    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    iget v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->activityPrice:F

    .line 210
    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const-string v1, ", disRate="

    .line 215
    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    iget v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->disRate:F

    .line 220
    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v1, ", prizeId="

    .line 225
    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    iget v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->prizeId:I

    .line 230
    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string v1, ", activityId="

    .line 235
    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->activityId:Ljava/lang/String;

    .line 240
    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v1, ", activityName="

    .line 245
    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->activityName:Ljava/lang/String;

    .line 250
    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    const-string v1, ", skuModelId="

    .line 255
    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->skuModelId:Ljava/lang/String;

    .line 260
    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    const-string v1, ", productExtendList="

    .line 265
    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->productExtendList:Ljava/util/List;

    .line 270
    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    const-string v1, ", payment="

    .line 275
    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->payment:Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 280
    .line 281
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string v1, ", sort="

    .line 285
    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->getSort()I

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const-string v1, ", itemStyle="

    .line 297
    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->getItemStyle()Ljava/lang/Integer;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    const-string v1, ", isHighlight="

    .line 309
    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->isHighlight:Ljava/lang/Integer;

    .line 314
    .line 315
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    const-string v1, " ,ev="

    .line 319
    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->ev:Ljava/lang/String;

    .line 324
    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string v1, " ,h5JsonParam="

    .line 329
    .line 330
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->h5JsonParam:Ljava/lang/String;

    .line 334
    .line 335
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    const-string v1, " ,campaign_template_id="

    .line 339
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->campaignTemplateId:Ljava/lang/String;

    .line 344
    .line 345
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    const/16 v1, 0x29

    .line 349
    .line 350
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    return-object v0
.end method
