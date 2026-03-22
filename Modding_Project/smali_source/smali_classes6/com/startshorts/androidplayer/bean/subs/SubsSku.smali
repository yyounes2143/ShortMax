.class public Lcom/startshorts/androidplayer/bean/subs/SubsSku;
.super Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;
.source "SubsSku.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/bean/subs/SubsSku$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/startshorts/androidplayer/bean/subs/SubsSku$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final HIGHLIGHT:I = 0x1

.field public static final NOT_HIGHLIGHT:I = 0x0

.field public static final SCENE_ACT:Ljava/lang/String; = "4"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SCENE_AD_2_PAY:Ljava/lang/String; = "6"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SCENE_COINS_2_SUB:Ljava/lang/String; = "5"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SCENE_SUBS_DETAIL:Ljava/lang/String; = "1"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SCENE_TOP_UP:Ljava/lang/String; = "3"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SCENE_UNLOCK_EPISODE_DIALOG:Ljava/lang/String; = "2"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_ANNUAL:I = 0x4

.field public static final TYPE_ANNUAL_PRO:I = 0x7

.field public static final TYPE_DAY_TO_WEEK:I = 0x2

.field public static final TYPE_MONTHLY:I = 0x2

.field public static final TYPE_MONTHLY_PRO:I = 0x6

.field public static final TYPE_WEEKLY:I = 0x1

.field public static final TYPE_WEEKLY_PRO:I = 0x5


# instance fields
.field private activityId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private activityName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private bonus:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private campaignTemplateId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private coins:I

.field private countryCode:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private cycleTransitionType:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private discountPriceText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private discountTime:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private enableDiscountByGp:Z

.field private ev:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private expireTime:J

.field private firstAmount:F

.field private h5JsonParam:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private inSubscription:Z

.field private isFirstBuy:Z

.field private isHighlight:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isLowestSku:Z

.field private offerToken:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private openPromotionalOffer:Z

.field private originPriceText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private payAmount:F

.field private payment:Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

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

.field private productId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private receiveType:I

.field private retainLevel:I

.field private retentionTime:I

.field private skuDetails:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private skuId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private source:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private subTemplateId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private subscript:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private subscriptionId:I

.field private type:I

.field private weight:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->Companion:Lcom/startshorts/androidplayer/bean/subs/SubsSku$Companion;

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
    iput-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->ev:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->h5JsonParam:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->skuId:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->campaignTemplateId:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->subTemplateId:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->productId:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v1, -0x1

    .line 19
    iput v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->type:I

    .line 20
    .line 21
    iput-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->source:Ljava/lang/String;

    .line 22
    .line 23
    iput v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->receiveType:I

    .line 24
    .line 25
    return-void
.end method

.method public static synthetic copy$default(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .locals 1

    .line 1
    if-nez p4, :cond_2

    .line 2
    .line 3
    and-int/lit8 p4, p3, 0x1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p4, :cond_0

    .line 7
    .line 8
    move-object p1, v0

    .line 9
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 10
    .line 11
    if-eqz p3, :cond_1

    .line 12
    .line 13
    move-object p2, v0

    .line 14
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->copy(Ljava/lang/String;Ljava/lang/Integer;)Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 20
    .line 21
    const-string p1, "Super calls with default arguments not supported in this target, function: copy"

    .line 22
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/Integer;)Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->type:I

    .line 7
    .line 8
    iput v1, v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->type:I

    .line 9
    .line 10
    iget v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->weight:I

    .line 11
    .line 12
    iput v1, v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->weight:I

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->originPriceText:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getDiscountPriceText()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->discountPriceText:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->skuDetails:Ljava/lang/Object;

    .line 27
    .line 28
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->skuDetails:Ljava/lang/Object;

    .line 29
    .line 30
    iget v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->coins:I

    .line 31
    .line 32
    iput v1, v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->coins:I

    .line 33
    .line 34
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->bonus:Ljava/lang/Integer;

    .line 35
    .line 36
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->bonus:Ljava/lang/Integer;

    .line 37
    .line 38
    iget v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->payAmount:F

    .line 39
    .line 40
    iput v1, v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->payAmount:F

    .line 41
    .line 42
    iget v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->firstAmount:F

    .line 43
    .line 44
    iput v1, v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->firstAmount:F

    .line 45
    .line 46
    if-nez p1, :cond_0

    .line 47
    .line 48
    iget-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->source:Ljava/lang/String;

    .line 49
    .line 50
    :cond_0
    iput-object p1, v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->source:Ljava/lang/String;

    .line 51
    .line 52
    if-eqz p2, :cond_1

    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iget p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->receiveType:I

    .line 60
    .line 61
    :goto_0
    iput p1, v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->receiveType:I

    .line 62
    .line 63
    iget-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->subscript:Ljava/lang/String;

    .line 64
    .line 65
    iput-object p1, v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->subscript:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getEnableDiscountByGp()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    iput-boolean p1, v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscountByGp:Z

    .line 72
    .line 73
    iget-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->offerToken:Ljava/lang/String;

    .line 74
    .line 75
    iput-object p1, v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->offerToken:Ljava/lang/String;

    .line 76
    .line 77
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->inSubscription:Z

    .line 78
    .line 79
    iput-boolean p1, v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->inSubscription:Z

    .line 80
    .line 81
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->isFirstBuy:Z

    .line 82
    .line 83
    iput-boolean p1, v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->isFirstBuy:Z

    .line 84
    .line 85
    iget-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->activityId:Ljava/lang/String;

    .line 86
    .line 87
    iput-object p1, v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->activityId:Ljava/lang/String;

    .line 88
    .line 89
    iget-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->activityName:Ljava/lang/String;

    .line 90
    .line 91
    iput-object p1, v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->activityName:Ljava/lang/String;

    .line 92
    .line 93
    iget p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->subscriptionId:I

    .line 94
    .line 95
    iput p1, v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->subscriptionId:I

    .line 96
    .line 97
    iget-wide p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->expireTime:J

    .line 98
    .line 99
    iput-wide p1, v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->expireTime:J

    .line 100
    .line 101
    iget-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->discountTime:Ljava/lang/Long;

    .line 102
    .line 103
    iput-object p1, v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->discountTime:Ljava/lang/Long;

    .line 104
    .line 105
    iget-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->payment:Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 106
    .line 107
    iput-object p1, v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->payment:Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 108
    .line 109
    iget-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->productExtendList:Ljava/util/List;

    .line 110
    .line 111
    if-eqz p1, :cond_2

    .line 112
    .line 113
    check-cast p1, Ljava/lang/Iterable;

    .line 114
    .line 115
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->d1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    goto :goto_1

    .line 120
    :cond_2
    const/4 p1, 0x0

    .line 121
    :goto_1
    iput-object p1, v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->productExtendList:Ljava/util/List;

    .line 122
    .line 123
    iget-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->skuId:Ljava/lang/String;

    .line 124
    .line 125
    iput-object p1, v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->skuId:Ljava/lang/String;

    .line 126
    .line 127
    iget-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->campaignTemplateId:Ljava/lang/String;

    .line 128
    .line 129
    iput-object p1, v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->campaignTemplateId:Ljava/lang/String;

    .line 130
    .line 131
    iget-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->subTemplateId:Ljava/lang/String;

    .line 132
    .line 133
    iput-object p1, v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->subTemplateId:Ljava/lang/String;

    .line 134
    .line 135
    iget-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->productId:Ljava/lang/String;

    .line 136
    .line 137
    iput-object p1, v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->productId:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->getSort()I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->setSort(I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->getItemStyle()Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->setItemStyle(Ljava/lang/Integer;)V

    .line 151
    .line 152
    .line 153
    iget-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->isHighlight:Ljava/lang/Integer;

    .line 154
    .line 155
    iput-object p1, v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->isHighlight:Ljava/lang/Integer;

    .line 156
    .line 157
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->openPromotionalOffer:Z

    .line 158
    .line 159
    iput-boolean p1, v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->openPromotionalOffer:Z

    .line 160
    .line 161
    iget-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->ev:Ljava/lang/String;

    .line 162
    .line 163
    iput-object p1, v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->ev:Ljava/lang/String;

    .line 164
    .line 165
    iget-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->h5JsonParam:Ljava/lang/String;

    .line 166
    .line 167
    iput-object p1, v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->h5JsonParam:Ljava/lang/String;

    .line 168
    .line 169
    iget-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->cycleTransitionType:Ljava/lang/Integer;

    .line 170
    .line 171
    iput-object p1, v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->cycleTransitionType:Ljava/lang/Integer;

    .line 172
    .line 173
    return-object v0
.end method

.method public final enableDiscount()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->C()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getEnableDiscountByGp()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->isFirstBuy:Z

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    iget v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->firstAmount:F

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    cmpg-float v3, v0, v3

    .line 25
    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iget v3, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->payAmount:F

    .line 30
    .line 31
    cmpg-float v0, v0, v3

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    move v1, v2

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getEnableDiscountByGp()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->isFirstBuy:Z

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    :goto_1
    return v1
.end method

.method public final formatDiscountTxt()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->skuDetails:Ljava/lang/Object;

    .line 10
    .line 11
    instance-of v2, v0, Lzc/e;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    check-cast v0, Lzc/e;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-static {v0}, Ljk/k;->j(Lzc/e;)Lcom/startshorts/androidplayer/bean/subs/SubsPrice;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->getBillingCycleCount()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    :goto_1
    if-lez v0, :cond_5

    .line 34
    .line 35
    iget v2, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->type:I

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    if-eq v2, v3, :cond_4

    .line 39
    .line 40
    const/4 v3, 0x2

    .line 41
    if-eq v2, v3, :cond_3

    .line 42
    .line 43
    const/4 v3, 0x4

    .line 44
    if-eq v2, v3, :cond_2

    .line 45
    .line 46
    const/4 v3, 0x5

    .line 47
    if-eq v2, v3, :cond_4

    .line 48
    .line 49
    const/4 v3, 0x6

    .line 50
    if-eq v2, v3, :cond_3

    .line 51
    .line 52
    const/4 v3, 0x7

    .line 53
    if-eq v2, v3, :cond_2

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 57
    .line 58
    sget v2, Lcom/startshorts/androidplayer/R$string;->year_coupons_unit:I

    .line 59
    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v1, v2, v0}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 74
    .line 75
    sget v2, Lcom/startshorts/androidplayer/R$string;->month_coupons_unit:I

    .line 76
    .line 77
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v1, v2, v0}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    goto :goto_2

    .line 90
    :cond_4
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 91
    .line 92
    sget v2, Lcom/startshorts/androidplayer/R$string;->week_coupons_unit:I

    .line 93
    .line 94
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v1, v2, v0}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    :cond_5
    :goto_2
    return-object v1
.end method

.method public final formatRenewPrice()Ljava/lang/String;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getDiscountPriceText()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v0, :cond_a

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    goto/16 :goto_4

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x5

    .line 24
    const/4 v4, 0x1

    .line 25
    if-eqz v2, :cond_6

    .line 26
    .line 27
    iget-object v2, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->skuDetails:Ljava/lang/Object;

    .line 28
    .line 29
    instance-of v5, v2, Lzc/e;

    .line 30
    .line 31
    if-eqz v5, :cond_1

    .line 32
    .line 33
    check-cast v2, Lzc/e;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v2, 0x0

    .line 37
    :goto_0
    const/4 v5, 0x0

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    invoke-static {v2}, Ljk/k;->j(Lzc/e;)Lcom/startshorts/androidplayer/bean/subs/SubsPrice;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->getBillingCycleCount()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move v2, v5

    .line 52
    :goto_1
    iget v6, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->type:I

    .line 53
    .line 54
    if-eq v6, v4, :cond_3

    .line 55
    .line 56
    if-ne v6, v3, :cond_4

    .line 57
    .line 58
    :cond_3
    move v5, v4

    .line 59
    :cond_4
    if-le v2, v4, :cond_6

    .line 60
    .line 61
    if-eqz v5, :cond_6

    .line 62
    .line 63
    if-eqz v1, :cond_6

    .line 64
    .line 65
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_5

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_5
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 73
    .line 74
    sget v1, Lcom/startshorts/androidplayer/R$string;->subs_type_view_renew_per_week_new:I

    .line 75
    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getDiscountPriceText()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v0, v1, v2}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    return-object v0

    .line 97
    :cond_6
    :goto_2
    iget v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->type:I

    .line 98
    .line 99
    if-eq v1, v4, :cond_9

    .line 100
    .line 101
    const/4 v2, 0x2

    .line 102
    if-eq v1, v2, :cond_8

    .line 103
    .line 104
    const/4 v2, 0x4

    .line 105
    if-eq v1, v2, :cond_7

    .line 106
    .line 107
    if-eq v1, v3, :cond_9

    .line 108
    .line 109
    const/4 v2, 0x6

    .line 110
    if-eq v1, v2, :cond_8

    .line 111
    .line 112
    const/4 v2, 0x7

    .line 113
    if-eq v1, v2, :cond_7

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_7
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 117
    .line 118
    sget v2, Lcom/startshorts/androidplayer/R$string;->subs_type_view_renew_per_year:I

    .line 119
    .line 120
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v1, v2, v0}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    goto :goto_3

    .line 129
    :cond_8
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 130
    .line 131
    sget v2, Lcom/startshorts/androidplayer/R$string;->subs_type_view_renew_per_month:I

    .line 132
    .line 133
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v1, v2, v0}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    goto :goto_3

    .line 142
    :cond_9
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 143
    .line 144
    sget v2, Lcom/startshorts/androidplayer/R$string;->subs_type_view_renew_per_week:I

    .line 145
    .line 146
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v1, v2, v0}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    :goto_3
    return-object v0

    .line 155
    :cond_a
    :goto_4
    const-string v0, ""

    .line 156
    .line 157
    return-object v0
.end method

.method public final formateDiscountTitle()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->type:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_2

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x5

    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x6

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x7

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    const-string v0, ""

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 25
    .line 26
    sget v1, Lcom/startshorts/androidplayer/R$string;->year_membership_coupon:I

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lfk/u;->d(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 34
    .line 35
    sget v1, Lcom/startshorts/androidplayer/R$string;->month_membership_coupon:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lfk/u;->d(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 43
    .line 44
    sget v1, Lcom/startshorts/androidplayer/R$string;->week_membership_coupon:I

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lfk/u;->d(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :goto_0
    return-object v0
.end method

.method public final getActivityId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->activityId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getActivityName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->activityName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBonus()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->bonus:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCampaignTemplateId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->campaignTemplateId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCoins()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->coins:I

    .line 2
    .line 3
    return v0
.end method

.method public final getCountryCode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->countryCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCycleTransitionType()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->cycleTransitionType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDiscountPriceText()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->discountPriceText:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->discountPriceText:Ljava/lang/String;

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    iget v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->firstAmount:F

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
    return-object v0

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
    iget v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->firstAmount:F

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

.method public final getDiscountTime()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->discountTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEnableDiscountByGp()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->C()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscountByGp:Z

    .line 12
    .line 13
    :goto_0
    return v0
.end method

.method public final getEv()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->ev:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getExpireTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->expireTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getFirstAmount()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->firstAmount:F

    .line 2
    .line 3
    return v0
.end method

.method public final getFlavorPayCycleCount()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->skuDetails:Ljava/lang/Object;

    .line 9
    .line 10
    instance-of v2, v0, Lzc/e;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    check-cast v0, Lzc/e;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-static {v0}, Ljk/k;->j(Lzc/e;)Lcom/startshorts/androidplayer/bean/subs/SubsPrice;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->getBillingCycleCount()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    :cond_1
    return v1
.end method

.method public final getH5JsonParam()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->h5JsonParam:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInSubscription()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->inSubscription:Z

    .line 2
    .line 3
    return v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->productId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOfferToken()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->offerToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOpenPromotionalOffer()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->openPromotionalOffer:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getOriginPriceText()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->originPriceText:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->originPriceText:Ljava/lang/String;

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    iget v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->payAmount:F

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
    iget v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->payAmount:F

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

.method public final getPaddingTop(Z)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/high16 p1, -0x3fc00000    # -3.0f

    .line 4
    .line 5
    invoke-static {p1}, Ljk/g;->a(F)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    return p1
.end method

.method public final getPayAmount()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->payAmount:F

    .line 2
    .line 3
    return v0
.end method

.method public getPayPendingSubsSku()Ljava/lang/String;
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
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->productId:Ljava/lang/String;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    iget v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->payAmount:F

    .line 21
    .line 22
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->source:Ljava/lang/String;

    .line 30
    .line 31
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    iget v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->receiveType:I

    .line 35
    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    iget v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->coins:I

    .line 44
    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->bonus:Ljava/lang/Integer;

    .line 53
    .line 54
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    new-instance v1, Lkotlin/text/Regex;

    .line 62
    .line 63
    const-string v2, "\\s"

    .line 64
    .line 65
    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v2, ""

    .line 69
    .line 70
    invoke-virtual {v1, v0, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    return-object v0
.end method

.method public final getPayment()Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->payment:Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 2
    .line 3
    return-object v0
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
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->productExtendList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getProductId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->productId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getReceiveType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->receiveType:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRetainLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->retainLevel:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRetentionTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->retentionTime:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSkuDetails()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->skuDetails:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSkuId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->skuId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSource()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->source:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSubTemplateId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->subTemplateId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSubscript()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->subscript:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSubscriptionId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->subscriptionId:I

    .line 2
    .line 3
    return v0
.end method

.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public final getWeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->weight:I

    .line 2
    .line 3
    return v0
.end method

.method public final isDayToWeekSub()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->cycleTransitionType:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x2

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 16
    :goto_1
    return v0
.end method

.method public final isFirstBuy()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->isFirstBuy:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isHighlight()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->isHighlight:Ljava/lang/Integer;

    return-object v0
.end method

.method public final isHighlight()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->isHighlight:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final isLowestSku()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->isLowestSku:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isPro()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->type:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x0

    .line 5
    if-gt v1, v0, :cond_0

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    :cond_0
    return v2
.end method

.method public final setActivityId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->activityId:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->activityName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setBonus(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->bonus:Ljava/lang/Integer;

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->campaignTemplateId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setCoins(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->coins:I

    .line 2
    .line 3
    return-void
.end method

.method public final setCountryCode(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->countryCode:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setCycleTransitionType(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->cycleTransitionType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setDiscountPriceText(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->discountPriceText:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDiscountTime(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->discountTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setEnableDiscountByGp(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscountByGp:Z

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->ev:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setExpireTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->expireTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setFirstAmount(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->firstAmount:F

    .line 2
    .line 3
    return-void
.end method

.method public final setFirstBuy(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->isFirstBuy:Z

    .line 2
    .line 3
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->h5JsonParam:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->isHighlight:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setInSubscription(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->inSubscription:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setLowestSku(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->isLowestSku:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setOfferToken(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->offerToken:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setOpenPromotionalOffer(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->openPromotionalOffer:Z

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->originPriceText:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPayAmount(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->payAmount:F

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->payment:Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->productExtendList:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setProductId(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->productId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setReceiveType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->receiveType:I

    .line 2
    .line 3
    return-void
.end method

.method public final setRetainLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->retainLevel:I

    .line 2
    .line 3
    return-void
.end method

.method public final setRetentionTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->retentionTime:I

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->skuDetails:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public final setSkuId(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->skuId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setSource(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->source:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setSubTemplateId(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->subTemplateId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setSubscript(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->subscript:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSubscriptionId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->subscriptionId:I

    .line 2
    .line 3
    return-void
.end method

.method public final setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->type:I

    .line 2
    .line 3
    return-void
.end method

.method public final setWeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->weight:I

    .line 2
    .line 3
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
    const-string v1, "SubsSku(activityId="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->activityId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", skuId=\'"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->skuId:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, "\', campaign_template_id=\'"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->campaignTemplateId:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, "\', sub_template_id=\'"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->subTemplateId:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, "\', productId=\'"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->productId:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, "\', type="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->type:I

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", weight="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->weight:I

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", originPriceText="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v1, ", discountPriceText="

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getDiscountPriceText()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v1, ", skuDetails="

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->skuDetails:Ljava/lang/Object;

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v1, ", coins="

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->coins:I

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v1, ", bonus="

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->bonus:Ljava/lang/Integer;

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v1, ", payAmount="

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    iget v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->payAmount:F

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v1, ", firstAmount="

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    iget v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->firstAmount:F

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v1, ", source=\'"

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->source:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v1, "\', receiveType="

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    iget v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->receiveType:I

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v1, ", subscript="

    .line 171
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->subscript:Ljava/lang/String;

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v1, ", enableDiscountByGp="

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getEnableDiscountByGp()Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v1, ", offerToken="

    .line 193
    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->offerToken:Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v1, ", inSubscription="

    .line 203
    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->inSubscription:Z

    .line 208
    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string v1, ", isFirstBuy="

    .line 213
    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->isFirstBuy:Z

    .line 218
    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string v1, ", activityName="

    .line 223
    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->activityName:Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v1, ", countryCode="

    .line 233
    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->countryCode:Ljava/lang/String;

    .line 238
    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v1, ", subscriptionId="

    .line 243
    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    iget v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->subscriptionId:I

    .line 248
    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    const-string v1, ", expireTime="

    .line 253
    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->expireTime:J

    .line 258
    .line 259
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    const-string v1, ", discountTime="

    .line 263
    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->discountTime:Ljava/lang/Long;

    .line 268
    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string v1, ", productExtendList="

    .line 273
    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->productExtendList:Ljava/util/List;

    .line 278
    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    const-string v1, ", payment="

    .line 283
    .line 284
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->payment:Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 288
    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    const-string v1, ", isHighlight="

    .line 293
    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->isHighlight:Ljava/lang/Integer;

    .line 298
    .line 299
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    const-string v1, " , ev="

    .line 303
    .line 304
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->ev:Ljava/lang/String;

    .line 308
    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    const-string v1, " ,h5JsonParam="

    .line 313
    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->h5JsonParam:Ljava/lang/String;

    .line 318
    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    const-string v1, " , openPromotionalOffer="

    .line 323
    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->openPromotionalOffer:Z

    .line 328
    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    const-string/jumbo v1, "\uff0cretainLevel="

    .line 333
    .line 334
    .line 335
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    iget v1, p0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->retainLevel:I

    .line 339
    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    const/16 v1, 0x29

    .line 344
    .line 345
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    return-object v0
.end method
